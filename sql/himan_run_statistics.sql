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
-- Name: himan_run_statistics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.himan_run_statistics (
    id integer NOT NULL,
    hostname text NOT NULL,
    finish_time timestamp with time zone NOT NULL,
    configuration_name text NOT NULL,
    configuration json NOT NULL,
    statistics json NOT NULL
);


ALTER TABLE public.himan_run_statistics OWNER TO postgres;

--
-- Name: himan_run_statistics_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.himan_run_statistics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.himan_run_statistics_id_seq OWNER TO postgres;

--
-- Name: himan_run_statistics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.himan_run_statistics_id_seq OWNED BY public.himan_run_statistics.id;


--
-- Name: himan_run_statistics id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.himan_run_statistics ALTER COLUMN id SET DEFAULT nextval('public.himan_run_statistics_id_seq'::regclass);


--
-- Name: himan_run_statistics himan_run_statistics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.himan_run_statistics
    ADD CONSTRAINT himan_run_statistics_pkey PRIMARY KEY (id);


--
-- Name: himan_run_statistics_1_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX himan_run_statistics_1_idx ON public.himan_run_statistics USING btree (finish_time, configuration_name text_pattern_ops);


--
-- Name: TABLE himan_run_statistics; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.himan_run_statistics TO radon_ro;
GRANT INSERT ON TABLE public.himan_run_statistics TO radon_rw;


--
-- Name: SEQUENCE himan_run_statistics_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,UPDATE ON SEQUENCE public.himan_run_statistics_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

