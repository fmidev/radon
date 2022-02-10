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
-- Name: forecast_type; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.forecast_type (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.forecast_type OWNER TO radon_admin;

--
-- Name: forecast_type_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.forecast_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forecast_type_id_seq OWNER TO radon_admin;

--
-- Name: forecast_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.forecast_type_id_seq OWNED BY public.forecast_type.id;


--
-- Name: forecast_type id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.forecast_type ALTER COLUMN id SET DEFAULT nextval('public.forecast_type_id_seq'::regclass);


--
-- Name: forecast_type forecast_type_name_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.forecast_type
    ADD CONSTRAINT forecast_type_name_uniq UNIQUE (name);


--
-- Name: forecast_type forecast_type_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.forecast_type
    ADD CONSTRAINT forecast_type_pkey PRIMARY KEY (id);


--
-- Name: forecast_type audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.forecast_type FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: forecast_type forecast_type_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER forecast_type_store_last_updated_trg BEFORE UPDATE ON public.forecast_type FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: TABLE forecast_type; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.forecast_type TO radon_ro;


--
-- PostgreSQL database dump complete
--

