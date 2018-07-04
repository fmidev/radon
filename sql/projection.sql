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
-- Name: projection; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE projection (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    grib1_number integer,
    grib2_number integer,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.projection OWNER TO wetodb;

--
-- Name: projection_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE projection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projection_id_seq OWNER TO wetodb;

--
-- Name: projection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE projection_id_seq OWNED BY projection.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY projection ALTER COLUMN id SET DEFAULT nextval('projection_id_seq'::regclass);


--
-- Name: projection_name_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY projection
    ADD CONSTRAINT projection_name_uniq UNIQUE (name);


--
-- Name: projection_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY projection
    ADD CONSTRAINT projection_pkey PRIMARY KEY (id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON projection FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: projection_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER projection_store_last_updated_trg BEFORE UPDATE ON projection FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: projection; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE projection FROM PUBLIC;
REVOKE ALL ON TABLE projection FROM wetodb;
GRANT ALL ON TABLE projection TO wetodb;
GRANT SELECT ON TABLE projection TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE projection TO radon_rw;


--
-- PostgreSQL database dump complete
--

