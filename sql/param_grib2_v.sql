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
-- Name: param_grib2_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.param_grib2_v AS
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
   FROM (((public.param_grib2 g
     JOIN public.fmi_producer f ON ((f.id = g.producer_id)))
     JOIN public.param p ON ((p.id = g.param_id)))
     LEFT JOIN public.level l ON ((g.level_id = l.id)));


ALTER TABLE public.param_grib2_v OWNER TO radon_admin;

--
-- Name: TABLE param_grib2_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.param_grib2_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

