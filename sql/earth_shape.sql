--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: earth_shape; Type: TABLE; Schema: public; Owner: radon_admin
--

CREATE TABLE public.earth_shape (
    id integer NOT NULL,
    a numeric NOT NULL,
    b numeric NOT NULL,
    name character varying(50),
    description text,
    last_updater text DEFAULT "session_user"(),
    last_updated timestamp with time zone DEFAULT now()
);


ALTER TABLE public.earth_shape OWNER TO radon_admin;

--
-- Name: earth_shape_id_seq; Type: SEQUENCE; Schema: public; Owner: radon_admin
--

CREATE SEQUENCE public.earth_shape_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_shape_id_seq OWNER TO radon_admin;

--
-- Name: earth_shape_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: radon_admin
--

ALTER SEQUENCE public.earth_shape_id_seq OWNED BY public.earth_shape.id;


--
-- Name: earth_shape id; Type: DEFAULT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.earth_shape ALTER COLUMN id SET DEFAULT nextval('public.earth_shape_id_seq'::regclass);


--
-- Name: earth_shape earth_shape_pkey; Type: CONSTRAINT; Schema: public; Owner: radon_admin
--

ALTER TABLE ONLY public.earth_shape
    ADD CONSTRAINT earth_shape_pkey PRIMARY KEY (id);


--
-- Name: earth_shape audit_trigger_row; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER audit_trigger_row AFTER UPDATE ON public.earth_shape FOR EACH ROW EXECUTE FUNCTION audit.if_modified_func('true');


--
-- Name: earth_shape earth_shape_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: radon_admin
--

CREATE TRIGGER earth_shape_store_last_updated_trg BEFORE UPDATE ON public.earth_shape FOR EACH ROW EXECUTE FUNCTION public.store_last_updated_f();


--
-- Name: TABLE earth_shape; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.earth_shape TO radon_ro;


--
-- PostgreSQL database dump complete
--

