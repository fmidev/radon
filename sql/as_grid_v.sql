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
-- Name: as_grid_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW as_grid_v AS
 SELECT a.id,
    a.producer_id,
    f.name AS producer_name,
    a.schema_name,
    a.table_name,
    a.partition_name,
    g.name AS geometry_name,
    a.analysis_time,
    a.min_analysis_time,
    a.max_analysis_time,
    a.delete_time,
    (c.reltuples)::integer AS record_count,
    a.last_updater,
    a.last_updated
   FROM as_grid a,
    geom g,
    fmi_producer f,
    pg_class c,
    pg_namespace n
  WHERE (((((a.geometry_id = g.id) AND (a.producer_id = f.id)) AND (c.relname = (a.partition_name)::name)) AND (c.relnamespace = n.oid)) AND (n.nspname = (a.schema_name)::name));


ALTER TABLE public.as_grid_v OWNER TO postgres;

--
-- Name: as_grid_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE as_grid_v FROM PUBLIC;
REVOKE ALL ON TABLE as_grid_v FROM postgres;
GRANT ALL ON TABLE as_grid_v TO postgres;
GRANT SELECT ON TABLE as_grid_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

