--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: station_probability_limit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.station_probability_limit (
    id integer NOT NULL,
    station_id integer NOT NULL,
    param_id integer NOT NULL,
    probability_limit numeric NOT NULL,
    last_updater text,
    last_updated timestamp with time zone
);


ALTER TABLE public.station_probability_limit OWNER TO radon_admin;

--
-- Name: station_probability_limit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.station_probability_limit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.station_probability_limit_id_seq OWNER TO radon_admin;

--
-- Name: station_probability_limit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.station_probability_limit_id_seq OWNED BY public.station_probability_limit.id;


--
-- Name: station_probability_limit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.station_probability_limit ALTER COLUMN id SET DEFAULT nextval('public.station_probability_limit_id_seq'::regclass);


--
-- Name: station_probability_limit station_probability_limit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.station_probability_limit
    ADD CONSTRAINT station_probability_limit_pkey PRIMARY KEY (id);


--
-- Name: station_probability_limit_uniq_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX station_probability_limit_uniq_idx ON public.station_probability_limit USING btree (station_id, param_id);


--
-- Name: station_probability_limit station_probability_limit_audit_trigger_row_trg; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER station_probability_limit_audit_trigger_row_trg AFTER UPDATE ON public.station_probability_limit FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func('true');


--
-- Name: station_probability_limit station_probability_limit_store_last_updated_trg; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER station_probability_limit_store_last_updated_trg BEFORE UPDATE ON public.station_probability_limit FOR EACH ROW EXECUTE PROCEDURE public.store_last_updated_f();


--
-- Name: station_probability_limit station_probability_limit_param_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.station_probability_limit
    ADD CONSTRAINT station_probability_limit_param_id_fkey FOREIGN KEY (param_id) REFERENCES public.param(id);


--
-- Name: station_probability_limit station_probability_limit_station_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.station_probability_limit
    ADD CONSTRAINT station_probability_limit_station_id_fkey FOREIGN KEY (station_id) REFERENCES public.station(id);


--
-- Name: TABLE station_probability_limit; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.station_probability_limit TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public.station_probability_limit TO radon_rw;


--
-- Name: SEQUENCE station_probability_limit_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT UPDATE ON SEQUENCE public.station_probability_limit_id_seq TO radon_rw;


--
-- PostgreSQL database dump complete
--

