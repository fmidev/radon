set -ue

SQLHOME=../../sql

psql -1 << EOSQL
\i $SQLHOME/datum.sql
SET search_path TO public,data;
\i $SQLHOME/datum-data.sql
SET search_path TO public,data;
\i $SQLHOME/datum_text_f.sql
SET search_path TO public,data;

CREATE TEMP TABLE x_temp AS SELECT * FROM geom_stereographic;
DROP TABLE geom_stereographic CASCADE;
\i $SQLHOME/geom_stereographic.sql
SET search_path TO public,data;
INSERT INTO geom_stereographic SELECT * from x_temp;
\i $SQLHOME/geom_stereographic_v.sql
SET search_path TO public,data;
DROP TABLE x_temp;

CREATE TEMP TABLE x_temp AS SELECT * FROM geom_lambert_conformal;
DROP TABLE geom_lambert_conformal CASCADE;
\i $SQLHOME/geom_lambert_conformal.sql
SET search_path TO public,data;
INSERT INTO geom_lambert_conformal SELECT * from x_temp;
\i $SQLHOME/geom_lambert_conformal_v.sql
SET search_path TO public,data;
DROP TABLE x_temp;

CREATE TEMP TABLE x_temp AS SELECT * FROM geom_lambert_equal_area;
DROP TABLE geom_lambert_equal_area CASCADE;
\i $SQLHOME/geom_lambert_equal_area.sql
SET search_path TO public,data;
INSERT INTO geom_lambert_equal_area SELECT * from x_temp;
\i $SQLHOME/geom_lambert_equal_area_v.sql
SET search_path TO public,data;
DROP TABLE x_temp;

CREATE TEMP TABLE x_temp AS SELECT * FROM geom_transverse_mercator;
DROP TABLE geom_transverse_mercator CASCADE;
\i $SQLHOME/geom_transverse_mercator.sql
SET search_path TO public,data;
INSERT INTO geom_transverse_mercator SELECT * from x_temp;
\i $SQLHOME/geom_transverse_mercator_v.sql
SET search_path TO public,data;
DROP TABLE x_temp;

CREATE TEMP TABLE x_temp AS SELECT * FROM geom_latitude_longitude;
DROP TABLE geom_latitude_longitude CASCADE;
\i $SQLHOME/geom_latitude_longitude.sql
SET search_path TO public,data;
INSERT INTO geom_latitude_longitude SELECT * from x_temp;
\i $SQLHOME/geom_latitude_longitude_v.sql
SET search_path TO public,data;
DROP TABLE x_temp;

CREATE TEMP TABLE x_temp AS SELECT * FROM geom_rotated_latitude_longitude;
DROP TABLE geom_rotated_latitude_longitude CASCADE;
\i $SQLHOME/geom_rotated_latitude_longitude.sql
SET search_path TO public,data;
INSERT INTO geom_rotated_latitude_longitude SELECT * from x_temp;
\i $SQLHOME/geom_rotated_latitude_longitude_v.sql
SET search_path TO public,data;
DROP TABLE x_temp;

CREATE TEMP TABLE x_temp AS SELECT * FROM geom_reduced_gaussian;
DROP TABLE geom_reduced_gaussian CASCADE;
\i $SQLHOME/geom_reduced_gaussian.sql
SET search_path TO public,data;
INSERT INTO geom_reduced_gaussian SELECT * from x_temp;
\i $SQLHOME/geom_reduced_gaussian_v.sql
SET search_path TO public,data;
DROP TABLE x_temp;


\i $SQLHOME/radon_version_f.sql
SELECT public.radon_version_f();
EOSQL
