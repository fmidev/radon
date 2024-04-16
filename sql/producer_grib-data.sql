--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.6 (Homebrew)

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
118	244	244	86	\N	\N
119	104	104	255	\N	\N
5	47	47	54	radon_admin	2022-07-01 04:52:41.899745+00
128	5	20	251	\N	\N
129	291	252	86	\N	\N
131	220	220	86	\N	\N
76	122	122	86	postgres	2016-06-16 04:25:41.350016+00
10	53	96	7	\N	\N
97	243	243	86	\N	\N
12	101	101	86	\N	\N
13	102	102	86	\N	\N
102	10	1	251	radon_admin	2022-05-20 05:12:41.687007+00
40	250	250	86	\N	\N
16	105	11	86	\N	\N
17	106	106	86	\N	\N
18	107	107	86	\N	\N
19	109	109	86	\N	\N
21	112	112	86	\N	\N
130	125	125	86	radon_admin	2023-06-26 12:06:22.958144+00
29	133	119	98	radon_admin	2023-06-27 08:17:08.317555+00
27	131	154	98	radon_admin	2023-06-27 08:17:08.317555+00
25	118	118	86	\N	\N
26	119	119	86	\N	\N
41	149	149	88	\N	\N
96	121	121	86	wetodb	2017-05-29 11:04:22.044312+00
123	55	2	7	\N	\N
80	134	154	98	radon_admin	2023-06-27 08:17:08.317555+00
32	152	152	86	\N	\N
33	160	160	82	\N	\N
34	199	3	86	\N	\N
35	210	210	86	\N	\N
38	240	240	86	\N	\N
39	242	242	86	\N	\N
132	16	16	86	\N	\N
95	500	1	88	\N	\N
75	170	1	78	postgres	2016-02-23 11:55:47.253966+00
133	502	150	86	\N	\N
81	48	70	54	\N	\N
82	54	107	7	\N	\N
134	263	214	86	\N	\N
86	241	241	86	\N	\N
87	135	139	98	\N	\N
135	264	215	86	\N	\N
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
125	272	209	86	\N	\N
111	270	207	86	\N	\N
112	135	147	98	\N	\N
136	190	190	86	\N	\N
137	285	216	86	\N	\N
114	281	202	86	\N	\N
113	189	189	88	wetodb	2018-09-20 10:00:52.201369+00
28	132	215	98	wetodb	2019-06-11 09:08:14.635523+00
83	4	0	251	wetodb	2020-02-04 09:33:05.510264+00
120	271	208	86	\N	\N
121	282	203	86	\N	\N
138	286	217	86	\N	\N
139	287	218	86	\N	\N
140	288	219	86	\N	\N
110	7	10	251	radon_admin	2022-09-04 17:22:45.245932+00
122	290	251	86	radon_admin	2021-12-10 05:59:35.157977+00
124	8	11	251	\N	\N
126	283	212	86	\N	\N
127	284	213	86	\N	\N
\.


--
-- Name: producer_grib_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.producer_grib_id_seq', 141, true);


--
-- PostgreSQL database dump complete
--

