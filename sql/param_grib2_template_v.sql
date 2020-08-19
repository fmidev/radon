--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.3

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
-- Name: param_grib2_template_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.param_grib2_template_v AS
 SELECT t.param_id,
    p.name AS param_name,
    t.category,
    t.discipline,
    t.number,
    t.type_of_statistical_processing,
    t.last_updater,
    t.last_updated
   FROM public.param_grib2_template t,
    public.param p
  WHERE (t.param_id = p.id);


ALTER TABLE public.param_grib2_template_v OWNER TO radon_admin;

--
-- Name: TABLE param_grib2_template_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.param_grib2_template_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

