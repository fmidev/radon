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
-- Name: forecast_type; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE forecast_type (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.forecast_type OWNER TO wetodb;

--
-- Name: forecast_type_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE forecast_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forecast_type_id_seq OWNER TO wetodb;

--
-- Name: forecast_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE forecast_type_id_seq OWNED BY forecast_type.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY forecast_type ALTER COLUMN id SET DEFAULT nextval('forecast_type_id_seq'::regclass);


--
-- Name: forecast_type_name_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY forecast_type
    ADD CONSTRAINT forecast_type_name_uniq UNIQUE (name);


--
-- Name: forecast_type_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY forecast_type
    ADD CONSTRAINT forecast_type_pkey PRIMARY KEY (id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON forecast_type FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: forecast_type_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER forecast_type_store_last_updated_trg BEFORE UPDATE ON forecast_type FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: forecast_type; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE forecast_type FROM PUBLIC;
REVOKE ALL ON TABLE forecast_type FROM wetodb;
GRANT ALL ON TABLE forecast_type TO wetodb;
GRANT SELECT ON TABLE forecast_type TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE forecast_type TO radon_rw;


--
-- PostgreSQL database dump complete
--

