--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: grid_era5mta_ssv; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.grid_era5mta_ssv AS
 SELECT a.producer_id,
    f.name AS producer_name,
    date_trunc('year'::text, (a.analysis_time + a.forecast_period)) AS analysis_time,
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
    ((a.analysis_time - date_trunc('year'::text, (a.analysis_time + a.forecast_period))) + a.forecast_period) AS forecast_period,
    ((date_trunc('year'::text, (a.analysis_time + a.forecast_period)) + (a.analysis_time - date_trunc('year'::text, (a.analysis_time + a.forecast_period)))) + a.forecast_period) AS forecast_time,
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
   FROM data.grid_era5mta a,
    public.fmi_producer f,
    public.level l,
    public.param p,
    public.geom g,
    public.forecast_type t,
    public.file_format ff,
    public.file_protocol fp
  WHERE ((a.producer_id = f.id) AND (a.level_id = l.id) AND (a.param_id = p.id) AND (a.geometry_id = g.id) AND (ff.id = a.file_format_id) AND (fp.id = a.file_protocol_id) AND (a.forecast_type_id = t.id) AND (date_trunc('month'::text, (a.analysis_time + a.forecast_period)) >= '2019-01-01 00:00:00+00'::timestamp with time zone) AND (date_trunc('month'::text, (a.analysis_time + a.forecast_period)) < '2020-01-01 00:00:00+00'::timestamp with time zone));


ALTER TABLE public.grid_era5mta_ssv OWNER TO radon_admin;

--
-- Name: TABLE grid_era5mta_ssv; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.grid_era5mta_ssv TO radon_ro;


--
-- PostgreSQL database dump complete
--

