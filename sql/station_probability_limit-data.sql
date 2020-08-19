--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.3

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
-- Data for Name: station_probability_limit; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.station_probability_limit (id, station_id, param_id, probability_limit, last_updater, last_updated) FROM stdin;
1	100539	1050	-80	\N	\N
2	100539	1051	115	\N	\N
3	100539	1052	140	\N	\N
4	100539	1053	170	\N	\N
5	134248	1050	-80	\N	\N
6	134248	1051	115	\N	\N
7	134248	1052	140	\N	\N
8	134248	1053	170	\N	\N
9	100540	1050	-65	\N	\N
10	100540	1051	85	\N	\N
11	100540	1052	110	\N	\N
12	100540	1053	130	\N	\N
13	134250	1050	-65	\N	\N
14	134250	1051	85	\N	\N
15	134250	1052	110	\N	\N
16	134250	1053	130	\N	\N
17	134223	1050	-50	\N	\N
18	134223	1051	75	\N	\N
19	134223	1052	100	\N	\N
20	134223	1053	120	\N	\N
21	134251	1050	-50	\N	\N
22	134251	1051	75	\N	\N
23	134251	1052	100	\N	\N
24	134251	1053	120	\N	\N
25	134224	1050	-50	\N	\N
26	134224	1051	75	\N	\N
27	134224	1052	100	\N	\N
28	134224	1053	120	\N	\N
29	134252	1050	-50	\N	\N
30	134252	1051	65	\N	\N
31	134252	1052	85	\N	\N
32	134252	1053	100	\N	\N
33	134225	1050	-50	\N	\N
34	134225	1051	70	\N	\N
35	134225	1052	95	\N	\N
36	134225	1053	110	\N	\N
37	134253	1050	-50	\N	\N
38	134253	1051	70	\N	\N
39	134253	1052	95	\N	\N
40	134253	1053	110	\N	\N
41	132310	1050	-60	\N	\N
42	132310	1051	80	\N	\N
43	132310	1052	115	\N	\N
44	132310	1053	130	\N	\N
45	100669	1050	-60	\N	\N
46	100669	1051	80	\N	\N
47	100669	1052	115	\N	\N
48	100669	1053	130	\N	\N
49	134254	1050	-70	\N	\N
50	134254	1051	110	\N	\N
51	134254	1052	145	\N	\N
52	134254	1053	170	\N	\N
53	134266	1050	-50	\N	\N
54	134266	1051	75	\N	\N
55	134266	1052	100	\N	\N
56	134266	1053	120	\N	\N
\.


--
-- Name: station_probability_limit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.station_probability_limit_id_seq', 56, true);


--
-- PostgreSQL database dump complete
--

