--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.1

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
-- Name: fmi_producer; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.fmi_producer (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    class_id integer NOT NULL,
    last_updater text,
    last_updated timestamp(0) without time zone,
    type_id integer NOT NULL
);


ALTER TABLE public.fmi_producer OWNER TO radon_admin;

--
-- Name: TABLE fmi_producer; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON TABLE public.fmi_producer IS 'Table contains FMI number and name for all producers.';


--
-- Name: COLUMN fmi_producer.id; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.fmi_producer.id IS 'Producer id (PRODUCER_ID)';


--
-- Name: COLUMN fmi_producer.name; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.fmi_producer.name IS 'Producer name (REF_PROD)';


--
-- Name: COLUMN fmi_producer.class_id; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.fmi_producer.class_id IS 'Producer class';


--
-- Name: COLUMN fmi_producer.last_updater; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.fmi_producer.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN fmi_producer.last_updated; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.fmi_producer.last_updated IS 'Fixed column for last updating time';


--
-- Name: fmi_producer fmi_producer_name_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.fmi_producer
    ADD CONSTRAINT fmi_producer_name_uniq UNIQUE (name);


--
-- Name: fmi_producer fmi_producers_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.fmi_producer
    ADD CONSTRAINT fmi_producers_pkey PRIMARY KEY (id);


--
-- Name: fmi_producer audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.fmi_producer FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: fmi_producer fmi_producer_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER fmi_producer_last_updated_trg BEFORE UPDATE ON public.fmi_producer FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: fmi_producer fmi_producer_producer_class_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.fmi_producer
    ADD CONSTRAINT fmi_producer_producer_class_fkey FOREIGN KEY (class_id) REFERENCES public.producer_class(id);


--
-- Name: fmi_producer fmi_producer_producer_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.fmi_producer
    ADD CONSTRAINT fmi_producer_producer_type_fkey FOREIGN KEY (type_id) REFERENCES public.producer_type(id);


--
-- Name: TABLE fmi_producer; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.fmi_producer TO radon_ro;


--
-- PostgreSQL database dump complete
--

