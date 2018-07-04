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
-- Name: level_grib1; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE level_grib1 (
    producer_id integer NOT NULL,
    level_id integer NOT NULL,
    grib_level_id integer NOT NULL,
    last_updater text,
    last_updated timestamp with time zone,
    CONSTRAINT level_grib1_grib_level_id_chk CHECK (((grib_level_id >= 0) AND (grib_level_id <= 255)))
);


ALTER TABLE public.level_grib1 OWNER TO wetodb;

--
-- Name: COLUMN level_grib1.last_updater; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN level_grib1.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN level_grib1.last_updated; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN level_grib1.last_updated IS 'Fixed column for last updating time';


--
-- Name: level_grib1_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY level_grib1
    ADD CONSTRAINT level_grib1_pkey PRIMARY KEY (producer_id, level_id, grib_level_id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON level_grib1 FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: level_grib1_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER level_grib1_store_last_updated_trg BEFORE UPDATE ON level_grib1 FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: level_grib1_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY level_grib1
    ADD CONSTRAINT level_grib1_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES fmi_producer(id);


--
-- Name: level_grib1_level_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY level_grib1
    ADD CONSTRAINT level_grib1_level_fkey FOREIGN KEY (level_id) REFERENCES level(id);


--
-- Name: level_grib1; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE level_grib1 FROM PUBLIC;
REVOKE ALL ON TABLE level_grib1 FROM wetodb;
GRANT ALL ON TABLE level_grib1 TO wetodb;
GRANT SELECT ON TABLE level_grib1 TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE level_grib1 TO radon_rw;


--
-- PostgreSQL database dump complete
--

