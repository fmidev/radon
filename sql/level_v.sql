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
-- Name: level_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW level_v AS
 SELECT l.id AS level_id,
    l.name AS level_name,
    u.name AS level_unit,
    l.last_updater,
    l.last_updated
   FROM level l,
    param_unit u
  WHERE (l.unit_id = u.id);


ALTER TABLE public.level_v OWNER TO postgres;

--
-- Name: level_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE level_v FROM PUBLIC;
REVOKE ALL ON TABLE level_v FROM postgres;
GRANT ALL ON TABLE level_v TO postgres;
GRANT SELECT ON TABLE level_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

