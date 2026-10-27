--
-- PostgreSQL database dump
--

\restrict Uz9uPZSEFhJFL3H8I1t7cd76MLeajSrbvFIMhqUJPZtpr4iww9WNJVNiUoIeebx

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.15

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

--
-- Name: station_v; Type: VIEW; Schema: public; Owner: radon_admin
--

CREATE VIEW public.station_v AS
 SELECT s.id AS station_id,
    s.name AS station_name,
    public.st_x(s."position") AS longitude,
    public.st_y(s."position") AS latitude,
    s.elevation,
    s.elevation_altimeter,
    s.external_information,
    s.is_mobile,
    w.name AS country_name
   FROM public.station s,
    public.world_borders_v w
  WHERE public.st_contains(w.geom, s."position");


ALTER TABLE public.station_v OWNER TO radon_admin;

--
-- Name: TABLE station_v; Type: ACL; Schema: public; Owner: radon_admin
--

GRANT SELECT ON TABLE public.station_v TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict Uz9uPZSEFhJFL3H8I1t7cd76MLeajSrbvFIMhqUJPZtpr4iww9WNJVNiUoIeebx

