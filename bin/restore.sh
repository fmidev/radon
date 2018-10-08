#!/bin/sh

set -ue

cd sql

PSQL_ARGS="-v ON_ERROR_STOP=1 -Aqt"

# database

echo "CREATE DATABASE radon OWNER postgres" | psql $PSQL_ARGS -d postgres

export PGDATABASE=radon

echo "CREATE SCHEMA audit" | psql $PSQL_ARGS
echo "CREATE SCHEMA data" | psql $PSQL_ARGS

echo "GRANT ALL ON SCHEMA data TO radon_rw" | psql $PSQL_ARGS

# extensions

echo "CREATE EXTENSION postgis" | psql $PSQL_ARGS
echo "CREATE EXTENSION intarray" | psql $PSQL_ARGS
echo "CREATE EXTENSION hstore" | psql $PSQL_ARGS

# users

echo "CREATE GROUP radon_rw" | psql $PSQL_ARGS
echo "CREATE GROUP radon_ro" | psql $PSQL_ARGS
echo "CREATE USER radon_client" | psql $PSQL_ARGS
echo "CREATE USER wetodb" | psql $PSQL_ARGS
echo "GRANT radon_ro TO radon_rw" | psql $PSQL_ARGS
echo "GRANT radon_ro TO radon_client" | psql $PSQL_ARGS
echo "GRANT radon_rw TO wetodb" | psql $PSQL_ARGS

set +u

if [ -n "$RADON_WETODB_PASSWORD" ]; then
  echo "Setting wetodb user password"
  echo "ALTER USER wetodb WITH PASSWORD '$RADON_WETODB_PASSWORD'" | psql $PSQL_ARGS
else
  echo "Warning: Radon user wetodb has no password set"
fi

if [ -n "$RADON_RADONCLIENT_PASSWORD" ]; then
  echo "Setting radon_client user password"
  echo "ALTER USER radon_client WITH PASSWORD '$RADON_RADONCLIENT_PASSWORD'" | psql $PSQL_ARGS
else
  echo "Warning: Radon user neons_client has no password set"
fi

set -u

# audit table

echo "file: logged_actions.sql"
psql $PSQL_ARGS -f logged_actions.sql

# functions

for f in if_modified_func \
	store_last_updated_f \
	param_grib1_duplicate_check_f \
	param_grib2_duplicate_check_f \
	table_meta_producer_class_id_f; do
  echo "file: $f.sql"
  psql $PSQL_ARGS -f $f.sql
done

# tables 

for f in producer_class producer_class-data \
	producer_type producer_type-data \
	fmi_producer fmi_producer-data \
	producer_grib producer_grib-data \
	producer_meta producer_meta-data \
	projection projection-data \
	forecast_type forecast_type-data \
	earth_shape \
	geom geom-data \
	geom_latitude_longitude geom_latitude_longitude-data \
	geom_rotated_latitude_longitude geom_rotated_latitude_longitude-data \
	geom_stereographic geom_stereographic-data \
	geom_lambert_conformal geom_lambert_conformal-data \
	geom_reduced_gaussian geom_reduced_gaussian-data \
	level level-data \
	level_grib1 level_grib1-data \
	level_grib2 level_grib2-data \
	interpolation_method interpolation_method-data \
	param_unit param_unit-data \
	param param-data \
	param_grib1 param_grib1-data \
	param_grib2 param_grib2-data \
	param_grib2_template param_grib2_template-data \
	param_newbase param_newbase-data \
	param_newbase_name param_newbase_name-data \
	param_netcdf param_netcdf-data \
	param_level_transform param_level_transform-data \
	param_precision param_precision-data \
	as_grid \
	as_previ \
	network network-data \
	station station-data \
	station_network_mapping station_network_mapping-data \
	himan_run_statistics \
	table_meta_grid table_meta_previ \
	usage_info ss_state \
	hybrid_level_height hybrid_level_height-data \
	station_probability_limit station_probability_limit-data \
	grid_data_template previ_data_template \
	tm_world_borders-0.3 ; do
  echo "file: $f.sql"
  psql $PSQL_ARGS -f $f.sql
done


# views

for f in *_v.sql ; do
  if [ "$f" = "station_v.sql" ]; then
    continue
  fi
  echo "file: $f"
  psql $PSQL_ARGS -f $f

done

echo "file: station_v.sql"
psql $PSQL_ARGS -f station_v.sql

echo "finished" 
