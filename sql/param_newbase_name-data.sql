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
-- Data for Name: param_newbase_name; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY param_newbase_name (id, univ_id, name, last_updater, last_updated) FROM stdin;
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
\.


--
-- Name: param_newbase_name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('param_newbase_name_id_seq', 84, true);


--
-- PostgreSQL database dump complete
--
