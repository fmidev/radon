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
-- Name: table_meta_previ; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.table_meta_previ (
    id integer NOT NULL,
    producer_id integer NOT NULL,
    schema_name character varying(50) DEFAULT 'data'::character varying,
    table_name character varying(50) NOT NULL,
    retention_period interval NOT NULL,
    analysis_times integer[],
    last_updater text,
    last_updated timestamp with time zone,
    partitioning_period text DEFAULT 'ANALYSISTIME'::text NOT NULL,
    CONSTRAINT table_meta_previ_partitioning_period_chk CHECK ((partitioning_period = ANY (ARRAY['ANALYSISTIME'::text, 'MONTHLY'::text, 'ANNUAL'::text])))
);


ALTER TABLE public.table_meta_previ OWNER TO radon_admin;

--
-- Name: table_meta_previ_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.table_meta_previ_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_meta_previ_id_seq OWNER TO radon_admin;

--
-- Name: table_meta_previ_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.table_meta_previ_id_seq OWNED BY public.table_meta_previ.id;


--
-- Name: table_meta_previ id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.table_meta_previ ALTER COLUMN id SET DEFAULT nextval('public.table_meta_previ_id_seq'::regclass);


--
-- Name: table_meta_previ table_meta_previ_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.table_meta_previ
    ADD CONSTRAINT table_meta_previ_pkey PRIMARY KEY (id);


--
-- Name: table_meta_previ table_meta_previ_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.table_meta_previ
    ADD CONSTRAINT table_meta_previ_uniq UNIQUE (producer_id, table_name);


--
-- Name: table_meta_previ audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.table_meta_previ FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: table_meta_previ table_meta_previ_producer_class_id_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER table_meta_previ_producer_class_id_trg BEFORE INSERT OR UPDATE ON public.table_meta_previ FOR EACH ROW EXECUTE PROCEDURE public.table_meta_producer_class_id_f('table_meta_previ');


--
-- Name: table_meta_previ table_meta_previ_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER table_meta_previ_store_last_updated_trg BEFORE UPDATE ON public.table_meta_previ FOR EACH ROW EXECUTE PROCEDURE public.store_last_updated_f();


--
-- Name: table_meta_previ table_meta_previ_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.table_meta_previ
    ADD CONSTRAINT table_meta_previ_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: TABLE table_meta_previ; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.table_meta_previ TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.table_meta_previ TO radon_rw;


--
-- PostgreSQL database dump complete
--

