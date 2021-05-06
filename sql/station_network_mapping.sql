--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.6

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
-- Name: station_network_mapping; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.station_network_mapping (
    id integer NOT NULL,
    station_id integer NOT NULL,
    network_id integer NOT NULL,
    local_station_id character varying(50),
    begin_time timestamp with time zone,
    end_time timestamp with time zone,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.station_network_mapping OWNER TO radon_admin;

--
-- Name: station_network_mapping_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.station_network_mapping_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.station_network_mapping_id_seq OWNER TO radon_admin;

--
-- Name: station_network_mapping_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.station_network_mapping_id_seq OWNED BY public.station_network_mapping.id;


--
-- Name: station_network_mapping id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.station_network_mapping ALTER COLUMN id SET DEFAULT nextval('public.station_network_mapping_id_seq'::regclass);


--
-- Name: station_network_mapping station_network_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.station_network_mapping
    ADD CONSTRAINT station_network_mapping_pkey PRIMARY KEY (id);


--
-- Name: station_network_mapping station_network_mapping_station_id_network_id_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.station_network_mapping
    ADD CONSTRAINT station_network_mapping_station_id_network_id_uniq UNIQUE (station_id, network_id);


--
-- Name: station_network_mapping audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.station_network_mapping FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: station_network_mapping station_network_mapping_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER station_network_mapping_store_last_updated_trg BEFORE UPDATE ON public.station_network_mapping FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: station_network_mapping station_network_mapping_network_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.station_network_mapping
    ADD CONSTRAINT station_network_mapping_network_fkey FOREIGN KEY (network_id) REFERENCES public.network(id);


--
-- Name: station_network_mapping station_network_mapping_station_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.station_network_mapping
    ADD CONSTRAINT station_network_mapping_station_fkey FOREIGN KEY (station_id) REFERENCES public.station(id);


--
-- Name: TABLE station_network_mapping; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.station_network_mapping TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.station_network_mapping TO radon_rw;


--
-- PostgreSQL database dump complete
--

