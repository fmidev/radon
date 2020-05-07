--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.2

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
-- Name: geom_rotated_latitude_longitude_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.geom_rotated_latitude_longitude_v AS
 SELECT g.id AS geometry_id,
    g.name AS geometry_name,
    grll.ni,
    grll.nj,
    public.st_x(grll.first_point) AS first_lon,
    public.st_y(grll.first_point) AS first_lat,
    grll.di,
    grll.dj,
    grll.scanning_mode,
    public.st_x(grll.south_pole) AS south_pole_lon,
    public.st_y(grll.south_pole) AS south_pole_lat,
    grll.description
   FROM public.geom g,
    public.geom_rotated_latitude_longitude grll
  WHERE ((g.id = grll.id) AND (g.projection_id = 4));


ALTER TABLE public.geom_rotated_latitude_longitude_v OWNER TO radon_admin;

--
-- Name: TABLE geom_rotated_latitude_longitude_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.geom_rotated_latitude_longitude_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

