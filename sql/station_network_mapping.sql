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
-- Name: station_network_mapping; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE station_network_mapping (
    id integer NOT NULL,
    station_id integer NOT NULL,
    network_id integer NOT NULL,
    local_station_id character varying(50),
    begin_time timestamp with time zone,
    end_time timestamp with time zone,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.station_network_mapping OWNER TO wetodb;

--
-- Name: station_network_mapping_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE station_network_mapping_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.station_network_mapping_id_seq OWNER TO wetodb;

--
-- Name: station_network_mapping_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE station_network_mapping_id_seq OWNED BY station_network_mapping.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY station_network_mapping ALTER COLUMN id SET DEFAULT nextval('station_network_mapping_id_seq'::regclass);


--
-- Name: station_network_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY station_network_mapping
    ADD CONSTRAINT station_network_mapping_pkey PRIMARY KEY (id);


--
-- Name: station_network_mapping_station_id_network_id_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY station_network_mapping
    ADD CONSTRAINT station_network_mapping_station_id_network_id_uniq UNIQUE (station_id, network_id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON station_network_mapping FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: station_network_mapping_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER station_network_mapping_store_last_updated_trg BEFORE UPDATE ON station_network_mapping FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: station_network_mapping_network_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY station_network_mapping
    ADD CONSTRAINT station_network_mapping_network_fkey FOREIGN KEY (network_id) REFERENCES network(id);


--
-- Name: station_network_mapping_station_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY station_network_mapping
    ADD CONSTRAINT station_network_mapping_station_fkey FOREIGN KEY (station_id) REFERENCES station(id);


--
-- Name: station_network_mapping; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE station_network_mapping FROM PUBLIC;
REVOKE ALL ON TABLE station_network_mapping FROM wetodb;
GRANT ALL ON TABLE station_network_mapping TO wetodb;
GRANT SELECT ON TABLE station_network_mapping TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE station_network_mapping TO radon_rw;


--
-- PostgreSQL database dump complete
--

