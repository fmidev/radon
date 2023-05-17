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
-- Name: geom_stereographic_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.geom_stereographic_v AS
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
    gs.latin,
    COALESCE(gs.lat_ts, gs.latin) AS lat_ts,
    gs.description,
    e.a AS earth_semi_major,
    e.b AS earth_semi_minor,
    e.name AS earth_ellipsoid_name,
    d.name AS datum_name,
    format('+proj=stere +lat_0=%s +lat_ts=%s +lon_0=%s %s +no_defs'::text, gs.latin, COALESCE(gs.lat_ts, gs.latin), gs.orientation, public.datum_text_f(e.name, e.a, e.b, d.name)) AS proj4
   FROM public.geom g,
    ((public.geom_stereographic gs
     LEFT JOIN public.earth_shape e ON ((gs.earth_shape_id = e.id)))
     LEFT JOIN public.datum d ON ((gs.datum_id = d.id)))
  WHERE ((g.id = gs.id) AND (g.projection_id = 2));


ALTER TABLE public.geom_stereographic_v OWNER TO radon_admin;

--
-- Name: TABLE geom_stereographic_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.geom_stereographic_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

