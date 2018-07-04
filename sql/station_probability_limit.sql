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
-- Name: station_probability_limit; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE station_probability_limit (
    id integer NOT NULL,
    station_id integer NOT NULL,
    param_id integer NOT NULL,
    probability_limit numeric NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.station_probability_limit OWNER TO postgres;

--
-- Name: station_probability_limit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE station_probability_limit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.station_probability_limit_id_seq OWNER TO postgres;

--
-- Name: station_probability_limit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE station_probability_limit_id_seq OWNED BY station_probability_limit.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY station_probability_limit ALTER COLUMN id SET DEFAULT nextval('station_probability_limit_id_seq'::regclass);


--
-- Name: station_probability_limit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY station_probability_limit
    ADD CONSTRAINT station_probability_limit_pkey PRIMARY KEY (id);


--
-- Name: station_probability_limit_uniq_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX station_probability_limit_uniq_idx ON station_probability_limit USING btree (station_id, param_id);


--
-- Name: station_probability_limit_audit_trigger_row_trg; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER station_probability_limit_audit_trigger_row_trg AFTER UPDATE ON station_probability_limit FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: station_probability_limit_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER station_probability_limit_store_last_updated_trg BEFORE UPDATE ON station_probability_limit FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: station_probability_limit_param_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY station_probability_limit
    ADD CONSTRAINT station_probability_limit_param_id_fkey FOREIGN KEY (param_id) REFERENCES param(id);


--
-- Name: station_probability_limit_station_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY station_probability_limit
    ADD CONSTRAINT station_probability_limit_station_id_fkey FOREIGN KEY (station_id) REFERENCES station(id);


--
-- Name: station_probability_limit; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE station_probability_limit FROM PUBLIC;
REVOKE ALL ON TABLE station_probability_limit FROM postgres;
GRANT ALL ON TABLE station_probability_limit TO postgres;
GRANT SELECT ON TABLE station_probability_limit TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE station_probability_limit TO radon_rw;


--
-- Name: station_probability_limit_id_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE station_probability_limit_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE station_probability_limit_id_seq FROM postgres;
GRANT ALL ON SEQUENCE station_probability_limit_id_seq TO postgres;
GRANT UPDATE ON SEQUENCE station_probability_limit_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

