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
-- Name: table_meta_grid; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE table_meta_grid (
    id integer NOT NULL,
    producer_id integer NOT NULL,
    schema_name character varying(50) DEFAULT 'data'::character varying,
    table_name character varying(50) NOT NULL,
    geometry_id integer NOT NULL,
    retention_period interval NOT NULL,
    analysis_times integer[],
    last_updater text,
    last_updated timestamp with time zone,
    partitioning_period text DEFAULT 'ANALYSISTIME'::text NOT NULL,
    CONSTRAINT table_meta_grid_partitioning_period_chk CHECK ((partitioning_period = ANY (ARRAY['ANALYSISTIME'::text, 'MONTHLY'::text, 'ANNUAL'::text])))
);


ALTER TABLE public.table_meta_grid OWNER TO wetodb;

--
-- Name: table_meta_grid_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE table_meta_grid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_meta_grid_id_seq OWNER TO wetodb;

--
-- Name: table_meta_grid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE table_meta_grid_id_seq OWNED BY table_meta_grid.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY table_meta_grid ALTER COLUMN id SET DEFAULT nextval('table_meta_grid_id_seq'::regclass);


--
-- Name: table_meta_grid_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY table_meta_grid
    ADD CONSTRAINT table_meta_grid_pkey PRIMARY KEY (id);


--
-- Name: table_meta_grid_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY table_meta_grid
    ADD CONSTRAINT table_meta_grid_uniq UNIQUE (producer_id, table_name, geometry_id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON table_meta_grid FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: table_meta_grid_producer_class_id_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER table_meta_grid_producer_class_id_trg BEFORE INSERT OR UPDATE ON table_meta_grid FOR EACH ROW EXECUTE PROCEDURE table_meta_producer_class_id_f('table_meta_grid');


--
-- Name: table_meta_grid_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER table_meta_grid_store_last_updated_trg BEFORE UPDATE ON table_meta_grid FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: table_meta_grid_fmi_producer_fkey_02; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY table_meta_grid
    ADD CONSTRAINT table_meta_grid_fmi_producer_fkey_02 FOREIGN KEY (producer_id) REFERENCES fmi_producer(id);


--
-- Name: table_meta_grid_geom_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY table_meta_grid
    ADD CONSTRAINT table_meta_grid_geom_fkey FOREIGN KEY (geometry_id) REFERENCES geom(id);


--
-- Name: table_meta_grid; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE table_meta_grid FROM PUBLIC;
REVOKE ALL ON TABLE table_meta_grid FROM wetodb;
GRANT ALL ON TABLE table_meta_grid TO wetodb;
GRANT SELECT ON TABLE table_meta_grid TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE table_meta_grid TO radon_rw;


--
-- PostgreSQL database dump complete
--

