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
-- Data for Name: geom; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.geom (id, name, projection_id, description, last_updater, last_updated) FROM stdin;
1050	MEPSNOFMI2500	5	MEPS Scandinavia area without FMI extension	\N	\N
1049	ECEUR0200	4	ECMWF Europe, rotated 0.2 degrees	postgres	2016-09-21 05:31:30.671101+00
1125	SMARTMET11000	2	\N	\N	\N
1057	ERASCAND	2	\N	\N	\N
1041	ECEUR0125G2	4	Europe, rotated 0,125 deg, in grib2 format	\N	\N
1008	ECEUR0100	4	ECMWF Europe, rotated 0.1 degrees	postgres	2016-03-10 06:15:21.895192+00
1126	ECEUR0100CAL	1	\N	\N	\N
1005	ICON125	1	DWD ICON GDS global	wetodb	2016-01-29 09:22:06.177607+00
1060	SILAMAQEUR	1	\N	\N	\N
1127	PPNFIN2	8	\N	\N	\N
1007	ECGLO0100	1	 ECMWF global 0.1 degrees	postgres	2016-03-23 18:20:11.449998+00
1045	ECEUR0100G2	4	ECMWF Europe, rotated 0.1 degrees, GRIB2 version	\N	\N
1102	ECEUR0200CAL	1	\N	\N	\N
1006	COPERNICUS	1	Copernicus, global ocean	postgres	2016-08-29 09:12:27.356279+00
1047	MOSKRIGING	1	Mos Kriging area over Europe	postgres	2016-08-29 09:14:56.472962+00
1048	ECERAINTERIM	1	ERA-Interim Global Analysis 500 x 251 0.72 deg	wetodb	2016-09-05 07:25:34.037904+00
1059	VANADIS	1	\N	\N	\N
1061	WAMBALMFC	1	\N	\N	\N
1064	ECGSEA025	1	\N	\N	\N
608	HBM	1	HIROMB BOOS (HBM) circulation model for Baltic Sea	postgres	2017-02-09 12:13:06.696041+00
1065	MOSKRIGING2	1	\N	\N	\N
1067	LAPSSCANLARGE	2	\N	\N	\N
1068	ECEUR0200G2	4	\N	\N	\N
1079	IASI_L2	2	\N	\N	\N
1066	SMHIMESAN025	4	\N	\N	\N
1073	SMARTMET7500	2	\N	\N	\N
1074	ECGLO0200	1	\N	\N	\N
1080	KALMANSCAN3000	2	\N	\N	\N
1071	PEPSSCAND	2	\N	\N	\N
53	ENFUSORTAM	1	Enfusor Tampere area	\N	\N
54	ENFUSORTUR	1	Enfusor Turku area	\N	\N
1082	ICONEUR00625	1	\N	\N	\N
1083	TOPLINK	1	\N	\N	\N
1086	BLENDSCAN3000	2	\N	\N	\N
52	ENFUSORHKI	1	Enfusor Hki metropolitan area	wetodb	2017-10-13 11:53:18.537899+00
1081	BLEND0025	1	\N	\N	\N
1085	ICONGLO0125	1	\N	\N	\N
1087	LAPSLAMBERT2500	5	\N	\N	\N
1090	ECEDIT100	4	\N	\N	\N
1089	ECEURSEASON075	1	\N	\N	\N
1091	ECEDIT100G2	4	\N	\N	\N
1092	METANSCAN1000	5	\N	\N	\N
1093	MEPS2500D	5	\N	\N	\N
1094	O80	6	\N	wetodb	2018-07-09 07:57:39.309664+00
999	AROME022	4	Arome malli .22 asteen hilassa	\N	\N
404	ECEDIT125	4	EC editing area in 0.125 deg	\N	\N
401	ECEUR0125	4	Europe, rotated 0,125 deg	\N	\N
406	ECEUR025	4	Europe, rotated 0,25 deg	\N	\N
414	ECSOU025	1	ECMWF Southern hemisphere 0.25 degrees	wetodb	2017-08-30 05:57:41.186514+00
419	ECGLO0125	1	ECMWF global 0.125 degrees	\N	\N
418	ECGLO1000	1	ECMWF global 1.0 degrees	\N	\N
408	ECNOR1000	1	ECMWF Northern hemisphere 1.0 degrees	\N	\N
415	ECNOR025	1	ECMWF Northern hemisphere 0.25 degrees	wetodb	2017-08-30 05:59:20.329013+00
410	ECSOU1000	1	ECMWF Southern hemisphere 1.0 degrees	\N	\N
1095	MEPSSCAN2500G2	5	\N	\N	\N
1103	OPERAEUROPE	7	\N	\N	\N
1104	PPNFIN	8	\N	\N	\N
377	FMIPEPS1	1	Kauhasen PEPS-alue	\N	\N
24	GEM0240	1	Canadian global 0.24 degree resolution forecast	\N	\N
26	GFS0250	1	Washington global 0.25 degree resolution	\N	\N
21	GFS0500	1	Washington global 0,5 degree resolution	\N	\N
997	HARMONIE022	4	Harmonie malli .22 asteen hilassa	\N	\N
1078	MEPSSCAN2500	5	\N	wetodb	2017-09-06 06:50:47.915318+00
609	HELMI	1	Area of Helmi ice model	\N	\N
3	KWBCONEDEG	1	Washington global one degree resolution	\N	\N
1097	VANADISG	1	\N	\N	\N
40	LAPS3000	2	LAPS Analysis Area over Finland	\N	\N
41	LAPSSCAN	2	LAPS Analysis Area over Scandinavia	\N	\N
1115	NEMO801738_UV	1	\N	\N	\N
13	MES070120	1	Meso Analysis Area over Finland	\N	\N
135	MONEUROPE	4	ECMWF monthly forecasts Europe	\N	\N
226	MT1450820500	1	Europe in fine grid	\N	\N
405	MTEDIT125	4	EC MTA editing area in 0.125 deg	\N	\N
402	MTEUR0125	4	Europe ,rotated 0.125 deg.	\N	\N
407	MTEUR025	4	Europe ,rotated 0.25 deg.	\N	\N
1096	SMARTMETSMALL7500	2	\N	\N	\N
1105	ECMOSEUR0125	1	\N	\N	\N
213	MTHIPS25	2	Polar stereographic area covering most of RCR	\N	\N
417	MTNOR025	1	ECMWF MTA Northern hemisphere 0.25 degrees	\N	\N
409	MTNOR1000	1	ECMWF MTA Northern hemisphere 1.0 degrees	\N	\N
416	MTSOU025	1	ECMWF MTA Southern hemisphere 0.25 degrees	\N	\N
411	MTSOU1000	1	ECMWF MTA Southern hemisphere 1.0 degrees	\N	\N
174	RCU068	4	RCR Hirlam 0,068 deg resolution, u winds	\N	\N
175	RCV068	4	RCR Hirlam 0,068 deg resolution, v winds	\N	\N
606	WAM109123	1	Area of MTL Wave model data	\N	\N
1099	ECGSEASFIN040	1	\N	\N	\N
610	NEMO609719	2	Polar stereographic area	wetodb	2019-12-03 11:54:58.969064+00
1106	ECMOSEUR0100	1	\N	\N	\N
1101	NEMO801738	1	\N	wetodb	2020-04-09 08:42:15.11928+00
173	RCR068	4	RCR Hirlam 0,068 deg resolution	radon_admin	2020-05-12 15:08:11.571471+00
1107	LUKE0021	1	\N	\N	\N
1108	ECMOSEUR0200	1	\N	\N	\N
1109	ECMOSEUR0250	1	\N	\N	\N
1110	SMARTMET2500	2	\N	\N	\N
1113	NWCSAFSCAND	5	\N	\N	\N
1111	DIWEUROPE	7	\N	radon_admin	2021-03-22 11:22:13.733772+00
1112	MEPS1000D	5	\N	\N	\N
1114	GEM0150	1	Canadian global 0.15 degree resolution forecast	\N	\N
1116	DEMSCANDINAVIA00027	1	\N	\N	\N
1117	WAMHKI	1	\N	\N	\N
1119	WAM_BALMFC_ARCH	1	WAM BALMFC archipelago 0.5nm	\N	\N
1120	DEMEUROPE00027	1	\N	\N	\N
1121	SILAMAQFF	1	SILAM forest fires	\N	\N
1122	GLOBAL025	1	\N	\N	\N
1123	WAMEC	1	\N	\N	\N
1124	MEPS2500D_ICING3D	5	Icing 3D test	\N	\N
\.


--
-- Name: geom_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.geom_id_seq', 1127, true);


--
-- PostgreSQL database dump complete
--

