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
-- Data for Name: param_level_transform; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.param_level_transform (id, producer_id, param_id, other_level_id, other_level_value, fmi_level_id, fmi_level_value, last_updater, last_updated) FROM stdin;
1	134	153	1	\N	6	\N	\N	\N
2	134	438	1	\N	6	\N	\N	\N
3	134	559	1	\N	6	\N	\N	\N
4	134	171	1	\N	6	\N	\N	\N
5	134	174	1	\N	6	\N	\N	\N
6	134	179	1	\N	6	\N	\N	\N
111	181	139	7	\N	4	\N	\N	\N
8	131	654	8	\N	6	\N	\N	\N
9	131	187	1	\N	6	\N	\N	\N
11	131	153	1	0	6	2	wetodb	2018-09-07 09:13:11.514023+00
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
180	170	498	1	\N	6	\N	\N	\N
68	47	179	1	\N	6	\N	postgres	2017-01-15 09:32:26.893884+00
49	135	143	1	\N	6	\N	\N	\N
181	170	499	1	\N	6	\N	\N	\N
177	170	184	1	\N	6	\N	radon_admin	2023-04-28 07:52:22.07667+00
178	170	186	1	\N	6	\N	radon_admin	2023-04-28 07:52:22.07667+00
182	170	179	1	\N	6	\N	\N	\N
183	170	421	1	\N	6	\N	\N	\N
184	170	135	1	\N	6	\N	\N	\N
69	47	510	1	\N	6	\N	\N	\N
185	170	1496	1	\N	6	\N	\N	\N
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
96	53	139	1	\N	6	\N	\N	\N
97	131	214	1	\N	6	\N	\N	\N
98	131	215	1	\N	6	\N	\N	\N
100	131	139	1	\N	6	\N	\N	\N
102	180	139	6	\N	4	\N	\N	\N
117	53	196	8	\N	6	0	\N	\N
31	53	197	8	\N	6	0	wetodb	2018-01-24 12:49:15.362908+00
26	53	198	8	\N	6	0	wetodb	2018-01-24 12:52:26.057698+00
118	53	510	1	\N	6	0	\N	\N
120	53	559	1	\N	6	0	\N	\N
121	53	426	1	\N	6	0	\N	\N
125	189	139	7	\N	4	\N	\N	\N
126	281	139	7	\N	4	\N	\N	\N
127	109	509	1	0	6	0	\N	\N
129	107	509	1	0	6	0	\N	\N
130	107	143	1	0	6	0	\N	\N
134	109	441	1	0	6	0	\N	\N
132	131	598	9	0	1	0	\N	\N
133	131	598	9	7	1	7	\N	\N
135	131	980	1	0	6	2	\N	\N
138	134	162	1	0	6	2	\N	\N
139	137	598	14	0	1	0	wetodb	2019-06-12 06:53:59.819234+00
145	134	318	1	\N	6	\N	\N	\N
146	134	974	1	\N	6	\N	\N	\N
147	134	973	1	\N	6	\N	\N	\N
140	137	598	14	7	1	7	wetodb	2019-06-12 07:09:10.024556+00
141	170	179	1	\N	6	0	\N	\N
148	134	972	1	\N	6	\N	\N	\N
142	243	774	6	0	1	0	wetodb	2019-07-03 12:17:28.047664+00
150	131	1357	1	\N	6	\N	\N	\N
151	131	1035	1	\N	6	\N	\N	\N
152	243	1281	6	0	1	0	\N	\N
159	10	139	7	\N	4	\N	\N	\N
162	134	317	1	\N	6	\N	\N	\N
163	131	1429	1	\N	6	\N	\N	\N
156	131	314	1	\N	6	\N	\N	\N
157	134	314	1	\N	6	\N	\N	\N
158	134	316	1	\N	6	\N	\N	\N
149	243	701	6	0	1	0	wetodb	2020-04-16 08:41:36.233081+00
164	282	139	7	\N	4	\N	\N	\N
165	131	411	1	0	6	10	\N	\N
166	131	1432	1	\N	6	\N	\N	\N
167	134	1417	1	0	6	2	\N	\N
168	134	1418	1	0	6	2	\N	\N
169	134	1416	1	0	6	2	\N	\N
170	131	1416	1	0	6	2	\N	\N
171	131	1418	1	0	6	2	\N	\N
172	131	431	1	0	6	0	\N	\N
173	131	559	1	0	6	0	\N	\N
174	181	411	16	\N	1	\N	\N	\N
175	134	426	1	0	6	0	\N	\N
176	134	48	1	\N	6	\N	\N	\N
186	170	217	1	\N	6	\N	\N	\N
187	170	153	1	0	6	0	\N	\N
188	170	143	1	0	6	0	\N	\N
189	170	139	1	0	6	0	\N	\N
190	170	187	1	\N	6	\N	\N	\N
191	170	196	1	\N	6	\N	\N	\N
192	170	197	1	\N	6	\N	\N	\N
193	170	198	1	\N	6	\N	\N	\N
194	170	1487	1	\N	6	\N	\N	\N
195	170	1497	1	\N	6	\N	\N	\N
196	170	1498	1	\N	6	\N	\N	\N
197	170	221	1	\N	6	\N	\N	\N
203	134	139	1	\N	7	\N	\N	\N
199	170	222	1	\N	6	\N	\N	\N
200	170	1507	1	\N	6	\N	\N	\N
201	170	1508	1	\N	6	\N	\N	\N
202	131	218	1	\N	6	\N	radon_admin	2023-11-16 15:02:55.568892+00
204	285	139	7	\N	4	\N	\N	\N
205	286	139	7	\N	4	\N	\N	\N
206	287	139	7	\N	4	\N	\N	\N
207	288	139	7	\N	4	\N	\N	\N
208	266	139	7	\N	4	\N	\N	\N
\.


--
-- Name: param_level_transform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.param_level_transform_id_seq', 208, true);


--
-- PostgreSQL database dump complete
--

