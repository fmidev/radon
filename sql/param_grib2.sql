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
-- Name: param_grib2; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE param_grib2 (
    id integer NOT NULL,
    producer_id integer NOT NULL,
    param_id integer NOT NULL,
    discipline integer NOT NULL,
    category integer NOT NULL,
    number integer NOT NULL,
    level_id integer,
    level_value numeric,
    type_of_statistical_processing integer NOT NULL default (-1),
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.param_grib2 OWNER TO wetodb;

--
-- Name: COLUMN param_grib2.last_updater; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN param_grib2.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN param_grib2.last_updated; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN param_grib2.last_updated IS 'Fixed column for last updating time';


--
-- Name: param_grib2_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE param_grib2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.param_grib2_id_seq OWNER TO wetodb;

--
-- Name: param_grib2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE param_grib2_id_seq OWNED BY param_grib2.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param_grib2 ALTER COLUMN id SET DEFAULT nextval('param_grib2_id_seq'::regclass);


--
-- Name: param_grib2_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY param_grib2
    ADD CONSTRAINT param_grib2_pkey PRIMARY KEY (id);


--
-- Name: param_grib2_producer_id_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY param_grib2
    ADD CONSTRAINT param_grib2_producer_id_uniq UNIQUE (producer_id, param_id, discipline, category, number, level_id, level_value, type_of_statistical_processing);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON param_grib2 FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: param_grib2_duplicate_check_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER param_grib2_duplicate_check_trg BEFORE INSERT ON param_grib2 FOR EACH ROW EXECUTE PROCEDURE param_grib2_duplicate_check_f();


--
-- Name: param_grib2_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER param_grib2_store_last_updated_trg BEFORE UPDATE ON param_grib2 FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: param_grib2_fmi_producers_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param_grib2
    ADD CONSTRAINT param_grib2_fmi_producers_fkey FOREIGN KEY (producer_id) REFERENCES fmi_producer(id);


--
-- Name: param_grib2_level_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param_grib2
    ADD CONSTRAINT param_grib2_level_fkey FOREIGN KEY (level_id) REFERENCES level(id);


--
-- Name: param_grib2_parm_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param_grib2
    ADD CONSTRAINT param_grib2_parm_id_fkey FOREIGN KEY (param_id) REFERENCES param(id);


--
-- Name: param_grib2; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE param_grib2 FROM PUBLIC;
REVOKE ALL ON TABLE param_grib2 FROM wetodb;
GRANT ALL ON TABLE param_grib2 TO wetodb;
GRANT SELECT ON TABLE param_grib2 TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE param_grib2 TO radon_rw;


--
-- PostgreSQL database dump complete
--

