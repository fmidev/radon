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
-- Name: param; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.param (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    unit_id integer NOT NULL,
    interpolation_id integer NOT NULL,
    description text,
    last_updater text,
    last_updated timestamp(0) without time zone
);


ALTER TABLE public.param OWNER TO radon_admin;

--
-- Name: COLUMN param.last_updater; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.param.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN param.last_updated; Type: COMMENT; Schema: public; Owner: radon_admin
--

COMMENT ON COLUMN public.param.last_updated IS 'Fixed column for last updating time';


--
-- Name: param_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.param_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.param_id_seq OWNER TO radon_admin;

--
-- Name: param_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.param_id_seq OWNED BY public.param.id;


--
-- Name: param id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param ALTER COLUMN id SET DEFAULT nextval('public.param_id_seq'::regclass);


--
-- Name: param param_name_version_idx; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param
    ADD CONSTRAINT param_name_version_idx UNIQUE (name, version);


--
-- Name: param param_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param
    ADD CONSTRAINT param_pkey PRIMARY KEY (id);


--
-- Name: param audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.param FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: param param_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER param_store_last_updated_trg BEFORE UPDATE ON public.param FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: param param_interpolation_id_idx; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param
    ADD CONSTRAINT param_interpolation_id_idx FOREIGN KEY (interpolation_id) REFERENCES public.interpolation_method(id);


--
-- Name: param param_unit_id_idx; Type: FK CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param
    ADD CONSTRAINT param_unit_id_idx FOREIGN KEY (unit_id) REFERENCES public.param_unit(id);


--
-- Name: TABLE param; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.param TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.param TO radon_rw;


--
-- Name: SEQUENCE param_id_seq; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT,UPDATE ON SEQUENCE public.param_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

