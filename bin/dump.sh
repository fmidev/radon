#!/bin/sh
# function to dump database contents to files

set -ue

PSQL_ARGS="-v ON_ERROR_STOP=1 -Aqt"

# tables 

sql="SELECT n.nspname||'.'||relname FROM pg_class c JOIN pg_namespace n ON n.oid = c.relnamespace WHERE c.relkind = 'r' AND n.nspname IN ('public', 'audit') ORDER BY 1"

for t in $(echo $sql | psql $PSQL_ARGS); do
  if [ "$t" = "public.tm_world_borders-0.3" ]; then
    continue
  fi

  echo table: $t

  plainname=$(echo $t | cut -d '.' -f 2)

  pg_dump -s -t $t -f $plainname.sql

  if [ "$t" = "public.ss_state" ] || [ "$t" = "audit.logged_actions" ] || [ "$t" = "public.as_grid" ] || [ "$t" = "public.himan_run_statistics" ]; then
    continue
  fi
  pg_dump -a -t $t -f ${plainname}-data.sql
done

rm -f ss_state-data.sql \
	as_grid-data.sql \
	as_previ-data.sql \
	table_meta_grid-data.sql \
	table_meta_previ-data.sql \
	himan_run_statistics-data.sql \
	logged_actions-data.sql \
	grid_data_template-data.sql \
	previ_data_template-data.sql \
	usage_info-data.sql \
	spatial_ref_sys*.sql \
	raster_columns.sql \
	raster_overviews.sql \
	geography_columns.sql \
	geometry_columns.sql \
	grid_data_template-data.sql \
	previ_data_template-data.sql

# views

sql="SELECT relname FROM pg_class c JOIN pg_namespace n ON n.oid = c.relnamespace WHERE c.relkind = 'v' AND n.nspname = 'public' AND (c.relname NOT LIKE 'grid%v' AND c.relname NOT LIKE 'previ%v') ORDER BY 1"

for t in $(echo $sql | psql $PSQL_ARGS); do
  echo view: $t
  pg_dump -s -t $t -f $t.sql
done

# functions

for f in if_modified_func store_last_updated_f param_grib1_duplicate_check_f param_grib2_duplicate_check_f table_meta_producer_class_id_f update_record_count_f; do
  echo "function: $f"
  sql="SELECT pg_get_functiondef(f.oid) FROM pg_catalog.pg_proc f INNER JOIN pg_catalog.pg_namespace n ON (f.pronamespace = n.oid) WHERE n.nspname IN ('public','audit') AND proname IN ('$f')"
  echo $sql | psql $PSQL_ARGS > $f.sql
done

echo "finished" 
