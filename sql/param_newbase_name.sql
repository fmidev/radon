--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.3

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
-- Name: param_newbase_name; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.param_newbase_name (
    id integer NOT NULL,
    univ_id integer NOT NULL,
    name text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.param_newbase_name OWNER TO radon_admin;

--
-- Name: param_newbase_name_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.param_newbase_name_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.param_newbase_name_id_seq OWNER TO radon_admin;

--
-- Name: param_newbase_name_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.param_newbase_name_id_seq OWNED BY public.param_newbase_name.id;


--
-- Name: param_newbase_name id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_newbase_name ALTER COLUMN id SET DEFAULT nextval('public.param_newbase_name_id_seq'::regclass);


--
-- Name: param_newbase_name param_newbase_name_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_newbase_name
    ADD CONSTRAINT param_newbase_name_pkey PRIMARY KEY (id);


--
-- Name: param_newbase_name univ_id_key; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.param_newbase_name
    ADD CONSTRAINT univ_id_key UNIQUE (univ_id);


--
-- Name: param_newbase_name_univ_id_uniq_idx; Type: INDEX; Schema: public; Owner: radon_admin
--

CREATE UNIQUE INDEX param_newbase_name_univ_id_uniq_idx ON public.param_newbase_name USING btree (univ_id);


--
-- Name: param_newbase_name param_newbase_name_audit_trigger_row_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER param_newbase_name_audit_trigger_row_trg AFTER UPDATE ON public.param_newbase_name FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: param_newbase_name param_newbase_name_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER param_newbase_name_store_last_updated_trg BEFORE UPDATE ON public.param_newbase_name FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: TABLE param_newbase_name; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.param_newbase_name TO radon_ro;
GRANT SELECT ON TABLE public.param_newbase_name TO radon_rw;


--
-- Name: SEQUENCE param_newbase_name_id_seq; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT ALL ON SEQUENCE public.param_newbase_name_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

