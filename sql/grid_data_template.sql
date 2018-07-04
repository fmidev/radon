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
-- Name: grid_data_template; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE grid_data_template (
    producer_id integer NOT NULL,
    analysis_time timestamp with time zone NOT NULL,
    geometry_id integer NOT NULL,
    param_id integer NOT NULL,
    level_id integer NOT NULL,
    level_value numeric NOT NULL,
    level_value2 numeric DEFAULT (-1) NOT NULL,
    forecast_period interval NOT NULL,
    forecast_type_id integer NOT NULL,
    forecast_type_value numeric DEFAULT (-1) NOT NULL,
    file_location text NOT NULL,
    file_server text NOT NULL,
    last_updater text DEFAULT "session_user"(),
    last_updated timestamp with time zone DEFAULT clock_timestamp()
);


ALTER TABLE public.grid_data_template OWNER TO wetodb;

--
-- Name: COLUMN grid_data_template.forecast_type_value; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN grid_data_template.forecast_type_value IS 'Optional field related to forecast_type_id.';


--
-- Name: COLUMN grid_data_template.last_updater; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN grid_data_template.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN grid_data_template.last_updated; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN grid_data_template.last_updated IS 'Fixed column for last updating time';


--
-- Name: grid_data_template_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY grid_data_template
    ADD CONSTRAINT grid_data_template_pkey PRIMARY KEY (producer_id, analysis_time, geometry_id, param_id, level_id, level_value, level_value2, forecast_period, forecast_type_id, forecast_type_value);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON grid_data_template FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: grid_data_template_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY grid_data_template
    ADD CONSTRAINT grid_data_template_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES fmi_producer(id);


--
-- Name: grid_data_template_forecast_type_fkey_02; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY grid_data_template
    ADD CONSTRAINT grid_data_template_forecast_type_fkey_02 FOREIGN KEY (forecast_type_id) REFERENCES forecast_type(id);


--
-- Name: grid_data_template_geom_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY grid_data_template
    ADD CONSTRAINT grid_data_template_geom_fkey FOREIGN KEY (geometry_id) REFERENCES geom(id);


--
-- Name: grid_data_template_level_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY grid_data_template
    ADD CONSTRAINT grid_data_template_level_fkey FOREIGN KEY (level_id) REFERENCES level(id);


--
-- Name: grid_data_template_param_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY grid_data_template
    ADD CONSTRAINT grid_data_template_param_fkey FOREIGN KEY (param_id) REFERENCES param(id);


--
-- Name: grid_data_template; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE grid_data_template FROM PUBLIC;
REVOKE ALL ON TABLE grid_data_template FROM wetodb;
GRANT ALL ON TABLE grid_data_template TO wetodb;
GRANT SELECT ON TABLE grid_data_template TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE grid_data_template TO radon_rw;


--
-- PostgreSQL database dump complete
--

