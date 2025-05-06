--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.6

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
-- Data for Name: processing_type; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.processing_type (id, name, description, last_updater, last_updated) FROM stdin;
1	UNPROCESSED	No processing	\N	\N
2	PROBGE	Probability greater than or equal	\N	\N
3	PROBGT	Probability greater than	\N	\N
4	PROBLE	Probability less than or equal	\N	\N
5	PROBLT	Probability less than	\N	\N
6	PROBEQ	Probability equal to	\N	\N
7	PROBIN	Probability equal to list of values	\N	\N
8	FRACTILE	Fractile	\N	\N
9	PROBGE_AREA	Probability greater than or equal, using an area aggregation	\N	\N
10	PROBGT_AREA	Probability greater than, using an area aggregation	\N	\N
11	PROBLE_AREA	Probability less than or equal, using an area aggregation	\N	\N
12	PROBLT_AREA	Probability less than, using an area aggregation	\N	\N
13	PROBEQ_AREA	Probability equal to, using an area aggregation	\N	\N
14	PROBIN_AREA	Probability in list of values, using an area aggregation	\N	\N
15	BIAS_CORR	Bias correction	\N	\N
16	MEAN	Mean value	\N	\N
17	STDE	Standard deviation	\N	\N
18	FILTERED	Smoothing or filtering	\N	\N
19	DETREND	Trends (long-term climate effects) removed	\N	\N
20	ANOMALY	Anomaly	\N	\N
21	NORMALIZED	Normalized to specific range or relative to mean/stde	\N	\N
22	CLIMATOLOGY	Climate normal or climatology	\N	\N
23	CATEGORIZED	Categorization of continuous variables	\N	\N
24	PERCENT_CHANGE	Percentage change relative to baseline	\N	\N
25	EFI	Extreme Forecast Index	\N	\N
26	PROBBTW	Probability between two values	\N	\N
27	PROBNEQ	Probability not equal to	\N	\N
28	PROB	Probability (no threshold information)	radon_admin	2024-12-16 05:46:36
29	PROBBTW_AREA	Probability between to values, using an area aggregation	\N	\N
30	PROBNEQ_AREA	Probability not equal to, using an area aggregation	\N	\N
\.


--
-- Name: processing_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.processing_type_id_seq', 30, true);


--
-- PostgreSQL database dump complete
--

