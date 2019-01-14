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
-- Name: param; Type: TABLE; Schema: public; Owner: wetodb
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


ALTER TABLE public.param OWNER TO wetodb;

--
-- Name: COLUMN param.last_updater; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN public.param.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN param.last_updated; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN public.param.last_updated IS 'Fixed column for last updating time';


--
-- Name: param_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE public.param_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.param_id_seq OWNER TO wetodb;

--
-- Name: param_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE public.param_id_seq OWNED BY public.param.id;


--
-- Name: param id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.param ALTER COLUMN id SET DEFAULT nextval('public.param_id_seq'::regclass);


--
-- Name: param param_name_version_idx; Type: CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.param
    ADD CONSTRAINT param_name_version_idx UNIQUE (name, version);


--
-- Name: param param_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.param
    ADD CONSTRAINT param_pkey PRIMARY KEY (id);


--
-- Name: param audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.param FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: param param_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER param_store_last_updated_trg BEFORE UPDATE ON public.param FOR EACH ROW EXECUTE PROCEDURE public.store_last_updated_f();


--
-- Name: param param_interpolation_id_idx; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.param
    ADD CONSTRAINT param_interpolation_id_idx FOREIGN KEY (interpolation_id) REFERENCES public.interpolation_method(id);


--
-- Name: param param_unit_id_idx; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public.param
    ADD CONSTRAINT param_unit_id_idx FOREIGN KEY (unit_id) REFERENCES public.param_unit(id);


--
-- Name: TABLE param; Type: ACL; Schema: public; Owner: wetodb
--

GRANT SELECT ON TABLE public.param TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.param TO radon_rw;


--
-- PostgreSQL database dump complete
--

