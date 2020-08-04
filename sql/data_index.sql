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
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: data_index; Type: TABLE; Schema: public; Owner: radon_admin
--
DROP TABLE IF EXISTS public.data_index;

CREATE TABLE public.data_index (
    producer_id integer NOT NULL,
    geometry_id integer NOT NULL,
    analysis_time timestamp without time zone NOT NULL,
    forecast_periods interval[] NOT NULL,
    forecast_type_id integer NOT NULL,
    forecast_type_values numeric[] NOT NULL,
    level_id INT NOT NULL REFERENCES level(id),
    level_values NUMERIC[] NOT NULL,
    param_names text[] NOT NULL,
    table_name text NOT NULL,
    last_updater text DEFAULT "session_user"() NOT NULL,
    last_updated timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.data_index OWNER TO radon_admin;

--
-- Name: data_index data_index_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.data_index
    ADD CONSTRAINT data_index_pkey PRIMARY KEY (producer_id, geometry_id, analysis_time, forecast_periods, forecast_type_id, forecast_type_values, level_id, level_values, param_names);


--
-- Name: data_index data_index_forecast_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.data_index
    ADD CONSTRAINT data_index_forecast_type_id_fkey FOREIGN KEY (forecast_type_id) REFERENCES public.forecast_type(id);


--
-- Name: data_index data_index_producer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.data_index
    ADD CONSTRAINT data_index_producer_id_fkey FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);

ALTER TABLE ONLY public.data_index
    ADD CONSTRAINT data_index_level_id_fkey FOREIGN KEY (level_id) REFERENCES public.level(id);
ALTER TABLE ONLY public.data_index
    ADD CONSTRAINT data_index_geometry_id_fkey FOREIGN KEY (geometry_id) REFERENCES public.geom(id);

--
-- Name: TABLE data_index; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.data_index TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.data_index TO radon_rw;


--
-- PostgreSQL database dump complete
--

