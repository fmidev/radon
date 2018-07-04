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
-- Name: table_meta_previ; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE table_meta_previ (
    id integer NOT NULL,
    producer_id integer NOT NULL,
    schema_name character varying(50) DEFAULT 'data'::character varying,
    table_name character varying(50) NOT NULL,
    retention_period interval NOT NULL,
    analysis_times integer[],
    last_updater text,
    last_updated timestamp with time zone,
    partitioning_period text DEFAULT 'ANALYSISTIME'::text NOT NULL,
    CONSTRAINT table_meta_previ_partitioning_period_chk CHECK ((partitioning_period = ANY (ARRAY['ANALYSISTIME'::text, 'MONTHLY'::text, 'ANNUAL'::text])))
);


ALTER TABLE public.table_meta_previ OWNER TO wetodb;

--
-- Name: table_meta_previ_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE table_meta_previ_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_meta_previ_id_seq OWNER TO wetodb;

--
-- Name: table_meta_previ_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE table_meta_previ_id_seq OWNED BY table_meta_previ.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY table_meta_previ ALTER COLUMN id SET DEFAULT nextval('table_meta_previ_id_seq'::regclass);


--
-- Name: table_meta_previ_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY table_meta_previ
    ADD CONSTRAINT table_meta_previ_pkey PRIMARY KEY (id);


--
-- Name: table_meta_previ_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY table_meta_previ
    ADD CONSTRAINT table_meta_previ_uniq UNIQUE (producer_id, table_name);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON table_meta_previ FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: table_meta_previ_producer_class_id_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER table_meta_previ_producer_class_id_trg BEFORE INSERT OR UPDATE ON table_meta_previ FOR EACH ROW EXECUTE PROCEDURE table_meta_producer_class_id_f('table_meta_previ');


--
-- Name: table_meta_previ_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER table_meta_previ_store_last_updated_trg BEFORE UPDATE ON table_meta_previ FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: table_meta_previ_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY table_meta_previ
    ADD CONSTRAINT table_meta_previ_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES fmi_producer(id);


--
-- Name: table_meta_previ; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE table_meta_previ FROM PUBLIC;
REVOKE ALL ON TABLE table_meta_previ FROM wetodb;
GRANT ALL ON TABLE table_meta_previ TO wetodb;
GRANT SELECT ON TABLE table_meta_previ TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE table_meta_previ TO radon_rw;


--
-- PostgreSQL database dump complete
--

