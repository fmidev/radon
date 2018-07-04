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
-- Name: ss_state; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ss_state (
    producer_id integer NOT NULL,
    geometry_id integer NOT NULL,
    forecast_type_id integer NOT NULL,
    forecast_type_value numeric DEFAULT (-1) NOT NULL,
    analysis_time timestamp without time zone NOT NULL,
    forecast_period interval NOT NULL,
    table_name text NOT NULL,
    last_updater text DEFAULT "session_user"() NOT NULL,
    last_updated timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.ss_state OWNER TO postgres;

--
-- Name: ss_state_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ss_state
    ADD CONSTRAINT ss_state_pkey PRIMARY KEY (producer_id, geometry_id, analysis_time, forecast_period, forecast_type_id, forecast_type_value);


--
-- Name: ss_state_forecast_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ss_state
    ADD CONSTRAINT ss_state_forecast_type_id_fkey FOREIGN KEY (forecast_type_id) REFERENCES forecast_type(id);


--
-- Name: ss_state_geometry_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ss_state
    ADD CONSTRAINT ss_state_geometry_id_fkey FOREIGN KEY (geometry_id) REFERENCES geom(id);


--
-- Name: ss_state_producer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ss_state
    ADD CONSTRAINT ss_state_producer_id_fkey FOREIGN KEY (producer_id) REFERENCES fmi_producer(id);


--
-- Name: ss_state; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE ss_state FROM PUBLIC;
REVOKE ALL ON TABLE ss_state FROM postgres;
GRANT ALL ON TABLE ss_state TO postgres;
GRANT SELECT ON TABLE ss_state TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE ss_state TO radon_rw;


--
-- PostgreSQL database dump complete
--

