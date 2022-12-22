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
-- Name: ss_state_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.ss_state_v AS
 SELECT s.producer_id,
    s.geometry_id,
    s.forecast_type_id,
    s.forecast_type_value,
    s.analysis_time,
    s.forecast_period,
    s.table_name,
    a.delete_time,
    s.last_updater,
    s.last_updated
   FROM public.ss_state s,
    public.as_grid a
  WHERE ((a.producer_id = s.producer_id) AND (a.geometry_id = s.geometry_id) AND (a.analysis_time = s.analysis_time));


ALTER TABLE public.ss_state_v OWNER TO radon_admin;

--
-- Name: TABLE ss_state_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.ss_state_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

