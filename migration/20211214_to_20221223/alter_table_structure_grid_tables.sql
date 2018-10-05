DO $$
DECLARE
    row RECORD;
BEGIN
  BEGIN
    ALTER TABLE data.grid_PRODUCER ADD COLUMN production_type_id INT DEFAULT 1 REFERENCES production_type(id);
    ALTER TABLE data.grid_PRODUCER ADD COLUMN aggregation_id INT DEFAULT 1 REFERENCES aggregation(id);
    ALTER TABLE data.grid_PRODUCER ADD COLUMN aggregation_period INTERVAL DEFAULT '00:00:00'::interval;
    ALTER TABLE data.grid_PRODUCER ADD COLUMN processing_type_id INT DEFAULT 1 REFERENCES processing_type(id);
    ALTER TABLE data.grid_PRODUCER ADD COLUMN processing_type_value NUMERIC DEFAULT -1;
    ALTER TABLE data.grid_PRODUCER ADD COLUMN processing_type_value2 NUMERIC DEFAULT -1;

    ALTER TABLE data.grid_PRODUCER DROP CONSTRAINT grid_PRODUCER_pkey;
    ALTER TABLE data.grid_PRODUCER ADD PRIMARY KEY (producer_id, analysis_time, geometry_id, param_id, production_type_id, aggregation_id, aggregation_period, processing_type_id, processing_type_value, processing_type_value2, level_id, level_value, level_value2, forecast_period, forecast_type_id, forecast_type_value);

    FOR row IN SELECT cn.nspname AS schema_child, c.relname AS child
               FROM pg_inherits 
               JOIN pg_class AS c ON (inhrelid=c.oid)
               JOIN pg_class as p ON (inhparent=p.oid)
               JOIN pg_namespace pn ON pn.oid = p.relnamespace
               JOIN pg_namespace cn ON cn.oid = c.relnamespace
               WHERE p.relname = 'grid_PRODUCER' and pn.nspname = 'data' LOOP
    
      RAISE NOTICE 'Updating primary key for Child table: %.%', row.schema_child, row.child;
      EXECUTE 'ALTER TABLE ' || row.schema_child || '.' || row.child || ' DROP CONSTRAINT '||row.child||'_pkey';
      EXECUTE 'ALTER TABLE ' || row.schema_child || '.' || row.child || ' ADD PRIMARY KEY (producer_id, analysis_time, geometry_id, param_id, production_type_id, aggregation_id, aggregation_period, processing_type_id, processing_type_value, processing_type_value2, level_id, level_value, level_value2, forecast_period, forecast_type_id, forecast_type_value)';
    END LOOP;
  EXCEPTION
    WHEN duplicate_column THEN RAISE NOTICE 'Column exists -- has this script already been run?' ;
  END;
END;
$$;
