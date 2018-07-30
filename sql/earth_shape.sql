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
-- Name: earth_shape; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE earth_shape (
    id integer NOT NULL,
    a numeric NOT NULL,
    b numeric NOT NULL,
    description text,
    last_updater text DEFAULT "session_user"() NOT NULL,
    last_updated timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.earth_shape OWNER TO postgres;

--
-- Name: earth_shape_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE earth_shape_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_shape_id_seq OWNER TO postgres;

--
-- Name: earth_shape_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE earth_shape_id_seq OWNED BY earth_shape.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY earth_shape ALTER COLUMN id SET DEFAULT nextval('earth_shape_id_seq'::regclass);


--
-- Name: earth_shape_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY earth_shape
    ADD CONSTRAINT earth_shape_pkey PRIMARY KEY (id);


--
-- Name: audit_trigger_row; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON earth_shape FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: earth_shape_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER earth_shape_store_last_updated_trg BEFORE UPDATE ON earth_shape FOR EACH ROW EXECUTE PROCEDURE store_last_updated_f();


--
-- Name: earth_shape; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE earth_shape FROM PUBLIC;
REVOKE ALL ON TABLE earth_shape FROM postgres;
GRANT ALL ON TABLE earth_shape TO postgres;
GRANT SELECT ON TABLE earth_shape TO radon_ro;


--
-- PostgreSQL database dump complete
--
