--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Name: earth_shape_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW earth_shape_v AS
 SELECT earth_shape.id,
    earth_shape.a,
    earth_shape.b,
        CASE
            WHEN (earth_shape.a = earth_shape.b) THEN NULL::numeric
            ELSE (((1)::numeric / ((earth_shape.a - earth_shape.b) / earth_shape.a)))::numeric(6,3)
        END AS inverse_flattening,
    earth_shape.description,
    earth_shape.last_updated,
    earth_shape.last_updater
   FROM earth_shape;


ALTER TABLE public.earth_shape_v OWNER TO postgres;

--
-- Name: earth_shape_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE earth_shape_v FROM PUBLIC;
REVOKE ALL ON TABLE earth_shape_v FROM postgres;
GRANT ALL ON TABLE earth_shape_v TO postgres;
GRANT SELECT ON TABLE earth_shape_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

