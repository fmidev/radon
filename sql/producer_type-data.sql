--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.6

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
-- Data for Name: producer_type; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.producer_type (id, name, description, last_updater, last_updated) FROM stdin;
1	DETERMINISTIC	Deterministic forecast producer	\N	\N
2	ANALYSIS	Analysis producer	\N	\N
3	ENSEMBLE	Ensemble forecast producer	\N	\N
4	REANALYSIS	Reanalysis producer (eg. ERA)	\N	\N
5	HINDCAST	Hindcast producer	\N	\N
6	OBSERVATION	Observation producer	\N	\N
\.


--
-- Name: producer_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.producer_type_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

