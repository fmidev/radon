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
-- Name: param_newbase_name; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE param_newbase_name (
    id integer NOT NULL,
    univ_id integer NOT NULL,
    name text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.param_newbase_name OWNER TO postgres;

--
-- Name: param_newbase_name_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE param_newbase_name_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.param_newbase_name_id_seq OWNER TO postgres;

--
-- Name: param_newbase_name_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE param_newbase_name_id_seq OWNED BY param_newbase_name.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY param_newbase_name ALTER COLUMN id SET DEFAULT nextval('param_newbase_name_id_seq'::regclass);


--
-- Name: param_newbase_name_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY param_newbase_name
    ADD CONSTRAINT param_newbase_name_pkey PRIMARY KEY (id);


--
-- Name: univ_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY param_newbase_name
    ADD CONSTRAINT univ_id_key UNIQUE (univ_id);


--
-- Name: param_newbase_name_univ_id_uniq_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX param_newbase_name_univ_id_uniq_idx ON param_newbase_name USING btree (univ_id);


--
-- Name: param_newbase_name_audit_trigger_row_trg; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER param_newbase_name_audit_trigger_row_trg AFTER UPDATE ON param_newbase_name FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: param_newbase_name_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER param_newbase_name_store_last_updated_trg BEFORE UPDATE ON param_newbase_name FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: param_newbase_name; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE param_newbase_name FROM PUBLIC;
REVOKE ALL ON TABLE param_newbase_name FROM postgres;
GRANT ALL ON TABLE param_newbase_name TO postgres;
GRANT SELECT ON TABLE param_newbase_name TO radon_ro;
GRANT SELECT,INSERT,UPDATE ON TABLE param_newbase_name TO radon_rw;


--
-- Name: param_newbase_name_id_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE param_newbase_name_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE param_newbase_name_id_seq FROM postgres;
GRANT ALL ON SEQUENCE param_newbase_name_id_seq TO postgres;
GRANT ALL ON SEQUENCE param_newbase_name_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--
