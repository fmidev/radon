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
-- Data for Name: param_geotiff; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.param_geotiff (id, producer_id, param_id, geotiff_name, last_updater, last_updated) FROM stdin;
1	510	490	Corrected reflectivity	\N	\N
2	110	441	Precipitation accumulation	\N	\N
4	502	1422	ct	\N	\N
5	502	1423	ct_quality	\N	\N
7	502	1424	cma	\N	\N
8	502	1425	cma_quality	\N	\N
9	502	272	ctth_tempe	\N	\N
10	502	220	ctth_alti	\N	\N
11	502	1426	ctth_pres	\N	\N
12	502	1427	ctth_effectiv	\N	\N
13	502	1428	ctth_quality	\N	\N
3	115	1392	ProbabilityOfDIW0	radon_admin	2021-11-08 06:44:28.883738+00
14	115	1393	ProbabilityOfDIW1	radon_admin	2021-11-08 06:44:28.883738+00
15	115	1394	ProbabilityOfDIW2	radon_admin	2021-11-08 06:44:28.883738+00
16	115	1395	ProbabilityOfDIW3	radon_admin	2021-11-08 06:44:28.883738+00
17	504	1422	ct	\N	\N
18	504	1423	ct_quality	\N	\N
19	504	1424	cma	\N	\N
20	504	1425	cma_quality	\N	\N
21	504	272	ctth_tempe	\N	\N
22	504	220	ctth_alti	\N	\N
23	504	1426	ctth_pres	\N	\N
24	504	1427	ctth_effectiv	\N	\N
25	504	1428	ctth_quality	\N	\N
\.


--
-- Name: param_geotiff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.param_geotiff_id_seq', 25, true);


--
-- PostgreSQL database dump complete
--

