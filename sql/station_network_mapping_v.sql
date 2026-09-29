--
-- PostgreSQL database dump
--

\restrict d3i34e94xOGYnszEL8i74VzRBo2zb4qTtIqNKTOTBF62BQdoU0pacO8KfQPtgcJ

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
-- Name: station_network_mapping_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.station_network_mapping_v AS
 SELECT s.id AS mapping_id,
    s.station_id,
    ss.name AS station_name,
    s.network_id,
    n.name AS network_name,
    s.local_station_id,
    s.begin_time,
    s.end_time,
    s.last_updater,
    s.last_updated
   FROM public.station_network_mapping s,
    public.network n,
    public.station ss
  WHERE ((s.station_id = ss.id) AND (s.network_id = n.id));


ALTER VIEW public.station_network_mapping_v OWNER TO radon_admin;

--
-- Name: TABLE station_network_mapping_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.station_network_mapping_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict d3i34e94xOGYnszEL8i74VzRBo2zb4qTtIqNKTOTBF62BQdoU0pacO8KfQPtgcJ

