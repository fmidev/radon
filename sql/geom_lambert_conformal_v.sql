--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.3

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
-- Name: geom_lambert_conformal_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.geom_lambert_conformal_v AS
 SELECT g.id AS geometry_id,
    g.name AS geometry_name,
    gs.ni,
    gs.nj,
    public.st_x(gs.first_point) AS first_lon,
    public.st_y(gs.first_point) AS first_lat,
    gs.di,
    gs.dj,
    gs.scanning_mode,
    gs.orientation,
    gs.latin1,
    gs.latin2,
    public.st_x(gs.south_pole) AS south_pole_lon,
    public.st_y(gs.south_pole) AS south_pole_lat,
    gs.description,
    e.a AS earth_semi_major,
    e.b AS earth_semi_minor,
    e.name AS earth_ellipsoid_name,
    d.name AS datum_name,
    (((((((((('+proj=lcc +lat_0='::text || gs.latin1) || ' +lon_0='::text) || gs.orientation) || ' +lat_1='::text) || gs.latin1) || ' +lat_2='::text) || COALESCE(gs.latin2, gs.latin1)) || ' '::text) || public.datum_text_f(e.name, e.a, e.b, d.name)) || ' +units=m +no_defs'::text) AS proj4
   FROM public.geom g,
    ((public.geom_lambert_conformal gs
     LEFT JOIN public.earth_shape e ON ((gs.earth_shape_id = e.id)))
     LEFT JOIN public.datum d ON ((gs.datum_id = d.id)))
  WHERE ((g.id = gs.id) AND (g.projection_id = 5));


ALTER TABLE public.geom_lambert_conformal_v OWNER TO radon_admin;

--
-- Name: TABLE geom_lambert_conformal_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.geom_lambert_conformal_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

