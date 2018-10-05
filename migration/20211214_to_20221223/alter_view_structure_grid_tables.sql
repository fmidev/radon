DROP VIEW IF EXISTS grid_PRODUCER_v;

CREATE VIEW grid_PRODUCER_v AS
 SELECT a.producer_id,
    f.name AS producer_name,
    a.analysis_time,
    a.geometry_id,
    g.name AS geometry_name,
    a.param_id,
    check_for_unknown_param(v21.v1_param_name, p.name, a.aggregation_id, a.processing_type_id) AS param_name, 
    a.level_id,
    l.name AS level_name,
    a.level_value,
    a.level_value2,
    a.forecast_period,
    a.forecast_period + a.analysis_time AS forecast_time,
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
   FROM data.grid_PRODUCER a
   JOIN fmi_producer f ON (a.producer_id = f.id)
   JOIN level l ON (a.level_id = l.id)
   JOIN param p ON (a.param_id = p.id)
   JOIN geom g ON (a.geometry_id = g.id)
   JOIN forecast_type t ON (a.forecast_type_id = t.id)
   JOIN file_format ff ON (a.file_format_id = ff.id)
   JOIN file_protocol fp ON (a.file_protocol_id = fp.id)
   LEFT OUTER JOIN param_v2_to_v1 v21 ON (
     a.param_id = v21.v2_param_id AND 
     a.aggregation_id = v21.aggregation_id AND 
     (a.aggregation_period = v21.aggregation_period OR ((a.producer_id = v21.producer_id OR v21.producer_id = -1) AND v21.no_fixed_aggregation_period)) AND 
     a.processing_type_id = v21.processing_type_id AND
     a.processing_type_value = v21.processing_type_value AND
     a.processing_type_value2 = v21.processing_type_value2) AND
     (a.producer_id = v21.producer_id OR v21.producer_id = -1);

ALTER VIEW grid_PRODUCER_v OWNER TO radon_admin;
GRANT SELECT ON grid_PRODUCER_v to PUBLIC;

DROP VIEW IF EXISTS grid_PRODUCER_v2;

CREATE VIEW grid_PRODUCER_v2 AS
 SELECT a.producer_id,
    f.name AS producer_name,
    a.analysis_time,
    a.geometry_id,
    g.name AS geometry_name,
    pot.id AS production_type_id,
    a.param_id,
    p.name AS param_name,
    ag.id AS aggregation_id,
    ag.name AS aggregation_name,
    a.aggregation_period,
    a.processing_type_id,
    pt.name AS processing_type_name,
    a.processing_type_value,
    a.processing_type_value2,
    a.level_id,
    l.name AS level_name,
    a.level_value,
    a.level_value2,
    a.forecast_period,
    a.forecast_period + a.analysis_time AS forecast_time,
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
   FROM data.grid_PRODUCER a,
    fmi_producer f,
    level l,
    param p,
    geom g,
    forecast_type t,
    file_format ff,
    file_protocol fp,
    production_type pot,
    processing_type pt,
    aggregation ag
  WHERE a.producer_id = f.id 
  AND a.level_id = l.id
  AND a.param_id = p.id
  AND a.geometry_id = g.id
  AND ff.id = a.file_format_id
  AND fp.id = a.file_protocol_id
  AND a.forecast_type_id = t.id
  AND a.production_type_id = pot.id
  AND a.processing_type_id = pt.id
  AND a.aggregation_id = ag.id;

ALTER VIEW grid_PRODUCER_v2 OWNER TO radon_admin;
GRANT SELECT ON grid_PRODUCER_v2 to PUBLIC;
