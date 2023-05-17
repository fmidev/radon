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
-- Name: param_grib2_template; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.param_grib2_template (
    param_id integer NOT NULL,
    discipline integer NOT NULL,
    category integer NOT NULL,
    number integer NOT NULL,
    last_updater text,
    last_updated timestamp with time zone,
    type_of_statistical_processing integer DEFAULT '-1'::integer NOT NULL,
    CONSTRAINT param_grib2_template_category_check CHECK ((category >= 0)),
    CONSTRAINT param_grib2_template_discipline_check CHECK ((discipline >= 0)),
    CONSTRAINT param_grib2_template_number_check CHECK ((number >= 0))
);


ALTER TABLE public.param_grib2_template OWNER TO radon_admin;

--
-- Name: param_grib2_template param_grib2_template_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_grib2_template
    ADD CONSTRAINT param_grib2_template_pkey PRIMARY KEY (param_id, discipline, category, number, type_of_statistical_processing);


--
-- Name: param_grib2_template param_grib2_template_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER param_grib2_template_store_last_updated_trg AFTER UPDATE ON public.param_grib2_template FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: param_grib2_template param_grib2_template_param_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_grib2_template
    ADD CONSTRAINT param_grib2_template_param_id_fkey FOREIGN KEY (param_id) REFERENCES public.param(id);


--
-- Name: TABLE param_grib2_template; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.param_grib2_template TO radon_ro;


--
-- PostgreSQL database dump complete
--

