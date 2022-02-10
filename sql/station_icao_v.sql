--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.1

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
-- Name: station_icao_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.station_icao_v AS
 SELECT s.id AS station_id,
    s.name AS station_name,
    public.st_x(s."position") AS longitude,
    public.st_y(s."position") AS latitude,
    s.elevation,
    m.local_station_id AS icao_id
   FROM public.station s,
    public.station_network_mapping m
  WHERE ((s.id = m.station_id) AND (m.network_id = 2));


ALTER TABLE public.station_icao_v OWNER TO radon_admin;

--
-- Name: TABLE station_icao_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.station_icao_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

