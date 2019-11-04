--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Debian 10.5-1.pgdg90+1)
-- Dumped by pg_dump version 10.5 (Debian 10.5-1.pgdg90+1)

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
-- Name: file_format; Type: TABLE; Schema: public; Owner: wetodb
--

CREATE TABLE public.file_format (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    last_updater text,
    last_updated timestamp without time zone
);


ALTER TABLE public.file_format OWNER TO wetodb;

--
-- Name: file_format_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE public.file_format_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.file_format_id_seq OWNER TO wetodb;

--
-- Name: file_format_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE public.file_format_id_seq OWNED BY public.file_format.id;


--
-- Name: file_format id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.file_format ALTER COLUMN id SET DEFAULT nextval('public.file_format_id_seq'::regclass);


--
-- Name: file_format file_format_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.file_format
    ADD CONSTRAINT file_format_pkey PRIMARY KEY (id);


--
-- Name: file_format audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.file_format FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: file_format file_format_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER file_format_last_updated_trg BEFORE UPDATE ON public.file_format FOR EACH ROW EXECUTE PROCEDURE public.store_last_updated_f();


--
-- PostgreSQL database dump complete
--

