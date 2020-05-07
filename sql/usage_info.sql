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
-- Name: usage_info; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.usage_info (
    process_id integer NOT NULL,
    datetime timestamp with time zone NOT NULL,
    hostname text NOT NULL,
    producer_id integer NOT NULL,
    geom_name text NOT NULL,
    param_name text NOT NULL,
    level_type text NOT NULL,
    level_value numeric NOT NULL,
    forecast_period integer NOT NULL,
    file_location text NOT NULL,
    par_file text NOT NULL
);


ALTER TABLE public.usage_info OWNER TO radon_admin;

--
-- Name: usage_info usage_info_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.usage_info
    ADD CONSTRAINT usage_info_pkey PRIMARY KEY (process_id, datetime, hostname, producer_id, geom_name, param_name, level_type, level_value, forecast_period);


--
-- Name: TABLE usage_info; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.usage_info TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.usage_info TO radon_rw;


--
-- PostgreSQL database dump complete
--

