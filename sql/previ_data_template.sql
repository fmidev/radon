--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.2

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
-- Name: previ_data_template; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.previ_data_template (
    producer_id integer NOT NULL,
    analysis_time timestamp(0) without time zone NOT NULL,
    station_id integer NOT NULL,
    param_id integer NOT NULL,
    level_id integer NOT NULL,
    level_value numeric NOT NULL,
    level_value2 numeric DEFAULT '-1'::integer NOT NULL,
    forecast_period interval NOT NULL,
    forecast_type_id integer NOT NULL,
    forecast_type_value numeric DEFAULT '-1'::integer NOT NULL,
    value numeric,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.previ_data_template OWNER TO radon_admin;

--
-- Name: previ_data_template previ_data_template_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.previ_data_template
    ADD CONSTRAINT previ_data_template_pkey PRIMARY KEY (producer_id, analysis_time, station_id, param_id, level_id, level_value, level_value2, forecast_period, forecast_type_id, forecast_type_value);


--
-- Name: previ_data_template audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.previ_data_template FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: previ_data_template previ_data_template_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER previ_data_template_store_last_updated_trg BEFORE UPDATE ON public.previ_data_template FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: previ_data_template previ_data_template_forecast_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.previ_data_template
    ADD CONSTRAINT previ_data_template_forecast_type_id_fkey FOREIGN KEY (forecast_type_id) REFERENCES public.forecast_type(id);


--
-- Name: previ_data_template previ_data_template_level_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.previ_data_template
    ADD CONSTRAINT previ_data_template_level_id_fkey FOREIGN KEY (level_id) REFERENCES public.level(id);


--
-- Name: previ_data_template previ_data_template_param_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.previ_data_template
    ADD CONSTRAINT previ_data_template_param_id_fkey FOREIGN KEY (param_id) REFERENCES public.param(id);


--
-- Name: previ_data_template previ_data_template_producer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.previ_data_template
    ADD CONSTRAINT previ_data_template_producer_id_fkey FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: previ_data_template previ_data_template_station_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.previ_data_template
    ADD CONSTRAINT previ_data_template_station_id_fkey FOREIGN KEY (station_id) REFERENCES public.station(id);


--
-- Name: TABLE previ_data_template; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.previ_data_template TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.previ_data_template TO radon_rw;


--
-- PostgreSQL database dump complete
--

