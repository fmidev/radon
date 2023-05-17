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
-- Name: level_grib1; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.level_grib1 (
    producer_id integer NOT NULL,
    level_id integer NOT NULL,
    grib_level_id integer NOT NULL,
    last_updater text,
    last_updated timestamp with time zone,
    CONSTRAINT level_grib1_grib_level_id_chk CHECK (((grib_level_id >= 0) AND (grib_level_id <= 255)))
);


ALTER TABLE public.level_grib1 OWNER TO radon_admin;

--
-- Name: COLUMN level_grib1.last_updater; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.level_grib1.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN level_grib1.last_updated; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.level_grib1.last_updated IS 'Fixed column for last updating time';


--
-- Name: level_grib1 level_grib1_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.level_grib1
    ADD CONSTRAINT level_grib1_pkey PRIMARY KEY (producer_id, level_id, grib_level_id);


--
-- Name: level_grib1 audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.level_grib1 FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: level_grib1 level_grib1_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER level_grib1_store_last_updated_trg BEFORE UPDATE ON public.level_grib1 FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: level_grib1 level_grib1_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.level_grib1
    ADD CONSTRAINT level_grib1_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: level_grib1 level_grib1_level_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.level_grib1
    ADD CONSTRAINT level_grib1_level_fkey FOREIGN KEY (level_id) REFERENCES public.level(id);


--
-- Name: TABLE level_grib1; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.level_grib1 TO radon_ro;


--
-- PostgreSQL database dump complete
--

