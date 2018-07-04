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
-- Name: producer_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE producer_type (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.producer_type OWNER TO postgres;

--
-- Name: producer_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE producer_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producer_type_id_seq OWNER TO postgres;

--
-- Name: producer_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE producer_type_id_seq OWNED BY producer_type.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producer_type ALTER COLUMN id SET DEFAULT nextval('producer_type_id_seq'::regclass);


--
-- Name: producer_type_name_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY producer_type
    ADD CONSTRAINT producer_type_name_uniq UNIQUE (name);


--
-- Name: producer_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY producer_type
    ADD CONSTRAINT producer_type_pkey PRIMARY KEY (id);


--
-- Name: producer_type_audit_trigger_row_trg; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER producer_type_audit_trigger_row_trg AFTER UPDATE ON producer_type FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: producer_type_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER producer_type_store_last_updated_trg BEFORE UPDATE ON producer_type FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: producer_type; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE producer_type FROM PUBLIC;
REVOKE ALL ON TABLE producer_type FROM postgres;
GRANT ALL ON TABLE producer_type TO postgres;
GRANT SELECT ON TABLE producer_type TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE producer_type TO radon_rw;


--
-- Name: producer_type_id_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE producer_type_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE producer_type_id_seq FROM postgres;
GRANT ALL ON SEQUENCE producer_type_id_seq TO postgres;
GRANT SELECT ON SEQUENCE producer_type_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

