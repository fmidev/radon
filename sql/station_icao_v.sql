--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Name: station_icao_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW station_icao_v AS
 SELECT s.id AS station_id,
    s.name AS station_name,
    st_x(s."position") AS longitude,
    st_y(s."position") AS latitude,
    s.elevation,
    m.local_station_id AS icao_id
   FROM station s,
    station_network_mapping m
  WHERE ((s.id = m.station_id) AND (m.network_id = 2));


ALTER TABLE public.station_icao_v OWNER TO postgres;

--
-- Name: station_icao_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE station_icao_v FROM PUBLIC;
REVOKE ALL ON TABLE station_icao_v FROM postgres;
GRANT ALL ON TABLE station_icao_v TO postgres;
GRANT SELECT ON TABLE station_icao_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

