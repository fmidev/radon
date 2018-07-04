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
-- Name: geom_latitude_longitude_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW geom_latitude_longitude_v AS
 SELECT g.id AS geometry_id,
    g.name AS geometry_name,
    gll.ni,
    gll.nj,
    st_x(gll.first_point) AS first_lon,
    st_y(gll.first_point) AS first_lat,
    gll.di,
    gll.dj,
    gll.scanning_mode,
    gll.description
   FROM geom g,
    geom_latitude_longitude gll
  WHERE ((g.id = gll.id) AND (g.projection_id = 1));


ALTER TABLE public.geom_latitude_longitude_v OWNER TO postgres;

--
-- Name: geom_latitude_longitude_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE geom_latitude_longitude_v FROM PUBLIC;
REVOKE ALL ON TABLE geom_latitude_longitude_v FROM postgres;
GRANT ALL ON TABLE geom_latitude_longitude_v TO postgres;
GRANT SELECT ON TABLE geom_latitude_longitude_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

