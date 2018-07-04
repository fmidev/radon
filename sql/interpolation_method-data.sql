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
-- Data for Name: interpolation_method; Type: TABLE DATA; Schema: public; Owner: wetodb
--

COPY interpolation_method (id, name, description, last_updater, last_updated) FROM stdin;
1	LINEAR	Linear or bi-linear interpolation	\N	\N
2	NEAREST	Nearest point interpolation	\N	\N
\.


--
-- Name: interpolation_method_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wetodb
--

SELECT pg_catalog.setval('interpolation_method_id_seq', 33, true);


--
-- PostgreSQL database dump complete
--

