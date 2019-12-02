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
-- Name: geom_reduced_gaussian; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.geom_reduced_gaussian (
    id integer NOT NULL,
    name text NOT NULL,
    nj integer NOT NULL,
    first_point public.geometry(Point,4326) NOT NULL,
    last_point public.geometry(Point,4326) NOT NULL,
    scanning_mode text NOT NULL,
    n integer NOT NULL,
    points_along_parallels integer[] NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone,
    CONSTRAINT geom_reduced_gaussian_scanning_mode_chk CHECK ((scanning_mode = ANY (ARRAY['+x-y'::text, '+x+y'::text])))
);


ALTER TABLE public.geom_reduced_gaussian OWNER TO radon_admin;

--
-- Name: geom_reduced_gaussian geom_reduced_gaussian_name_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_reduced_gaussian
    ADD CONSTRAINT geom_reduced_gaussian_name_uniq UNIQUE (name);


--
-- Name: geom_reduced_gaussian geom_reduced_gaussian_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_reduced_gaussian
    ADD CONSTRAINT geom_reduced_gaussian_pkey PRIMARY KEY (id);


--
-- Name: geom_reduced_gaussian_geom_fkey_02_idx; Type: INDEX; Schema: public; Owner: radon_admin
--

CREATE INDEX geom_reduced_gaussian_geom_fkey_02_idx ON public.geom_reduced_gaussian USING btree (name);


--
-- Name: geom_reduced_gaussian_geom_fkey_idx; Type: INDEX; Schema: public; Owner: radon_admin
--

CREATE INDEX geom_reduced_gaussian_geom_fkey_idx ON public.geom_reduced_gaussian USING btree (id);


--
-- Name: geom_reduced_gaussian audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.geom_reduced_gaussian FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: geom_reduced_gaussian geom_reduced_gaussian_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER geom_reduced_gaussian_store_last_updated_trg AFTER UPDATE ON public.geom_reduced_gaussian FOR EACH ROW EXECUTE PROCEDURE public.store_last_updated_f();


--
-- Name: geom_reduced_gaussian geom_reduced_gaussian_geom_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_reduced_gaussian
    ADD CONSTRAINT geom_reduced_gaussian_geom_fkey FOREIGN KEY (id) REFERENCES public.geom(id);


--
-- Name: geom_reduced_gaussian geom_reduced_gaussian_geom_fkey_02; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_reduced_gaussian
    ADD CONSTRAINT geom_reduced_gaussian_geom_fkey_02 FOREIGN KEY (name) REFERENCES public.geom(name);


--
-- Name: TABLE geom_reduced_gaussian; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT INSERT,DELETE,UPDATE ON TABLE public.geom_reduced_gaussian TO radon_rw;
GRANT SELECT ON TABLE public.geom_reduced_gaussian TO radon_ro;


--
-- PostgreSQL database dump complete
--

