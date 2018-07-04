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
-- Name: geom; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE geom (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    projection_id integer NOT NULL,
    ni integer,
    nj integer,
    first_point geometry(Point),
    di numeric,
    dj numeric,
    scanning_mode text,
    geom_param_1 numeric,
    geom_param_2 numeric,
    geom_param_3 numeric,
    description text,
    last_updater text,
    last_updated timestamp with time zone,
    CONSTRAINT geom_scanning_mode_chk CHECK ((scanning_mode = ANY (ARRAY['+x+y'::text, '+x-y'::text, '-x+y'::text, '-x-y'::text])))
);


ALTER TABLE public.geom OWNER TO wetodb;

--
-- Name: COLUMN geom.last_updater; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN geom.last_updater IS 'Fixed column for last updater';


--
-- Name: COLUMN geom.last_updated; Type: COMMENT; Schema: public; Owner: wetodb
--

COMMENT ON COLUMN geom.last_updated IS 'Fixed column for last updating time';


--
-- Name: geom_id_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE geom_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.geom_id_seq OWNER TO wetodb;

--
-- Name: geom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE geom_id_seq OWNED BY geom.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY geom ALTER COLUMN id SET DEFAULT nextval('geom_id_seq'::regclass);


--
-- Name: geom_name_uniq; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY geom
    ADD CONSTRAINT geom_name_uniq UNIQUE (name);


--
-- Name: geom_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY geom
    ADD CONSTRAINT geom_pkey PRIMARY KEY (id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON geom FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: geom_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER geom_last_updated_trg BEFORE UPDATE ON geom FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: geom_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: wetodb
--

CREATE TRIGGER geom_store_last_updated_trg BEFORE UPDATE ON geom FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: geom_projection_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY geom
    ADD CONSTRAINT geom_projection_fkey FOREIGN KEY (projection_id) REFERENCES projection(id);


--
-- Name: geom; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE geom FROM PUBLIC;
REVOKE ALL ON TABLE geom FROM wetodb;
GRANT SELECT ON TABLE geom TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE geom TO radon_rw;


--
-- PostgreSQL database dump complete
--

