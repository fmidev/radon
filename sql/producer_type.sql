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
-- Name: producer_type; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.producer_type (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.producer_type OWNER TO radon_admin;

--
-- Name: producer_type_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.producer_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producer_type_id_seq OWNER TO radon_admin;

--
-- Name: producer_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.producer_type_id_seq OWNED BY public.producer_type.id;


--
-- Name: producer_type id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.producer_type ALTER COLUMN id SET DEFAULT nextval('public.producer_type_id_seq'::regclass);


--
-- Name: producer_type producer_type_name_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.producer_type
    ADD CONSTRAINT producer_type_name_uniq UNIQUE (name);


--
-- Name: producer_type producer_type_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.producer_type
    ADD CONSTRAINT producer_type_pkey PRIMARY KEY (id);


--
-- Name: producer_type producer_type_audit_trigger_row_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER producer_type_audit_trigger_row_trg AFTER UPDATE ON public.producer_type FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: producer_type producer_type_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER producer_type_store_last_updated_trg BEFORE UPDATE ON public.producer_type FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: TABLE producer_type; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.producer_type TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.producer_type TO radon_rw;


--
-- Name: SEQUENCE producer_type_id_seq; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT,UPDATE ON SEQUENCE public.producer_type_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

