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
-- Name: geom_latitude_longitude_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.geom_latitude_longitude_v AS
 SELECT g.id AS geometry_id,
    g.name AS geometry_name,
    gll.ni,
    gll.nj,
    public.st_x(gll.first_point) AS first_lon,
    public.st_y(gll.first_point) AS first_lat,
    gll.di,
    gll.dj,
    gll.scanning_mode,
    gll.description,
    e.a AS earth_semi_major,
    e.b AS earth_semi_minor,
    '+proj=latlong'||coalesce(' +a='||e.a, '')||coalesce(' +b='||e.b, '')||' +no_defs' AS proj4
   FROM public.geom g,
    public.geom_latitude_longitude gll
  LEFT OUTER JOIN earth_shape e ON (gll.earth_shape_id = e.id)
  WHERE ((g.id = gll.id) AND (g.projection_id = 1));


ALTER TABLE public.geom_latitude_longitude_v OWNER TO radon_admin;

--
-- Name: TABLE geom_latitude_longitude_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.geom_latitude_longitude_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

