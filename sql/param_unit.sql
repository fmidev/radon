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
-- Name: param_unit; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.param_unit (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp(0) without time zone
);


ALTER TABLE public.param_unit OWNER TO radon_admin;

--
-- Name: COLUMN param_unit.last_updater; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.param_unit.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN param_unit.last_updated; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.param_unit.last_updated IS 'Fixed column for last updating time';


--
-- Name: param_unit_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.param_unit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.param_unit_id_seq OWNER TO radon_admin;

--
-- Name: param_unit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.param_unit_id_seq OWNED BY public.param_unit.id;


--
-- Name: param_unit id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_unit ALTER COLUMN id SET DEFAULT nextval('public.param_unit_id_seq'::regclass);


--
-- Name: param_unit param_unit_name_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_unit
    ADD CONSTRAINT param_unit_name_uniq UNIQUE (name);


--
-- Name: param_unit param_unit_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_unit
    ADD CONSTRAINT param_unit_pkey PRIMARY KEY (id);


--
-- Name: param_unit audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.param_unit FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: param_unit param_unit_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER param_unit_store_last_updated_trg BEFORE UPDATE ON public.param_unit FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: TABLE param_unit; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.param_unit TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.param_unit TO radon_rw;


--
-- Name: SEQUENCE param_unit_id_seq; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT UPDATE ON SEQUENCE public.param_unit_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

