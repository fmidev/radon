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
-- Name: tm_world_borders-0.3; Type: TABLE; Schema: public; Owner: wetodb
--

CREATE TABLE public."tm_world_borders-0.3" (
    gid integer NOT NULL,
    fips character varying(2),
    iso2 character varying(2),
    iso3 character varying(3),
    un smallint,
    name character varying(50),
    area integer,
    pop2005 numeric(10,0),
    region smallint,
    subregion smallint,
    lon double precision,
    lat double precision,
    geom public.geometry(MultiPolygon,4326)
);


ALTER TABLE public."tm_world_borders-0.3" OWNER TO wetodb;

--
-- Name: tm_world_borders-0.3_gid_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE public."tm_world_borders-0.3_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tm_world_borders-0.3_gid_seq" OWNER TO wetodb;

--
-- Name: tm_world_borders-0.3_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE public."tm_world_borders-0.3_gid_seq" OWNED BY public."tm_world_borders-0.3".gid;


--
-- Name: tm_world_borders-0.3 gid; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public."tm_world_borders-0.3" ALTER COLUMN gid SET DEFAULT nextval('public."tm_world_borders-0.3_gid_seq"'::regclass);


--
-- Name: tm_world_borders-0.3 tm_world_borders-0.3_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY public."tm_world_borders-0.3"
    ADD CONSTRAINT "tm_world_borders-0.3_pkey" PRIMARY KEY (gid);


--
-- Name: TABLE "tm_world_borders-0.3"; Type: ACL; Schema: public; Owner: wetodb
--

GRANT SELECT ON TABLE public."tm_world_borders-0.3" TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE public."tm_world_borders-0.3" TO radon_rw;


--
-- PostgreSQL database dump complete
--

