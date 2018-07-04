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
-- Name: geom_stereographic; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE geom_stereographic (
    id integer NOT NULL,
    name text NOT NULL,
    ni integer NOT NULL,
    nj integer NOT NULL,
    first_point geometry(Point,4326) NOT NULL,
    di numeric NOT NULL,
    dj numeric NOT NULL,
    scanning_mode text NOT NULL,
    orientation numeric NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone,
    CONSTRAINT geom_stereographic_scanning_mode_chk CHECK ((scanning_mode = ANY (ARRAY['+x+y'::text, '+x-y'::text])))
);


ALTER TABLE public.geom_stereographic OWNER TO postgres;

--
-- Name: geom_stereographic_name_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY geom_stereographic
    ADD CONSTRAINT geom_stereographic_name_uniq UNIQUE (name);


--
-- Name: geom_stereographic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY geom_stereographic
    ADD CONSTRAINT geom_stereographic_pkey PRIMARY KEY (id);


--
-- Name: geom_stereographic_geom_fkey_02_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX geom_stereographic_geom_fkey_02_idx ON geom_stereographic USING btree (name);


--
-- Name: geom_stereographic_geom_fkey_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX geom_stereographic_geom_fkey_idx ON geom_stereographic USING btree (id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON geom_stereographic FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: geom_stereographic_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER geom_stereographic_store_last_updated_trg AFTER UPDATE ON geom_stereographic FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: geom_stereographic_geom_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY geom_stereographic
    ADD CONSTRAINT geom_stereographic_geom_fkey FOREIGN KEY (id) REFERENCES geom(id);


--
-- Name: geom_stereographic_geom_fkey_02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY geom_stereographic
    ADD CONSTRAINT geom_stereographic_geom_fkey_02 FOREIGN KEY (name) REFERENCES geom(name);


--
-- Name: geom_stereographic; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE geom_stereographic FROM PUBLIC;
REVOKE ALL ON TABLE geom_stereographic FROM postgres;
GRANT ALL ON TABLE geom_stereographic TO postgres;
GRANT INSERT,DELETE,UPDATE ON TABLE geom_stereographic TO radon_rw;
GRANT SELECT ON TABLE geom_stereographic TO radon_ro;


--
-- PostgreSQL database dump complete
--

