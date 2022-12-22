--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.1

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
-- Data for Name: projection; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.projection (id, name, description, grib1_number, grib2_number, last_updater, last_updated) FROM stdin;
1	Equidistant cylindrical	Latitude/Longitude/or Equidistant Cylindrical or Plate Carree projection	0	0	\N	\N
2	Polar stereographic	(Polar) stereographic projection	5	20	\N	\N
3	Azimuthal equidistant	Azimuthal equidistant	\N	110	\N	\N
5	Lambert Conformal	Lambert Conformal	3	30	postgres	2016-09-21 05:59:07.38693+00
6	Reduced Gaussian	Reduced Gaussian	4	40	postgres	2016-09-21 06:00:10.92498+00
4	Rotated Latitude/longitude	Rotated latitude/longitude	10	1	postgres	2016-09-21 07:50:39.864046+00
7	Lambert Equal Area	Lambert azimuthal Equal Area (LAEA)	\N	140	\N	\N
8	Transverse mercator	Transverse mercator	\N	12	radon_admin	2020-04-28 15:10:11.985117+00
\.


--
-- Name: projection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.projection_id_seq', 8, true);


--
-- PostgreSQL database dump complete
--

