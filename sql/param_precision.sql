--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 13.3

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
-- Name: param_precision; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.param_precision (
    id integer NOT NULL,
    param_id integer NOT NULL,
    "precision" integer NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.param_precision OWNER TO radon_admin;

--
-- Name: param_precision_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.param_precision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.param_precision_id_seq OWNER TO radon_admin;

--
-- Name: param_precision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.param_precision_id_seq OWNED BY public.param_precision.id;


--
-- Name: param_precision id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_precision ALTER COLUMN id SET DEFAULT nextval('public.param_precision_id_seq'::regclass);


--
-- Name: param_precision param_precision_param_id_key; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_precision
    ADD CONSTRAINT param_precision_param_id_key UNIQUE (param_id);


--
-- Name: param_precision param_precision_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_precision
    ADD CONSTRAINT param_precision_pkey PRIMARY KEY (id);


--
-- Name: param_precision audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.param_precision FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: param_precision param_precision_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER param_precision_store_last_updated_trg AFTER UPDATE ON public.param_precision FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: param_precision param_precision_param_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_precision
    ADD CONSTRAINT param_precision_param_id_fkey FOREIGN KEY (param_id) REFERENCES public.param(id);


--
-- Name: TABLE param_precision; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.param_precision TO radon_rw;
GRANT SELECT ON TABLE public.param_precision TO radon_ro;


--
-- Name: SEQUENCE param_precision_id_seq; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT,UPDATE ON SEQUENCE public.param_precision_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

