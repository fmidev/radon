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
-- Name: geom_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW geom_v AS
 SELECT g.id AS geometry_id,
    g.name AS geom_name,
    p.id AS projection_id,
    p.name AS projection_name,
    g.ni,
    g.nj,
    st_x(g.first_point) AS first_lon,
    st_y(g.first_point) AS first_lat,
    g.di,
    g.dj,
    g.scanning_mode,
    g.geom_param_1 AS geom_parm_1,
    g.geom_param_2 AS geom_parm_2,
    g.geom_param_3 AS geom_parm_3,
    g.description,
    g.last_updater,
    g.last_updated
   FROM (geom g
     JOIN projection p ON ((g.projection_id = p.id)));


ALTER TABLE public.geom_v OWNER TO postgres;

--
-- Name: geom_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE geom_v FROM PUBLIC;
REVOKE ALL ON TABLE geom_v FROM postgres;
GRANT ALL ON TABLE geom_v TO postgres;
GRANT SELECT ON TABLE geom_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

