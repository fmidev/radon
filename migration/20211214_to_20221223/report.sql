/*
SELECT analysis_time,forecast_period,param_name,file_location FROM grid_PRODUCER_v LIMIT 10;
SELECT analysis_time,forecast_period,param_name,aggregation_name as a_name,aggregation_period as a_period,processing_type_name as pt_name,processing_type_value as pt_value,processing_type_value2 as pt_value2,file_location FROM grid_PRODUCER_v2 LIMIT 10;
*/
SELECT param_name,count(*) FROM grid_PRODUCER_v GROUP BY 1 ORDER BY 1;
SELECT param_name,count(*) FROM grid_PRODUCER_v2 GROUP BY 1 ORDER BY 1;

DO
$$
DECLARE
  rowa int;
  rowb int;
BEGIN
  SELECT count(*) INTO rowa FROM grid_PRODUCER_v;
  SELECT count(*) INTO rowb FROM grid_PRODUCER_v2;

  IF rowa <> rowb THEN
    RAISE EXCEPTION 'View row counts do not match: % vs %', rowa, rowb;
  END IF;
END;
$$;

SELECT 'grid_PRODUCER_v',count(*) FROM grid_PRODUCER_v UNION ALL SELECT 'grid_PRODUCER_v2', count(*) FROM grid_PRODUCER_v2 UNION ALL SELECT 'grid_PRODUCER', count(*) FROM data.grid_PRODUCER;
SELECT 'UNKNOWN',count(*) FROM grid_PRODUCER_v WHERE param_name LIKE 'UNKNOWN%' 
UNION ALL SELECT 'PROB',count(*) FROM grid_PRODUCER_v2 WHERE param_name like 'PROB%'
UNION ALL SELECT 'BIAS',count(*) FROM grid_PRODUCER_v2 WHERE param_name like '%BIAS%'
UNION ALL SELECT 'MINMAX',count(*) FROM grid_PRODUCER_v2 WHERE param_name like '%MIN%' OR param_name LIKE '%MAX%'
UNION ALL SELECT 'F\d',count(*) FROM grid_PRODUCER_v2 WHERE param_name ~ 'F\d+'
UNION ALL SELECT 'JM2 but no flux',count(*) FROM grid_PRODUCER_v2 WHERE (param_name LIKE '%JM2' AND aggregation_id <> 3)
UNION ALL SELECT 'KGM2 but no accumulation',count(*) FROM grid_PRODUCER_v2 WHERE (param_name LIKE '%KGM2' AND aggregation_id <> 3 AND param_name NOT IN ('TCLW-KGM2', 'TOTCWV-KGM2','TCIW-KGM2','TCW-KGM2','TOZONE-KGM2'))
UNION ALL SELECT 'WM2 but no average',count(*) FROM grid_PRODUCER_v2 WHERE (param_name LIKE '%WM2' AND aggregation_id <> 2)
;

