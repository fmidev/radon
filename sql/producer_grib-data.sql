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
-- Data for Name: producer_grib; Type: TABLE DATA; Schema: public; Owner: wetodb
--

COPY producer_grib (id, producer_id, ident, centre, last_updater, last_updated) FROM stdin;
1	1	1	86	\N	\N
92	34	201	34	\N	\N
3	3	1	82	\N	\N
83	4	40	251	\N	\N
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
80	134	149	98	wetodb	2018-06-05 19:28:11.70763+00
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
102	10	40	233	wetodb	2018-01-26 07:09:36.477914+00
103	261	205	86	\N	\N
105	120	120	86	\N	\N
106	501	110	86	\N	\N
108	183	183	86	\N	\N
109	184	184	86	\N	\N
110	7	41	251	\N	\N
111	270	207	86	\N	\N
112	135	147	98	\N	\N
27	131	149	98	wetodb	2018-06-05 09:44:37.320202+00
29	133	114	98	wetodb	2018-06-05 09:44:37.320202+00
28	132	214	98	wetodb	2018-06-05 09:44:37.320202+00
\.


--
-- Name: producer_grib_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wetodb
--

SELECT pg_catalog.setval('producer_grib_id_seq', 112, true);


--
-- PostgreSQL database dump complete
--
