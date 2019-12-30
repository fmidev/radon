--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 12.1

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
    gs.description
   FROM public.geom g,
    public.geom_lambert_conformal gs
  WHERE ((g.id = gs.id) AND (g.projection_id = 5));


ALTER TABLE public.geom_lambert_conformal_v OWNER TO radon_admin;

--
-- Name: TABLE geom_lambert_conformal_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.geom_lambert_conformal_v TO radon_ro;
GRANT SELECT ON TABLE public.geom_lambert_conformal_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

