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
-- Name: geom_latitude_longitude; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE geom_latitude_longitude (
    id integer NOT NULL,
    name text NOT NULL,
    ni integer NOT NULL,
    nj integer NOT NULL,
    first_point geometry(Point,4326) NOT NULL,
    di numeric NOT NULL,
    dj numeric NOT NULL,
    scanning_mode text NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone,
    CONSTRAINT geom_latitude_longitude_scanning_mode_chk CHECK ((scanning_mode = ANY (ARRAY['+x-y'::text, '+x+y'::text])))
);


ALTER TABLE public.geom_latitude_longitude OWNER TO postgres;

--
-- Name: geom_latitude_longitude_name_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY geom_latitude_longitude
    ADD CONSTRAINT geom_latitude_longitude_name_uniq UNIQUE (name);


--
-- Name: geom_latitude_longitude_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY geom_latitude_longitude
    ADD CONSTRAINT geom_latitude_longitude_pkey PRIMARY KEY (id);


--
-- Name: geom_latitude_longitude_geom_fkey_02_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX geom_latitude_longitude_geom_fkey_02_idx ON geom_latitude_longitude USING btree (name);


--
-- Name: geom_latitude_longitude_geom_fkey_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX geom_latitude_longitude_geom_fkey_idx ON geom_latitude_longitude USING btree (id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON geom_latitude_longitude FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: geom_latitude_longitude_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER geom_latitude_longitude_store_last_updated_trg AFTER UPDATE ON geom_latitude_longitude FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: geom_latitude_longitude_geom_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY geom_latitude_longitude
    ADD CONSTRAINT geom_latitude_longitude_geom_fkey FOREIGN KEY (id) REFERENCES geom(id);


--
-- Name: geom_latitude_longitude_geom_fkey_02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY geom_latitude_longitude
    ADD CONSTRAINT geom_latitude_longitude_geom_fkey_02 FOREIGN KEY (name) REFERENCES geom(name);


--
-- Name: geom_latitude_longitude; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE geom_latitude_longitude FROM PUBLIC;
REVOKE ALL ON TABLE geom_latitude_longitude FROM postgres;
GRANT ALL ON TABLE geom_latitude_longitude TO postgres;
GRANT INSERT,DELETE,UPDATE ON TABLE geom_latitude_longitude TO radon_rw;
GRANT SELECT ON TABLE geom_latitude_longitude TO radon_ro;


--
-- PostgreSQL database dump complete
--

