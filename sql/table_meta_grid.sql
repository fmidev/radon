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
-- Name: table_meta_grid; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.table_meta_grid (
    id integer NOT NULL,
    producer_id integer NOT NULL,
    schema_name character varying(50) DEFAULT 'data'::character varying,
    table_name character varying(50) NOT NULL,
    geometry_id integer NOT NULL,
    retention_period interval NOT NULL,
    analysis_times numeric[],
    last_updater text,
    last_updated timestamp with time zone,
    partitioning_period text DEFAULT 'ANALYSISTIME'::text NOT NULL,
    CONSTRAINT table_meta_grid_partitioning_period_chk CHECK ((partitioning_period = ANY (ARRAY['ANALYSISTIME'::text, 'MONTHLY'::text, 'ANNUAL'::text])))
);


ALTER TABLE public.table_meta_grid OWNER TO radon_admin;

--
-- Name: table_meta_grid_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.table_meta_grid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_meta_grid_id_seq OWNER TO radon_admin;

--
-- Name: table_meta_grid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.table_meta_grid_id_seq OWNED BY public.table_meta_grid.id;


--
-- Name: table_meta_grid id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.table_meta_grid ALTER COLUMN id SET DEFAULT nextval('public.table_meta_grid_id_seq'::regclass);


--
-- Name: table_meta_grid table_meta_grid_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.table_meta_grid
    ADD CONSTRAINT table_meta_grid_pkey PRIMARY KEY (id);


--
-- Name: table_meta_grid table_meta_grid_uniq; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.table_meta_grid
    ADD CONSTRAINT table_meta_grid_uniq UNIQUE (producer_id, table_name, geometry_id);


--
-- Name: table_meta_grid audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.table_meta_grid FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: table_meta_grid table_meta_grid_producer_class_id_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER table_meta_grid_producer_class_id_trg BEFORE INSERT OR UPDATE ON public.table_meta_grid FOR EACH ROW EXECUTE FUNCTION public.table_meta_producer_class_id_f('table_meta_grid');


--
-- Name: table_meta_grid table_meta_grid_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER table_meta_grid_store_last_updated_trg BEFORE UPDATE ON public.table_meta_grid FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: table_meta_grid table_meta_grid_fmi_producer_fkey_02; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.table_meta_grid
    ADD CONSTRAINT table_meta_grid_fmi_producer_fkey_02 FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: table_meta_grid table_meta_grid_geom_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.table_meta_grid
    ADD CONSTRAINT table_meta_grid_geom_fkey FOREIGN KEY (geometry_id) REFERENCES public.geom(id);


--
-- Name: TABLE table_meta_grid; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.table_meta_grid TO radon_ro;


--
-- Name: SEQUENCE table_meta_grid_id_seq; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT,UPDATE ON SEQUENCE public.table_meta_grid_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

