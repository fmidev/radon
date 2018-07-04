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
-- Name: network; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE network (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.network OWNER TO wetodb;

--
-- Name: network_name_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY network
    ADD CONSTRAINT network_name_uniq UNIQUE (name);


--
-- Name: network_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY network
    ADD CONSTRAINT network_pkey PRIMARY KEY (id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON network FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: network_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER network_store_last_updated_trg BEFORE UPDATE ON network FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: network; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE network FROM PUBLIC;
REVOKE ALL ON TABLE network FROM wetodb;
GRANT ALL ON TABLE network TO wetodb;
GRANT SELECT ON TABLE network TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE network TO radon_rw;


--
-- PostgreSQL database dump complete
--

