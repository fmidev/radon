--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.2

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
-- Name: production_type; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.production_type (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    last_updater text,
    last_updated timestamp(0) without time zone
);


ALTER TABLE public.production_type OWNER TO radon_admin;

--
-- Name: COLUMN production_type.last_updater; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.production_type.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN production_type.last_updated; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.production_type.last_updated IS 'Fixed column for last updating time';


--
-- Name: production_type_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.production_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.production_type_id_seq OWNER TO radon_admin;

--
-- Name: production_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.production_type_id_seq OWNED BY public.production_type.id;


--
-- Name: production_type id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.production_type ALTER COLUMN id SET DEFAULT nextval('public.production_type_id_seq'::regclass);


--
-- Name: production_type production_type_name_idx; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.production_type
    ADD CONSTRAINT production_type_name_idx UNIQUE (name);


--
-- Name: production_type production_type_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.production_type
    ADD CONSTRAINT production_type_pkey PRIMARY KEY (id);


--
-- Name: production_type production_type_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER production_type_store_last_updated_trg BEFORE UPDATE ON public.production_type FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: TABLE production_type; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT ALL ON TABLE public.production_type TO wetodb;
GRANT SELECT ON TABLE public.production_type TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.production_type TO radon_rw;


--
-- PostgreSQL database dump complete
--

