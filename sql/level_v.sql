--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: level_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.level_v AS
 SELECT l.id AS level_id,
    l.name AS level_name,
    u.name AS level_unit,
    l.last_updater,
    l.last_updated
   FROM public.level l,
    public.param_unit u
  WHERE (l.unit_id = u.id);


ALTER TABLE public.level_v OWNER TO radon_admin;

--
-- Name: TABLE level_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.level_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

