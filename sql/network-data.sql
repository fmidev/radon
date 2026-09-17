--
-- PostgreSQL database dump
--

\restrict yvC2uNWFwwc0OFIqz16eib85Pge9DT9Rcmhg7s5zH80xwixEg7wueZpjIJuVrQ3

-- Dumped from database version 15.2
-- Dumped by pg_dump version 16.15 (Ubuntu 16.15-0ubuntu0.24.04.1)

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
-- Data for Name: network; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.network (id, name, description, last_updater, last_updated) FROM stdin;
1	WMO	WMO station network	\N	\N
2	ICAO	ICAO station network	\N	\N
3	LPNN	LPNN station network	\N	\N
4	ROADWEATHER	Finnish road weather station network	\N	\N
5	FMISID	FMISID station network	\N	\N
\.


--
-- PostgreSQL database dump complete
--

\unrestrict yvC2uNWFwwc0OFIqz16eib85Pge9DT9Rcmhg7s5zH80xwixEg7wueZpjIJuVrQ3

