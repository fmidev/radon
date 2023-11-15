set -ue

SQLHOME=../../sql

psql -1 << EOSQL
INSERT INTO earth_shape VALUES(7,6371229,6371229,NULL,'MEPS value');
SELECT setval('earth_shape_id_seq', 7);      
UPDATE geom_lambert_conformal SET earth_shape_id = 7 WHERE id = 1093;
UPDATE geom_lambert_conformal SET earth_shape_id = NULL WHERE id = 1050;
UPDATE geom_lambert_conformal SET earth_shape_id = NULL WHERE id = 1078;
UPDATE geom_lambert_conformal SET earth_shape_id = NULL WHERE id = 1095;
\i $SQLHOME/radon_version_f.sql
SELECT public.radon_version_f();
EOSQL
