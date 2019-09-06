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
-- Name: level; Type: TABLE; Schema: public; Owner: wetodb
--

CREATE TABLE public.level (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    unit_id integer,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.level OWNER TO wetodb;

--
-- Name: COLUMN level.last_updater; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN public.level.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN level.last_updated; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN public.level.last_updated IS 'Fixed column for last updating time';


--
-- Name: level_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE public.level_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.level_id_seq OWNER TO wetodb;

--
-- Name: level_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE public.level_id_seq OWNED BY public.level.id;


--
-- Name: level id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.level ALTER COLUMN id SET DEFAULT nextval('public.level_id_seq'::regclass);


--
-- Name: level level_name_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.level
    ADD CONSTRAINT level_name_uniq UNIQUE (name);


--
-- Name: level level_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.level
    ADD CONSTRAINT level_pkey PRIMARY KEY (id);


--
-- Name: level audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.level FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: level level_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER level_store_last_updated_trg BEFORE UPDATE ON public.level FOR EACH ROW EXECUTE PROCEDURE public.store_last_updated_f();


--
-- Name: TABLE level; Type: ACL; Schema: public; Owner: wetodb
--

GRANT SELECT ON TABLE public.level TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.level TO radon_rw;


--
-- PostgreSQL database dump complete
--

