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
-- Name: as_previ; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE as_previ (
    producer_id integer NOT NULL,
    analysis_time timestamp with time zone NOT NULL,
    schema_name character varying(50) NOT NULL,
    table_name character varying(50) NOT NULL,
    partition_name character varying(70),
    record_count integer DEFAULT 0 NOT NULL,
    delete_time timestamp with time zone NOT NULL,
    last_updater text,
    last_updated timestamp(0) without time zone,
    min_analysis_time timestamp with time zone,
    max_analysis_time timestamp with time zone,
    id integer NOT NULL
);


ALTER TABLE public.as_previ OWNER TO wetodb;

--
-- Name: COLUMN as_previ.last_updater; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN as_previ.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN as_previ.last_updated; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN as_previ.last_updated IS 'Fixed column for last updating time';


--
-- Name: as_previ_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE as_previ_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.as_previ_id_seq OWNER TO wetodb;

--
-- Name: as_previ_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE as_previ_id_seq OWNED BY as_previ.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY as_previ ALTER COLUMN id SET DEFAULT nextval('as_previ_id_seq'::regclass);


--
-- Name: as_previ_partition_name_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY as_previ
    ADD CONSTRAINT as_previ_partition_name_uniq UNIQUE (partition_name);


--
-- Name: as_previ_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY as_previ
    ADD CONSTRAINT as_previ_pkey PRIMARY KEY (id);


--
-- Name: as_previ_producer_id_minmax_analysis_time_uniq_idx; Type: INDEX; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE UNIQUE INDEX as_previ_producer_id_minmax_analysis_time_uniq_idx ON as_previ USING btree (producer_id, min_analysis_time, max_analysis_time);


--
-- Name: as_previ_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER as_previ_store_last_updated_trg BEFORE UPDATE ON as_previ FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON as_previ FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: as_previ_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY as_previ
    ADD CONSTRAINT as_previ_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES fmi_producer(id);


--
-- Name: as_previ; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE as_previ FROM PUBLIC;
REVOKE ALL ON TABLE as_previ FROM wetodb;
GRANT ALL ON TABLE as_previ TO wetodb;
GRANT SELECT ON TABLE as_previ TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE as_previ TO radon_rw;


--
-- PostgreSQL database dump complete
--

