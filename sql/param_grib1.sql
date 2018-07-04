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
-- Name: param_grib1; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE param_grib1 (
    id integer NOT NULL,
    producer_id integer NOT NULL,
    param_id integer NOT NULL,
    table_version integer NOT NULL,
    number integer NOT NULL,
    timerange_indicator numeric NOT NULL,
    level_id integer,
    level_value numeric,
    last_updater text,
    last_updated timestamp with time zone,
    ident integer,
    centre integer,
    CONSTRAINT param_grib1_number_chk CHECK (((number >= 0) AND (number <= 255))),
    CONSTRAINT param_grib1_process_chk CHECK (((ident >= 0) AND (ident <= 255))),
    CONSTRAINT param_grib1_table_version_chk CHECK (((table_version >= 0) AND (table_version <= 255)))
);


ALTER TABLE public.param_grib1 OWNER TO wetodb;

--
-- Name: COLUMN param_grib1.last_updater; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN param_grib1.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN param_grib1.last_updated; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN param_grib1.last_updated IS 'Fixed column for last updating time';


--
-- Name: param_grib1_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE param_grib1_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.param_grib1_id_seq OWNER TO wetodb;

--
-- Name: param_grib1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE param_grib1_id_seq OWNED BY param_grib1.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param_grib1 ALTER COLUMN id SET DEFAULT nextval('param_grib1_id_seq'::regclass);


--
-- Name: param_grib1_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY param_grib1
    ADD CONSTRAINT param_grib1_pkey PRIMARY KEY (id);


--
-- Name: param_grib1_producer_id_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY param_grib1
    ADD CONSTRAINT param_grib1_producer_id_uniq UNIQUE (producer_id, param_id, table_version, number, timerange_indicator, level_id, level_value);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON param_grib1 FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: param_grib1_duplicate_check_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER param_grib1_duplicate_check_trg BEFORE INSERT ON param_grib1 FOR EACH ROW EXECUTE PROCEDURE param_grib1_duplicate_check_f();


--
-- Name: param_grib1_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER param_grib1_store_last_updated_trg BEFORE UPDATE ON param_grib1 FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: param_grib1_fmi_producers_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param_grib1
    ADD CONSTRAINT param_grib1_fmi_producers_fkey FOREIGN KEY (producer_id) REFERENCES fmi_producer(id);


--
-- Name: param_grib1_level_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param_grib1
    ADD CONSTRAINT param_grib1_level_fkey FOREIGN KEY (level_id) REFERENCES level(id);


--
-- Name: param_grib1_param_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param_grib1
    ADD CONSTRAINT param_grib1_param_fkey FOREIGN KEY (param_id) REFERENCES param(id);


--
-- Name: param_grib1; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE param_grib1 FROM PUBLIC;
REVOKE ALL ON TABLE param_grib1 FROM wetodb;
GRANT ALL ON TABLE param_grib1 TO wetodb;
GRANT SELECT ON TABLE param_grib1 TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE param_grib1 TO radon_rw;


--
-- PostgreSQL database dump complete
--

