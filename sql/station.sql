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
-- Name: station; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE station (
    id integer NOT NULL,
    name text NOT NULL,
    "position" geometry(Point,4326),
    elevation numeric,
    description text,
    elevation_altimeter numeric,
    external_information text,
    is_mobile boolean DEFAULT false NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.station OWNER TO wetodb;

--
-- Name: COLUMN station.last_updater; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN station.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN station.last_updated; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN station.last_updated IS 'Fixed column for last updating time';


--
-- Name: station_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE station_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.station_id_seq OWNER TO wetodb;

--
-- Name: station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE station_id_seq OWNED BY station.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY station ALTER COLUMN id SET DEFAULT nextval('station_id_seq'::regclass);


--
-- Name: station_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY station
    ADD CONSTRAINT station_pkey PRIMARY KEY (id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON station FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: station_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER station_store_last_updated_trg BEFORE UPDATE ON station FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: station; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE station FROM PUBLIC;
REVOKE ALL ON TABLE station FROM wetodb;
GRANT ALL ON TABLE station TO wetodb;
GRANT SELECT ON TABLE station TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE station TO radon_rw;


--
-- PostgreSQL database dump complete
--

