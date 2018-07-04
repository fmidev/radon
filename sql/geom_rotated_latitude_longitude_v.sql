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
-- Name: geom_rotated_latitude_longitude_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW geom_rotated_latitude_longitude_v AS
 SELECT g.id AS geometry_id,
    g.name AS geometry_name,
    grll.ni,
    grll.nj,
    st_x(grll.first_point) AS first_lon,
    st_y(grll.first_point) AS first_lat,
    grll.di,
    grll.dj,
    grll.scanning_mode,
    st_x(grll.south_pole) AS south_pole_lon,
    st_y(grll.south_pole) AS south_pole_lat,
    grll.description
   FROM geom g,
    geom_rotated_latitude_longitude grll
  WHERE ((g.id = grll.id) AND (g.projection_id = 4));


ALTER TABLE public.geom_rotated_latitude_longitude_v OWNER TO postgres;

--
-- Name: geom_rotated_latitude_longitude_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE geom_rotated_latitude_longitude_v FROM PUBLIC;
REVOKE ALL ON TABLE geom_rotated_latitude_longitude_v FROM postgres;
GRANT ALL ON TABLE geom_rotated_latitude_longitude_v TO postgres;
GRANT SELECT ON TABLE geom_rotated_latitude_longitude_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

