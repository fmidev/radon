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
-- Data for Name: projection; Type: TABLE DATA; Schema: public; Owner: wetodb
--

COPY projection (id, name, description, grib1_number, grib2_number, last_updater, last_updated) FROM stdin;
1	Equidistant cylindrical	Latitude/Longitude/or Equidistant Cylindrical or Plate Carree projection	0	0	\N	\N
2	Polar stereographic	(Polar) stereographic projection	5	20	\N	\N
3	Azimuthal equidistant	Azimuthal equidistant	\N	110	\N	\N
5	Lambert Conformal	Lambert Conformal	3	30	postgres	2016-09-21 05:59:07.38693+00
6	Reduced Gaussian	Reduced Gaussian	4	40	postgres	2016-09-21 06:00:10.92498+00
4	Rotated Latitude/longitude	Rotated latitude/longitude	10	1	postgres	2016-09-21 07:50:39.864046+00
\.


--
-- Name: projection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wetodb
--

SELECT pg_catalog.setval('projection_id_seq', 33, true);


--
-- PostgreSQL database dump complete
--

