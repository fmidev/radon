--
-- PostgreSQL database dump
--

\restrict LPx4Yd0H2KyLccSFFVgXm5OjQd7mZQXCJTv7cjPsqgPemZGLi0RPNGQA1LdrnSJ

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.15

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
-- Data for Name: param_newbase_name; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.param_newbase_name (id, univ_id, name, last_updater, last_updated) FROM stdin;
1	1239	Wind Gust (FMI)	\N	\N
2	1207	QNH Pressure Nil Height (FMI)	\N	\N
3	1232	Visibility (FMI)	\N	\N
4	10328	Cloud Symbol (FMI)	\N	\N
5	259	Probability of Precipitation (FMI)	\N	\N
6	500	Ceiling ft (FMI)	\N	\N
7	1229	Ceiling2 ft (FMI)	\N	\N
8	1235	Potential Precipitation Type (FMI)	\N	\N
9	1233	Cloud Top ft (FMI)	\N	\N
10	1226	Potential Precipitation Form (FMI)	\N	\N
11	1236	Relative Humidity Ice (FMI)	\N	\N
12	1218	Probability Of Thunder (FMI)	\N	\N
14	1237	Frost Point (FMI)	\N	\N
17	634	Freezing Degree Days (FMI)	\N	\N
18	1382	Weather Number (FMI)	\N	\N
19	1383	SmartSymbol (FMI)	\N	\N
20	1225	Boundary Layer Turbulence (FMI)	\N	\N
22	1164	Clear Air Turbulence TIm (FMI)	\N	\N
23	1209	Clear Air Turbulence TI2m (FMI)	\N	\N
38	327	Fog Index (FMI)	\N	\N
21	480	Aviation Icing (FMI)	wetodb	2018-03-22 11:18:40.590378+00
27	4	Temperature	\N	\N
28	8	Potential Temperature	\N	\N
31	80	K-Index	\N	\N
32	79	Total Cloud Cover	\N	\N
57	1387	Growing Degree Days (FMI)	wetodb	2018-03-26 10:27:51.732962+00
35	1205	Pressure Precipitation Form (FMI)	\N	\N
41	4444	DUMMY-2-2	wetodb	2018-03-06 13:42:11.736148+00
37	1206	Hybrid Precipitation Form (FMI)	\N	\N
30	46	Lapse Rate	wetodb	2018-02-21 12:28:55.265555+00
49	12738	Tropopause Flight Level (FMI)	\N	\N
50	288	Surface Temperature	\N	\N
51	407	Visibility	\N	\N
29	1	Mean Sea Level Pressure	wetodb	2018-03-08 08:47:40.007414+00
13	700	Pressure Center (FMI)	wetodb	2018-03-08 10:24:10.16624+00
15	1216	Winter Weather Index 2 (FMI)	wetodb	2018-03-08 12:31:45.326149+00
16	1217	Winter Weather Index 3 (FMI)	wetodb	2018-03-08 12:31:45.366631+00
52	417	Wind Gust	\N	\N
54	13	Relative Humidity	\N	\N
55	315	Long Wave Radiation	\N	\N
56	317	Short Wave Radiation	\N	\N
39	915	Cb/TCu Top FL (FMI)	wetodb	2018-03-26 10:27:51.732962+00
53	10	Dew Point Temperature	wetodb	2018-04-03 07:17:49.894774+00
58	273	Low Cloud Cover	\N	\N
59	274	Medium Cloud Cover	\N	\N
60	275	High Cloud Cover	\N	\N
61	1203	Ocean Sea Spray Icing (FMI)	\N	\N
62	56	Precipitation Type (FMI)	\N	\N
63	57	Precipitation Form (FMI)	\N	\N
64	20417	Wind Gust	\N	\N
65	264	Snowfall Intensity	\N	\N
66	265	Snowfall Accumulation	\N	\N
67	338	WeatherSymbol3 (FMI)	\N	\N
68	353	Precipitation Intensity mm/h	\N	\N
69	466	Maximum Wind Speed (FMI)	\N	\N
70	270	Zero Degree Height (FMI)	\N	\N
71	180	Boundary Layer Height	\N	\N
72	271	Low and Middle Clouds (FMI)	\N	\N
73	336	Precipitation Symbol (FMI)	\N	\N
74	360	Maximum Temperature	\N	\N
75	361	Minimum Temperature	\N	\N
76	262	Flash Strikes/5min/30x30km	\N	\N
77	28	-20 Degree Height	\N	\N
78	163	Current Speed (FMI)	\N	\N
79	164	Current Direction (FMI)	\N	\N
80	2	Sea Level Geopotential Height	\N	\N
81	314	Pseudo Satellite	\N	\N
82	200	Grid Scale Precipitation Intensity	\N	\N
83	201	Subgrid Scale Precipitation Intensity	\N	\N
84	1208	Instant Precipitation mm/h	\N	\N
85	260	Probability of Thunder (FMI)	\N	\N
86	532	Sea Ice Cover	\N	\N
87	276	Cloud Water kg/kg	\N	\N
88	277	Cloud Ice kg/kg	\N	\N
89	1174	Cloud Top m	\N	\N
90	1219	Probability of Drizzle (FMI)	\N	\N
91	1220	Probability of Rain (FMI)	\N	\N
92	1221	Probability of Sleet (FMI)	\N	\N
93	1222	Probability of Snow (FMI)	\N	\N
94	1223	Probability of Freezing Drizzle (FMI)	\N	\N
95	1224	Probability of Freezing Rain (FMI)	\N	\N
96	1361	Probability of Freezing Drizzle or Freezing Rain (FMI)	\N	\N
97	1305	Sea Level Warning Low (FMI)	\N	\N
98	1306	Sea Level Warning High (FMI)	\N	\N
99	1307	Sea Level Warning Moderate High (FMI)	\N	\N
100	1308	Sea Level Warning Very High (FMI)	\N	\N
101	1395	Total Cloud Cover (FMI)	\N	\N
102	1396	Low Cloud Cover (FMI)	\N	\N
103	1397	Middle Cloud Cover (FMI)	\N	\N
104	1398	High Cloud Cover (FMI)	\N	\N
105	467	MaxGustMS	\N	\N
106	61	Sea Surface Temperature	\N	\N
107	21	Wind Speed	\N	\N
108	22	Wind Direction	\N	\N
109	20	Wind Direction	\N	\N
110	1177	Soaring Flight Index	\N	\N
111	1178	Thermal Bird Migration Index	\N	\N
112	1464	LLF Top hft-FL	\N	\N
113	3	Geometric Height	\N	\N
114	43	Vertical Velocity mm/s	\N	\N
115	301	Turbulent Kinetic Energy	\N	\N
116	5	Maximum Temperature	\N	\N
117	6	Minimum Temperature	\N	\N
119	1411	Convective Severity Index (FMI)	\N	\N
120	23	U Component of Wind	\N	\N
121	24	V Component of Wind	\N	\N
122	4546	DewPoint F0	\N	\N
123	4545	DewPoint F1	\N	\N
124	4536	DewPoint F100	\N	\N
125	4542	DewPoint F12.5	\N	\N
126	4544	DewPoint F2.5	\N	\N
127	4543	DewPoint F5	\N	\N
128	4541	DewPoint F50	\N	\N
129	4540	DewPoint F87.5	\N	\N
130	4539	DewPoint F95	\N	\N
131	4538	DewPoint F97.5	\N	\N
132	4537	DewPoint F99	\N	\N
133	877	Temperature F0	\N	\N
134	4507	Temperature F1	\N	\N
135	876	Temperature F10	\N	\N
136	871	Temperature F100	\N	\N
137	4504	Temperature F12.5	\N	\N
138	4506	Temperature F2.5	\N	\N
139	875	Temperature F25	\N	\N
140	4505	Temperature F5	\N	\N
141	874	Temperature F50	\N	\N
142	873	Temperature F75	\N	\N
143	4503	Temperature F87.5	\N	\N
144	872	Temperature F90	\N	\N
145	4502	Temperature F95	\N	\N
146	4501	Temperature F97.5	\N	\N
147	4500	Temperature F99	\N	\N
148	4613	Pressure F100	\N	\N
149	4618	Pressure F50	\N	\N
150	4623	Pressure F0	\N	\N
151	4668	Pressure F90	\N	\N
152	4669	Pressure F75	\N	\N
153	4670	Pressure F25	\N	\N
154	4671	Pressure F10	\N	\N
155	4672	Global Radiation F0	\N	\N
156	4673	Global Radiation F10	\N	\N
157	4674	Global Radiation F25	\N	\N
158	4675	Global Radiation F50	\N	\N
159	4676	Global Radiation F75	\N	\N
160	4677	Global Radiation F90	\N	\N
161	4678	Global Radiation F100	\N	\N
165	1113	Wind Speed F50	\N	\N
162	1110	Wind Speed F100	radon_admin	2026-10-12 05:22:53.263075+00
163	1111	Wind Speed F90	radon_admin	2026-10-12 05:22:53.263075+00
164	1112	Wind Speed F75	radon_admin	2026-10-12 05:22:53.263075+00
166	1114	Wind Speed F25	\N	\N
167	1115	Wind Speed F10	\N	\N
168	1116	Wind Speed F0	\N	\N
169	881	Total Cloud Cover F100	\N	\N
170	882	Total Cloud Cover F90	\N	\N
171	883	Total Cloud Cover F75	\N	\N
172	884	Total Cloud Cover F50	\N	\N
173	885	Total Cloud Cover F25	\N	\N
174	886	Total Cloud Cover F10	\N	\N
175	887	Total Cloud Cover F0	\N	\N
176	891	Toal Precipitation F100	\N	\N
177	892	Toal Precipitation F90	\N	\N
178	893	Toal Precipitation F75	\N	\N
179	894	Toal Precipitation F50	\N	\N
180	895	Toal Precipitation F25	\N	\N
181	896	Toal Precipitation F10	\N	\N
182	897	Toal Precipitation F0	\N	\N
\.


--
-- Name: param_newbase_name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.param_newbase_name_id_seq', 182, true);


--
-- PostgreSQL database dump complete
--

\unrestrict LPx4Yd0H2KyLccSFFVgXm5OjQd7mZQXCJTv7cjPsqgPemZGLi0RPNGQA1LdrnSJ

