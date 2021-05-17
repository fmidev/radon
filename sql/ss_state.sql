--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.6

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
-- Name: ss_state; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.ss_state (
    producer_id integer NOT NULL,
    geometry_id integer NOT NULL,
    forecast_type_id integer NOT NULL,
    forecast_type_value numeric DEFAULT '-1'::integer NOT NULL,
    analysis_time timestamp without time zone NOT NULL,
    forecast_period interval NOT NULL,
    table_name text NOT NULL,
    last_updater text DEFAULT "session_user"() NOT NULL,
    last_updated timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT ss_state_check_forecast_type_value CHECK ((forecast_type_value >= ('-1'::integer)::numeric))
);


ALTER TABLE public.ss_state OWNER TO radon_admin;

--
-- Name: ss_state ss_state_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.ss_state
    ADD CONSTRAINT ss_state_pkey PRIMARY KEY (producer_id, geometry_id, analysis_time, forecast_period, forecast_type_id, forecast_type_value);


--
-- Name: ss_state ss_state_forecast_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.ss_state
    ADD CONSTRAINT ss_state_forecast_type_id_fkey FOREIGN KEY (forecast_type_id) REFERENCES public.forecast_type(id);


--
-- Name: ss_state ss_state_producer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.ss_state
    ADD CONSTRAINT ss_state_producer_id_fkey FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: TABLE ss_state; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.ss_state TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.ss_state TO radon_rw;


--
-- PostgreSQL database dump complete
--

