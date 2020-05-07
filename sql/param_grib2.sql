--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.2

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
-- Name: param_grib2; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.param_grib2 (
    id integer NOT NULL,
    producer_id integer NOT NULL,
    param_id integer NOT NULL,
    discipline integer NOT NULL,
    category integer NOT NULL,
    number integer NOT NULL,
    level_id integer,
    level_value numeric,
    last_updater text,
    last_updated timestamp with time zone,
    type_of_statistical_processing integer DEFAULT '-1'::integer NOT NULL
);


ALTER TABLE public.param_grib2 OWNER TO radon_admin;

--
-- Name: COLUMN param_grib2.last_updater; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.param_grib2.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN param_grib2.last_updated; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.param_grib2.last_updated IS 'Fixed column for last updating time';


--
-- Name: param_grib2_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.param_grib2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.param_grib2_id_seq OWNER TO radon_admin;

--
-- Name: param_grib2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.param_grib2_id_seq OWNED BY public.param_grib2.id;


--
-- Name: param_grib2 id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_grib2 ALTER COLUMN id SET DEFAULT nextval('public.param_grib2_id_seq'::regclass);


--
-- Name: param_grib2 param_grib2_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_grib2
    ADD CONSTRAINT param_grib2_pkey PRIMARY KEY (id);


--
-- Name: param_grib2_producer_id_uniq; Type: INDEX; Schema: public; Owner: radon_admin
--

CREATE UNIQUE INDEX param_grib2_producer_id_uniq ON public.param_grib2 USING btree (producer_id, param_id, discipline, category, number, level_id, level_value, type_of_statistical_processing);


--
-- Name: param_grib2 audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.param_grib2 FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: param_grib2 param_grib2_duplicate_check_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER param_grib2_duplicate_check_trg BEFORE INSERT ON public.param_grib2 FOR EACH ROW EXECUTE FUNCTION public.param_grib2_duplicate_check_f();


--
-- Name: param_grib2 param_grib2_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER param_grib2_store_last_updated_trg BEFORE UPDATE ON public.param_grib2 FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: param_grib2 param_grib2_fmi_producers_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_grib2
    ADD CONSTRAINT param_grib2_fmi_producers_fkey FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: param_grib2 param_grib2_level_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_grib2
    ADD CONSTRAINT param_grib2_level_fkey FOREIGN KEY (level_id) REFERENCES public.level(id);


--
-- Name: param_grib2 param_grib2_parm_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_grib2
    ADD CONSTRAINT param_grib2_parm_id_fkey FOREIGN KEY (param_id) REFERENCES public.param(id);


--
-- Name: TABLE param_grib2; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.param_grib2 TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.param_grib2 TO radon_rw;


--
-- Name: SEQUENCE param_grib2_id_seq; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT,UPDATE ON SEQUENCE public.param_grib2_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

