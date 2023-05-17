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
-- Name: param_precision_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.param_precision_v AS
 SELECT pp.id,
    pp.param_id,
    p.name AS param_name,
    pp."precision",
    pp.last_updater,
    pp.last_updated
   FROM public.param_precision pp,
    public.param p
  WHERE (pp.param_id = p.id);


ALTER TABLE public.param_precision_v OWNER TO radon_admin;

--
-- Name: TABLE param_precision_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.param_precision_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

