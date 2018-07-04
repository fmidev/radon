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
-- Data for Name: param_level_transform; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY param_level_transform (id, producer_id, param_id, other_level_id, other_level_value, fmi_level_id, fmi_level_value, last_updater, last_updated) FROM stdin;
1	134	153	1	\N	6	\N	\N	\N
2	134	438	1	\N	6	\N	\N	\N
3	134	559	1	\N	6	\N	\N	\N
4	134	171	1	\N	6	\N	\N	\N
5	134	174	1	\N	6	\N	\N	\N
6	134	179	1	\N	6	\N	\N	\N
111	181	139	7	\N	4	\N	\N	\N
8	131	654	8	\N	6	\N	\N	\N
9	131	187	1	\N	6	\N	\N	\N
10	131	1	1	\N	6	\N	\N	\N
11	131	153	1	\N	6	\N	\N	\N
12	131	689	1	\N	6	\N	\N	\N
13	131	184	1	\N	6	\N	\N	\N
14	131	186	1	\N	6	\N	\N	\N
92	131	171	1	100	6	100	wetodb	2017-12-19 10:25:18.550634+00
74	131	438	1	\N	6	\N	\N	\N
17	131	179	1	\N	6	\N	\N	\N
93	131	174	1	100	6	100	wetodb	2017-12-19 10:25:18.550634+00
19	131	171	1	0	6	10	\N	\N
20	131	174	1	0	6	10	\N	\N
122	10	139	7	\N	4	\N	\N	\N
123	501	153	1	0	6	2	\N	\N
124	7	139	7	\N	4	\N	\N	\N
70	130	510	1	0	6	0	\N	\N
68	47	179	1	\N	6	\N	postgres	2017-01-15 09:32:26.893884+00
49	135	143	1	\N	6	\N	\N	\N
50	5	179	6	\N	1	\N	\N	\N
51	5	764	6	\N	1	\N	\N	\N
52	5	411	6	\N	1	\N	\N	\N
53	6	153	6	\N	1	\N	\N	\N
54	6	171	6	\N	1	\N	\N	\N
55	6	174	6	\N	1	\N	\N	\N
69	47	510	1	\N	6	\N	\N	\N
56	130	179	1	0	6	0	postgres	2016-12-05 17:23:53.139977+00
71	134	186	1	\N	6	\N	\N	\N
59	134	139	1	\N	6	\N	\N	\N
16	131	139	1	\N	4	\N	wetodb	2017-06-13 19:25:36.563136+00
61	170	139	7	\N	4	\N	\N	\N
62	4	139	7	\N	4	\N	\N	\N
63	47	139	7	\N	4	\N	postgres	2017-01-05 07:57:30.236778+00
64	54	139	7	\N	4	\N	\N	\N
65	109	139	7	\N	4	\N	\N	\N
66	107	139	7	\N	4	\N	\N	\N
67	199	421	15	27315	6	\N	\N	\N
75	131	162	1	\N	6	\N	\N	\N
76	131	48	1	\N	6	\N	\N	\N
77	131	441	1	\N	6	\N	\N	\N
78	131	318	1	\N	6	\N	\N	\N
81	131	316	1	\N	6	\N	\N	\N
79	131	320	1	\N	5	\N	wetodb	2017-08-19 11:33:24.040759+00
80	131	143	1	\N	6	\N	\N	\N
90	54	179	1	\N	6	\N	\N	\N
83	131	317	1	\N	6	\N	\N	\N
84	131	89	1	\N	6	\N	\N	\N
85	131	88	1	\N	6	\N	\N	\N
87	131	132	1	\N	6	\N	\N	\N
88	131	426	1	\N	6	\N	\N	\N
89	131	139	1	\N	7	\N	\N	\N
91	131	158	1	\N	6	\N	\N	\N
15	131	972	1	\N	6	\N	wetodb	2017-12-07 13:01:44.214283+00
7	131	973	1	\N	6	\N	wetodb	2017-12-07 13:02:11.21893+00
18	131	974	1	\N	6	\N	wetodb	2017-12-07 13:02:11.21893+00
22	53	186	1	\N	6	\N	\N	\N
24	53	52	8	\N	6	\N	\N	\N
25	53	654	8	\N	6	\N	\N	\N
27	53	179	1	\N	6	\N	\N	\N
28	53	412	7	\N	4	\N	\N	\N
29	53	39	1	\N	5	\N	\N	\N
32	53	184	1	\N	6	\N	\N	\N
21	53	139	7	\N	4	\N	\N	\N
34	134	411	1	0	6	10	\N	\N
35	134	179	1	0	6	0	\N	\N
36	131	510	1	0	6	0	\N	\N
37	134	144	1	\N	6	\N	\N	\N
38	134	510	1	\N	6	\N	\N	\N
39	134	764	6	\N	1	\N	\N	\N
40	134	765	6	\N	1	\N	\N	\N
41	134	766	6	\N	1	\N	\N	\N
42	134	182	6	\N	1	\N	\N	\N
43	134	182	1	\N	6	\N	\N	\N
30	53	187	8	\N	6	\N	wetodb	2018-01-24 06:04:13.923746+00
94	53	1	1	\N	6	\N	\N	\N
96	53	139	1	\N	6	\N	\N	\N
97	131	214	1	\N	6	\N	\N	\N
98	131	215	1	\N	6	\N	\N	\N
99	131	1	1	\N	6	\N	\N	\N
100	131	139	1	\N	6	\N	\N	\N
102	180	139	6	\N	4	\N	\N	\N
117	53	196	8	\N	6	0	\N	\N
31	53	197	8	\N	6	0	wetodb	2018-01-24 12:49:15.362908+00
26	53	198	8	\N	6	0	wetodb	2018-01-24 12:52:26.057698+00
118	53	510	1	\N	6	0	\N	\N
120	53	559	1	\N	6	0	\N	\N
121	53	426	1	\N	6	0	\N	\N
\.


--
-- Name: param_level_transform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('param_level_transform_id_seq', 124, true);


--
-- PostgreSQL database dump complete
--

