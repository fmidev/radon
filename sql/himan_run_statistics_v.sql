--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Name: himan_run_statistics_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW himan_run_statistics_v AS
 SELECT himan_run_statistics.id,
    himan_run_statistics.hostname,
    himan_run_statistics.finish_time,
    himan_run_statistics.configuration_name,
    (himan_run_statistics.configuration #>> '{}'::text[]) AS configuration,
    (himan_run_statistics.statistics #>> '{}'::text[]) AS statistics
   FROM himan_run_statistics;


ALTER TABLE public.himan_run_statistics_v OWNER TO postgres;

--
-- Name: himan_run_statistics_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE himan_run_statistics_v FROM PUBLIC;
REVOKE ALL ON TABLE himan_run_statistics_v FROM postgres;
GRANT ALL ON TABLE himan_run_statistics_v TO postgres;
GRANT SELECT ON TABLE himan_run_statistics_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

