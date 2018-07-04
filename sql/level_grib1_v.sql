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
-- Name: level_grib1_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW level_grib1_v AS
 SELECT f.id AS producer_id,
    f.name AS producer_name,
    g.level_id,
    l.name AS level_name,
    g.grib_level_id,
    g.last_updater,
    g.last_updated
   FROM ((level_grib1 g
     JOIN fmi_producer f ON ((f.id = g.producer_id)))
     JOIN level l ON ((l.id = g.level_id)));


ALTER TABLE public.level_grib1_v OWNER TO postgres;

--
-- Name: level_grib1_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE level_grib1_v FROM PUBLIC;
REVOKE ALL ON TABLE level_grib1_v FROM postgres;
GRANT ALL ON TABLE level_grib1_v TO postgres;
GRANT SELECT ON TABLE level_grib1_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

