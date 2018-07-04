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
-- Name: level_grib2; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE level_grib2 (
    producer_id integer NOT NULL,
    level_id integer NOT NULL,
    grib_level_id integer NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.level_grib2 OWNER TO wetodb;

--
-- Name: level_grib2_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY level_grib2
    ADD CONSTRAINT level_grib2_pkey PRIMARY KEY (producer_id, level_id, grib_level_id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON level_grib2 FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: level_grib2_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER level_grib2_store_last_updated_trg BEFORE UPDATE ON level_grib2 FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: level_grib2_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY level_grib2
    ADD CONSTRAINT level_grib2_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES fmi_producer(id);


--
-- Name: level_grib2_level_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY level_grib2
    ADD CONSTRAINT level_grib2_level_fkey FOREIGN KEY (level_id) REFERENCES level(id);


--
-- Name: level_grib2; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE level_grib2 FROM PUBLIC;
REVOKE ALL ON TABLE level_grib2 FROM wetodb;
GRANT ALL ON TABLE level_grib2 TO wetodb;
GRANT SELECT ON TABLE level_grib2 TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE level_grib2 TO radon_rw;


--
-- PostgreSQL database dump complete
--

