DROP VIEW grid_era5mta_ssv;

CREATE VIEW grid_era5mta_ssv AS
WITH raw AS (
SELECT
  a.producer_id,
  f.name AS producer_name,
  date_trunc('year', (extract(year from current_date) - 2019) * interval '1 year' + a.analysis_time + a.forecast_period) AS analysis_time,
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
  a.analysis_time + (extract(year from current_date) - 2019) * interval '1 year' - date_trunc('year', a.analysis_time + (extract(year from current_date) - 2019) * interval '1 year' + a.forecast_period) + a.forecast_period AS forecast_period,
  a.analysis_time + a.forecast_period AS orig_forecast_time,
  date_trunc('year', a.analysis_time + a.forecast_period) + (a.analysis_time - date_trunc('year', a.analysis_time + a.forecast_period)) + (extract(year from current_date) - 2019) * interval '1 year' + a.forecast_period AS forecast_time,
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
)
SELECT
  producer_id,
  producer_name,
  analysis_time,
  geometry_id,
  geometry_name,
  param_id,
  param_name,
  level_id,
  level_name,
  level_value,
  level_value2,
  orig_analysis_time,
  orig_forecast_period,
  forecast_period,
  orig_forecast_time,
  CASE
    WHEN extract(month FROM forecast_time) = 2 AND extract(day FROM forecast_time) = 29 THEN
    forecast_time + interval '1 day'
    ELSE
    forecast_time
  END AS forecast_time,
  file_location,
  file_server,
  forecast_type_id,
  forecast_type_name,
  forecast_type_value,
  file_format_id,
  file_format_name,
  file_protocol_id,
  file_protocol_name,
  message_no,
  byte_offset,
  byte_length,
  last_updater,
  last_updated
FROM
  raw
;

GRANT SELECT ON grid_era5mta_ssv TO public;
