set -ue

SQLHOME=../../sql

psql -1 << EOSQL
\i $SQLHOME/ss_forecast_status.sql
SET search_path TO public,data;
\i $SQLHOME/radon_version_f.sql
SELECT public.radon_version_f();
EOSQL
