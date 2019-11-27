--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: param_netcdf; Type: TABLE; Schema: public; Owner: wetodb
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
-- Name: COLUMN param_netcdf.last_updater; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN public.param_netcdf.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN param_netcdf.last_updated; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN public.param_netcdf.last_updated IS 'Fixed column for last updating time';


--
-- Name: param_netcdf_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE public.param_netcdf_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.param_netcdf_id_seq OWNER TO radon_admin;

--
-- Name: param_netcdf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE public.param_netcdf_id_seq OWNED BY public.param_netcdf.id;


--
-- Name: param_netcdf id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.param_netcdf ALTER COLUMN id SET DEFAULT nextval('public.param_netcdf_id_seq'::regclass);


--
-- Name: param_netcdf param_netcdf_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.param_netcdf
    ADD CONSTRAINT param_netcdf_pkey PRIMARY KEY (id);


--
-- Name: param_netcdf param_netcdf_producer_id_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.param_netcdf
    ADD CONSTRAINT param_netcdf_producer_id_uniq UNIQUE (producer_id, param_id, netcdf_name, level_id, level_value);


--
-- Name: param_netcdf audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.param_netcdf FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: param_netcdf param_netcdf_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER param_netcdf_store_last_updated_trg BEFORE UPDATE ON public.param_netcdf FOR EACH ROW EXECUTE PROCEDURE public.store_last_updated_f();


--
-- Name: param_netcdf param_netcdf_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.param_netcdf
    ADD CONSTRAINT param_netcdf_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: param_netcdf param_netcdf_level_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.param_netcdf
    ADD CONSTRAINT param_netcdf_level_fkey FOREIGN KEY (level_id) REFERENCES public.level(id);


--
-- Name: param_netcdf param_netcdf_param_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.param_netcdf
    ADD CONSTRAINT param_netcdf_param_fkey FOREIGN KEY (param_id) REFERENCES public.param(id);


--
-- Name: TABLE param_netcdf; Type: ACL; Schema: public; Owner: wetodb
--

GRANT SELECT ON TABLE public.param_netcdf TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.param_netcdf TO radon_rw;


--
-- PostgreSQL database dump complete
--

