--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.3

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
-- Name: level_grib2; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.level_grib2 (
    producer_id integer NOT NULL,
    level_id integer NOT NULL,
    grib_level_id integer NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.level_grib2 OWNER TO radon_admin;

--
-- Name: level_grib2 level_grib2_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.level_grib2
    ADD CONSTRAINT level_grib2_pkey PRIMARY KEY (producer_id, level_id, grib_level_id);


--
-- Name: level_grib2 audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.level_grib2 FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: level_grib2 level_grib2_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER level_grib2_store_last_updated_trg BEFORE UPDATE ON public.level_grib2 FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: level_grib2 level_grib2_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.level_grib2
    ADD CONSTRAINT level_grib2_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: level_grib2 level_grib2_level_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.level_grib2
    ADD CONSTRAINT level_grib2_level_fkey FOREIGN KEY (level_id) REFERENCES public.level(id);


--
-- Name: TABLE level_grib2; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.level_grib2 TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.level_grib2 TO radon_rw;


--
-- PostgreSQL database dump complete
--

