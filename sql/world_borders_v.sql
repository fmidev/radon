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
-- Name: world_borders_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW world_borders_v AS
 SELECT "tm_world_borders-0.3".gid,
    "tm_world_borders-0.3".fips,
    "tm_world_borders-0.3".iso2,
    "tm_world_borders-0.3".iso3,
    "tm_world_borders-0.3".un,
    "tm_world_borders-0.3".name,
    "tm_world_borders-0.3".area,
    "tm_world_borders-0.3".pop2005,
    "tm_world_borders-0.3".region,
    "tm_world_borders-0.3".subregion,
    "tm_world_borders-0.3".lon,
    "tm_world_borders-0.3".lat,
    "tm_world_borders-0.3".geom
   FROM "tm_world_borders-0.3";


ALTER TABLE public.world_borders_v OWNER TO postgres;

--
-- Name: world_borders_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE world_borders_v FROM PUBLIC;
REVOKE ALL ON TABLE world_borders_v FROM postgres;
GRANT ALL ON TABLE world_borders_v TO postgres;
GRANT SELECT ON TABLE world_borders_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

