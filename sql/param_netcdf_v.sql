--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.3

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
-- Name: param_netcdf_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.param_netcdf_v AS
 SELECT f.id AS producer_id,
    f.name AS producer_name,
    p.id AS param_id,
    p.name AS param_name,
    n.netcdf_name,
    n.last_updater,
    n.last_updated
   FROM ((public.param_netcdf n
     JOIN public.fmi_producer f ON ((f.id = n.producer_id)))
     JOIN public.param p ON ((p.id = n.param_id)));


ALTER TABLE public.param_netcdf_v OWNER TO radon_admin;

--
-- Name: TABLE param_netcdf_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.param_netcdf_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

