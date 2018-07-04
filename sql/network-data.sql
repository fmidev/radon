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

--
-- Data for Name: network; Type: TABLE DATA; Schema: public; Owner: wetodb
--

COPY network (id, name, description, last_updater, last_updated) FROM stdin;
1	WMO	WMO station network	\N	\N
2	ICAO	ICAO station network	\N	\N
3	LPNN	LPNN station network	\N	\N
4	ROADWEATHER	Finnish road weather station network	\N	\N
5	FMISID	FMISID station network	\N	\N
\.


--
-- PostgreSQL database dump complete
--

