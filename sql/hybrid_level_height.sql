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
-- Name: hybrid_level_height; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.hybrid_level_height (
    producer_id integer NOT NULL,
    geometry_id integer NOT NULL,
    level_value numeric NOT NULL,
    analysis_time timestamp with time zone NOT NULL,
    minimum_height numeric,
    minimum_height_stddev numeric,
    minimum_pressure numeric,
    minimum_pressure_stddev numeric,
    maximum_height numeric,
    maximum_pressure numeric,
    maximum_height_stddev numeric,
    maximum_pressure_stddev numeric,
    average_height numeric,
    average_pressure numeric,
    count integer,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.hybrid_level_height OWNER TO radon_admin;

--
-- Name: hybrid_level_height hybrid_level_height_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.hybrid_level_height
    ADD CONSTRAINT hybrid_level_height_pkey PRIMARY KEY (producer_id, geometry_id, level_value);


--
-- Name: hybrid_level_height audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.hybrid_level_height FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: hybrid_level_height hybrid_level_height_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER hybrid_level_height_last_updated_trg BEFORE UPDATE ON public.hybrid_level_height FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: hybrid_level_height hybrid_level_height_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.hybrid_level_height
    ADD CONSTRAINT hybrid_level_height_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: hybrid_level_height hybrid_level_height_geom_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.hybrid_level_height
    ADD CONSTRAINT hybrid_level_height_geom_fkey FOREIGN KEY (geometry_id) REFERENCES public.geom(id);


--
-- Name: TABLE hybrid_level_height; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.hybrid_level_height TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.hybrid_level_height TO radon_rw;


--
-- PostgreSQL database dump complete
--

