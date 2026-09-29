--
-- PostgreSQL database dump
--

\restrict TDEWe8JeNzCCnWrivRxUI6ZSyke1ca7WoZTu0197I61c4kSXmDjI8Zf7puQ1WwY

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
-- Data for Name: aggregation; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.aggregation (id, name, description, last_updater, last_updated) FROM stdin;
1	INSTANT	No aggregation	\N	\N
2	MEAN	Mean over time period	\N	\N
3	ACCUMULATION	Accumulation over time period	\N	\N
4	MAX	Maximum over time period	\N	\N
5	MIN	Minimum over time period	\N	\N
6	RANGE	Range (maximum minus minimum) over time period	\N	\N
7	MEDIAN	Median value over time period	\N	\N
8	VAR	Variance over time period	\N	\N
9	STDE	Standard deviation over time period	\N	\N
10	MODE	Most common value over time period	\N	\N
11	INTENSITY	Peak intensity over time period	\N	\N
12	DOMINANCE	Dominant or prevailing value over time period	\N	\N
\.


--
-- Name: aggregation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.aggregation_id_seq', 12, true);


--
-- PostgreSQL database dump complete
--

\unrestrict TDEWe8JeNzCCnWrivRxUI6ZSyke1ca7WoZTu0197I61c4kSXmDjI8Zf7puQ1WwY

