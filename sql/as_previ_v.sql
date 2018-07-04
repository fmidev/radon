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
-- Name: as_previ_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW as_previ_v AS
 SELECT a.producer_id,
    p.name AS producer_name,
    a.table_name,
    a.partition_name,
    a.analysis_time,
    a.min_analysis_time,
    a.max_analysis_time,
    (pg.reltuples)::integer AS record_count,
    a.delete_time,
    a.last_updated,
    a.last_updater
   FROM as_previ a,
    fmi_producer p,
    pg_class pg
  WHERE ((a.producer_id = p.id) AND (pg.relname = (a.partition_name)::name));


ALTER TABLE public.as_previ_v OWNER TO postgres;

--
-- Name: as_previ_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE as_previ_v FROM PUBLIC;
REVOKE ALL ON TABLE as_previ_v FROM postgres;
GRANT ALL ON TABLE as_previ_v TO postgres;
GRANT SELECT ON TABLE as_previ_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

