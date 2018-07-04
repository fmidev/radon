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
-- Name: producer_grib; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE producer_grib (
    id integer NOT NULL,
    producer_id integer NOT NULL,
    ident integer NOT NULL,
    centre integer NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.producer_grib OWNER TO wetodb;

--
-- Name: producer_grib_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE producer_grib_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producer_grib_id_seq OWNER TO wetodb;

--
-- Name: producer_grib_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE producer_grib_id_seq OWNED BY producer_grib.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY producer_grib ALTER COLUMN id SET DEFAULT nextval('producer_grib_id_seq'::regclass);


--
-- Name: producer_grib_centre_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY producer_grib
    ADD CONSTRAINT producer_grib_centre_uniq UNIQUE (producer_id, centre, ident);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON producer_grib FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: producer_grib_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER producer_grib_store_last_updated_trg BEFORE UPDATE ON producer_grib FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: producer_grib_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY producer_grib
    ADD CONSTRAINT producer_grib_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES fmi_producer(id);


--
-- Name: producer_grib; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE producer_grib FROM PUBLIC;
REVOKE ALL ON TABLE producer_grib FROM wetodb;
GRANT ALL ON TABLE producer_grib TO wetodb;
GRANT SELECT ON TABLE producer_grib TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE producer_grib TO radon_rw;


--
-- PostgreSQL database dump complete
--

