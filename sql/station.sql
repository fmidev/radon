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
-- Name: station; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.station (
    id integer NOT NULL,
    name text NOT NULL,
    "position" public.geometry(Point,4326),
    elevation numeric,
    description text,
    elevation_altimeter numeric,
    external_information text,
    is_mobile boolean DEFAULT false NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.station OWNER TO radon_admin;

--
-- Name: COLUMN station.last_updater; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.station.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN station.last_updated; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.station.last_updated IS 'Fixed column for last updating time';


--
-- Name: station_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.station_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.station_id_seq OWNER TO radon_admin;

--
-- Name: station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.station_id_seq OWNED BY public.station.id;


--
-- Name: station id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.station ALTER COLUMN id SET DEFAULT nextval('public.station_id_seq'::regclass);


--
-- Name: station station_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.station
    ADD CONSTRAINT station_pkey PRIMARY KEY (id);


--
-- Name: station audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.station FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: station station_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER station_store_last_updated_trg BEFORE UPDATE ON public.station FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: TABLE station; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.station TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.station TO radon_rw;


--
-- PostgreSQL database dump complete
--

