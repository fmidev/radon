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
-- Name: as_grid; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.as_grid (
    id integer NOT NULL,
    producer_id integer NOT NULL,
    analysis_time timestamp with time zone NOT NULL,
    geometry_id integer NOT NULL,
    schema_name character varying(50) NOT NULL,
    table_name character varying(50) NOT NULL,
    partition_name character varying(70),
    record_count integer DEFAULT 0 NOT NULL,
    delete_time timestamp with time zone NOT NULL,
    last_updater text,
    last_updated timestamp with time zone,
    min_analysis_time timestamp with time zone,
    max_analysis_time timestamp with time zone
);


ALTER TABLE public.as_grid OWNER TO radon_admin;

--
-- Name: COLUMN as_grid.last_updater; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.as_grid.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN as_grid.last_updated; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.as_grid.last_updated IS 'Fixed column for last updating time';


--
-- Name: as_grid_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.as_grid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.as_grid_id_seq OWNER TO radon_admin;

--
-- Name: as_grid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.as_grid_id_seq OWNED BY public.as_grid.id;


--
-- Name: as_grid id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.as_grid ALTER COLUMN id SET DEFAULT nextval('public.as_grid_id_seq'::regclass);


--
-- Name: as_grid as_grid_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.as_grid
    ADD CONSTRAINT as_grid_pkey PRIMARY KEY (id);


--
-- Name: as_grid_producer_id_analysis_time_geometry_id_uniq_idx; Type: INDEX; Schema: public; Owner: radon_admin
--

CREATE UNIQUE INDEX as_grid_producer_id_analysis_time_geometry_id_uniq_idx ON public.as_grid USING btree (producer_id, analysis_time, geometry_id);


--
-- Name: as_grid as_grid_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER as_grid_store_last_updated_trg BEFORE UPDATE ON public.as_grid FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: as_grid as_grid_fmi_producer_fkey_02; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.as_grid
    ADD CONSTRAINT as_grid_fmi_producer_fkey_02 FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: TABLE as_grid; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.as_grid TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.as_grid TO radon_rw;


--
-- Name: SEQUENCE as_grid_id_seq; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT,UPDATE ON SEQUENCE public.as_grid_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

