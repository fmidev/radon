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
    grll.description,
    e.a AS earth_semi_major,
    e.b AS earth_semi_minor,
    e.name AS earth_ellipsoid_name,
    d.name AS datum_name,
    (((((('+proj=ob_tran +o_proj=longlat +lon_0='::text || public.st_x(grll.south_pole)) || ' +o_lon_p=0 +o_lat_p='::text) || (('-1'::integer)::double precision * public.st_y(grll.south_pole))) || ' '::text) || public.datum_text_f(e.name, e.a, e.b, d.name)) || ' +to_meter=0.0174532925199 +no_defs'::text) AS proj4
   FROM public.geom g,
    ((public.geom_rotated_latitude_longitude grll
     LEFT JOIN public.earth_shape e ON ((grll.earth_shape_id = e.id)))
     LEFT JOIN public.datum d ON ((grll.datum_id = d.id)))
  WHERE ((g.id = grll.id) AND (g.projection_id = 4));


ALTER TABLE public.geom_rotated_latitude_longitude_v OWNER TO radon_admin;

--
-- Name: TABLE geom_rotated_latitude_longitude_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.geom_rotated_latitude_longitude_v TO radon_ro;


--
-- PostgreSQL database dump complete
--

