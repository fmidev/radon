--
-- PostgreSQL database dump
--

\restrict 2FM6YVCHaF0YytzROihc32dSPTdUof2ceiL2etd4LLqtGMK5aWuYieN51A8CzcA

-- Dumped from database version 15.2
-- Dumped by pg_dump version 16.15 (Ubuntu 16.15-0ubuntu0.24.04.1)

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
-- Name: level_grib1_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.level_grib1_v AS
 SELECT f.id AS producer_id,
    f.name AS producer_name,
    g.level_id,
    l.name AS level_name,
    g.grib_level_id,
    g.last_updater,
    g.last_updated
   FROM ((public.level_grib1 g
     JOIN public.fmi_producer f ON ((f.id = g.producer_id)))
     JOIN public.level l ON ((l.id = g.level_id)));


ALTER VIEW public.level_grib1_v OWNER TO radon_admin;

--
-- Name: TABLE level_grib1_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.level_grib1_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict 2FM6YVCHaF0YytzROihc32dSPTdUof2ceiL2etd4LLqtGMK5aWuYieN51A8CzcA

