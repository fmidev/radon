set -ue

SQLHOME=../../sql

psql -1 << EOSQL
ALTER TABLE geom_stereographic ADD COLUMN latin numeric NOT NULL DEFAULT 90;
ALTER TABLE geom_stereographic ADD COLUMN lat_ts numeric NULL;
UPDATE geom_stereographic SET lat_ts = 60 WHERE name <> 'NEMO609719';
UPDATE geom_stereographic SET lat_ts = 90 WHERE name = 'NEMO609719';
DROP VIEW geom_stereographic_v CASCADE;
\i $SQLHOME/geom_stereographic_v.sql
SET search_path TO public,data;
\i $SQLHOME/radon_version_f.sql
SELECT public.radon_version_f();
EOSQL
