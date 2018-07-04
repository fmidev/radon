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
-- Name: station_probability_limit_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW station_probability_limit_v AS
 SELECT l.station_id,
    s.name AS station_name,
    l.param_id,
    p.name AS param_name,
    l.probability_limit,
    l.last_updater,
    l.last_updated
   FROM station_probability_limit l,
    station s,
    param p
  WHERE ((l.station_id = s.id) AND (l.param_id = p.id));


ALTER TABLE public.station_probability_limit_v OWNER TO postgres;

--
-- Name: station_probability_limit_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE station_probability_limit_v FROM PUBLIC;
REVOKE ALL ON TABLE station_probability_limit_v FROM postgres;
GRANT ALL ON TABLE station_probability_limit_v TO postgres;
GRANT SELECT ON TABLE station_probability_limit_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

