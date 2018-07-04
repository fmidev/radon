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
-- Name: tm_world_borders-0.3; Type: TABLE; Schema: public; Owner: wetodb; Tablespace: 
--

CREATE TABLE "tm_world_borders-0.3" (
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
    geom geometry(MultiPolygon,4326)
);


ALTER TABLE public."tm_world_borders-0.3" OWNER TO wetodb;

--
-- Name: tm_world_borders-0.3_gid_seq; Type: SEQUENCE; Schema: public; Owner: wetodb
--

CREATE SEQUENCE "tm_world_borders-0.3_gid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tm_world_borders-0.3_gid_seq" OWNER TO wetodb;

--
-- Name: tm_world_borders-0.3_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wetodb
--

ALTER SEQUENCE "tm_world_borders-0.3_gid_seq" OWNED BY "tm_world_borders-0.3".gid;


--
-- Name: gid; Type: DEFAULT; Schema: public; Owner: wetodb
--

ALTER TABLE ONLY "tm_world_borders-0.3" ALTER COLUMN gid SET DEFAULT nextval('"tm_world_borders-0.3_gid_seq"'::regclass);


--
-- Name: tm_world_borders-0.3_pkey; Type: CONSTRAINT; Schema: public; Owner: wetodb; Tablespace: 
--

ALTER TABLE ONLY "tm_world_borders-0.3"
    ADD CONSTRAINT "tm_world_borders-0.3_pkey" PRIMARY KEY (gid);


--
-- Name: tm_world_borders-0.3; Type: ACL; Schema: public; Owner: wetodb
--

REVOKE ALL ON TABLE "tm_world_borders-0.3" FROM PUBLIC;
REVOKE ALL ON TABLE "tm_world_borders-0.3" FROM wetodb;
GRANT ALL ON TABLE "tm_world_borders-0.3" TO wetodb;
GRANT SELECT ON TABLE "tm_world_borders-0.3" TO radon_ro;
GRANT INSERT,DELETE,UPDATE ON TABLE "tm_world_borders-0.3" TO radon_rw;


--
-- PostgreSQL database dump complete
--

