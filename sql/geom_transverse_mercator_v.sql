--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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
-- Name: geom_transverse_mercator_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.geom_transverse_mercator_v AS
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
    gs.scale,
    gs.description,
    e.a AS earth_semi_major,
    e.b AS earth_semi_minor,
    '+proj=tmerc +lat_0='||latin||' +lon_0='||orientation||' +k='||scale||coalesce(' +a='||e.a, '')||coalesce(' +b='||e.b, '')||' +units=m +no_defs' AS proj4
   FROM public.geom g,
    public.geom_transverse_mercator gs
  LEFT OUTER JOIN earth_shape e ON (gs.earth_shape_id = e.id)
  WHERE ((g.id = gs.id) AND (g.projection_id = 8));


ALTER TABLE public.geom_transverse_mercator_v OWNER TO radon_admin;

--
-- Name: TABLE geom_transverse_mercator_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.geom_transverse_mercator_v TO radon_ro;
GRANT SELECT ON TABLE public.geom_transverse_mercator_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

