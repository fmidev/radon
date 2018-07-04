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
-- Data for Name: forecast_type; Type: TABLE DATA; Schema: public; Owner: wetodb
--

COPY forecast_type (id, name, description, last_updater, last_updated) FROM stdin;
1	DETERMINISTIC	Deterministic forecast	\N	\N
2	ANALYSIS	Analysis	\N	\N
3	EPS_PE	Ensemble forecast, perturbation	\N	\N
4	EPS_CF	Ensemble forecast, control forecast	\N	\N
\.


--
-- Name: forecast_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wetodb
--

SELECT pg_catalog.setval('forecast_type_id_seq', 33, true);


--
-- PostgreSQL database dump complete
--

