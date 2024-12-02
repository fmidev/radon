echo "This script does not make changes to database, but generates SQL script to migrate grid data tables to new schema."
set -ue

grid_data_tables=$(psql -Aqt -c "SELECT tablename FROM pg_tables WHERE schemaname = 'data' AND tablename LIKE 'grid_%' AND tablename !~ '\d{6,}$';")

table_sql=""

for table in $grid_data_tables; do
  table_sql="$table_sql
  ALTER TABLE data.$table ADD COLUMN aggregation_id INT REFERENCES aggregation(id),ADD COLUMN aggregation_period INTERVAL, ADD COLUMN processing_type_id INT REFERENCES processing_type(id), ADD COLUMN processing_type_value NUMERIC, ADD COLUMN processing_type_value2 NUMERIC;"
done

previ_data_tables=$(psql -Aqt -c "SELECT tablename FROM pg_tables WHERE schemaname = 'data' AND tablename LIKE 'previ_%' AND tablename !~ '\d{6,}$';")

previ_table_sql=""

for table in $previ_data_tables; do
  previ_table_sql="$previ_table_sql
  ALTER TABLE data.$table ADD COLUMN aggregation_id INT REFERENCES aggregation(id),ADD COLUMN aggregation_period INTERVAL, ADD COLUMN processing_type_id INT REFERENCES processing_type(id), ADD COLUMN processing_type_value NUMERIC, ADD COLUMN processing_type_value2 NUMERIC;"
done

grid_view_producers=$(psql -Aqt -c "SELECT distinct producer_id FROM as_grid UNION SELECT distinct producer_id FROM as_previ;")

SQLHOME=$(pwd)/../../sql

sql=$(cat << EOSQL
BEGIN;
\i migrate.sql
\i $SQLHOME/aggregation.sql
SET search_path TO public,data;
\i $SQLHOME/aggregation-data.sql
SET search_path TO public,data;
\i $SQLHOME/processing_type.sql
SET search_path TO public,data;
\i $SQLHOME/processing_type-data.sql
SET search_path TO public,data;
\i $SQLHOME/grid_data_template.sql
SET search_path TO public,data;
$table_sql
$previ_table_sql
COMMIT;
EOSQL
)

echo "$sql" > /tmp/migrate-tables.sql

echo "SQL saved to /tmp/migrate-tables.sql"
echo "Run script with 'psql -e -v ON_ERROR_STOP=1 -1 -c /tmp/migrate-tables.sql'"

rm -f /tmp/recreate-views.sh

for producer in $grid_view_producers; do
  echo "radon_tables.py --recreate-views --producer $producer" >> /tmp/recreate-views.sh
done

echo "Commands saved to /tmp/recreate-views.sh"
echo "Run script with 'sh /tmp/recreate-views.sh'"
