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
-- Name: geom_stereographic_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW geom_stereographic_v AS
 SELECT g.id AS geometry_id,
    g.name AS geometry_name,
    gs.ni,
    gs.nj,
    st_x(gs.first_point) AS first_lon,
    st_y(gs.first_point) AS first_lat,
    gs.di,
    gs.dj,
    gs.scanning_mode,
    gs.orientation,
    gs.description
   FROM geom g,
    geom_stereographic gs
  WHERE ((g.id = gs.id) AND (g.projection_id = 2));


ALTER TABLE public.geom_stereographic_v OWNER TO postgres;

--
-- Name: geom_stereographic_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE geom_stereographic_v FROM PUBLIC;
REVOKE ALL ON TABLE geom_stereographic_v FROM postgres;
GRANT ALL ON TABLE geom_stereographic_v TO postgres;
GRANT SELECT ON TABLE geom_stereographic_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

