--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: geom_lambert_conformal; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.geom_lambert_conformal (
    id integer NOT NULL,
    name text NOT NULL,
    ni integer NOT NULL,
    nj integer NOT NULL,
    first_point public.geometry(Point,4326) NOT NULL,
    di integer NOT NULL,
    dj integer NOT NULL,
    scanning_mode text NOT NULL,
    orientation numeric NOT NULL,
    latin1 numeric NOT NULL,
    latin2 numeric,
    south_pole public.geometry(Point,4326),
    description text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone,
    CONSTRAINT geom_lambert_conformal_scanning_mode_chk CHECK ((scanning_mode = ANY (ARRAY['+x-y'::text, '+x+y'::text])))
);


ALTER TABLE public.geom_lambert_conformal OWNER TO radon_admin;

--
-- Name: geom_lambert_conformal geom_lambert_conformal_name_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_lambert_conformal
    ADD CONSTRAINT geom_lambert_conformal_name_uniq UNIQUE (name);


--
-- Name: geom_lambert_conformal geom_lambert_conformal_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_lambert_conformal
    ADD CONSTRAINT geom_lambert_conformal_pkey PRIMARY KEY (id);


--
-- Name: geom_lambert_conformal_geom_fkey_02_idx; Type: INDEX; Schema: public; Owner: radon_admin
--

CREATE INDEX geom_lambert_conformal_geom_fkey_02_idx ON public.geom_lambert_conformal USING btree (id);


--
-- Name: geom_lambert_conformal_geom_fkey_03_idx; Type: INDEX; Schema: public; Owner: radon_admin
--

CREATE INDEX geom_lambert_conformal_geom_fkey_03_idx ON public.geom_lambert_conformal USING btree (name);


--
-- Name: geom_lambert_conformal audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.geom_lambert_conformal FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: geom_lambert_conformal geom_lambert_conformal_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER geom_lambert_conformal_store_last_updated_trg AFTER UPDATE ON public.geom_lambert_conformal FOR EACH ROW EXECUTE PROCEDURE public.store_last_updated_f();


--
-- Name: geom_lambert_conformal geom_lambert_conformal_geom_fkey_02; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_lambert_conformal
    ADD CONSTRAINT geom_lambert_conformal_geom_fkey_02 FOREIGN KEY (id) REFERENCES public.geom(id);


--
-- Name: geom_lambert_conformal geom_lambert_conformal_geom_fkey_03; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_lambert_conformal
    ADD CONSTRAINT geom_lambert_conformal_geom_fkey_03 FOREIGN KEY (name) REFERENCES public.geom(name);


--
-- Name: TABLE geom_lambert_conformal; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.geom_lambert_conformal TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.geom_lambert_conformal TO radon_rw;


--
-- PostgreSQL database dump complete
--

