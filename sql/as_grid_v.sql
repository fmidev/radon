--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: as_grid_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.as_grid_v AS
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
    a.record_count,
    a.last_updater,
    a.last_updated
   FROM public.as_grid a,
    public.geom g,
    public.fmi_producer f
  WHERE ((a.geometry_id = g.id) AND (a.producer_id = f.id));


ALTER TABLE public.as_grid_v OWNER TO radon_admin;

--
-- Name: TABLE as_grid_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.as_grid_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

