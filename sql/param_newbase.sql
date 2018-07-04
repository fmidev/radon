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
-- Name: param_newbase; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE param_newbase (
    id integer NOT NULL,
    producer_id integer NOT NULL,
    param_id integer NOT NULL,
    univ_id integer NOT NULL,
    scale numeric DEFAULT 1 NOT NULL,
    base numeric DEFAULT 0 NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.param_newbase OWNER TO wetodb;

--
-- Name: param_newbase_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE param_newbase_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.param_newbase_id_seq OWNER TO wetodb;

--
-- Name: param_newbase_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE param_newbase_id_seq OWNED BY param_newbase.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param_newbase ALTER COLUMN id SET DEFAULT nextval('param_newbase_id_seq'::regclass);


--
-- Name: param_newbase_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY param_newbase
    ADD CONSTRAINT param_newbase_pkey PRIMARY KEY (id);


--
-- Name: param_newbase_producer_id_param_id_univ_id_uniq_idx; Type: INDEX; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE UNIQUE INDEX param_newbase_producer_id_param_id_univ_id_uniq_idx ON param_newbase USING btree (producer_id, param_id, univ_id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON param_newbase FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: param_newbase_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER param_newbase_store_last_updated_trg BEFORE UPDATE ON param_newbase FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: param_newbase_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param_newbase
    ADD CONSTRAINT param_newbase_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES fmi_producer(id);


--
-- Name: param_newbase_param_fkey_02; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY param_newbase
    ADD CONSTRAINT param_newbase_param_fkey_02 FOREIGN KEY (param_id) REFERENCES param(id);


--
-- Name: param_newbase; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE param_newbase FROM PUBLIC;
REVOKE ALL ON TABLE param_newbase FROM wetodb;
GRANT ALL ON TABLE param_newbase TO wetodb;
GRANT SELECT ON TABLE param_newbase TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE param_newbase TO radon_rw;


--
-- PostgreSQL database dump complete
--

