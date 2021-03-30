--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.6

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
25	EGRR432325	1	Seasonal global forecast model of UK Met-office.	wetodb	2016-09-22 06:32:48.424987+00
1057	ERASCAND	2	\N	\N	\N
1041	ECEUR0125G2	4	Europe, rotated 0,125 deg, in grib2 format	\N	\N
1008	ECEUR0100	4	ECMWF Europe, rotated 0.1 degrees	postgres	2016-03-10 06:15:21.895192+00
1056	ECEUR075	1	\N	postgres	2016-10-25 09:58:01.781863+00
1005	ICON125	1	DWD ICON GDS global	wetodb	2016-01-29 09:22:06.177607+00
1060	SILAMAQEUR	1	\N	\N	\N
1058	MEPS10000	2	\N	\N	\N
1007	ECGLO0100	1	 ECMWF global 0.1 degrees	postgres	2016-03-23 18:20:11.449998+00
1045	ECEUR0100G2	4	ECMWF Europe, rotated 0.1 degrees, GRIB2 version	\N	\N
1043	MOSLAPS	2	MOS ECMWF LAPS gridded dataset	postgres	2016-05-04 05:34:58.955027+00
1102	ECEUR0200CAL	1	\N	\N	\N
1006	COPERNICUS	1	Copernicus, global ocean	postgres	2016-08-29 09:12:27.356279+00
1047	MOSKRIGING	1	Mos Kriging area over Europe	postgres	2016-08-29 09:14:56.472962+00
1048	ECERAINTERIM	1	ERA-Interim Global Analysis 500 x 251 0.72 deg	wetodb	2016-09-05 07:25:34.037904+00
1052	EGRR432324	1	Seasonal global forecast model of UK Met-office.	wetodb	2016-09-22 07:33:02.751131+00
1054	GLAMEPS	4	GLAMEPS 870 x 660 0.075 deg	postgres	2016-09-28 05:37:58.840043+00
1059	VANADIS	1	\N	\N	\N
1061	WAMBALMFC	1	\N	\N	\N
1063	MOSLAPSNC	2	\N	\N	\N
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
51	ANAL1210200	4	Mesoanalyysi Fennoskandia	\N	\N
999	AROME022	4	Arome malli .22 asteen hilassa	\N	\N
112	EC0730175000	1	ECM 73x17_5000	\N	\N
126	EC1450820500	1	ECMWF Europe in fine grid	\N	\N
404	ECEDIT125	4	EC editing area in 0.125 deg	\N	\N
401	ECEUR0125	4	Europe, rotated 0,125 deg	\N	\N
406	ECEUR025	4	Europe, rotated 0,25 deg	\N	\N
414	ECSOU025	1	ECMWF Southern hemisphere 0.25 degrees	wetodb	2017-08-30 05:57:41.186514+00
403	ECFESC500	1	ECMWF Fennoscandian area 0.5 deg	\N	\N
419	ECGLO0125	1	ECMWF global 0.125 degrees	\N	\N
418	ECGLO1000	1	ECMWF global 1.0 degrees	\N	\N
128	ECGSEA289245	1	ECMWF Mediterranean sea model	\N	\N
421	ECMTSOTSI125	1	ECMWF MTA sotsi 0.125 regular lat lon	\N	\N
408	ECNOR1000	1	ECMWF Northern hemisphere 1.0 degrees	\N	\N
129	ECFESC250	4	EPS fields for Scandinavia 0.25 deg	postgres	2016-09-21 05:26:46.965973+00
415	ECNOR025	1	ECMWF Northern hemisphere 0.25 degrees	wetodb	2017-08-30 05:59:20.329013+00
410	ECSOU1000	1	ECMWF Southern hemisphere 1.0 degrees	\N	\N
15	EDZV121061	1	Offenbach combined, half of northern hemisphere	\N	\N
17	EGRR145073	1	Bracknell global grid	\N	\N
124	EPS121441500	1	ECMWF EPS-fields	\N	\N
123	EPSORG12144	1	ECMWF original EPS-fields	\N	\N
1095	MEPSSCAN2500G2	5	\N	\N	\N
1103	OPERAEUROPE	7	\N	\N	\N
1104	PPNFIN	8	\N	\N	\N
127	EPSSCAN	1	ECMWF EPS fields for Scandinavia	\N	\N
100	EUR194140200	4	Mesohirlam, EUR	\N	\N
101	EUU194140200	4	Mesohirlam, EUR, shift for u wind	\N	\N
102	EUV194140200	4	Mesohirlam, EUR, shift for v wind	\N	\N
377	FMIPEPS1	1	Kauhasen PEPS-alue	\N	\N
24	GEM0240	1	Canadian global 0.24 degree resolution forecast	\N	\N
26	GFS0250	1	Washington global 0.25 degree resolution	\N	\N
21	GFS0500	1	Washington global 0,5 degree resolution	\N	\N
22	GFSMT0500	1	MTA for Washington global 0,5 degree resolution	\N	\N
998	HARMONIE013S	4	Harmonie malli .13 asteen hilassa, Sotshin alue	\N	\N
997	HARMONIE022	4	Harmonie malli .22 asteen hilassa	\N	\N
1078	MEPSSCAN2500	5	\N	wetodb	2017-09-06 06:50:47.915318+00
609	HELMI	1	Area of Helmi ice model	\N	\N
156	HIR256186300	4	Hirlam ATX 256 x 186 0.3	\N	\N
157	HIU256186300	4	Hirlam ATX u-winds 256 x 186 0.3	\N	\N
158	HIV256186300	4	Hirlam ATX v-winds 256 x 186 0.3	\N	\N
602	ICE161131	1	Area of Finnish ice observation data	\N	\N
605	ICE261221	1	Area of Finnish ice observation data	\N	\N
603	ICE267217	1	Area of Finnish ice observation data	\N	\N
604	ICE434367	1	Area of Finnish ice observation data	\N	\N
504	IIKA150625	3	Iris Ikaalinen _10dBZ 480x480	\N	\N
502	IKOR2501042	3	Iris Korpoo Z_005_250 480x480	\N	\N
281	ILA50500400	2	ILA 50x50 400m	\N	\N
503	IVAN120500	3	Iris Vantaa uusimaa_z 480x480	\N	\N
42	KALLAPS3	2	Suomi 3x3 km	\N	\N
16	KWBC073037	1	Washington  combined grid, northern hemisphere	\N	\N
3	KWBCONEDEG	1	Washington global one degree resolution	\N	\N
8	KWBG1000	1	Washington NCEP siirretty	\N	\N
1097	VANADISG	1	\N	\N	\N
40	LAPS3000	2	LAPS Analysis Area over Finland	\N	\N
41	LAPSSCAN	2	LAPS Analysis Area over Scandinavia	\N	\N
165	MBE203153160	4	MBE Hirlam 203 x 153 1.60 deg	\N	\N
169	MBE241180136	4	MBE 241 x 180 0.136 deg	\N	\N
162	MBE406306080	4	MBE Hirlam 406 x 306 0.08 deg	\N	\N
166	MBE482360068	4	MBE Hirlam 482 x 360 0.068 deg	\N	\N
163	MBU406306080	4	MBE Hirlam u-winds 406 x 306 0.08 deg	\N	\N
167	MBU482360068	4	MBE Hirlam u-winds 482 x 360 0.068 deg	\N	\N
164	MBV406306080	4	MBE Hirlam v-winds 406 x 306 0.08 deg	\N	\N
168	MBV482360068	4	MBE Hirlam v-winds 482 x 360 0.068 deg	\N	\N
13	MES070120	1	Meso Analysis Area over Finland	\N	\N
33	MES141241	1	Suomi 5x5 km	\N	\N
23	MES7681323	1	Dense Meso Analysis Area over Finland	\N	\N
135	MONEUROPE	4	ECMWF monthly forecasts Europe	\N	\N
130	MT1210451500	1	MTAECMWF 1.5 degree grid	\N	\N
226	MT1450820500	1	Europe in fine grid	\N	\N
235	MTECMODL	4	Alue EC:n mallipintojen laskettuja kenttiä varten	\N	\N
405	MTEDIT125	4	EC MTA editing area in 0.125 deg	\N	\N
212	MTEUPS20	2	Polar stereographic area covering most of EUR	\N	\N
402	MTEUR0125	4	Europe ,rotated 0.125 deg.	\N	\N
407	MTEUR025	4	Europe ,rotated 0.25 deg.	\N	\N
422	MTFESC250	4	ECMWF fractiles semi-europe area (ie. enlargened scandinavia)	\N	\N
214	MTHIPS125	2	Polar stereographic area covering most of RCR	\N	\N
1096	SMARTMETSMALL7500	2	\N	\N	\N
1098	GLAMEPSG2	4	\N	\N	\N
1105	ECMOSEUR0125	1	\N	\N	\N
213	MTHIPS25	2	Polar stereographic area covering most of RCR	\N	\N
211	MTHIPS50	2	Polar stereographic area covering most of HIR	\N	\N
417	MTNOR025	1	ECMWF MTA Northern hemisphere 0.25 degrees	\N	\N
409	MTNOR1000	1	ECMWF MTA Northern hemisphere 1.0 degrees	\N	\N
413	MTRUS025	1	Russia, 0.25 deg	\N	\N
20	MTSKAPS22	2	Polaaristereografinen Fennoskandian alue 22 km	\N	\N
238	MTSKAPS33	2	Polaaristereografinen Fennoskandian alue 33 km	\N	\N
239	MTSKAPS66	2	Polaaristereografinen Fennoskandian alue 66 km	\N	\N
416	MTSOU025	1	ECMWF MTA Southern hemisphere 0.25 degrees	\N	\N
411	MTSOU1000	1	ECMWF MTA Southern hemisphere 1.0 degrees	\N	\N
505	NETE1000	2	Nordrad Etela2 665x775	\N	\N
506	NKESKI1000	2	Nordrad Keski2 565x775	\N	\N
508	NNORDEN4000	2	Nordrad Finorden 431x374	\N	\N
18	NOAA200200	1	Cloud parameters from NOAA satellite	\N	\N
507	NPOHJO2000	2	Nordrad Pohjo2 290x275	\N	\N
607	OAAS315363	1	Area of MTL OAAS-model	\N	\N
901	OSI_NO_AHL	2	OSI North Atlantic from met.no	\N	\N
174	RCU068	4	RCR Hirlam 0,068 deg resolution, u winds	\N	\N
175	RCV068	4	RCR Hirlam 0,068 deg resolution, v winds	\N	\N
601	SEA0102	1	Merimalli Skandinavia	\N	\N
14	SMHIMESAN	4	SMHI mesoanalysis area	\N	\N
305	TB_EC_05	1	Testbed ECMWF 0.5 deg	\N	\N
302	TB_LAR_016	4	Testbed larger area 0.16 deg	\N	\N
301	TB_LAR_04	4	Testbed larger area 0.4 deg	\N	\N
304	TB_SMA_008	4	Testbed smaller area 0.08 deg	\N	\N
303	TB_SMA_02	4	Testbed smaller area 0.2 deg	\N	\N
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
1111	DIWEUROPE	7	\N	radon_admin	2021-03-22 11:22:13.733772+00
1112	MEPS1000D	5	\N	\N	\N
\.


--
-- Name: geom_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.geom_id_seq', 1112, true);


--
-- PostgreSQL database dump complete
--

