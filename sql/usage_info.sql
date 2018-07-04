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
-- Name: usage_info; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE usage_info (
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


ALTER TABLE public.usage_info OWNER TO wetodb;

--
-- Name: usage_info_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY usage_info
    ADD CONSTRAINT usage_info_pkey PRIMARY KEY (process_id, datetime, hostname, producer_id, geom_name, param_name, level_type, level_value, forecast_period);


--
-- Name: usage_info; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE usage_info FROM PUBLIC;
REVOKE ALL ON TABLE usage_info FROM wetodb;
GRANT ALL ON TABLE usage_info TO wetodb;
GRANT SELECT ON TABLE usage_info TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE usage_info TO radon_rw;


--
-- PostgreSQL database dump complete
--

