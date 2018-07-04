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
-- Name: hybrid_level_height; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE hybrid_level_height (
    producer_id integer NOT NULL,
    geometry_id integer NOT NULL,
    level_value numeric NOT NULL,
    analysis_time timestamp with time zone NOT NULL,
    minimum_height numeric,
    minimum_height_stddev numeric,
    minimum_pressure numeric,
    minimum_pressure_stddev numeric,
    maximum_height numeric,
    maximum_pressure numeric,
    maximum_height_stddev numeric,
    maximum_pressure_stddev numeric,
    average_height numeric,
    average_pressure numeric,
    count integer,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.hybrid_level_height OWNER TO wetodb;

--
-- Name: hybrid_level_height_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY hybrid_level_height
    ADD CONSTRAINT hybrid_level_height_pkey PRIMARY KEY (producer_id, geometry_id, level_value);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON hybrid_level_height FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: hybrid_level_height_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER hybrid_level_height_last_updated_trg BEFORE UPDATE ON hybrid_level_height FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: hybrid_level_height_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY hybrid_level_height
    ADD CONSTRAINT hybrid_level_height_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES fmi_producer(id);


--
-- Name: hybrid_level_height_geom_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY hybrid_level_height
    ADD CONSTRAINT hybrid_level_height_geom_fkey FOREIGN KEY (geometry_id) REFERENCES geom(id);


--
-- Name: hybrid_level_height; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE hybrid_level_height FROM PUBLIC;
REVOKE ALL ON TABLE hybrid_level_height FROM wetodb;
GRANT ALL ON TABLE hybrid_level_height TO wetodb;
GRANT SELECT ON TABLE hybrid_level_height TO radon_ro;


--
-- PostgreSQL database dump complete
--

