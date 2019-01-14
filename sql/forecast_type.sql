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
-- Name: forecast_type; Type: TABLE; Schema: public; Owner: wetodb
--

CREATE TABLE public.forecast_type (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.forecast_type OWNER TO wetodb;

--
-- Name: forecast_type_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE public.forecast_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forecast_type_id_seq OWNER TO wetodb;

--
-- Name: forecast_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE public.forecast_type_id_seq OWNED BY public.forecast_type.id;


--
-- Name: forecast_type id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.forecast_type ALTER COLUMN id SET DEFAULT nextval('public.forecast_type_id_seq'::regclass);


--
-- Name: forecast_type forecast_type_name_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.forecast_type
    ADD CONSTRAINT forecast_type_name_uniq UNIQUE (name);


--
-- Name: forecast_type forecast_type_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.forecast_type
    ADD CONSTRAINT forecast_type_pkey PRIMARY KEY (id);


--
-- Name: forecast_type audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.forecast_type FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: forecast_type forecast_type_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER forecast_type_store_last_updated_trg BEFORE UPDATE ON public.forecast_type FOR EACH ROW EXECUTE PROCEDURE public.store_last_updated_f();


--
-- Name: TABLE forecast_type; Type: ACL; Schema: public; Owner: wetodb
--

GRANT SELECT ON TABLE public.forecast_type TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.forecast_type TO radon_rw;


--
-- PostgreSQL database dump complete
--

