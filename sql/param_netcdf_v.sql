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
-- Name: param_netcdf_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW param_netcdf_v AS
 SELECT f.id AS producer_id,
    f.name AS producer_name,
    p.id AS param_id,
    p.name AS param_name,
    n.netcdf_name,
    n.last_updater,
    n.last_updated
   FROM ((param_netcdf n
     JOIN fmi_producer f ON ((f.id = n.producer_id)))
     JOIN param p ON ((p.id = n.param_id)));


ALTER TABLE public.param_netcdf_v OWNER TO postgres;

--
-- Name: param_netcdf_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE param_netcdf_v FROM PUBLIC;
REVOKE ALL ON TABLE param_netcdf_v FROM postgres;
GRANT ALL ON TABLE param_netcdf_v TO postgres;
GRANT SELECT ON TABLE param_netcdf_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

