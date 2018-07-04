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
-- Name: as_grid; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE as_grid (
    id integer NOT NULL,
    producer_id integer NOT NULL,
    analysis_time timestamp with time zone NOT NULL,
    geometry_id integer NOT NULL,
    schema_name character varying(50) NOT NULL,
    table_name character varying(50) NOT NULL,
    partition_name character varying(70),
    record_count integer DEFAULT 0 NOT NULL,
    delete_time timestamp with time zone NOT NULL,
    last_updater text,
    last_updated timestamp with time zone,
    min_analysis_time timestamp with time zone,
    max_analysis_time timestamp with time zone
);


ALTER TABLE public.as_grid OWNER TO wetodb;

--
-- Name: COLUMN as_grid.last_updater; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN as_grid.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN as_grid.last_updated; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN as_grid.last_updated IS 'Fixed column for last updating time';


--
-- Name: as_grid_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE as_grid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.as_grid_id_seq OWNER TO wetodb;

--
-- Name: as_grid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE as_grid_id_seq OWNED BY as_grid.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY as_grid ALTER COLUMN id SET DEFAULT nextval('as_grid_id_seq'::regclass);


--
-- Name: as_grid_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY as_grid
    ADD CONSTRAINT as_grid_pkey PRIMARY KEY (id);


--
-- Name: as_grid_producer_id_analysis_time_geometry_id_uniq_idx; Type: INDEX; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE UNIQUE INDEX as_grid_producer_id_analysis_time_geometry_id_uniq_idx ON as_grid USING btree (producer_id, analysis_time, geometry_id);


--
-- Name: as_grid_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER as_grid_store_last_updated_trg BEFORE UPDATE ON as_grid FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: as_grid_fmi_producer_fkey_02; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY as_grid
    ADD CONSTRAINT as_grid_fmi_producer_fkey_02 FOREIGN KEY (producer_id) REFERENCES fmi_producer(id);


--
-- Name: as_grid; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE as_grid FROM PUBLIC;
REVOKE ALL ON TABLE as_grid FROM wetodb;
GRANT ALL ON TABLE as_grid TO wetodb;
GRANT SELECT ON TABLE as_grid TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE as_grid TO radon_rw;


--
-- Name: as_grid_id_seq; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON SEQUENCE as_grid_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE as_grid_id_seq FROM wetodb;
GRANT ALL ON SEQUENCE as_grid_id_seq TO wetodb;
GRANT SELECT,UPDATE ON SEQUENCE as_grid_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

