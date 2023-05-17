--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.3

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
-- Name: ss_state_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.ss_state_v AS
 SELECT s.producer_id,
    s.geometry_id,
    s.forecast_type_id,
    s.forecast_type_value,
        CASE
            WHEN (s.producer_id = ANY (ARRAY[4, 260])) THEN (s.analysis_time + ('01:00:00'::interval * ((((3)::numeric - (EXTRACT(hour FROM s.analysis_time) % (3)::numeric)) % (3)::numeric))::double precision))
            ELSE s.analysis_time
        END AS analysis_time,
        CASE
            WHEN (s.producer_id = ANY (ARRAY[4, 260])) THEN (s.forecast_period - ('01:00:00'::interval * ((((3)::numeric - (EXTRACT(hour FROM s.analysis_time) % (3)::numeric)) % (3)::numeric))::double precision))
            ELSE s.forecast_period
        END AS forecast_period,
    s.table_name,
    a.delete_time,
    s.last_updater,
    s.last_updated
   FROM public.ss_state s,
    public.as_grid a
  WHERE ((a.producer_id = s.producer_id) AND (a.geometry_id = s.geometry_id) AND (a.analysis_time = s.analysis_time) AND ((s.producer_id <> ALL (ARRAY[4, 260])) OR ((s.forecast_period - ('01:00:00'::interval * ((((3)::numeric - (EXTRACT(hour FROM s.analysis_time) % (3)::numeric)) % (3)::numeric))::double precision)) >= '00:00:00'::interval)));


ALTER TABLE public.ss_state_v OWNER TO radon_admin;

--
-- Name: TABLE ss_state_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.ss_state_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

