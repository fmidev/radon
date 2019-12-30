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
-- Name: interpolation_method; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.interpolation_method (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.interpolation_method OWNER TO radon_admin;

--
-- Name: interpolation_method_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.interpolation_method_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.interpolation_method_id_seq OWNER TO radon_admin;

--
-- Name: interpolation_method_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.interpolation_method_id_seq OWNED BY public.interpolation_method.id;


--
-- Name: interpolation_method id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.interpolation_method ALTER COLUMN id SET DEFAULT nextval('public.interpolation_method_id_seq'::regclass);


--
-- Name: interpolation_method interpolation_method_name_idx; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.interpolation_method
    ADD CONSTRAINT interpolation_method_name_idx UNIQUE (name);


--
-- Name: interpolation_method interpolation_method_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.interpolation_method
    ADD CONSTRAINT interpolation_method_pkey PRIMARY KEY (id);


--
-- Name: interpolation_method audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.interpolation_method FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: interpolation_method interpolation_method_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER interpolation_method_last_updated_trg BEFORE UPDATE ON public.interpolation_method FOR EACH ROW EXECUTE PROCEDURE public.store_last_updated_f();


--
-- Name: TABLE interpolation_method; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.interpolation_method TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.interpolation_method TO radon_rw;


--
-- PostgreSQL database dump complete
--

