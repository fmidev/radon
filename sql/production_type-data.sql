--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.2

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
-- Data for Name: production_type; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.production_type (id, name, description, last_updater, last_updated) FROM stdin;
1	DEFAULT	Default production type	\N	\N
2	HIMAN_PLUGIN_PREFORM_HYBRID	Himan plugin preform_hybrid	radon_admin	2023-03-26 17:41:21
3	HIMAN_PLUGIN_GUST	Himan plugin gust	\N	\N
4	HIMAN_SCRIPT_CEIL2	Himan script ceiling2	\N	\N
5	HIMAN_PROB_HIMAN_VV	Probability using Himan-calculated visibility	\N	\N
6	HIMAN_SCRIPT_ECPREC	Himan script ecmwf-precipitation	\N	\N
7	ECMWF_3H_AGGREGATION	ECMWF 3h aggregation window	\N	\N
8	ECMWF_6H_AGGREGATION	ECMWF 6h aggregation window	\N	\N
\.


--
-- Name: production_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.production_type_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

