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
-- Name: param_netcdf; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.param_netcdf (
    id integer NOT NULL,
    producer_id integer NOT NULL,
    param_id integer NOT NULL,
    netcdf_name character varying(50) NOT NULL,
    level_id integer,
    level_value numeric,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.param_netcdf OWNER TO radon_admin;

--
-- Name: COLUMN param_netcdf.last_updater; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.param_netcdf.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN param_netcdf.last_updated; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.param_netcdf.last_updated IS 'Fixed column for last updating time';


--
-- Name: param_netcdf_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.param_netcdf_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.param_netcdf_id_seq OWNER TO radon_admin;

--
-- Name: param_netcdf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.param_netcdf_id_seq OWNED BY public.param_netcdf.id;


--
-- Name: param_netcdf id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_netcdf ALTER COLUMN id SET DEFAULT nextval('public.param_netcdf_id_seq'::regclass);


--
-- Name: param_netcdf param_netcdf_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_netcdf
    ADD CONSTRAINT param_netcdf_pkey PRIMARY KEY (id);


--
-- Name: param_netcdf param_netcdf_producer_id_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_netcdf
    ADD CONSTRAINT param_netcdf_producer_id_uniq UNIQUE (producer_id, param_id, netcdf_name, level_id, level_value);


--
-- Name: param_netcdf audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.param_netcdf FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: param_netcdf param_netcdf_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER param_netcdf_store_last_updated_trg BEFORE UPDATE ON public.param_netcdf FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: param_netcdf param_netcdf_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_netcdf
    ADD CONSTRAINT param_netcdf_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: param_netcdf param_netcdf_level_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_netcdf
    ADD CONSTRAINT param_netcdf_level_fkey FOREIGN KEY (level_id) REFERENCES public.level(id);


--
-- Name: param_netcdf param_netcdf_param_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_netcdf
    ADD CONSTRAINT param_netcdf_param_fkey FOREIGN KEY (param_id) REFERENCES public.param(id);


--
-- Name: TABLE param_netcdf; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.param_netcdf TO radon_ro;


--
-- PostgreSQL database dump complete
--

