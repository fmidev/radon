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
-- Data for Name: geom_latitude_longitude; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY geom_latitude_longitude (id, name, ni, nj, first_point, di, dj, scanning_mode, description, last_updater, last_updated) FROM stdin;
1056	ECEUR075	91	65	0101000020E610000000000000008036C00000000000C05240	0.75	0.75	+x-y	ECMWF europe 0.75 degrees	\N	\N
1060	SILAMAQEUR	700	420	0101000020E61000003333333333F338C0CDCCCCCCCC0C3E40	0.1	0.1	+x+y	Silam AQ Europe 0.1	\N	\N
1089	ECEURSEASON075	169	95	0101000020E61000000000000000E046C00000000000105440	0.75	0.75	+x-y	ECMWF seasonal forecast for europe	\N	\N
1074	ECGLO0200	1800	901	0101000020E610000000000000000000000000000000805640	0.2	0.2	+x-y	ECMWF global 0.2 degrees	\N	\N
415	ECNOR025	1440	361	0101000020E610000000000000008066400000000000805640	0.25	0.25	+x-y	ECMWF Northern hemisphere 0.25 degrees	\N	\N
1064	ECGSEA025	265	203	0101000020E61000000000000000003AC00000000000205440	0.25	0.25	+x-y	ECMWF sea model europe area	\N	\N
1081	BLEND0025	4501	1841	0101000020E610000000000000000044C00000000000605240	0.025	0.025	+x-y	Blend 0.025 degrees	\N	\N
1082	ICONEUR00625	1097	657	0101000020E610000000000000000875400000000000803D40	0.0625	0.0625	+x+y	DWD ICON GDS europe nesting	\N	\N
1083	TOPLINK	720	696	0101000020E61000000000000000F074400000000000805140	0.097357	0.068345	+x-y	Area for Toplink winter products	\N	\N
1085	ICONGLO0125	2879	1441	0101000020E6100000000000000080664000000000008056C0	0.125	0.125	+x+y	DWD ICON GDS global	\N	\N
1059	VANADIS	2640	3120	0101000020E6100000A73FFB91220222402AA913D044804A40	0.00833333	0.00416667	+x+y	Vanadis (icemap2) geometry from 2016	\N	\N
1061	WAMBALMFC	764	775	0101000020E61000009E7B0F971C072240A9A44E4013814A40	0.027777	0.016666	+x+y	Copernicus WAM(BALMFC) area 1 nautical mile resolution	\N	\N
1065	MOSKRIGING2	1126	461	0101000020E610000000000000000044C00000000000605240	0.1	0.1	+x-y	MOS Kriging area over Europe	\N	\N
52	ENFUSORHKI	2631	2018	0101000020E610000014AE47E17A943840C976BE9F1A2F4E40	0.000235652	0.000116947	+x-y	Enfusor Hki metropolitan area	\N	\N
53	ENFUSORTAM	1790	1001	0101000020E610000046B6F3FDD498374014AE47E17AC44E40	0.000188268	0.0000899086	+x-y	Enfusor Tampere area	\N	\N
54	ENFUSORTUR	1926	1212	0101000020E61000008FC2F5285C0F36400000000000404E40	0.000182243	0.0000899336	+x-y	Enfusor Turku area	\N	\N
608	HBM	256	258	0101000020E6100000DA722EC5551522403333333333834A40	0.0833333	0.05	+x+y	HIROMB BOOS (HBM) circulation model for Baltic Sea	\N	\N
25	EGRR432325	432	325	0101000020E6100000000000000000000000000000008056C0	0.833	0.555	+x+y	Seasonal global forecast model of UK Met-office.	wetodb	2016-09-22 06:32:48.424987+00
1005	ICON125	2880	1441	0101000020E6100000000000000080664000000000008056C0	0.125	0.125	+x+y	DWD ICON GDS global	wetodb	2016-01-29 09:22:06.177607+00
1007	ECGLO0100	3600	1801	0101000020E610000000000000000000000000000000805640	0.1	0.1	+x-y	 ECMWF global 0.1 degrees	postgres	2016-03-23 18:20:11.449998+00
1047	MOSKRIGING	1414	533	0101000020E610000014AE47E17AD44EC08FC2F5285C8F5340	0.0999985	0.0999985	+x-y	Mos Kriging area over Europe	postgres	2016-08-29 09:14:56.472962+00
1048	ECERAINTERIM	500	251	0101000020E610000000000000000000000000000000805640	0.72	0.72	+x-y	ERA-Interim Global Analysis 500 x 251 0.72 deg	wetodb	2016-09-05 07:25:34.037904+00
1052	EGRR432324	432	324	0101000020E6100000F54A5986386E56C0BAA29410ACAADA3F	0.833	0.555	+x+y	Seasonal global forecast model of UK Met-office.	wetodb	2016-09-22 07:33:02.751131+00
112	EC0730175000	73	17	0101000020E610000000000000008066400000000000805640	5	5	+x-y	ECM 73x17_5000	\N	\N
126	EC1450820500	145	82	0101000020E61000000000000000003BC00000000000605240	0.5	0.5	+x-y	ECMWF Europe in fine grid	\N	\N
403	ECFESC500	61	41	0101000020E610000000000000000014400000000000C05240	0.5	0.5	+x-y	ECMWF Fennoscandian area 0.5 deg	\N	\N
419	ECGLO0125	2880	1441	0101000020E610000000000000000000000000000000805640	0.125	0.125	+x-y	ECMWF global 0.125 degrees	\N	\N
418	ECGLO1000	360	181	0101000020E6100000000000000000F03F0000000000805640	1	1	+x-y	ECMWF global 1.0 degrees	\N	\N
128	ECGSEA289245	289	245	0101000020E61000000000000000003EC00000000000405440	0.25	0.25	+x-y	ECMWF Mediterranean sea model	\N	\N
421	ECMTSOTSI125	39	5	0101000020E61000000000000000A043400000000000B04540	0.125	0.125	+x+y	ECMWF MTA sotsi 0.125 regular lat lon	\N	\N
609	HELMI	415	556	0101000020E6100000D6C56D3480B73040575BB1BFEC5E4C40	0.03333	0.01667	+x+y	Area of Helmi ice model	\N	\N
408	ECNOR1000	361	91	0101000020E610000000000000008066400000000000805640	1	1	+x-y	ECMWF Northern hemisphere 1.0 degrees	\N	\N
410	ECSOU1000	360	90	0101000020E61000000000000000806640000000000000F0BF	1	1	+x-y	ECMWF Southern hemisphere 1.0 degrees	\N	\N
15	EDZV121061	121	61	0101000020E610000000000000008056C00000000000000000	1.5	1.5	+x+y	Offenbach combined, half of northern hemisphere	\N	\N
17	EGRR145073	145	73	0101000020E610000000000000008066C000000000008056C0	2.5	2.5	+x+y	Bracknell global grid	\N	\N
124	EPS121441500	121	44	0101000020E610000000000000008056C00000000000803940	1.5	1.5	+x+y	ECMWF EPS-fields	\N	\N
123	EPSORG12144	121	44	0101000020E610000000000000008056C00000000000805640	1.5	1.5	+x-y	ECMWF original EPS-fields	\N	\N
127	EPSSCAN	41	61	0101000020E610000000000000000014400000000000C05240	0.5	0.5	+x-y	ECMWF EPS fields for Scandinavia	\N	\N
377	FMIPEPS1	239	492	0101000020E610000000000000008032403333333333B34C40	0.077	0.025	+x+y	Kauhasen PEPS-alue	\N	\N
24	GEM0240	1500	751	0101000020E6100000000000000080664000000000008056C0	0.24	0.24	+x+y	Canadian global 0.24 degree resolution forecast	\N	\N
26	GFS0250	1440	721	0101000020E610000000000000000000000000000000805640	0.25	0.25	+x-y	Washington global 0.25 degree resolution	\N	\N
21	GFS0500	720	361	0101000020E610000000000000000000000000000000805640	0.5	0.5	+x-y	Washington global 0,5 degree resolution	\N	\N
22	GFSMT0500	720	361	0101000020E610000000000000000000000000000000002240	0.5	0.5	+x+y	MTA for Washington global 0,5 degree resolution	\N	\N
414	ECSOU025	1440	360	0101000020E61000000000000000806640000000000000D0BF	0.25	0.25	+x-y	ECMWF Southern hemisphere 0.25 degrees	\N	\N
602	ICE161131	131	161	0101000020E610000000000000000031400000000000004D40	0.1	0.05	+x+y	Area of Finnish ice observation data	\N	\N
605	ICE261221	221	261	0101000020E610000000000000000022400000000000804A40	0.1	0.05	+x+y	Area of Finnish ice observation data	\N	\N
603	ICE267217	217	267	0101000020E610000000000000000031400000000000004D40	0.06	0.03	+x+y	Area of Finnish ice observation data	\N	\N
604	ICE434367	367	434	0101000020E610000000000000000022400000000000804A40	0.06	0.03	+x+y	Area of Finnish ice observation data	\N	\N
16	KWBC073037	73	37	0101000020E610000000000000008066C00000000000000000	5	2.5	+x+y	Washington  combined grid, northern hemisphere	\N	\N
3	KWBCONEDEG	360	181	0101000020E610000000000000000000000000000000805640	1	1	+x-y	Washington global one degree resolution	\N	\N
8	KWBG1000	360	181	0101000020E6100000000000000000000000000000008056C0	1	1	+x+y	Washington NCEP siirretty	\N	\N
13	MES070120	70	120	0101000020E610000000000000000033400000000000804D40	0.2	0.1	+x+y	Meso Analysis Area over Finland	\N	\N
33	MES141241	140	240	0101000020E610000000000000000033400000000000804D40	0.1	0.05	+x+y	Suomi 5x5 km	\N	\N
23	MES7681323	768	1323	0101000020E610000000000000000033400000000000804D40	0.018	0.009	+x+y	Dense Meso Analysis Area over Finland	\N	\N
130	MT1210451500	121	45	0101000020E610000000000000008056C00000000000003840	1.5	1.5	+x+y	MTAECMWF 1.5 degree grid	\N	\N
226	MT1450820500	145	82	0101000020E61000000000000000003BC00000000000804040	0.5	0.5	+x+y	Europe in fine grid	\N	\N
417	MTNOR025	1441	361	0101000020E610000000000000008066C00000000000000000	0.25	0.25	+x+y	ECMWF MTA Northern hemisphere 0.25 degrees	\N	\N
409	MTNOR1000	361	91	0101000020E610000000000000008066C00000000000000000	1	1	+x+y	ECMWF MTA Northern hemisphere 1.0 degrees	\N	\N
413	MTRUS025	541	121	0101000020E610000000000000000044400000000000004440	0.25	0.25	+x+y	Russia, 0.25 deg	\N	\N
416	MTSOU025	1441	360	0101000020E610000000000000008066C000000000008056C0	0.25	0.25	+x+y	ECMWF MTA Southern hemisphere 0.25 degrees	\N	\N
411	MTSOU1000	361	90	0101000020E610000000000000008066C000000000008056C0	1	1	+x+y	ECMWF MTA Southern hemisphere 1.0 degrees	\N	\N
18	NOAA200200	200	200	0101000020E610000000000000000014400000000000004A40	0.2	0.1	+x+y	Cloud parameters from NOAA satellite	\N	\N
607	OAAS315363	315	363	0101000020E61000006666666666E622406666666666E64A40	0.067	0.033	+x+y	Area of MTL OAAS-model	\N	\N
601	SEA0102	120	80	0101000020E61000006666666666662140CDCCCCCCCCEC4A40	0.2	0.1	+x+y	Merimalli Skandinavia	\N	\N
305	TB_EC_05	145	48	0101000020E61000000000000000003BC00000000000004940	0.5	0.5	+x+y	Testbed ECMWF 0.5 deg	\N	\N
1006	COPERNICUS	4320	2041	0101000020E610000000000000008066C000000000000054C0	0.0833333	0.0833333	+x+y	Copernicus, global ocean	postgres	2016-08-29 09:12:27.356279+00
606	WAM109123	166	196	0101000020E610000000000000000022400000000000804A40	0.133	0.067	+x+y	Area of MTL Wave model data	\N	\N
\.


--
-- PostgreSQL database dump complete
--
