--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.1

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
54	GEFS	Global Ensemble Forecast System (NOAA)	1	\N	\N	3
206	GLAMEPSMTA	Postprocessed fields for GLAMEPS	1	\N	\N	1
5	GLAMEPS	GLAMEPS	1	\N	\N	3
4	MEPS	MEPS ensemble from Metcoop	1	postgres	2016-09-24 12:58:27	3
11	CMEPS_PREOP	Continuous MEPS preop experiment	1	\N	\N	3
6	GLAMEPSCAL	GLAMEPS calibrated fields	1	\N	\N	3
135	ECGSEASONAL	ECMWF seasonal forecast	1	\N	\N	3
260	MEPSMTA	Postprocessed fields for MEPS	1	postgres	2016-11-04 12:10:37	3
500	OSISAF	OSI SAF satellite products	1	\N	\N	1
301	SILAM_AQ	FMI Silam airquality model	1	\N	\N	1
113	WAM_BALMFC	Copernicus (BALMFC) aaltomalli	1	\N	\N	1
2167	HANSENS	Water level forecast Hansen in ensemble mode, ECMWF source data	3	\N	\N	3
2168	HANSMTA	Water level forecast Hansens post processed data	3	\N	\N	1
121	PEPSSCAN	Kauhasen PEPS-yhdistelmä	1	\N	\N	1
161	ROADMODEL	Gridded road model from ASI	1	\N	\N	1
180	FMIBLEND	FMI blend of models	1	\N	\N	3
243	ECGEPSMTA	ECMWF Ensemble Forecast System post processed fields	1	wetodb	2017-06-12 11:25:32	3
181	SMARTMET	Smartmet editor	1	\N	\N	1
261	MEPS_PREOPMTA	Postprocessed fields for MEPS preop	1	wetodb	2018-10-08 05:18:55	3
280	SMARTMETMTA	Postprocessed fields for SmartMet	1	\N	\N	1
2027	ECMWF_LS_KALMAN	ECMWF forecast post-processed with Kalman and landscape interpolation	3	\N	\N	1
147	NEMO	FMI NEMO Ocean Model	1	\N	\N	1
501	IASIL2	IASI L2 satellite soundings	1	wetodb	2018-02-19 08:44:59	2
183	BLENDR	FMI blend of models raw fields	1	\N	\N	3
184	BLENDB	FMI blend of models bias fields	1	\N	\N	3
7	MNWC	MEPS Nowcasting	1	\N	\N	1
136	ECGERA5	ECMWF global ERA 5 reanalysis	1	wetodb	2018-02-28 14:55:23	1
270	MNWCMTA	MEPS Nowcasting post processed fields	1	\N	\N	1
109	LAPSSCAN	LAPS analysis for Scandinavian area	1	wetodb	2018-02-19 08:45:42	2
105	MTLICE	Jääeditori	1	postgres	2017-05-02 05:34:04	1
101	MESAN	FMI Meso Analysis project products	1	wetodb	2017-12-05 10:42:25	1
131	ECG	ECMWF global deterministic weather model	1	postgres	2016-10-25 11:44:23	1
1	HL2	Hirlam RCR-malli, alkuperäiset kentät	1	postgres	2016-05-26 08:42:00	1
107	LAPSFIN	Finnish LAPS analysis, large area	1	wetodb	2018-02-19 08:52:58	2
47	GEM	GEM GDPS global forecast from Canada	1	postgres	2016-05-26 08:42:00	1
49	EGRR_SEAS	UKMO global seasonal model	1	postgres	2016-05-26 08:42:00	1
50	EGRR	Bracknell global model	1	postgres	2016-05-26 08:42:00	1
51	EDZW	Offenbach global model	1	postgres	2016-05-26 08:42:00	1
149	MYOCEAN	Copernicus NEMO Ocean model	1	wetodb	2020-10-06 05:58:13	1
53	KWBG	Washington global model GFS	1	postgres	2016-05-26 08:42:00	1
102	TIESAA	FMI road condition model	1	postgres	2016-05-26 08:42:00	1
250	GFSMTA	Postprocessed fields for GFS	1	postgres	2016-05-26 08:42:00	1
106	TIENHOITO	FMI road maintenance model	1	postgres	2016-05-26 08:42:00	1
111	WAM_MBE	MTL MBE-pohjainen aaltomalli	1	postgres	2016-05-26 08:42:00	1
112	WAM_EC	MTL EC-pohjainen aaltomalli	1	postgres	2016-05-26 08:42:00	1
114	OAAS_MBE	MTL MBE-pohjainen OAAS-malli	1	postgres	2016-05-26 08:42:00	1
116	WALK_NOIC	Jalankulkumalli, ei j??varastoa	1	postgres	2016-05-26 08:42:00	1
117	WALK_WIC	Jalankulkumalli, j??varasto mukana	1	postgres	2016-05-26 08:42:00	1
118	ECKALLAPS	Kalman filtered prognosis from EC forecasts	1	postgres	2016-05-26 08:42:00	1
119	FMI_PEPS	Kauhasen PEPS-yhdistelmä	1	postgres	2016-05-26 08:42:00	1
132	ECGSEF	ECMWF fine mesh marine model	1	postgres	2016-05-26 08:42:00	1
133	ECGSEA	ECMWF global sea model	1	postgres	2016-05-26 08:42:00	1
150	HBM_EC	HIROMB BOOS (HBM) circulation model for Baltic Sea (ECMWF)	1	postgres	2016-05-26 08:42:00	1
151	HBM_HIR	HIROMB BOOS (HBM) circulation model for Baltic Sea (HIRLAM)	1	postgres	2016-05-26 08:42:00	1
160	SMHIMESAN	Meso analysis from SMHI	1	postgres	2016-05-26 08:42:00	1
199	AROME	Finnish Arome	1	postgres	2016-05-26 08:42:00	1
210	AROMTA	Arome postprocessed fields	1	postgres	2016-05-26 08:42:00	1
230	HL2MTA	Hirlam RCR-malli, lasketut kentät	1	postgres	2016-05-26 08:42:00	1
240	ECGMTA	ECMWF-malli, lasketut kentät	1	postgres	2016-05-26 08:42:00	1
242	ECM_PROB	Probabilities from ECMWF EPS	1	postgres	2016-05-26 08:42:00	1
2026	ECMOS	MOS from ECMWF model	3	postgres	2016-05-26 08:42:00	1
2125	MTL	Wave Forecast from FIMR Wave Model	3	postgres	2016-05-26 08:42:00	1
2150	SEAMET	Forecast by Meteorologist for Sea Areas	3	postgres	2016-05-26 08:42:00	1
122	ECMOSKRIGING_DEV	ECMWF MOS Development version, kriging gridded	1	wetodb	2017-06-12 08:03:31	1
2155	OASMBE	Water level forecast OAAS-MBE	3	postgres	2016-05-26 08:42:00	1
2156	OASECM	Water level forecast OAAS-ECMWF	3	postgres	2016-05-26 08:42:00	1
2157	WETMBE	Water level forecast Wetehinen-MBE	3	postgres	2016-05-26 08:42:00	1
2158	WETECM	Water level forecast Wetehinen-ECMWF	3	postgres	2016-05-26 08:42:00	1
241	ERA5MTA	Postprocessed fields for ECMWF ERA5	1	wetodb	2019-02-02 07:21:28	1
2160	OASRCRAW	Water level forecast OAAS-RCR Raw fields	3	postgres	2016-05-26 08:42:00	1
2161	OASECRAW	Water level forecast OAAS-EC Raw fields	3	postgres	2016-05-26 08:42:00	1
130	ECG_ERA	ECMWF global ERA-Interim	1	postgres	2016-05-26 08:58:01	1
120	ECMOSKRIGING	ECMWF MOS Kriging gridded	1	postgres	2016-06-15 09:29:22	1
2164	OASECKALMAN	OAAS EC forecast with Kalman filter	3	postgres	2016-05-26 08:42:00	1
2165	WETRCRKALMAN	Wetehinen RCR forecast with Kalman filter	3	postgres	2016-05-26 08:42:00	1
281	SMARTMETNWC	SmartMet producer with nowcasting applied	1	wetodb	2018-10-29 07:18:17	1
182	BLENDW	FMI blend of models weight (MAE) fields	1	wetodb	2018-11-07 13:39:43	3
2166	WETECKALMAN	Wetehinen EC forecast with Kalman filter	3	postgres	2016-05-26 08:42:00	1
115	DIW	De-Icing Weather Index	1	\N	\N	1
170	ICON_GLO	DWD Global Model ICON	1	postgres	2016-05-26 08:42:00	1
148	COPERNICUS	-	1	postgres	2016-05-26 08:42:00	1
2028	ECMOS2	MOS from ECMWF model, 2nd version	3	postgres	2016-05-26 08:42:00	1
134	ECGEPS	ECMWF Ensemble Forecast System	1	postgres	2016-05-26 08:47:01	3
1016	WATLEV	Water level data from FIMR	3	postgres	2016-05-26 08:59:14	6
189	METAN	METNO Scandinavia analysis	1	wetodb	2018-09-19 09:23:51	2
52	ENFUSER	FMI Air Quality fusion model	1	wetodb	2018-10-05 04:52:34	1
137	ECGSEASMEAN	ECMWF seasonal forecast mean values	1	\N	\N	1
220	ICONMTA	ICON postprocessed fields	1	\N	\N	1
265	CMEPS_PREOPMTA	Postprocessed fields for CMEPS preop	1	\N	\N	3
244	ECGEPSCALIB	ECMWF Ensemble Forecast System calibrated fields	1	\N	\N	3
10	MEPS_PREOP	MEPS preop experiment	1	wetodb	2019-12-19 07:16:22	3
510	OPERA	Opera radar network	1	\N	\N	2
110	PPN	FMI Probabilistic Precipitation Nowcasting	1	\N	\N	1
104	LUKE	Luonnonvarakeskus	1	wetodb	2020-06-16 07:32:36	2
502	NWCSAF	NWCSAF satellite products	1	\N	\N	2
503	NWCSAFMTA	NWCSAF post processed products	1	\N	\N	2
152	HELMI	Helmi jäämalli	1	wetodb	2020-05-06 06:48:51	2
271	MNWCMTADEV	MEPS Nowcasting post processed fields development version	1	\N	\N	1
282	SMARTMETNWCDEV	SmartMet producer with nowcasting applied development version	1	\N	\N	1
290	CLOUDCAST	Cloudcast NWC model	1	\N	\N	1
504	NWCSAF_POLAR	NWCSAF polar orbiting satellite products	1	\N	\N	2
505	NWCSAFMTA_POLAR	NWCSAF polar orbiting satellite post processed products	1	\N	\N	2
\.


--
-- PostgreSQL database dump complete
--

