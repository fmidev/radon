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
-- Name: station_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW station_v AS
 SELECT s.id AS station_id,
    s.name AS station_name,
    st_x(s."position") AS longitude,
    st_y(s."position") AS latitude,
    s.elevation,
    s.elevation_altimeter,
    s.external_information,
    s.is_mobile,
    w.name AS country_name
   FROM station s,
    world_borders_v w
  WHERE st_contains(w.geom, s."position");


ALTER TABLE public.station_v OWNER TO postgres;

--
-- Name: station_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE station_v FROM PUBLIC;
REVOKE ALL ON TABLE station_v FROM postgres;
GRANT ALL ON TABLE station_v TO postgres;
GRANT SELECT ON TABLE station_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

