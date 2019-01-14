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
-- Name: producer_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producer_type (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.producer_type OWNER TO postgres;

--
-- Name: producer_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producer_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producer_type_id_seq OWNER TO postgres;

--
-- Name: producer_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producer_type_id_seq OWNED BY public.producer_type.id;


--
-- Name: producer_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producer_type ALTER COLUMN id SET DEFAULT nextval('public.producer_type_id_seq'::regclass);


--
-- Name: producer_type producer_type_name_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producer_type
    ADD CONSTRAINT producer_type_name_uniq UNIQUE (name);


--
-- Name: producer_type producer_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producer_type
    ADD CONSTRAINT producer_type_pkey PRIMARY KEY (id);


--
-- Name: producer_type producer_type_audit_trigger_row_trg; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER producer_type_audit_trigger_row_trg AFTER UPDATE ON public.producer_type FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: producer_type producer_type_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER producer_type_store_last_updated_trg BEFORE UPDATE ON public.producer_type FOR EACH ROW EXECUTE PROCEDURE public.store_last_updated_f();


--
-- Name: TABLE producer_type; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.producer_type TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.producer_type TO radon_rw;


--
-- Name: SEQUENCE producer_type_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON SEQUENCE public.producer_type_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

