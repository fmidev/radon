DROP VIEW grid_era5mta_ssv;

CREATE VIEW grid_era5mta_ssv AS
SELECT
  a.producer_id,
  f.name AS producer_name,
  date_trunc('year', a.analysis_time + a.forecast_period) AS analysis_time,
  a.geometry_id,
  g.name AS geometry_name,
  a.param_id,
  p.name AS param_name,
  a.level_id,
  l.name AS level_name,
  a.level_value,
  a.level_value2,
  a.analysis_time AS orig_analysis_time,
  a.forecast_period AS orig_forecast_period,
  a.analysis_time - date_trunc('year', a.analysis_time + a.forecast_period) + a.forecast_period AS forecast_period,
  a.analysis_time + a.forecast_period AS orig_forecast_time,
  date_trunc('year', a.analysis_time + a.forecast_period) + (a.analysis_time - date_trunc('year', a.analysis_time + a.forecast_period)) + a.forecast_period AS forecast_time,
  a.file_location,
  a.file_server,
  a.forecast_type_id,
  t.name AS forecast_type_name,
  a.forecast_type_value,
  a.file_format_id,
  ff.name AS file_format_name,
  a.file_protocol_id,
  fp.name AS file_protocol_name,
  a.message_no,
  a.byte_offset,
  a.byte_length,
  a.last_updater,
  a.last_updated
FROM
  data.grid_era5mta a,
  fmi_producer f,
  level l,
  param p,
  geom g,
  forecast_type t,
  file_format ff,
  file_protocol fp
WHERE 
  a.producer_id = f.id
  AND
  a.level_id = l.id
  AND
  a.param_id = p.id
  AND
  a.geometry_id = g.id
  AND
  ff.id = a.file_format_id
  AND
  fp.id = a.file_protocol_id
  AND
  a.forecast_type_id = t.id
  AND
  date_trunc('year', a.analysis_time + a.forecast_period) >= '2019-01-01 00:00:00'::timestamptz
  AND
  date_trunc('year', a.analysis_time + a.forecast_period) < '2020-01-01 00:00:00'::timestamptz
;

GRANT SELECT ON grid_era5mta_ssv TO public;
