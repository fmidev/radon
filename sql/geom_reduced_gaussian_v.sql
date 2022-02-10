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
-- Name: geom_reduced_gaussian_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.geom_reduced_gaussian_v AS
 SELECT g.id AS geometry_id,
    g.name AS geometry_name,
    grg.nj,
    public.st_x(grg.first_point) AS first_lon,
    public.st_y(grg.first_point) AS first_lat,
    public.st_x(grg.last_point) AS last_lon,
    public.st_y(grg.last_point) AS last_lat,
    grg.scanning_mode,
    grg.n,
    grg.points_along_parallels,
    grg.description,
    e.a AS earth_semi_major,
    e.b AS earth_semi_minor,
    e.name AS earth_ellipsoid_name,
    d.name AS datum_name,
    ((('+proj=latlong'::text || ' '::text) || public.datum_text_f(e.name, e.a, e.b, d.name)) || ' +no_defs'::text) AS proj4
   FROM public.geom g,
    ((public.geom_reduced_gaussian grg
     LEFT JOIN public.earth_shape e ON ((grg.earth_shape_id = e.id)))
     LEFT JOIN public.datum d ON ((grg.datum_id = d.id)))
  WHERE ((g.id = grg.id) AND (g.projection_id = 6));


ALTER TABLE public.geom_reduced_gaussian_v OWNER TO radon_admin;

--
-- Name: TABLE geom_reduced_gaussian_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.geom_reduced_gaussian_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

