set -ue

source ./radon-local-env.sh

PSQL_ARGS="-1 -v ON_ERROR_STOP=1"

psql $PSQL_ARGS < param_v2_to_v1.sql
sed "s/_TABLE_/param_newbase/g" update_param_metadata.sql | psql $PSQL_ARGS #psql $PSQL_ARGS < update_param_newbase_values.sql

# raw producers

for i in ecg skip; do
  if [ $i = "skip" ]; then
    continue
  fi
  echo "raw model producer: $i"
  tbl="grid_$i"

  sed "s/PRODUCER/$i/g" alter_table_structure_grid_tables.sql | psql $PSQL_ARGS
  sed "s/PRODUCER/$i/g" alter_view_structure_grid_tables.sql | psql $PSQL_ARGS

  sed "s/_TABLE_/data.$tbl/g" update_param_metadata.sql | psql $PSQL_ARGS
  sed "s/_TABLE_/data.$tbl/g" data-sql/update_raw_producer_data_table_metadata.sql | psql $PSQL_ARGS

  if [ -f "data-sql/$tbl.sql" ]; then
    sed "s/_TABLE_/data.$tbl/g" data-sql/$tbl.sql | psql $PSQL_ARGS
  fi

done


for i in skip; do
  if [ $i = "skip" ]; then
    continue
  fi

  echo "pp producer: $i"
  tbl="grid_$i"

  sed "s/PRODUCER/$i/g" alter_table_structure_grid_tables.sql | psql $PSQL_ARGS
  sed "s/PRODUCER/$i/g" alter_view_structure_grid_tables.sql | psql $PSQL_ARGS

  sed "s/_TABLE_/data.$tbl/g" update_param_metadata.sql | psql $PSQL_ARGS
  sed "s/_TABLE_/data.$tbl/g" data-sql/update_pp_producer_data_table_metadata.sql | psql $PSQL_ARGS

  if [ -f "data-sql/$tbl.sql" ]; then
    sed "s/_TABLE_/data.$tbl/g" data-sql/$tbl.sql | psql $PSQL_ARGS
  fi
done

psql $PSQL_ARGS < update_param_grib2_template_values.sql
psql $PSQL_ARGS < update_param_grib2_values.sql
psql $PSQL_ARGS < update_param_grib1_values.sql
psql $PSQL_ARGS < update_param_newbase_values.sql
psql $PSQL_ARGS < update_param_geotiff_values.sql
psql $PSQL_ARGS < update_param_precision_values.sql
psql $PSQL_ARGS < update_param_values.sql
psql $PSQL_ARGS < param_newbase_v.sql
psql $PSQL_ARGS < param_newbase_v2.sql


for i in  ecg; do
  sed "s/PRODUCER/$i/g" report.sql | psql $PSQL_ARGS
done
