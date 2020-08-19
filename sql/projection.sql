--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.3

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
-- Name: projection; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.projection (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    grib1_number integer,
    grib2_number integer,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.projection OWNER TO radon_admin;

--
-- Name: projection_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.projection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projection_id_seq OWNER TO radon_admin;

--
-- Name: projection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.projection_id_seq OWNED BY public.projection.id;


--
-- Name: projection id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.projection ALTER COLUMN id SET DEFAULT nextval('public.projection_id_seq'::regclass);


--
-- Name: projection projection_name_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.projection
    ADD CONSTRAINT projection_name_uniq UNIQUE (name);


--
-- Name: projection projection_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.projection
    ADD CONSTRAINT projection_pkey PRIMARY KEY (id);


--
-- Name: projection audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.projection FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: projection projection_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER projection_store_last_updated_trg BEFORE UPDATE ON public.projection FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: TABLE projection; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.projection TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.projection TO radon_rw;


--
-- PostgreSQL database dump complete
--

