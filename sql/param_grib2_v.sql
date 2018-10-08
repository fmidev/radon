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
-- Name: param_grib2_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW param_grib2_v AS
 SELECT f.id AS producer_id,
    f.name AS producer_name,
    p.id AS param_id,
    p.name AS param_name,
    g.discipline,
    g.category,
    g.number,
    l.id AS level_id,
    l.name AS level_name,
    g.type_of_statistical_processing,
    g.level_value,
    g.last_updater,
    g.last_updated
   FROM (((param_grib2 g
     JOIN fmi_producer f ON ((f.id = g.producer_id)))
     JOIN param p ON ((p.id = g.param_id)))
     LEFT JOIN level l ON ((g.level_id = l.id)));


ALTER TABLE public.param_grib2_v OWNER TO postgres;

--
-- Name: param_grib2_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE param_grib2_v FROM PUBLIC;
REVOKE ALL ON TABLE param_grib2_v FROM postgres;
GRANT ALL ON TABLE param_grib2_v TO postgres;
GRANT SELECT ON TABLE param_grib2_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

