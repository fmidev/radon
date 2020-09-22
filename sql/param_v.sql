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
-- Name: param_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.param_v AS
 SELECT p.id AS param_id,
    p.name AS param_name,
    p.version AS param_version,
    u.name AS param_unit,
    i.name AS interpolation_method,
    p.description AS param_description,
    p.last_updater,
    p.last_updated
   FROM public.param p,
    public.param_unit u,
    public.interpolation_method i
  WHERE ((p.unit_id = u.id) AND (p.interpolation_id = i.id));


ALTER TABLE public.param_v OWNER TO radon_admin;

--
-- Name: TABLE param_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.param_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

