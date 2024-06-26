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
-- Name: himan_run_statistics_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.himan_run_statistics_v AS
 SELECT himan_run_statistics.id,
    himan_run_statistics.hostname,
    himan_run_statistics.finish_time,
    himan_run_statistics.configuration_name,
    (himan_run_statistics.configuration #>> '{}'::text[]) AS configuration,
    (himan_run_statistics.statistics #>> '{}'::text[]) AS statistics
   FROM public.himan_run_statistics;


ALTER TABLE public.himan_run_statistics_v OWNER TO radon_admin;

--
-- Name: TABLE himan_run_statistics_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.himan_run_statistics_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

