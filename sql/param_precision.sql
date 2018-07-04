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
-- Name: param_precision; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE param_precision (
    id integer NOT NULL,
    param_id integer NOT NULL,
    "precision" integer NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.param_precision OWNER TO wetodb;

--
-- Name: param_precision_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE param_precision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.param_precision_id_seq OWNER TO wetodb;

--
-- Name: param_precision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE param_precision_id_seq OWNED BY param_precision.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param_precision ALTER COLUMN id SET DEFAULT nextval('param_precision_id_seq'::regclass);


--
-- Name: param_precision_param_id_key; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY param_precision
    ADD CONSTRAINT param_precision_param_id_key UNIQUE (param_id);


--
-- Name: param_precision_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY param_precision
    ADD CONSTRAINT param_precision_pkey PRIMARY KEY (id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON param_precision FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: param_precision_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER param_precision_store_last_updated_trg AFTER UPDATE ON param_precision FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: param_precision_param_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param_precision
    ADD CONSTRAINT param_precision_param_id_fkey FOREIGN KEY (param_id) REFERENCES param(id);


--
-- Name: param_precision; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE param_precision FROM PUBLIC;
REVOKE ALL ON TABLE param_precision FROM wetodb;
GRANT ALL ON TABLE param_precision TO wetodb;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE param_precision TO radon_rw;
GRANT SELECT ON TABLE param_precision TO radon_ro;


--
-- Name: param_precision_id_seq; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON SEQUENCE param_precision_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE param_precision_id_seq FROM wetodb;
GRANT ALL ON SEQUENCE param_precision_id_seq TO wetodb;
GRANT UPDATE ON SEQUENCE param_precision_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

