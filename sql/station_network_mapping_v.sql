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
-- Name: station_network_mapping_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW station_network_mapping_v AS
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
   FROM station_network_mapping s,
    network n,
    station ss
  WHERE ((s.station_id = ss.id) AND (s.network_id = n.id));


ALTER TABLE public.station_network_mapping_v OWNER TO postgres;

--
-- Name: station_network_mapping_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE station_network_mapping_v FROM PUBLIC;
REVOKE ALL ON TABLE station_network_mapping_v FROM postgres;
GRANT ALL ON TABLE station_network_mapping_v TO postgres;
GRANT SELECT ON TABLE station_network_mapping_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

