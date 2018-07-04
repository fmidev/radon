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
-- Name: previ_data_template; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE previ_data_template (
    producer_id integer NOT NULL,
    analysis_time timestamp(0) without time zone NOT NULL,
    station_id integer NOT NULL,
    param_id integer NOT NULL,
    level_id integer NOT NULL,
    level_value numeric NOT NULL,
    level_value2 numeric DEFAULT (-1) NOT NULL,
    forecast_period interval NOT NULL,
    forecast_type_id integer NOT NULL,
    forecast_type_value numeric DEFAULT (-1) NOT NULL,
    value numeric,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.previ_data_template OWNER TO wetodb;

--
-- Name: previ_data_template_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY previ_data_template
    ADD CONSTRAINT previ_data_template_pkey PRIMARY KEY (producer_id, analysis_time, station_id, param_id, level_id, level_value, level_value2, forecast_period, forecast_type_id, forecast_type_value);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON previ_data_template FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: previ_data_template_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER previ_data_template_store_last_updated_trg BEFORE UPDATE ON previ_data_template FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: previ_data_template_forecast_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY previ_data_template
    ADD CONSTRAINT previ_data_template_forecast_type_id_fkey FOREIGN KEY (forecast_type_id) REFERENCES forecast_type(id);


--
-- Name: previ_data_template_level_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY previ_data_template
    ADD CONSTRAINT previ_data_template_level_id_fkey FOREIGN KEY (level_id) REFERENCES level(id);


--
-- Name: previ_data_template_param_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY previ_data_template
    ADD CONSTRAINT previ_data_template_param_id_fkey FOREIGN KEY (param_id) REFERENCES param(id);


--
-- Name: previ_data_template_producer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY previ_data_template
    ADD CONSTRAINT previ_data_template_producer_id_fkey FOREIGN KEY (producer_id) REFERENCES fmi_producer(id);


--
-- Name: previ_data_template_station_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY previ_data_template
    ADD CONSTRAINT previ_data_template_station_id_fkey FOREIGN KEY (station_id) REFERENCES station(id);


--
-- Name: previ_data_template; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE previ_data_template FROM PUBLIC;
REVOKE ALL ON TABLE previ_data_template FROM wetodb;
GRANT ALL ON TABLE previ_data_template TO wetodb;
GRANT SELECT ON TABLE previ_data_template TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE previ_data_template TO radon_rw;


--
-- PostgreSQL database dump complete
--

