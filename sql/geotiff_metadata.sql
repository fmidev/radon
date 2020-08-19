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
-- Name: geotiff_metadata; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.geotiff_metadata (
    id integer NOT NULL,
    producer_id integer NOT NULL,
    attribute text NOT NULL,
    key text NOT NULL,
    mask text
);


ALTER TABLE public.geotiff_metadata OWNER TO radon_admin;

--
-- Name: geotiff_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.geotiff_metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.geotiff_metadata_id_seq OWNER TO radon_admin;

--
-- Name: geotiff_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.geotiff_metadata_id_seq OWNED BY public.geotiff_metadata.id;


--
-- Name: geotiff_metadata id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geotiff_metadata ALTER COLUMN id SET DEFAULT nextval('public.geotiff_metadata_id_seq'::regclass);


--
-- Name: geotiff_metadata geotiff_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geotiff_metadata
    ADD CONSTRAINT geotiff_metadata_pkey PRIMARY KEY (id);


--
-- Name: geotiff_metadata geotiff_metadata_producer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.geotiff_metadata
    ADD CONSTRAINT geotiff_metadata_producer_id_fkey FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: TABLE geotiff_metadata; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.geotiff_metadata TO PUBLIC;


--
-- PostgreSQL database dump complete
--

