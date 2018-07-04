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
-- Name: geom_reduced_gaussian_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW geom_reduced_gaussian_v AS
 SELECT g.id AS geometry_id,
    g.name AS geometry_name,
    grg.nj,
    st_x(grg.first_point) AS first_lon,
    st_y(grg.first_point) AS first_lat,
    st_x(grg.last_point) AS last_lon,
    st_y(grg.last_point) AS last_lat,
    grg.scanning_mode,
    grg.n,
    grg.points_along_parallels,
    grg.description
   FROM geom g,
    geom_reduced_gaussian grg
  WHERE ((g.id = grg.id) AND (g.projection_id = 6));


ALTER TABLE public.geom_reduced_gaussian_v OWNER TO postgres;

--
-- Name: geom_reduced_gaussian_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE geom_reduced_gaussian_v FROM PUBLIC;
REVOKE ALL ON TABLE geom_reduced_gaussian_v FROM postgres;
GRANT ALL ON TABLE geom_reduced_gaussian_v TO postgres;
GRANT SELECT ON TABLE geom_reduced_gaussian_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

