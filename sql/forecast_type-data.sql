--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.3

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
-- Data for Name: forecast_type; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.forecast_type (id, name, description, last_updater, last_updated) FROM stdin;
1	DETERMINISTIC	Deterministic forecast	\N	\N
2	ANALYSIS	Analysis	\N	\N
3	EPS_PE	Ensemble forecast, perturbation	\N	\N
4	EPS_CF	Ensemble forecast, control forecast	\N	\N
5	STATISTICAL	Statistical post processing using an ensemble	radon_admin	2023-03-20 06:49:51.975365+00
\.


--
-- Name: forecast_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.forecast_type_id_seq', 33, true);


--
-- PostgreSQL database dump complete
--

