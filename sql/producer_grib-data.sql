--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 13.3

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
-- Data for Name: producer_grib; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.producer_grib (id, producer_id, ident, centre, last_updater, last_updated) FROM stdin;
1	1	1	86	\N	\N
118	244	244	86	\N	\N
119	104	104	255	\N	\N
5	47	47	54	\N	\N
6	49	49	74	\N	\N
7	50	45	74	\N	\N
8	51	160	78	\N	\N
76	122	122	86	postgres	2016-06-16 04:25:41.350016+00
10	53	96	7	\N	\N
97	243	243	86	\N	\N
12	101	101	86	\N	\N
13	102	102	86	\N	\N
14	103	103	86	\N	\N
40	250	250	86	\N	\N
16	105	11	86	\N	\N
17	106	106	86	\N	\N
18	107	107	86	\N	\N
19	109	109	86	\N	\N
20	111	111	86	\N	\N
21	112	112	86	\N	\N
22	114	114	86	\N	\N
23	116	116	86	\N	\N
24	117	117	86	\N	\N
25	118	118	86	\N	\N
26	119	119	86	\N	\N
41	149	149	88	\N	\N
96	121	121	86	wetodb	2017-05-29 11:04:22.044312+00
102	10	2	251	wetodb	2019-09-30 06:36:20.269808+00
30	150	150	86	\N	\N
31	151	151	86	\N	\N
32	152	152	86	\N	\N
33	160	160	82	\N	\N
34	199	3	86	\N	\N
35	210	210	86	\N	\N
37	230	230	86	\N	\N
38	240	240	86	\N	\N
39	242	242	86	\N	\N
77	130	128	98	\N	\N
95	500	1	88	\N	\N
75	170	1	78	postgres	2016-02-23 11:55:47.253966+00
84	5	2	88	\N	\N
81	48	70	54	\N	\N
82	54	107	7	\N	\N
85	6	4	88	\N	\N
86	241	241	86	\N	\N
87	135	139	98	\N	\N
88	206	206	86	\N	\N
98	181	181	86	\N	\N
90	260	204	86	\N	\N
99	180	180	86	\N	\N
101	280	201	86	\N	\N
100	170	2	78	wetodb	2017-11-09 14:48:42.772784+00
107	182	182	86	\N	\N
115	137	147	98	\N	\N
103	261	205	86	\N	\N
105	120	120	86	\N	\N
106	501	110	86	\N	\N
108	183	183	86	\N	\N
109	184	184	86	\N	\N
110	7	11	251	wetodb	2019-05-15 11:04:46.824339+00
111	270	207	86	\N	\N
112	135	147	98	\N	\N
116	11	3	251	\N	\N
117	265	211	86	\N	\N
114	281	202	86	\N	\N
113	189	189	88	wetodb	2018-09-20 10:00:52.201369+00
29	133	117	98	radon_admin	2021-05-11 08:47:40.056464+00
27	131	152	98	radon_admin	2021-05-11 08:47:40.056464+00
80	134	152	98	radon_admin	2021-05-11 08:47:40.056464+00
28	132	215	98	wetodb	2019-06-11 09:08:14.635523+00
83	4	0	251	wetodb	2020-02-04 09:33:05.510264+00
120	271	208	86	\N	\N
121	282	203	86	\N	\N
\.


--
-- Name: producer_grib_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.producer_grib_id_seq', 121, true);


--
-- PostgreSQL database dump complete
--

