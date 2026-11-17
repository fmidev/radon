-- Add geostationary ("space view") geometry type

SET search_path TO public;

INSERT INTO projection (id, name, description, grib1_number, grib2_number)
  VALUES (9, 'Geostationary', 'Geostationary satellite space view', 90, 90);
SELECT setval('projection_id_seq', GREATEST(9, (SELECT max(id) FROM projection)), true);

\i ../../sql/datum_text_f.sql
SET search_path TO public;
\i ../../sql/geom_geostationary.sql
SET search_path TO public;
\i ../../sql/geom_geostationary_v.sql
SET search_path TO public;

-- Geometry ids are not fixed: take them from the sequence so that the migration
-- works regardless of how many geometries an instance has. Make sure the
-- sequence is not behind existing ids first.
SELECT setval('geom_id_seq', GREATEST((SELECT last_value FROM geom_id_seq), (SELECT max(id) FROM geom)), true);

INSERT INTO geom (name, projection_id, description) VALUES
  ('GEOS_0DEG_2KM', 9, 'Geostationary full disk at 0 deg, 2 km (MTG FCI, LI)'),
  ('GEOS_0DEG_1KM', 9, 'Geostationary full disk at 0 deg, 1 km (MTG FCI)');

INSERT INTO geom_geostationary (id, name, ni, nj, nr, dx, dy, xp, yp, sub_satellite_longitude, sweep_axis, scanning_mode, description, earth_shape_id)
  SELECT g.id, g.name, v.ni, v.nj, v.nr, v.dx, v.dy, v.xp, v.yp, 0, 'y', '+x-y', g.description, 4
  FROM geom g
  JOIN (VALUES
    ('GEOS_0DEG_2KM', 5568, 5568, 6610792, 5434, 5416, 2783500, 2783500),
    ('GEOS_0DEG_1KM', 11136, 11136, 6610792, 10868, 10832, 5567500, 5567500)
  ) AS v(name, ni, nj, nr, dx, dy, xp, yp) ON (g.name = v.name);

\i ../../sql/radon_version_f.sql
SET search_path TO public;
SELECT public.radon_version_f();
