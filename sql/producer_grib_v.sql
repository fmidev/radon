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
-- Name: producer_grib_v; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW producer_grib_v AS
 SELECT r.producer_id,
    f.centre,
    f.ident
   FROM table_meta_grid r,
    producer_grib f
  WHERE (r.producer_id = f.producer_id);


ALTER TABLE public.producer_grib_v OWNER TO postgres;

--
-- Name: producer_grib_v; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE producer_grib_v FROM PUBLIC;
REVOKE ALL ON TABLE producer_grib_v FROM postgres;
GRANT ALL ON TABLE producer_grib_v TO postgres;
GRANT SELECT ON TABLE producer_grib_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

