--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: geom_stereographic; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.geom_stereographic (
    id integer NOT NULL,
    name text NOT NULL,
    ni integer NOT NULL,
    nj integer NOT NULL,
    first_point public.geometry(Point,4326) NOT NULL,
    di numeric NOT NULL,
    dj numeric NOT NULL,
    scanning_mode text NOT NULL,
    orientation numeric NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone,
    earth_shape_id integer,
    datum_id integer,
    latin numeric DEFAULT 90 NOT NULL,
    lat_ts numeric,
    CONSTRAINT geom_stereographic_datum_chk CHECK (((datum_id IS NULL) OR ((datum_id IS NOT NULL) AND (earth_shape_id IS NULL)))),
    CONSTRAINT geom_stereographic_scanning_mode_chk CHECK ((scanning_mode = ANY (ARRAY['+x+y'::text, '+x-y'::text])))
);


ALTER TABLE public.geom_stereographic OWNER TO radon_admin;

--
-- Name: geom_stereographic geom_stereographic_name_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_stereographic
    ADD CONSTRAINT geom_stereographic_name_uniq UNIQUE (name);


--
-- Name: geom_stereographic geom_stereographic_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_stereographic
    ADD CONSTRAINT geom_stereographic_pkey PRIMARY KEY (id);


--
-- Name: geom_stereographic_geom_fkey_02_idx; Type: INDEX; Schema: public; Owner: radon_admin
--

CREATE INDEX geom_stereographic_geom_fkey_02_idx ON public.geom_stereographic USING btree (name);


--
-- Name: geom_stereographic_geom_fkey_idx; Type: INDEX; Schema: public; Owner: radon_admin
--

CREATE INDEX geom_stereographic_geom_fkey_idx ON public.geom_stereographic USING btree (id);


--
-- Name: geom_stereographic audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.geom_stereographic FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: geom_stereographic geom_stereographic_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER geom_stereographic_store_last_updated_trg AFTER UPDATE ON public.geom_stereographic FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: geom_stereographic geom_stereographic_datum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_stereographic
    ADD CONSTRAINT geom_stereographic_datum_id_fkey FOREIGN KEY (datum_id) REFERENCES public.datum(id);


--
-- Name: geom_stereographic geom_stereographic_earth_shape_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_stereographic
    ADD CONSTRAINT geom_stereographic_earth_shape_id_fkey FOREIGN KEY (earth_shape_id) REFERENCES public.earth_shape(id);


--
-- Name: geom_stereographic geom_stereographic_geom_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_stereographic
    ADD CONSTRAINT geom_stereographic_geom_fkey FOREIGN KEY (id) REFERENCES public.geom(id);


--
-- Name: geom_stereographic geom_stereographic_geom_fkey_02; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geom_stereographic
    ADD CONSTRAINT geom_stereographic_geom_fkey_02 FOREIGN KEY (name) REFERENCES public.geom(name);


--
-- Name: TABLE geom_stereographic; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.geom_stereographic TO radon_ro;


--
-- PostgreSQL database dump complete
--

