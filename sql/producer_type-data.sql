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
-- Data for Name: producer_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY producer_type (id, name, description, last_updater, last_updated) FROM stdin;
1	DETERMINISTIC	Deterministic forecast producer	\N	\N
2	ANALYSIS	Analysis producer	\N	\N
3	ENSEMBLE	Ensemble forecast producer	\N	\N
4	REANALYSIS	Reanalysis producer (eg. ERA)	\N	\N
5	HINDCAST	Hindcast producer	\N	\N
6	OBSERVATION	Observation producer	\N	\N
\.


--
-- Name: producer_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('producer_type_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

