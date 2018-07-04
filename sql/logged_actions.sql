--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = audit, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: logged_actions; Type: TABLE; Schema: audit; Owner: postgres; Tablespace: 
--

CREATE TABLE logged_actions (
    event_id bigint NOT NULL,
    schema_name text NOT NULL,
    table_name text NOT NULL,
    session_user_name text,
    action_tstamp_tx timestamp with time zone NOT NULL,
    action_tstamp_stm timestamp with time zone NOT NULL,
    transaction_id bigint,
    application_name text,
    client_addr inet,
    client_query text,
    action text NOT NULL,
    row_data public.hstore,
    changed_fields public.hstore,
    statement_only boolean NOT NULL
);


ALTER TABLE audit.logged_actions OWNER TO postgres;

--
-- Name: logged_actions_event_id_seq; Type: SEQUENCE; Schema: audit; Owner: postgres
--

CREATE SEQUENCE logged_actions_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE audit.logged_actions_event_id_seq OWNER TO postgres;

--
-- Name: logged_actions_event_id_seq; Type: SEQUENCE OWNED BY; Schema: audit; Owner: postgres
--

ALTER SEQUENCE logged_actions_event_id_seq OWNED BY logged_actions.event_id;


--
-- Name: event_id; Type: DEFAULT; Schema: audit; Owner: postgres
--

ALTER TABLE ONLY logged_actions ALTER COLUMN event_id SET DEFAULT nextval('logged_actions_event_id_seq'::regclass);


--
-- Name: logged_actions_pkey; Type: CONSTRAINT; Schema: audit; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY logged_actions
    ADD CONSTRAINT logged_actions_pkey PRIMARY KEY (event_id);


--
-- Name: logged_actions; Type: ACL; Schema: audit; Owner: postgres
--

REVOKE ALL ON TABLE logged_actions FROM PUBLIC;
REVOKE ALL ON TABLE logged_actions FROM postgres;
GRANT ALL ON TABLE logged_actions TO postgres;
GRANT SELECT ON TABLE logged_actions TO radon_rw;


--
-- PostgreSQL database dump complete
--

