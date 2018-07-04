--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: himan_run_statistics; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE himan_run_statistics (
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

CREATE SEQUENCE himan_run_statistics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.himan_run_statistics_id_seq OWNER TO postgres;

--
-- Name: himan_run_statistics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE himan_run_statistics_id_seq OWNED BY himan_run_statistics.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY himan_run_statistics ALTER COLUMN id SET DEFAULT nextval('himan_run_statistics_id_seq'::regclass);


--
-- Name: himan_run_statistics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY himan_run_statistics
    ADD CONSTRAINT himan_run_statistics_pkey PRIMARY KEY (id);


--
-- Name: himan_run_statistics; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE himan_run_statistics FROM PUBLIC;
REVOKE ALL ON TABLE himan_run_statistics FROM postgres;
GRANT ALL ON TABLE himan_run_statistics TO postgres;
GRANT SELECT ON TABLE himan_run_statistics TO radon_ro;
GRANT INSERT ON TABLE himan_run_statistics TO radon_rw;


--
-- Name: himan_run_statistics_id_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE himan_run_statistics_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE himan_run_statistics_id_seq FROM postgres;
GRANT ALL ON SEQUENCE himan_run_statistics_id_seq TO postgres;
GRANT SELECT,UPDATE ON SEQUENCE himan_run_statistics_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

