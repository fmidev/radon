ALTER TABLE param_newbase ADD COLUMN production_type_id INT DEFAULT 1 REFERENCES production_type(id);
ALTER TABLE param_newbase ADD COLUMN aggregation_id INT DEFAULT 1 REFERENCES aggregation(id);
ALTER TABLE param_newbase ADD COLUMN aggregation_period INTERVAL DEFAULT '00:00:00'::interval;
ALTER TABLE param_newbase ADD COLUMN processing_type_id INT DEFAULT 1 REFERENCES processing_type(id);
ALTER TABLE param_newbase ADD COLUMN processing_type_value NUMERIC DEFAULT -1;
ALTER TABLE param_newbase ADD COLUMN processing_type_value2 NUMERIC DEFAULT -1;

\i param_newbase_v.sql
\i param_newbase_v2.sql
