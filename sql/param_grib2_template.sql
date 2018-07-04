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

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: param_grib2_template; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE param_grib2_template (
    param_id integer NOT NULL,
    discipline integer NOT NULL,
    category integer NOT NULL,
    number integer NOT NULL,
    last_updater text,
    last_updated timestamp with time zone,
    CONSTRAINT param_grib2_template_category_check CHECK ((category >= 0)),
    CONSTRAINT param_grib2_template_discipline_check CHECK ((discipline >= 0)),
    CONSTRAINT param_grib2_template_number_check CHECK ((number >= 0))
);


ALTER TABLE public.param_grib2_template OWNER TO wetodb;

--
-- Name: param_grib2_template_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY param_grib2_template
    ADD CONSTRAINT param_grib2_template_pkey PRIMARY KEY (param_id, discipline, category, number);


--
-- Name: param_grib2_template_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER param_grib2_template_store_last_updated_trg AFTER UPDATE ON param_grib2_template FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: param_grib2_template_param_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param_grib2_template
    ADD CONSTRAINT param_grib2_template_param_id_fkey FOREIGN KEY (param_id) REFERENCES param(id);


--
-- Name: param_grib2_template; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE param_grib2_template FROM PUBLIC;
REVOKE ALL ON TABLE param_grib2_template FROM wetodb;
GRANT ALL ON TABLE param_grib2_template TO wetodb;
GRANT SELECT ON TABLE param_grib2_template TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE param_grib2_template TO radon_rw;


--
-- PostgreSQL database dump complete
--

