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
-- Name: param_precision_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW param_precision_v AS
 SELECT pp.id,
    pp.param_id,
    p.name AS param_name,
    pp."precision",
    pp.last_updater,
    pp.last_updated
   FROM param_precision pp,
    param p
  WHERE (pp.param_id = p.id);


ALTER TABLE public.param_precision_v OWNER TO postgres;

--
-- Name: param_precision_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE param_precision_v FROM PUBLIC;
REVOKE ALL ON TABLE param_precision_v FROM postgres;
GRANT ALL ON TABLE param_precision_v TO postgres;
GRANT SELECT ON TABLE param_precision_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

