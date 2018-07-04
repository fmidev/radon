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
-- Name: producer_class; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE producer_class (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.producer_class OWNER TO wetodb;

--
-- Name: producer_class_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE producer_class_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producer_class_id_seq OWNER TO wetodb;

--
-- Name: producer_class_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE producer_class_id_seq OWNED BY producer_class.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY producer_class ALTER COLUMN id SET DEFAULT nextval('producer_class_id_seq'::regclass);


--
-- Name: producer_class_name_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY producer_class
    ADD CONSTRAINT producer_class_name_uniq UNIQUE (name);


--
-- Name: producer_class_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY producer_class
    ADD CONSTRAINT producer_class_pkey PRIMARY KEY (id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON producer_class FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: producer_class_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER producer_class_store_last_updated_trg BEFORE UPDATE ON producer_class FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: producer_class; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE producer_class FROM PUBLIC;
REVOKE ALL ON TABLE producer_class FROM wetodb;
GRANT ALL ON TABLE producer_class TO wetodb;
GRANT SELECT ON TABLE producer_class TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE producer_class TO radon_rw;


--
-- PostgreSQL database dump complete
--

