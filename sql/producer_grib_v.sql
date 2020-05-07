--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.2

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
-- Name: producer_grib_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.producer_grib_v AS
 SELECT r.producer_id,
    f.centre,
    f.ident
   FROM public.table_meta_grid r,
    public.producer_grib f
  WHERE (r.producer_id = f.producer_id);


ALTER TABLE public.producer_grib_v OWNER TO radon_admin;

--
-- Name: TABLE producer_grib_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.producer_grib_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

