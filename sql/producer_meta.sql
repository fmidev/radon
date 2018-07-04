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
-- Name: producer_meta; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE producer_meta (
    producer_id integer NOT NULL,
    attribute text NOT NULL,
    value text NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.producer_meta OWNER TO wetodb;

--
-- Name: producer_meta_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY producer_meta
    ADD CONSTRAINT producer_meta_pkey PRIMARY KEY (producer_id, attribute);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON producer_meta FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: producer_meta_fmi_producer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY producer_meta
    ADD CONSTRAINT producer_meta_fmi_producer_fkey FOREIGN KEY (producer_id) REFERENCES fmi_producer(id);


--
-- Name: producer_meta; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE producer_meta FROM PUBLIC;
REVOKE ALL ON TABLE producer_meta FROM wetodb;
GRANT ALL ON TABLE producer_meta TO wetodb;
GRANT SELECT ON TABLE producer_meta TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE producer_meta TO radon_rw;


--
-- PostgreSQL database dump complete
--

