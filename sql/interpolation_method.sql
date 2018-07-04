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
-- Name: interpolation_method; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE interpolation_method (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.interpolation_method OWNER TO wetodb;

--
-- Name: interpolation_method_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE interpolation_method_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.interpolation_method_id_seq OWNER TO wetodb;

--
-- Name: interpolation_method_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE interpolation_method_id_seq OWNED BY interpolation_method.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY interpolation_method ALTER COLUMN id SET DEFAULT nextval('interpolation_method_id_seq'::regclass);


--
-- Name: interpolation_method_name_idx; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY interpolation_method
    ADD CONSTRAINT interpolation_method_name_idx UNIQUE (name);


--
-- Name: interpolation_method_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY interpolation_method
    ADD CONSTRAINT interpolation_method_pkey PRIMARY KEY (id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON interpolation_method FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: interpolation_method_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER interpolation_method_last_updated_trg BEFORE UPDATE ON interpolation_method FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: interpolation_method; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE interpolation_method FROM PUBLIC;
REVOKE ALL ON TABLE interpolation_method FROM wetodb;
GRANT ALL ON TABLE interpolation_method TO wetodb;
GRANT SELECT ON TABLE interpolation_method TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE interpolation_method TO radon_rw;


--
-- PostgreSQL database dump complete
--

