--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.1

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
-- Name: previ_meta; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.previ_meta (
    id integer NOT NULL,
    producer_id integer NOT NULL,
    param_id integer NOT NULL,
    level_id integer NOT NULL,
    level_value numeric NOT NULL,
    forecast_type_id integer NOT NULL,
    forecast_type_value numeric DEFAULT '-1'::integer NOT NULL,
    station_id integer,
    "position" public.geometry(Point,4326),
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.previ_meta OWNER TO radon_admin;

--
-- Name: previ_meta_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.previ_meta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.previ_meta_id_seq OWNER TO radon_admin;

--
-- Name: previ_meta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.previ_meta_id_seq OWNED BY public.previ_meta.id;


--
-- Name: previ_meta id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.previ_meta ALTER COLUMN id SET DEFAULT nextval('public.previ_meta_id_seq'::regclass);


--
-- Name: previ_meta previ_meta_level_id_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.previ_meta
    ADD CONSTRAINT previ_meta_level_id_uniq UNIQUE (producer_id, level_id, level_value, param_id, forecast_type_id, forecast_type_value, station_id, "position");


--
-- Name: previ_meta previ_meta_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.previ_meta
    ADD CONSTRAINT previ_meta_pkey PRIMARY KEY (id);


--
-- Name: previ_meta audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.previ_meta FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: previ_meta previ_meta_check_station_and_position_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER previ_meta_check_station_and_position_trg AFTER INSERT OR UPDATE ON public.previ_meta FOR EACH ROW EXECUTE FUNCTION public.previ_meta_check_station_and_position_f();


--
-- Name: previ_meta previ_meta_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER previ_meta_store_last_updated_trg BEFORE UPDATE ON public.previ_meta FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: previ_meta previ_meta_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.previ_meta
    ADD CONSTRAINT previ_meta_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: previ_meta previ_meta_forecast_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.previ_meta
    ADD CONSTRAINT previ_meta_forecast_type_fkey FOREIGN KEY (forecast_type_id) REFERENCES public.forecast_type(id);


--
-- Name: previ_meta previ_meta_level_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.previ_meta
    ADD CONSTRAINT previ_meta_level_fkey FOREIGN KEY (level_id) REFERENCES public.level(id);


--
-- Name: previ_meta previ_meta_param_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.previ_meta
    ADD CONSTRAINT previ_meta_param_fkey FOREIGN KEY (param_id) REFERENCES public.param(id);


--
-- Name: previ_meta previ_meta_station_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.previ_meta
    ADD CONSTRAINT previ_meta_station_fkey FOREIGN KEY (station_id) REFERENCES public.station(id);


--
-- Name: TABLE previ_meta; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.previ_meta TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.previ_meta TO radon_rw;


--
-- Name: SEQUENCE previ_meta_id_seq; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT,UPDATE ON SEQUENCE public.previ_meta_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

