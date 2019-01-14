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
-- Name: producer_grib; Type: TABLE; Schema: public; Owner: wetodb
--

CREATE TABLE public.producer_grib (
    id integer NOT NULL,
    producer_id integer NOT NULL,
    ident integer NOT NULL,
    centre integer NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.producer_grib OWNER TO wetodb;

--
-- Name: producer_grib_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE public.producer_grib_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producer_grib_id_seq OWNER TO wetodb;

--
-- Name: producer_grib_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE public.producer_grib_id_seq OWNED BY public.producer_grib.id;


--
-- Name: producer_grib id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.producer_grib ALTER COLUMN id SET DEFAULT nextval('public.producer_grib_id_seq'::regclass);


--
-- Name: producer_grib producer_grib_centre_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.producer_grib
    ADD CONSTRAINT producer_grib_centre_uniq UNIQUE (producer_id, centre, ident);


--
-- Name: producer_grib audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.producer_grib FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: producer_grib producer_grib_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER producer_grib_store_last_updated_trg BEFORE UPDATE ON public.producer_grib FOR EACH ROW EXECUTE PROCEDURE public.store_last_updated_f();


--
-- Name: producer_grib producer_grib_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.producer_grib
    ADD CONSTRAINT producer_grib_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: TABLE producer_grib; Type: ACL; Schema: public; Owner: wetodb
--

GRANT SELECT ON TABLE public.producer_grib TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.producer_grib TO radon_rw;


--
-- PostgreSQL database dump complete
--

