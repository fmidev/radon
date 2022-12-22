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
-- Name: mos_station; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.mos_station (
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


ALTER TABLE public.mos_station OWNER TO radon_admin;

--
-- Name: mos_station_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.mos_station_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mos_station_id_seq OWNER TO radon_admin;

--
-- Name: mos_station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.mos_station_id_seq OWNED BY public.mos_station.id;


--
-- Name: mos_station id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.mos_station ALTER COLUMN id SET DEFAULT nextval('public.mos_station_id_seq'::regclass);


--
-- Name: mos_station mos_station_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.mos_station
    ADD CONSTRAINT mos_station_pkey PRIMARY KEY (id);


--
-- Name: mos_station mos_station_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER mos_station_store_last_updated_trg BEFORE UPDATE ON public.mos_station FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- PostgreSQL database dump complete
--

