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
-- Name: geom_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.geom_v AS
 SELECT g.id AS geometry_id,
    g.name AS geom_name,
    p.id AS projection_id,
    p.name AS projection_name,
    g.ni,
    g.nj,
    public.st_x(g.first_point) AS first_lon,
    public.st_y(g.first_point) AS first_lat,
    g.di,
    g.dj,
    g.scanning_mode,
    g.geom_param_1 AS geom_parm_1,
    g.geom_param_2 AS geom_parm_2,
    g.geom_param_3 AS geom_parm_3,
    g.description,
    g.last_updater,
    g.last_updated
   FROM (public.geom g
     JOIN public.projection p ON ((g.projection_id = p.id)));


ALTER TABLE public.geom_v OWNER TO postgres;

--
-- Name: TABLE geom_v; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.geom_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

