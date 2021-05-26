--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0 (Debian 13.0-1.pgdg100+1)
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
-- Name: datum; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.datum (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    last_updater text DEFAULT "session_user"(),
    last_updated timestamp with time zone DEFAULT now()
);


ALTER TABLE public.datum OWNER TO radon_admin;

--
-- Name: datum_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.datum_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.datum_id_seq OWNER TO radon_admin;

--
-- Name: datum_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.datum_id_seq OWNED BY public.datum.id;


--
-- Name: datum id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.datum ALTER COLUMN id SET DEFAULT nextval('public.datum_id_seq'::regclass);


--
-- Name: datum datum_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.datum
    ADD CONSTRAINT datum_pkey PRIMARY KEY (id);


--
-- Name: datum datum_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER datum_store_last_updated_trg BEFORE UPDATE ON public.datum FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: TABLE datum; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.datum TO radon_ro;


--
-- PostgreSQL database dump complete
--

