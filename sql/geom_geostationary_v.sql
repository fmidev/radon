--
-- PostgreSQL database dump
--

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
-- Name: geom_geostationary_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.geom_geostationary_v AS
 SELECT g.id AS geometry_id,
    g.name AS geometry_name,
    gs.ni,
    gs.nj,
    gs.nr,
    gs.dx,
    gs.dy,
    gs.xp,
    gs.yp,
    gs.sub_satellite_longitude,
    gs.sweep_axis,
    gs.scanning_mode,
    gs.description,
    e.a AS earth_semi_major,
    e.b AS earth_semi_minor,
    e.name AS earth_ellipsoid_name,
    (((((((('+proj=geos +h='::text || round(((((gs.nr)::numeric / 1000000.0) - (1)::numeric) * e.a))) || ' +lon_0='::text) || trim_scale(((gs.sub_satellite_longitude)::numeric / 1000000.0))) || ' +sweep='::text) || gs.sweep_axis) || ' '::text) || public.datum_text_f(e.name, e.a, e.b, NULL::character varying)) || ' +units=m +no_defs'::text) AS proj4
   FROM public.geom g,
    (public.geom_geostationary gs
     JOIN public.earth_shape e ON ((gs.earth_shape_id = e.id)))
  WHERE ((g.id = gs.id) AND (g.projection_id = 9));


ALTER TABLE public.geom_geostationary_v OWNER TO radon_admin;

--
-- Name: TABLE geom_geostationary_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.geom_geostationary_v TO radon_ro;


--
-- PostgreSQL database dump complete
--
