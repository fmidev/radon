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
-- Name: producer_meta; Type: TABLE; Schema: public; Owner: wetodb
--

CREATE TABLE public.producer_meta (
    producer_id integer NOT NULL,
    attribute text NOT NULL,
    value text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.producer_meta OWNER TO wetodb;

--
-- Name: producer_meta producer_meta_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.producer_meta
    ADD CONSTRAINT producer_meta_pkey PRIMARY KEY (producer_id, attribute);


--
-- Name: producer_meta audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.producer_meta FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: producer_meta producer_meta_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.producer_meta
    ADD CONSTRAINT producer_meta_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: TABLE producer_meta; Type: ACL; Schema: public; Owner: wetodb
--

GRANT SELECT ON TABLE public.producer_meta TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.producer_meta TO radon_rw;


--
-- PostgreSQL database dump complete
--

