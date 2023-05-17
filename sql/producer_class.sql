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
-- Name: producer_class; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.producer_class (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.producer_class OWNER TO radon_admin;

--
-- Name: producer_class_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.producer_class_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producer_class_id_seq OWNER TO radon_admin;

--
-- Name: producer_class_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.producer_class_id_seq OWNED BY public.producer_class.id;


--
-- Name: producer_class id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.producer_class ALTER COLUMN id SET DEFAULT nextval('public.producer_class_id_seq'::regclass);


--
-- Name: producer_class producer_class_name_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.producer_class
    ADD CONSTRAINT producer_class_name_uniq UNIQUE (name);


--
-- Name: producer_class producer_class_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.producer_class
    ADD CONSTRAINT producer_class_pkey PRIMARY KEY (id);


--
-- Name: producer_class audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.producer_class FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: producer_class producer_class_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER producer_class_store_last_updated_trg BEFORE UPDATE ON public.producer_class FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: TABLE producer_class; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.producer_class TO radon_ro;


--
-- PostgreSQL database dump complete
--

