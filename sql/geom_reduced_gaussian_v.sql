--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: geom_reduced_gaussian_v; Type: VIEW; Schema: public; Owner: postgres
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
    grg.description
   FROM public.geom g,
    public.geom_reduced_gaussian grg
  WHERE ((g.id = grg.id) AND (g.projection_id = 6));


ALTER TABLE public.geom_reduced_gaussian_v OWNER TO postgres;

--
-- Name: TABLE geom_reduced_gaussian_v; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.geom_reduced_gaussian_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

