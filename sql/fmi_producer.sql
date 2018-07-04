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
-- Name: fmi_producer; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE fmi_producer (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    class_id integer NOT NULL,
    last_updater text,
    last_updated timestamp(0) without time zone,
    type_id integer NOT NULL
);


ALTER TABLE public.fmi_producer OWNER TO wetodb;

--
-- Name: TABLE fmi_producer; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON TABLE fmi_producer IS 'Table contains FMI number and name for all producers.';


--
-- Name: COLUMN fmi_producer.id; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN fmi_producer.id IS 'Producer id (PRODUCER_ID)';


--
-- Name: COLUMN fmi_producer.name; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN fmi_producer.name IS 'Producer name (REF_PROD)';


--
-- Name: COLUMN fmi_producer.class_id; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN fmi_producer.class_id IS 'Producer class';


--
-- Name: COLUMN fmi_producer.last_updater; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN fmi_producer.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN fmi_producer.last_updated; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN fmi_producer.last_updated IS 'Fixed column for last updating time';


--
-- Name: fmi_producer_name_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY fmi_producer
    ADD CONSTRAINT fmi_producer_name_uniq UNIQUE (name);


--
-- Name: fmi_producers_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY fmi_producer
    ADD CONSTRAINT fmi_producers_pkey PRIMARY KEY (id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON fmi_producer FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: fmi_producer_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER fmi_producer_last_updated_trg BEFORE UPDATE ON fmi_producer FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: fmi_producer_producer_class_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY fmi_producer
    ADD CONSTRAINT fmi_producer_producer_class_fkey FOREIGN KEY (class_id) REFERENCES producer_class(id);


--
-- Name: fmi_producer_producer_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY fmi_producer
    ADD CONSTRAINT fmi_producer_producer_type_fkey FOREIGN KEY (type_id) REFERENCES producer_type(id);


--
-- Name: fmi_producer; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE fmi_producer FROM PUBLIC;
REVOKE ALL ON TABLE fmi_producer FROM wetodb;
GRANT ALL ON TABLE fmi_producer TO wetodb;
GRANT SELECT ON TABLE fmi_producer TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE fmi_producer TO radon_rw;


--
-- PostgreSQL database dump complete
--

