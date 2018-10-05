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
-- Name: aggregation; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE aggregation (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    last_updater text,
    last_updated timestamp(0) without time zone
);


ALTER TABLE public.aggregation OWNER TO radon_admin;

--
-- Name: COLUMN aggregation.last_updater; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN aggregation.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN aggregation.last_updated; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN aggregation.last_updated IS 'Fixed column for last updating time';


--
-- Name: aggregation_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE aggregation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aggregation_id_seq OWNER TO radon_admin;

--
-- Name: aggregation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE aggregation_id_seq OWNED BY aggregation.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY aggregation ALTER COLUMN id SET DEFAULT nextval('aggregation_id_seq'::regclass);


--
-- Name: aggregation_name_version_idx; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY aggregation
    ADD CONSTRAINT aggregation_name_idx UNIQUE (name);


--
-- Name: aggregation_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY aggregation
    ADD CONSTRAINT aggregation_pkey PRIMARY KEY (id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON aggregation FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: aggregation_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER aggregation_store_last_updated_trg BEFORE UPDATE ON aggregation FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: aggregation; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE aggregation FROM PUBLIC;
REVOKE ALL ON TABLE aggregation FROM wetodb;
GRANT ALL ON TABLE aggregation TO wetodb;
GRANT SELECT ON TABLE aggregation TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE aggregation TO radon_rw;


--
-- PostgreSQL database dump complete
--

