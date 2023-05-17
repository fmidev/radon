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
-- Name: geom_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.geom_v AS
 SELECT g.id AS geometry_id,
    g.name AS geom_name,
    p.id AS projection_id,
    p.name AS projection_name,
    g.description,
    g.last_updater,
    g.last_updated
   FROM (public.geom g
     JOIN public.projection p ON ((g.projection_id = p.id)));


ALTER TABLE public.geom_v OWNER TO radon_admin;

--
-- Name: TABLE geom_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.geom_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

