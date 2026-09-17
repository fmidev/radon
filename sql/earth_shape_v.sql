--
-- PostgreSQL database dump
--

\restrict 9PWeLDpohUWVeUVOu8RsbN2Raw2HyXgJQCrHMqeRvOLHzZqP6EUShIacBSxTA2d

-- Dumped from database version 15.2
-- Dumped by pg_dump version 16.15 (Ubuntu 16.15-0ubuntu0.24.04.1)

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
-- Name: earth_shape_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.earth_shape_v AS
 SELECT earth_shape.id,
    earth_shape.a,
    earth_shape.b,
        CASE
            WHEN (earth_shape.a = earth_shape.b) THEN NULL::numeric
            ELSE (((1)::numeric / ((earth_shape.a - earth_shape.b) / earth_shape.a)))::numeric(6,3)
        END AS inverse_flattening,
    earth_shape.name,
    earth_shape.description,
    earth_shape.last_updated,
    earth_shape.last_updater
   FROM public.earth_shape;


ALTER VIEW public.earth_shape_v OWNER TO radon_admin;

--
-- Name: TABLE earth_shape_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.earth_shape_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict 9PWeLDpohUWVeUVOu8RsbN2Raw2HyXgJQCrHMqeRvOLHzZqP6EUShIacBSxTA2d

