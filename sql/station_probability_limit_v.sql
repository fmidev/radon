--
-- PostgreSQL database dump
--

\restrict zf54iOGAPk6u6mU7q55npbXNheyQrcO97RObihpVINkyyHnWDQAFIsobc5jq7sF

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
-- Name: station_probability_limit_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.station_probability_limit_v AS
 SELECT l.station_id,
    s.name AS station_name,
    l.param_id,
    p.name AS param_name,
    l.probability_limit,
    l.last_updater,
    l.last_updated
   FROM public.station_probability_limit l,
    public.station s,
    public.param p
  WHERE ((l.station_id = s.id) AND (l.param_id = p.id));


ALTER VIEW public.station_probability_limit_v OWNER TO radon_admin;

--
-- Name: TABLE station_probability_limit_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.station_probability_limit_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

\unrestrict zf54iOGAPk6u6mU7q55npbXNheyQrcO97RObihpVINkyyHnWDQAFIsobc5jq7sF

