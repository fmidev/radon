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
-- Name: param; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE param (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    unit_id integer NOT NULL,
    interpolation_id integer NOT NULL,
    description text,
    last_updater text,
    last_updated timestamp(0) without time zone
);


ALTER TABLE public.param OWNER TO wetodb;

--
-- Name: COLUMN param.last_updater; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN param.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN param.last_updated; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN param.last_updated IS 'Fixed column for last updating time';


--
-- Name: param_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE param_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.param_id_seq OWNER TO wetodb;

--
-- Name: param_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE param_id_seq OWNED BY param.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param ALTER COLUMN id SET DEFAULT nextval('param_id_seq'::regclass);


--
-- Name: param_name_version_idx; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY param
    ADD CONSTRAINT param_name_version_idx UNIQUE (name, version);


--
-- Name: param_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY param
    ADD CONSTRAINT param_pkey PRIMARY KEY (id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON param FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: param_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER param_store_last_updated_trg BEFORE UPDATE ON param FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: param_interpolation_id_idx; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param
    ADD CONSTRAINT param_interpolation_id_idx FOREIGN KEY (interpolation_id) REFERENCES interpolation_method(id);


--
-- Name: param_unit_id_idx; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param
    ADD CONSTRAINT param_unit_id_idx FOREIGN KEY (unit_id) REFERENCES param_unit(id);


--
-- Name: param; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE param FROM PUBLIC;
REVOKE ALL ON TABLE param FROM wetodb;
GRANT ALL ON TABLE param TO wetodb;
GRANT SELECT ON TABLE param TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE param TO radon_rw;


--
-- PostgreSQL database dump complete
--

