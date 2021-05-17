set -ue

SQLHOME=../../sql

psql -1 << EOSQL
CREATE TEMP TABLE ss_state_temp AS SELECT * FROM ss_state;
DROP TABLE ss_state CASCADE;
\i $SQLHOME/ss_state.sql
\i $SQLHOME/ss_state_v.sql
SET search_path TO public,data;
INSERT INTO ss_state SELECT * FROM ss_state_temp;
\i $SQLHOME/radon_version_f.sql
SELECT public.radon_version_f();
EOSQL
