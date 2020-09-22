--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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
-- Name: network; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.network (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.network OWNER TO radon_admin;

--
-- Name: network network_name_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.network
    ADD CONSTRAINT network_name_uniq UNIQUE (name);


--
-- Name: network network_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.network
    ADD CONSTRAINT network_pkey PRIMARY KEY (id);


--
-- Name: network audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.network FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: network network_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER network_store_last_updated_trg BEFORE UPDATE ON public.network FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: TABLE network; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.network TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.network TO radon_rw;


--
-- PostgreSQL database dump complete
--

