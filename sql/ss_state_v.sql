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
-- Name: ss_state_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW ss_state_v AS
 SELECT s.producer_id,
    s.geometry_id,
    g.name AS geometry_name,
    s.forecast_type_id,
    f.name AS forecast_type_name,
    s.forecast_type_value,
    s.analysis_time,
    s.forecast_period,
    s.table_name,
    s.last_updater,
    s.last_updated
   FROM ss_state s,
    geom g,
    forecast_type f
  WHERE ((s.geometry_id = g.id) AND (s.forecast_type_id = f.id));


ALTER TABLE public.ss_state_v OWNER TO postgres;

--
-- Name: ss_state_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE ss_state_v FROM PUBLIC;
REVOKE ALL ON TABLE ss_state_v FROM postgres;
GRANT ALL ON TABLE ss_state_v TO postgres;
GRANT SELECT ON TABLE ss_state_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

