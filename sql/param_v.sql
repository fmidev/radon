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
-- Name: param_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW param_v AS
 SELECT p.id AS param_id,
    p.name AS param_name,
    p.version AS param_version,
    u.name AS param_unit,
    i.name AS interpolation_method,
    p.description AS param_description,
    p.last_updater,
    p.last_updated
   FROM param p,
    param_unit u,
    interpolation_method i
  WHERE ((p.unit_id = u.id) AND (p.interpolation_id = i.id));


ALTER TABLE public.param_v OWNER TO postgres;

--
-- Name: param_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE param_v FROM PUBLIC;
REVOKE ALL ON TABLE param_v FROM postgres;
GRANT ALL ON TABLE param_v TO postgres;
GRANT SELECT ON TABLE param_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

