--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.6

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
-- Name: as_previ_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.as_previ_v AS
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
   FROM public.as_previ a,
    public.fmi_producer p,
    pg_class pg
  WHERE ((a.producer_id = p.id) AND (pg.relname = (a.partition_name)::name));


ALTER TABLE public.as_previ_v OWNER TO radon_admin;

--
-- Name: TABLE as_previ_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.as_previ_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

