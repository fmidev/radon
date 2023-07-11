--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.3

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
-- Data for Name: param_netcdf; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.param_netcdf (id, producer_id, param_id, netcdf_name, level_id, level_value, last_updater, last_updated) FROM stdin;
1	149	432	temperature	\N	\N	\N	\N
2	149	269	salinity	\N	\N	\N	\N
3	149	303	u	\N	\N	\N	\N
4	149	304	v	\N	\N	\N	\N
5	149	148	fice	\N	\N	\N	\N
96	189	153	air_temperature_2m	\N	\N	\N	\N
7	149	278	uice	\N	\N	\N	\N
8	149	279	vice	\N	\N	\N	\N
11	148	432	temperature	\N	\N	\N	\N
9	149	718	hsnow	\N	\N	wetodb	2015-09-17 12:49:49.331023+00
6	149	716	hice	\N	\N	wetodb	2015-09-17 12:50:15.097011+00
10	149	717	ssh	\N	\N	\N	\N
12	148	269	salinity	\N	\N	\N	\N
13	148	303	u	\N	\N	\N	\N
14	148	304	v	\N	\N	\N	\N
36	49	139	air_pressure_at_sea_level	\N	\N	\N	\N
16	148	278	uice	\N	\N	\N	\N
17	148	279	vice	\N	\N	\N	\N
18	148	716	hice	\N	\N	\N	\N
19	148	717	ssh	\N	\N	\N	\N
15	148	148	fice	\N	\N	wetodb	2015-12-01 12:11:51.56758+00
37	49	158	geopotential_height	\N	\N	\N	\N
38	49	24	sea_ice_fraction	\N	\N	\N	\N
39	49	214	air_temperature_0	\N	\N	\N	\N
40	49	215	air_temperature_1	\N	\N	\N	\N
41	49	153	air_temperature	\N	\N	\N	\N
42	148	432	thetao	\N	\N	\N	\N
43	148	269	so	\N	\N	\N	\N
44	148	303	uo	\N	\N	\N	\N
45	148	304	vo	\N	\N	\N	\N
46	148	278	usi	\N	\N	\N	\N
47	148	279	vsi	\N	\N	\N	\N
48	148	716	sithick	\N	\N	\N	\N
49	148	717	zos	\N	\N	\N	\N
50	148	148	siconc	\N	\N	\N	\N
51	105	143	kFmiLandSeaMask	\N	\N	\N	\N
52	105	25	kFmiIceThickness	\N	\N	\N	\N
53	105	432	kFmiTemperatureSeaSurface	\N	\N	\N	\N
54	105	24	kFmiIceConcentration	\N	\N	\N	\N
55	105	26	kFmiIceMinThickness	\N	\N	\N	\N
56	105	27	kFmiIceMaxThickness	\N	\N	\N	\N
59	301	985	cnc_PM10	\N	\N	\N	\N
58	105	749	kFmiIceType	\N	\N	\N	\N
57	105	28	kFmiIceDegreeOfRidging	\N	\N	postgres	2017-01-07 10:52:57.292342+00
80	122	143	ldf	\N	\N	\N	\N
61	301	422	cnc_NO2_gas	\N	\N	\N	\N
60	301	987	cnc_CO_gas	\N	\N	wetodb	2017-01-11 15:20:18.124411+00
62	301	986	cnc_NO_gas	\N	\N	\N	\N
63	301	989	cnc_O3_gas	\N	\N	\N	\N
64	301	990	cnc_PM2_5	\N	\N	\N	\N
65	301	424	cnc_SO2_gas	\N	\N	\N	\N
132	301	1490	cnc_PM_FRP	\N	\N	\N	\N
133	301	1491	ocd_PM_FRP	\N	\N	\N	\N
81	113	447	VHM0	\N	\N	\N	\N
82	113	453	VTPK	\N	\N	\N	\N
83	113	996	VPED	\N	\N	\N	\N
84	113	469	VHM0_SW1	\N	\N	\N	\N
85	113	470	VTM01_SW1	\N	\N	\N	\N
86	113	471	VMDR_SW1	\N	\N	\N	\N
90	52	425	AQI	\N	\N	\N	\N
35	120	154	var1.pred	\N	\N	wetodb	2018-02-22 08:14:36.262427+00
95	52	441	precipitation	\N	\N	wetodb	2017-12-08 13:15:47.42147+00
88	122	1058	minimumtemperature	\N	\N	wetodb	2017-06-12 08:01:55.632308+00
89	122	1059	maximumtemperature	\N	\N	wetodb	2017-06-12 08:01:55.632308+00
87	122	154	temperature	\N	\N	wetodb	2017-06-12 08:04:03.249352+00
97	189	74	land_area_fraction	\N	\N	\N	\N
98	189	195	altitude	\N	\N	\N	\N
93	52	990	cnc_PM2_5	\N	\N	wetodb	2017-10-17 09:58:03.222202+00
94	52	985	cnc_PM10	\N	\N	wetodb	2017-10-17 09:59:08.016178+00
92	52	989	cnc_O3_gas	\N	\N	wetodb	2017-10-17 10:00:46.993013+00
91	52	422	cnc_NO2_gas	\N	\N	wetodb	2017-10-17 10:01:57.020373+00
108	147	303	SSU	\N	\N	\N	\N
107	147	279	vice	\N	\N	\N	\N
106	147	278	uice	\N	\N	\N	\N
105	147	716	icethic	\N	\N	\N	\N
113	147	305	wos	\N	\N	wetodb	2020-10-12 04:58:24.238279+00
109	147	304	SSV	\N	\N	wetodb	2020-04-06 06:41:36.508412+00
103	147	269	SSS	\N	\N	\N	\N
99	147	269	salinity	\N	\N	\N	\N
101	147	717	SSH_inst	\N	\N	\N	\N
102	147	432	SST	\N	\N	wetodb	2020-09-18 10:22:20.635585+00
100	147	1397	temperature	\N	\N	\N	\N
104	147	1084	icefrac	\N	\N	wetodb	2020-10-01 13:17:32.638217+00
110	147	653	TKE	\N	\N	\N	\N
111	147	303	uos	\N	\N	\N	\N
112	147	304	vos	\N	\N	\N	\N
114	147	1398	dTKE	\N	\N	\N	\N
118	52	1452	cnc_BC	\N	\N	\N	\N
119	52	1453	LDSA	\N	\N	\N	\N
120	153	447	VHM0	\N	\N	\N	\N
121	153	453	VTPK	\N	\N	\N	\N
122	153	996	VPED	\N	\N	\N	\N
123	153	469	VHM0_SW1	\N	\N	\N	\N
124	153	470	VTM01_SW1	\N	\N	\N	\N
125	153	471	VMDR_SW1	\N	\N	\N	\N
126	154	447	VHM0	\N	\N	\N	\N
127	154	453	VTPK	\N	\N	\N	\N
128	154	996	VPED	\N	\N	\N	\N
129	154	469	VHM0_SW1	\N	\N	\N	\N
130	154	470	VTM01_SW1	\N	\N	\N	\N
131	154	471	VMDR_SW1	\N	\N	\N	\N
\.


--
-- Name: param_netcdf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.param_netcdf_id_seq', 133, true);


--
-- PostgreSQL database dump complete
--

