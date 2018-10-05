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
-- Name: processing_type; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE processing_type (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    last_updater text,
    last_updated timestamp(0) without time zone
);


ALTER TABLE public.processing_type OWNER TO radon_admin;

--
-- Name: COLUMN processing_type.last_updater; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN processing_type.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN processing_type.last_updated; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN processing_type.last_updated IS 'Fixed column for last updating time';


--
-- Name: processing_type_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE processing_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.processing_type_id_seq OWNER TO radon_admin;

--
-- Name: processing_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE processing_type_id_seq OWNED BY processing_type.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY processing_type ALTER COLUMN id SET DEFAULT nextval('processing_type_id_seq'::regclass);


--
-- Name: processing_type_name_version_idx; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY processing_type
    ADD CONSTRAINT processing_type_name_idx UNIQUE (name);


--
-- Name: processing_type_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY processing_type
    ADD CONSTRAINT processing_type_pkey PRIMARY KEY (id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON processing_type FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: processing_type_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER processing_type_store_last_updated_trg BEFORE UPDATE ON processing_type FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: processing_type; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE processing_type FROM PUBLIC;
REVOKE ALL ON TABLE processing_type FROM wetodb;
GRANT ALL ON TABLE processing_type TO wetodb;
GRANT SELECT ON TABLE processing_type TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE processing_type TO radon_rw;


--
-- PostgreSQL database dump complete
--

