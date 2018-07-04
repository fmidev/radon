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
-- Name: param_level_transform; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE param_level_transform (
    id integer NOT NULL,
    producer_id integer NOT NULL,
    param_id integer NOT NULL,
    other_level_id integer NOT NULL,
    other_level_value numeric,
    fmi_level_id integer NOT NULL,
    fmi_level_value numeric,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.param_level_transform OWNER TO postgres;

--
-- Name: param_level_transform_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE param_level_transform_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.param_level_transform_id_seq OWNER TO postgres;

--
-- Name: param_level_transform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE param_level_transform_id_seq OWNED BY param_level_transform.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY param_level_transform ALTER COLUMN id SET DEFAULT nextval('param_level_transform_id_seq'::regclass);


--
-- Name: param_level_transform_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY param_level_transform
    ADD CONSTRAINT param_level_transform_pkey PRIMARY KEY (id);


--
-- Name: param_level_transform_uniq_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX param_level_transform_uniq_idx ON param_level_transform USING btree (producer_id, param_id, other_level_id, other_level_value, fmi_level_id, fmi_level_value);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON param_level_transform FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: param_level_transform_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER param_level_transform_store_last_updated_trg BEFORE UPDATE ON param_level_transform FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: param_level_transform_fmi_level_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY param_level_transform
    ADD CONSTRAINT param_level_transform_fmi_level_id_fkey FOREIGN KEY (fmi_level_id) REFERENCES level(id);


--
-- Name: param_level_transform_other_level_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY param_level_transform
    ADD CONSTRAINT param_level_transform_other_level_id_fkey FOREIGN KEY (other_level_id) REFERENCES level(id);


--
-- Name: param_level_transform_param_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY param_level_transform
    ADD CONSTRAINT param_level_transform_param_id_fkey FOREIGN KEY (param_id) REFERENCES param(id);


--
-- Name: param_level_transform_producer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY param_level_transform
    ADD CONSTRAINT param_level_transform_producer_id_fkey FOREIGN KEY (producer_id) REFERENCES fmi_producer(id);


--
-- Name: param_level_transform; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE param_level_transform FROM PUBLIC;
REVOKE ALL ON TABLE param_level_transform FROM postgres;
GRANT ALL ON TABLE param_level_transform TO postgres;
GRANT SELECT ON TABLE param_level_transform TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE param_level_transform TO radon_rw;


--
-- Name: param_level_transform_id_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE param_level_transform_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE param_level_transform_id_seq FROM postgres;
GRANT ALL ON SEQUENCE param_level_transform_id_seq TO postgres;
GRANT UPDATE ON SEQUENCE param_level_transform_id_seq TO wetodb;
GRANT SELECT,UPDATE ON SEQUENCE param_level_transform_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

