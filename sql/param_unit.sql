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
-- Name: param_unit; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE param_unit (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp(0) without time zone
);


ALTER TABLE public.param_unit OWNER TO wetodb;

--
-- Name: COLUMN param_unit.last_updater; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN param_unit.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN param_unit.last_updated; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN param_unit.last_updated IS 'Fixed column for last updating time';


--
-- Name: param_unit_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE param_unit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.param_unit_id_seq OWNER TO wetodb;

--
-- Name: param_unit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE param_unit_id_seq OWNED BY param_unit.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param_unit ALTER COLUMN id SET DEFAULT nextval('param_unit_id_seq'::regclass);


--
-- Name: param_unit_name_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY param_unit
    ADD CONSTRAINT param_unit_name_uniq UNIQUE (name);


--
-- Name: param_unit_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY param_unit
    ADD CONSTRAINT param_unit_pkey PRIMARY KEY (id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON param_unit FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: param_unit_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER param_unit_store_last_updated_trg BEFORE UPDATE ON param_unit FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: param_unit; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE param_unit FROM PUBLIC;
REVOKE ALL ON TABLE param_unit FROM wetodb;
GRANT ALL ON TABLE param_unit TO wetodb;
GRANT SELECT ON TABLE param_unit TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE param_unit TO radon_rw;


--
-- PostgreSQL database dump complete
--

