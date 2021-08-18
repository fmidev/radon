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
-- Name: as_previ; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.as_previ (
    producer_id integer NOT NULL,
    analysis_time timestamp with time zone NOT NULL,
    schema_name character varying(50) NOT NULL,
    table_name character varying(50) NOT NULL,
    partition_name character varying(70),
    record_count integer DEFAULT 0 NOT NULL,
    delete_time timestamp with time zone NOT NULL,
    last_updater text,
    last_updated timestamp(0) without time zone,
    min_analysis_time timestamp with time zone,
    max_analysis_time timestamp with time zone,
    id integer NOT NULL
);


ALTER TABLE public.as_previ OWNER TO radon_admin;

--
-- Name: COLUMN as_previ.last_updater; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.as_previ.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN as_previ.last_updated; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.as_previ.last_updated IS 'Fixed column for last updating time';


--
-- Name: as_previ_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.as_previ_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.as_previ_id_seq OWNER TO radon_admin;

--
-- Name: as_previ_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.as_previ_id_seq OWNED BY public.as_previ.id;


--
-- Name: as_previ id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.as_previ ALTER COLUMN id SET DEFAULT nextval('public.as_previ_id_seq'::regclass);


--
-- Name: as_previ as_previ_partition_name_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.as_previ
    ADD CONSTRAINT as_previ_partition_name_uniq UNIQUE (partition_name);


--
-- Name: as_previ as_previ_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.as_previ
    ADD CONSTRAINT as_previ_pkey PRIMARY KEY (id);


--
-- Name: as_previ_producer_id_minmax_analysis_time_uniq_idx; Type: INDEX; Schema: public; Owner: radon_admin
--

CREATE UNIQUE INDEX as_previ_producer_id_minmax_analysis_time_uniq_idx ON public.as_previ USING btree (producer_id, min_analysis_time, max_analysis_time);


--
-- Name: as_previ as_previ_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER as_previ_store_last_updated_trg BEFORE UPDATE ON public.as_previ FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: as_previ audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.as_previ FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: as_previ as_previ_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.as_previ
    ADD CONSTRAINT as_previ_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: TABLE as_previ; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.as_previ TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.as_previ TO radon_rw;


--
-- PostgreSQL database dump complete
--

