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
-- Name: ss_forecast_status; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.ss_forecast_status (
    producer_id integer NOT NULL,
    analysis_time timestamp without time zone NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    geometry_id integer,
    status character varying(50) NOT NULL,
    status_time timestamp with time zone NOT NULL,
    last_updater text,
    last_updated timestamp with time zone,
    CONSTRAINT ss_forecast_status_status_check CHECK (((status)::text = 'READY'::text))
);


ALTER TABLE public.ss_forecast_status OWNER TO radon_admin;

--
-- Name: ss_forecast_status_uniq_idx; Type: INDEX; Schema: public; Owner: radon_admin
--

CREATE UNIQUE INDEX ss_forecast_status_uniq_idx ON public.ss_forecast_status USING btree (producer_id, analysis_time, geometry_id, version, status);


--
-- Name: ss_forecast_status ss_forecast_status_duplicate_check_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER ss_forecast_status_duplicate_check_trg BEFORE INSERT ON public.ss_forecast_status FOR EACH ROW EXECUTE FUNCTION public.ss_forecast_status_duplicate_check_f();


--
-- Name: ss_forecast_status ss_forecast_status_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER ss_forecast_status_last_updated_trg BEFORE UPDATE ON public.ss_forecast_status FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: ss_forecast_status ss_forecast_status_geometry_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.ss_forecast_status
    ADD CONSTRAINT ss_forecast_status_geometry_id_fkey FOREIGN KEY (geometry_id) REFERENCES public.geom(id);


--
-- Name: ss_forecast_status ss_forecast_status_producer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.ss_forecast_status
    ADD CONSTRAINT ss_forecast_status_producer_id_fkey FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: TABLE ss_forecast_status; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT INSERT,UPDATE ON TABLE public.ss_forecast_status TO radon_rw;
GRANT SELECT ON TABLE public.ss_forecast_status TO radon_ro;


--
-- PostgreSQL database dump complete
--

