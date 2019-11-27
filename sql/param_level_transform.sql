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
-- Name: param_level_transform; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.param_level_transform (
    id integer NOT NULL,
    producer_id integer NOT NULL,
    param_id integer NOT NULL,
    other_level_id integer NOT NULL,
    other_level_value numeric,
    fmi_level_id integer NOT NULL,
    fmi_level_value numeric,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.param_level_transform OWNER TO radon_admin;

--
-- Name: param_level_transform_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.param_level_transform_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.param_level_transform_id_seq OWNER TO radon_admin;

--
-- Name: param_level_transform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.param_level_transform_id_seq OWNED BY public.param_level_transform.id;


--
-- Name: param_level_transform id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.param_level_transform ALTER COLUMN id SET DEFAULT nextval('public.param_level_transform_id_seq'::regclass);


--
-- Name: param_level_transform param_level_transform_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.param_level_transform
    ADD CONSTRAINT param_level_transform_pkey PRIMARY KEY (id);


--
-- Name: param_level_transform_uniq_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX param_level_transform_uniq_idx ON public.param_level_transform USING btree (producer_id, param_id, other_level_id, other_level_value, fmi_level_id, fmi_level_value);


--
-- Name: param_level_transform audit_trigger_row; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.param_level_transform FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: param_level_transform param_level_transform_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER param_level_transform_store_last_updated_trg BEFORE UPDATE ON public.param_level_transform FOR EACH ROW EXECUTE PROCEDURE public.store_last_updated_f();


--
-- Name: param_level_transform param_level_transform_fmi_level_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.param_level_transform
    ADD CONSTRAINT param_level_transform_fmi_level_id_fkey FOREIGN KEY (fmi_level_id) REFERENCES public.level(id);


--
-- Name: param_level_transform param_level_transform_other_level_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.param_level_transform
    ADD CONSTRAINT param_level_transform_other_level_id_fkey FOREIGN KEY (other_level_id) REFERENCES public.level(id);


--
-- Name: param_level_transform param_level_transform_param_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.param_level_transform
    ADD CONSTRAINT param_level_transform_param_id_fkey FOREIGN KEY (param_id) REFERENCES public.param(id);


--
-- Name: param_level_transform param_level_transform_producer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.param_level_transform
    ADD CONSTRAINT param_level_transform_producer_id_fkey FOREIGN KEY (producer_id) REFERENCES public.fmi_producer(id);


--
-- Name: TABLE param_level_transform; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.param_level_transform TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.param_level_transform TO radon_rw;


--
-- Name: SEQUENCE param_level_transform_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT UPDATE ON SEQUENCE public.param_level_transform_id_seq TO wetodb;
GRANT SELECT,UPDATE ON SEQUENCE public.param_level_transform_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

