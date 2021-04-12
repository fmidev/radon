set -ue

SQLHOME=../../sql

psql -1 << EOSQL
DROP TABLE earth_shape CASCADE;
\i $SQLHOME/earth_shape.sql
\i $SQLHOME/earth_shape-data.sql
\i $SQLHOME/earth_shape_v.sql
ALTER TABLE public.geom_latitude_longitude ADD CONSTRAINT geom_latitude_longitude_earth_shape_id_fkey FOREIGN KEY (earth_shape_id) REFERENCES public.earth_shape(id);
ALTER TABLE public.geom_rotated_latitude_longitude ADD CONSTRAINT geom_rotated_latitude_longitude_earth_shape_id_fkey FOREIGN KEY (earth_shape_id) REFERENCES public.earth_shape(id);
ALTER TABLE public.geom_lambert_conformal ADD CONSTRAINT geom_lambert_conformal_earth_shape_id_fkey FOREIGN KEY (earth_shape_id) REFERENCES public.earth_shape(id);
ALTER TABLE public.geom_lambert_equal_area ADD CONSTRAINT geom_lambert_equal_area_earth_shape_id_fkey FOREIGN KEY (earth_shape_id) REFERENCES public.earth_shape(id);
ALTER TABLE public.geom_stereographic ADD CONSTRAINT geom_stereographic_earth_shape_id_fkey FOREIGN KEY (earth_shape_id) REFERENCES public.earth_shape(id);
ALTER TABLE public.geom_transverse_mercator ADD CONSTRAINT geom_transverse_mercator_earth_shape_id_fkey FOREIGN KEY (earth_shape_id) REFERENCES public.earth_shape(id);
ALTER TABLE public.geom_reduced_gaussian ADD CONSTRAINT geom_reduced_gaussian_earth_shape_id_fkey FOREIGN KEY (earth_shape_id) REFERENCES public.earth_shape(id);
\i $SQLHOME/geom_latitude_longitude_v.sql
\i $SQLHOME/geom_rotated_latitude_longitude_v.sql
\i $SQLHOME/geom_lambert_conformal_v.sql
\i $SQLHOME/geom_lambert_equal_area_v.sql
\i $SQLHOME/geom_stereographic_v.sql
\i $SQLHOME/geom_transverse_mercator_v.sql
\i $SQLHOME/geom_reduced_gaussian_v.sql
\i $SQLHOME/radon_version_f.sql
SELECT public.radon_version_f();
EOSQL
