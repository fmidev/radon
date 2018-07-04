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
-- Name: param_grib2_template_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW param_grib2_template_v AS
 SELECT t.param_id,
    p.name AS param_name,
    t.category,
    t.discipline,
    t.number,
    t.last_updater,
    t.last_updated
   FROM param_grib2_template t,
    param p
  WHERE (t.param_id = p.id);


ALTER TABLE public.param_grib2_template_v OWNER TO postgres;

--
-- Name: param_grib2_template_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE param_grib2_template_v FROM PUBLIC;
REVOKE ALL ON TABLE param_grib2_template_v FROM postgres;
GRANT ALL ON TABLE param_grib2_template_v TO postgres;
GRANT SELECT ON TABLE param_grib2_template_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

