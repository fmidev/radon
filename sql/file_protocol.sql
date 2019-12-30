--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 12.1

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

--
-- Name: file_protocol; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.file_protocol (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp without time zone
);


ALTER TABLE public.file_protocol OWNER TO radon_admin;

--
-- Name: file_protocol_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.file_protocol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.file_protocol_id_seq OWNER TO radon_admin;

--
-- Name: file_protocol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.file_protocol_id_seq OWNED BY public.file_protocol.id;


--
-- Name: file_protocol id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.file_protocol ALTER COLUMN id SET DEFAULT nextval('public.file_protocol_id_seq'::regclass);


--
-- Name: file_protocol file_protocol_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.file_protocol
    ADD CONSTRAINT file_protocol_pkey PRIMARY KEY (id);


--
-- Name: file_protocol audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.file_protocol FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: file_protocol file_protocol_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER file_protocol_last_updated_trg BEFORE UPDATE ON public.file_protocol FOR EACH ROW EXECUTE PROCEDURE public.store_last_updated_f();


--
-- Name: TABLE file_protocol; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.file_protocol TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.file_protocol TO radon_rw;


--
-- PostgreSQL database dump complete
--

