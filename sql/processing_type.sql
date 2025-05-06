--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.6

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
-- Name: processing_type; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.processing_type (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp(0) without time zone
);


ALTER TABLE public.processing_type OWNER TO radon_admin;

--
-- Name: COLUMN processing_type.last_updater; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.processing_type.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN processing_type.last_updated; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.processing_type.last_updated IS 'Fixed column for last updating time';


--
-- Name: processing_type_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.processing_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.processing_type_id_seq OWNER TO radon_admin;

--
-- Name: processing_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.processing_type_id_seq OWNED BY public.processing_type.id;


--
-- Name: processing_type id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.processing_type ALTER COLUMN id SET DEFAULT nextval('public.processing_type_id_seq'::regclass);


--
-- Name: processing_type processing_type_name_idx; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.processing_type
    ADD CONSTRAINT processing_type_name_idx UNIQUE (name);


--
-- Name: processing_type processing_type_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.processing_type
    ADD CONSTRAINT processing_type_pkey PRIMARY KEY (id);


--
-- Name: processing_type audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.processing_type FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: processing_type processing_type_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER processing_type_store_last_updated_trg BEFORE UPDATE ON public.processing_type FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: TABLE processing_type; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT ALL ON TABLE public.processing_type TO wetodb;
GRANT SELECT ON TABLE public.processing_type TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.processing_type TO radon_rw;


--
-- PostgreSQL database dump complete
--

