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
-- Data for Name: fmi_producer; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.fmi_producer (id, name, description, class_id, last_updater, last_updated, type_id) FROM stdin;
48	GEPS	GEM NAEFS Global Ensemble Prediction System	1	\N	\N	3
5	MEPSCALIB	MEPS calibrated ensemble	1	\N	\N	3
4	MEPS	MEPS ensemble from Metcoop	1	postgres	2016-09-24 12:58:27	3
506	LSASAF	LSASAF satellite products	1	\N	\N	2
135	ECGSEASONAL	ECMWF seasonal forecast	1	\N	\N	3
500	OSISAF	OSI SAF satellite products	1	\N	\N	1
301	SILAM_AQ	FMI Silam airquality model	1	\N	\N	1
8	MNWC_PREOP	MEPS Nowcasting Preop	1	\N	\N	1
2167	HANSENS	Water level forecast Hansen in ensemble mode, ECMWF source data	3	\N	\N	3
2168	HANSMTA	Water level forecast Hansens post processed data	3	\N	\N	1
161	ROADMODEL	Gridded road model from ASI	1	\N	\N	1
180	FMIBLEND	FMI blend of models	1	\N	\N	3
181	SMARTMET	Smartmet editor	1	\N	\N	1
2027	ECMWF_LS_KALMAN	ECMWF forecast post-processed with Kalman and landscape interpolation	3	\N	\N	1
147	NEMO	FMI NEMO Ocean Model	1	\N	\N	1
501	IASIL2	IASI L2 satellite soundings	1	wetodb	2018-02-19 08:44:59	2
183	BLENDR	FMI blend of models raw fields	1	\N	\N	3
184	BLENDB	FMI blend of models bias fields	1	\N	\N	3
7	MNWC	MEPS Nowcasting	1	\N	\N	1
47	GEM	GEM GDPS global forecast	1	radon_admin	2023-05-08 04:26:09	1
55	KWBG_UV	Global UV model NOAA	1	\N	\N	1
101	MESAN	FMI Meso Analysis project products	1	wetodb	2017-12-05 10:42:25	1
131	ECG	ECMWF global deterministic weather model	1	postgres	2016-10-25 11:44:23	1
49	EGRR_SEAS	UKMO global seasonal model	1	postgres	2016-05-26 08:42:00	1
53	KWBG	Global Forecast System (GFS)	1	radon_admin	2023-05-08 04:27:02	1
54	GEFS	Global Ensemble Forecast System (GEFS)	1	radon_admin	2023-05-08 04:27:27	3
149	MYOCEAN	Copernicus NEMO Ocean model	1	wetodb	2020-10-06 05:58:13	1
102	TIESAA	FMI road condition model	1	postgres	2016-05-26 08:42:00	1
106	TIENHOITO	FMI road maintenance model	1	postgres	2016-05-26 08:42:00	1
107	LAPSFIN	LAPS analysis (Finland)	1	radon_admin	2023-05-08 04:28:57	2
109	LAPSSCAN	LAPS analysis (Scandinavia)	1	radon_admin	2023-05-08 04:28:57	2
122	ECMOSKRIGING_DEV	ECMWF MOS development version	1	radon_admin	2023-05-08 04:31:45	1
118	ECKALLAPS	Kalman filtered prognosis from EC forecasts	1	postgres	2016-05-26 08:42:00	1
119	FMI_PEPS	Kauhasen PEPS-yhdistelmä	1	postgres	2016-05-26 08:42:00	1
132	ECGSEF	ECMWF fine mesh marine model	1	postgres	2016-05-26 08:42:00	1
133	ECGSEA	ECMWF global sea model	1	postgres	2016-05-26 08:42:00	1
112	WAM_EC	FMI WAM wave model	1	radon_admin	2023-05-08 04:30:56	1
160	SMHIMESAN	Meso analysis from SMHI	1	postgres	2016-05-26 08:42:00	1
199	AROME	Finnish Arome	1	postgres	2016-05-26 08:42:00	1
210	AROMTA	Arome postprocessed fields	1	postgres	2016-05-26 08:42:00	1
242	ECM_PROB	Probabilities from ECMWF EPS	1	postgres	2016-05-26 08:42:00	1
2026	ECMOS	MOS from ECMWF model	3	postgres	2016-05-26 08:42:00	1
260	MEPSMTA	MEPS postprocessed fields	1	radon_admin	2023-05-08 04:38:09	3
121	PEPSSCAN	PEPS multi-model ensemble (Scandinavia)	1	radon_admin	2023-05-08 04:33:53	1
148	COPERNICUS	Copernicus Marine Products	1	radon_admin	2023-05-08 04:34:56	1
2156	OASECM	Water level forecast OAAS-ECMWF	3	postgres	2016-05-26 08:42:00	1
240	ECGMTA	ECMWF postprocessed fields	1	radon_admin	2023-05-08 04:36:51	1
2158	WETECM	Water level forecast Wetehinen-ECMWF	3	postgres	2016-05-26 08:42:00	1
241	ERA5MTA	ECMWF ERA5 postprocessed fields	1	radon_admin	2023-05-08 04:37:10	1
2161	OASECRAW	Water level forecast OAAS-EC Raw fields	3	postgres	2016-05-26 08:42:00	1
243	ECGEPSMTA	ECMWF EPS postprocessed fields	1	radon_admin	2023-05-08 04:37:10	3
120	ECMOSKRIGING	ECMWF MOS Kriging gridded	1	postgres	2016-06-15 09:29:22	1
2164	OASECKALMAN	OAAS EC forecast with Kalman filter	3	postgres	2016-05-26 08:42:00	1
250	GFSMTA	GFS postprocessed fields	1	radon_admin	2023-05-08 04:38:09	1
182	BLENDW	FMI blend of models weight (MAE) fields	1	wetodb	2018-11-07 13:39:43	3
261	MEPS_PREOPMTA	MEPS Preop postprocessed fields	1	radon_admin	2023-05-08 04:38:09	3
115	DIW	De-Icing Weather Index	1	\N	\N	1
170	ICON_GLO	DWD Global Model ICON	1	postgres	2016-05-26 08:42:00	1
134	ECGEPS	ECMWF Ensemble Forecast System	1	postgres	2016-05-26 08:47:01	3
1016	WATLEV	Water level data from FIMR	3	postgres	2016-05-26 08:59:14	6
105	MTLICE	Baltic Ice Chart	1	radon_admin	2023-02-01 13:42:34	1
262	MEPSCALIBMTA	Calibrated MEPS postprocessed fields	1	radon_admin	2023-05-08 04:38:09	3
270	MNWCMTA	MNWC postprocessed fields	1	radon_admin	2023-05-08 04:39:26	1
280	SMARTMETMTA	SmartMet postprocessed fields	1	radon_admin	2023-05-08 04:39:26	1
281	SMARTMETNWC	SmartMet Nowcasting	1	radon_admin	2023-05-08 04:41:07	1
291	CLOUDCAST_PREOP	Cloudcast NWC Preop	1	radon_admin	2023-05-08 04:42:05	1
2028	ECMOS2	MOS Preop from ECMWF model	3	radon_admin	2023-05-08 04:43:20	1
189	METAN	METNO Scandinavia analysis	1	wetodb	2018-09-19 09:23:51	2
52	ENFUSER	FMI Air Quality fusion model	1	wetodb	2018-10-05 04:52:34	1
137	ECGSEASMEAN	ECMWF seasonal forecast mean values	1	\N	\N	1
220	ICONMTA	ICON postprocessed fields	1	\N	\N	1
10	MEPS_PREOP	MEPS Preop	1	radon_admin	2023-05-08 04:25:38	3
510	OPERA	Opera radar network	1	\N	\N	2
110	PPN	FMI Probabilistic Precipitation Nowcasting	1	\N	\N	1
104	LUKE	Luonnonvarakeskus	1	wetodb	2020-06-16 07:32:36	2
502	NWCSAF	NWCSAF satellite products	1	\N	\N	2
503	NWCSAFMTA	NWCSAF post processed products	1	\N	\N	2
504	NWCSAF_POLAR	NWCSAF polar orbiting satellite products	1	\N	\N	2
505	NWCSAFMTA_POLAR	NWCSAF polar orbiting satellite post processed products	1	\N	\N	2
520	VIEWFINDER	Viewfinder digital elevation map	1	\N	\N	2
521	GLOBCOVER	Global land cover map	1	\N	\N	2
283	HRNWC	High Resolution Nowcast	1	\N	\N	1
113	WAM_BALMFC	FMI WAM BALMFC wave model for Baltic Sea	1	radon_admin	2023-05-08 04:30:56	1
152	HELMI	Helmi Ice Model	1	radon_admin	2023-05-08 04:35:21	2
153	WAM_HKI	FMI WAM Helsinki wave model	1	radon_admin	2023-05-08 04:35:21	1
154	WAM_BALMFC_ARCH	FMI WAM BALMFC wave model for archipelago	1	radon_admin	2023-05-08 04:35:21	1
244	ECGEPSCALIB	ECMWF EPS calibrated fields	1	radon_admin	2023-05-08 04:37:10	3
271	MNWCMTADEV	MNWC postprocessed fields (preop)	1	radon_admin	2023-05-08 04:39:26	1
272	MNWC_PREOPMTA	MNWC Preop postprocessed fields	1	radon_admin	2023-05-08 04:39:26	1
282	SMARTMETNWCDEV	SmartMet Nowcasting Preop	1	radon_admin	2023-05-08 04:41:07	1
284	HRNWC_PREOP	High Resolution Nowcast Preop	1	radon_admin	2023-05-08 04:41:42	1
290	CLOUDCAST	Cloudcast NWC	1	radon_admin	2023-05-08 04:42:05	1
\.


--
-- PostgreSQL database dump complete
--

