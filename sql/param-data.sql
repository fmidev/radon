--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: param; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.param (id, name, version, unit_id, interpolation_id, description, last_updater, last_updated) FROM stdin;
1	MINT2M-C	1	58	1	Minimum temperature at 2m since previous post-processing	\N	\N
1026	RHICE-PRCNT	1	6	1	Humidity relative to ice	\N	\N
3	TROAD-C	1	58	1	Road temperature in C	\N	\N
4	CONDROAD-N	1	69	1	Road condition	\N	\N
5	PROBDRY	1	6	1	Probability of dry road	\N	\N
6	PROBWET	1	6	1	Probability of wet road	\N	\N
7	PROBMST	1	6	1	Probability of moist road	\N	\N
8	PROBSNY	1	6	1	Probability of snowy road	\N	\N
9	PROBFRY	1	6	1	Probability of frosty road	\N	\N
10	PROBICY	1	6	1	Probability of icy road	\N	\N
992	PROB-HWS-1	1	6	1	Probability of significant wave height of at least 2m	\N	\N
12	RR-5D-MM	1	60	1	Precipitation over 5 days in mm	\N	\N
13	GROWDEV-D	1	80	1	Growth period deviation from normal in days	\N	\N
14	LSSN-M100	1	63	1	Loose snow depth in cm	\N	\N
15	GROWDEV-PCT	1	6	1	Growth period deviation from normal in percent	\N	\N
16	GPPREC-KGM2	1	18	1	Growth period precipitation in kgm-2	\N	\N
17	EFFTS-C	1	58	1	Effective temperature sum	\N	\N
18	TOZONE-KGM2	1	18	1	Total ozone in kg/m**2	\N	\N
19	ROADIDX-N	1	69	1	Road Condition Index	\N	\N
20	NLM-PRCNT	1	6	1	Low and middle cloud cover	\N	\N
21	CONDROAD2-N	1	69	1	Road condition, sensor 2	\N	\N
752	CRAIN-0OR1	1	28	2	Precipitation type categorical rain, 0 or 1	\N	\N
753	CICEP-0OR1	1	28	2	Precipitation type categorical ice pellets, 0 or 1	\N	\N
24	ICNCT-PRCNT	1	6	1	Ice concentration	\N	\N
25	ITHK-CM	1	63	1	Ice thickness	\N	\N
26	IMINTHK-CM	1	63	1	Ice minimum thickness	\N	\N
27	IMAXTHK-CM	1	63	1	Ice maximum thickness	\N	\N
137	ALBEDO-0TO1	1	62	1	ALBEDO 0 to 1	postgres	2017-01-08 18:20:36
29	DRAG-N	1	69	1	Coefficient of drag	\N	\N
30	H0C-HPA	1	21	1	Height of 0 C level in hPa	\N	\N
31	RADTSTLW	1	12	1	Testiparametri LW	\N	\N
32	RADTSTSW	1	12	1	Testiparametri SW	\N	\N
33	QOL-KGKG	1	17	1	Specific Humidity over land in kg/kg	\N	\N
34	TOL-K	1	3	1	Temperature over land in Kelvins	\N	\N
35	GRFROST-M3M3	1	62	1	Ground frost in volumetric proportion	\N	\N
36	PROB-WG-1	1	6	1	Probability of reaching wind gust speed of 15 m/s in EPS	\N	\N
37	PROB-WG-2	1	6	1	Probability of reaching wind gust speed of 20 m/s in EPS	\N	\N
38	PROB-WG-3	1	6	1	Probability of reaching wind gust speed of 25 m/s in EPS	\N	\N
39	RTOPLW-WM2	1	12	1	Net long wave radiation, top of athmosphere	\N	\N
40	RTOPSW-WM2	1	12	1	Net short wave radiation, top of athmosphere	\N	\N
41	ROADMMT-S	1	4	1	Time to next Road Maintenance Measure	\N	\N
42	ROADMM-N	1	69	1	Road Maintenance Measure Code	\N	\N
43	FD-MM	1	60	1	Water equivalent of frost cover in mm	\N	\N
769	RH-0TO1	1	62	1	Relative humidity, 0 to 1	\N	\N
45	PREC7D-KGM2	1	18	1	Seven days¿ precipitation in kgm-2	\N	\N
46	PREC10-KGM2	1	18	1	Ten days precipitation in kgm-2	\N	\N
47	PREC30-KGM2	1	18	1	Thirty days precipitation in kgm-2	\N	\N
48	PGR-PA	1	7	1	Pressure on ground	\N	\N
49	TOTCWV-KGM2	1	18	1	Total column water vapour	\N	\N
50	MAXT-K	1	3	1	Maximum temperature on ambiguous level	\N	\N
51	MINT-K	1	3	1	Minimum temperature on ambiguous level	\N	\N
52	CLDICE-KGKG	1	17	1	Cloud ice	\N	\N
53	TCLDTOP-K	1	3	1	Cloud top temperature	\N	\N
54	TWVRAD-K	1	3	1	Water vapour radiation temperature	\N	\N
55	TWVRCL-K	1	3	1	Water vapour radiation temperature including clouds	\N	\N
56	REFLTY-N	1	62	1	Reflectivity (pseudo visible)	\N	\N
57	MAXWS-MS	1	2	1	Maximum wind speed	\N	\N
58	MINWS-MS	1	2	1	Minimum wind speed	\N	\N
59	RHAVE-PRCNT	1	6	1	Relative humidity, land fraction average	\N	\N
60	TDAVE-K	1	3	1	Dew point temperature, land fraction average	\N	\N
993	PROB-HWS-2	1	6	1	Probability of significant wave height of at least 4m	\N	\N
754	CFRZR-0OR1	1	28	2	Precipitation type categorical freezing rain, 0 or 1	\N	\N
68	NH-STDDEV-PRCNT	1	6	1	Standard Deviation of high cloud cover	postgres	2017-01-03 08:49:33
66	TDPS	1	12	1	tendance barometrique	\N	\N
67	T-NH-K	1	3	1	Temperature of high cloud cover	\N	\N
69	T-NLM-K	1	6	1	Temperature of low and middle cloud cover	\N	\N
70	TMAX	1	3	1	temperature maximale	\N	\N
71	TMIN	1	3	1	temperature minimale	\N	\N
72	NLMDEV-PRCNT	1	6	1	Standard Deviation of low and middle cloud cover	\N	\N
73	FOG-PRCNT	1	6	1	Percentage of fog in a grid cell	\N	\N
74	FL-PRCNT	1	6	1	Percentage of land in a grid cell	\N	\N
75	FSEA-PRCNT	1	6	1	Percentage of land in a grid cell	\N	\N
76	FSNO-PRCNT	1	6	1	Percentage of snow in a grid cell	\N	\N
77	FSG-PRCNT	1	6	1	Percentage of sun glint in a grid cell	\N	\N
78	T-H1-C	1	58	1	 Temperature in Celsius, height 1	\N	\N
79	T-H2-C	1	58	1	 Temperature in Celsius, height 2	\N	\N
80	T-H3-C	1	58	1	 Temperature in Celsius, height 3	\N	\N
81	T-H4-C	1	58	1	 Temperature in Celsius, height 4	\N	\N
82	T-H5-C	1	58	1	 Temperature in Celsius, height 5	\N	\N
83	T-H6-C	1	58	1	 Temperature in Celsius, height 6	\N	\N
84	T-H7-C	1	58	1	 Temperature in Celsius, height 7	\N	\N
85	T-H8-C	1	58	1	 Temperature in Celsius, height 8	\N	\N
86	RH-H2-PRCNT	1	6	1	 Relative Humidity in percents, height 2	\N	\N
87	RH-H3-PRCNT	1	6	1	 Relative Humidity in percents height 3	\N	\N
88	FLLAT-JM2	1	20	1	Latent heat flux	\N	\N
89	FLSEN-JM2	1	20	1	Sensible heat flux	\N	\N
90	RH-H4-PRCNT	1	6	1	 Relative Humidity in percents, height 4	\N	\N
91	FF-H1-MS	1	15	1	 Wind speed in m/s, height 1	\N	\N
28	IRIDGE-PRCNT	1	6	1	Ice degree of ridging	postgres	2017-01-07 10:49:55
92	FF-H2-MS	1	15	1	 Wind speed in m/s, height 2	\N	\N
93	FF-H3-MS	1	15	1	 Wind speed in m/s, height 3	\N	\N
94	FF-H4-MS	1	15	1	 Wind speed in m/s, height 4	\N	\N
95	DD-H1-D	1	5	1	 Wind Direction in Degrees, height 1	\N	\N
96	DD-H2-D	1	5	1	 Wind Direction in Degrees, height 2	\N	\N
97	DD-H3-D	1	5	1	 Wind Direction in Degrees, height 3	\N	\N
98	DD-H4-D	1	5	1	 Wind Direction in Degrees, height 4	\N	\N
99	FX-H1-MS	1	15	1	 Maximum Wind Speed in m/s, height 1	\N	\N
100	FX-H2-MS	1	15	1	 Maximum Wind Speed in m/s, height 2	\N	\N
101	FX-H3-MS	1	15	1	 Maximum Wind Speed in m/s, height 3	\N	\N
341	F100-RR-6-MM	1	18	1	100th fractal precipitation in EPS	postgres	2016-08-31 06:01:08
103	FX-H4-MS	1	15	1	 Maximum Wind Speed in m/s, height 4	\N	\N
104	P-H1-HPA	1	21	1	Pressure in hPa , height 1	\N	\N
105	RH-H1-PRCNT	1	6	1	 Relative Humidity in percents, height 1	\N	\N
106	WW1METAR-N	1	30	1	 for metars	\N	\N
107	WW2METAR-N	1	30	1	 for metars	\N	\N
108	WW3METAR-N	1	30	1	 for metars	\N	\N
109	ISCB1-N	1	28	1	 for metars	\N	\N
110	ISCB2-N	1	28	1	 for metars	\N	\N
111	ISCB3-N	1	28	1	 for metars	\N	\N
112	ISCB4-N	1	28	1	 for metars	\N	\N
113	VVERT-M	1	2	1	 for metars	\N	\N
114	FL-LEN-M	1	2	1	Length of flash ellipse axle	\N	\N
115	FL-WID-M	1	2	1	Width of flash ellipse axle	\N	\N
116	FL-DIR-D	1	5	1	Direction of flash ellipse	\N	\N
117	FL-DUR-MS	1	81	1	Flash duration in milliseconds	\N	\N
119	CONCENTAIR	1	26	1	concentration dans l'air de polluant 	\N	\N
120	RAIN12	1	18	1	Total Precipitation over the last 12 hours	\N	\N
121	RAIN_6	1	18	1	Total Precipitation over the last 6 hours	\N	\N
122	TMAX-C	1	58	1	Maximum Temperature in Celsius	\N	\N
123	TMIN-C	1	58	1	Minimum Temperature in Celsius	\N	\N
124	TG-C	1	58	1	Ground Temperature in Celcius	\N	\N
125	TANM-C	1	58	1	Temperature Anomaly in Celsius	\N	\N
126	WWTAF-N	1	30	1	TAF Weather Symbol	\N	\N
127	CB-PRCNT	1	6	1	CB Cloud cover in %	\N	\N
1169	PROB-LVP-1	1	6	1	Probability of Low Visibility Procedures	\N	\N
129	CL2-PRCNT	1	6	1	2. Cloud Cover in %	\N	\N
130	HAKECODE-N	1	69	1	Emergency center task code	\N	\N
131	CL3-PRCNT	1	6	1	3. Cloud Cover in %	\N	\N
132	FRVEL-MS	1	2	1	Friction velocity	\N	\N
133	CL4-PRCNT	1	6	1	4. Cloud Cover in %	\N	\N
134	CL1-PRCNT	1	6	1	1. Cloud Cover in %	\N	\N
135	RDIFSW-WM2	1	12	1	Diffuse shortwave radiation	\N	\N
136	CB-M	1	2	1	CB Cloud Height in Meters	\N	\N
1027	TF-C	1	58	1	Frost point temperature in celsius	\N	\N
138	Q-KGKG	1	17	1	Specific Humidity in kg/kg	\N	\N
139	P-PA	1	7	1	Pressure in Pascals	\N	\N
694	CL-FT	1	82	1	Height of cloud layer in feet	\N	\N
695	PRI-KGM2	1	32	1	Instant precipitation in kg/m2	\N	\N
342	F90-RR-6-MM	1	18	1	90th fractal precipitation in EPS	postgres	2016-08-31 06:01:08
143	LC-0TO1	1	62	1	Land Cover, 1=land, 0=sea	\N	\N
144	VV-HPAS	1	61	1	Vertical Velocity in hPa/s	\N	\N
145	PTD-N	1	30	1	Pressure Tendency)	\N	\N
146	SR-M	1	2	1	Surface Roughness in Meters	\N	\N
147	SM-KGM2	1	18	1	Soil Moisture Content in Kg per square meter	\N	\N
148	IC-0TO1	1	62	1	Ice Cover, 1=ice, 0=no ice	\N	\N
149	FC-0TO1	1	62	1	Forest Cover, 1=Forest, 0=No Forest	\N	\N
343	F75-RR-6-MM	1	18	1	75th fractal precipitation in EPS	postgres	2016-08-31 06:01:08
756	CSNOW-0OR1	1	28	2	Precipitation type categorical snow, 0 or 1	\N	\N
152	VS_MS	1	15	1	Speed of the Ship in Meters per Second	\N	\N
153	T-K	1	3	1	Temperature in Kelvins	\N	\N
154	T-C	1	58	1	Temperature in Celsius	\N	\N
1030	FFG2-MS	1	15	1	Instantaneous Wind Speed in m/s, himan version	\N	\N
156	PD-PA	1	7	1	Pressure Delta in Pascals)	\N	\N
344	F50-RR-6-MM	1	18	1	50th fractal precipitation in EPS	postgres	2016-08-31 06:01:08
158	Z-M2S2	1	13	1	Geopotential	\N	\N
159	TPW-K	1	3	1	Pseudoadiabatic potential temperature in K	\N	\N
160	TD-C10	1	51	1	Dew point Temperature in 10ths of C	\N	\N
161	TD-C	1	58	1	Dew point Temperature in C	\N	\N
162	TD-K	1	3	1	Dew point Temperature in K	\N	\N
163	RH-PRCNT	1	6	1	Relative Humidity in percents	\N	\N
1228	SNOWLOAD-KGM2	1	18	1	Snow load	\N	\N
345	F25-RR-6-MM	1	18	1	25th fractal precipitation in EPS	postgres	2016-08-31 06:01:08
166	FF-MS	1	15	1	Wind speed in m/s	\N	\N
771	TSOIL-K	1	3	1	Soil temperature in Kelvins	\N	\N
1089	EL-LAST-K	1	3	1	Temperature of last found EL in K	\N	\N
169	DD-D	1	5	1	Wind Direction in Degrees	\N	\N
1229	SOT-RR-N	1	69	2	Shift Of Tails for precipitation	\N	\N
175	VV-MMS	1	53	1	Vertical Velocity in mm/s	\N	\N
176	VV-CBS	1	56	1	Vertical Velocity in cb/s	\N	\N
177	VV-PAS	1	27	1	Vertical Velocity in pa/s	\N	\N
178	RR-MM10	1	60	1	Total precipitation	\N	\N
179	RR-KGM2	1	18	1	Total precipitation in kg/m2	\N	\N
180	RRSYM2-N	1	30	1	Rain Symbol 2	\N	\N
181	RR-6-MM	1	60	1	Rain over the last 6 hours in mm	\N	\N
182	RR-12-MM	1	60	1	Rain over the last 12 hours in mm	\N	\N
183	RRL-MM10	1	54	1	Large Scale precipitation in 10ths of mm	\N	\N
184	RRL-KGM2	1	18	1	Large Scale precipitation in kg/m2	\N	\N
185	RRC-MM10	1	54	1	Convective precipitation in 10ths of mm	\N	\N
186	RRC-KGM2	1	18	1	Convective precipitation in kg/m2	\N	\N
187	N-PRCNT	1	6	1	Total Cloud Cover in %	\N	\N
188	KINDEX-N	1	30	1	Stability index (-50 -> 50)	\N	\N
118	FFWARN-N	1	30	2	Forest fire warning: 0-no, 1-grass, 2-forest1	wetodb	2018-11-26 06:22:54
1028	FFG-MEAN-MS	1	15	1	Mean wind gust	\N	\N
346	F10-RR-6-MM	1	18	1	10th fractal precipitation in EPS	postgres	2016-08-31 06:01:08
191	RRL-M	1	2	1	Precipitation Large Scale in m	\N	\N
192	RRC-M	1	2	1	Precipitation Convective in m	\N	\N
193	RRS-M	1	2	1	Precipitation Snow in meters	\N	\N
194	LNSP-N	1	30	1	Log Surface Pressure	\N	\N
195	ZH-GPM	1	8	1	Geopotential Height	\N	\N
196	NL-PRCNT	1	6	1	Low Cloud Amount	\N	\N
197	NM-PRCNT	1	6	1	Medium Cloud Amount	\N	\N
198	NH-PRCNT	1	6	1	High Cloud Amount	\N	\N
199	ALBEDO-PRCNT	1	6	1	ALBEDO in %	\N	\N
200	RRRL-KGM2	1	32	1	Large Scale Precipitation rate in kg m-2	\N	\N
201	RRRC-KGM2	1	32	1	Convective Precipitation rate in kg m-2	\N	\N
202	ABSVO-HZ-5	1	57	1	Absolute Vorticity in HZ/10000	\N	\N
203	ABSVO-HZ	1	11	1	Absolute Vorticity in HZ	\N	\N
204	FRNTSYM-N	1	30	1	Front Symbol	\N	\N
1170	PM25-UGM3	1	65	1	PM25 concentration	\N	\N
1230	SOT-WG-N	1	69	2	Shift Of Tails for wind gusts	\N	\N
973	NM-0TO1	1	28	1	Middle Cloud Amount	wetodb	2019-03-26 06:06:51
209	H-M	1	2	1	Cloud Height in  Meters	\N	\N
210	CL-N	1	30	1	Low Cloud Type	\N	\N
211	CM-N	1	30	1	Medium Cloud Type	\N	\N
212	CH-N	1	30	1	High Cloud Type	\N	\N
213	RRT-S	1	4	1	Period of Rain Amount in Seconds	\N	\N
214	TMAX-K	1	3	1	Maximum Temperature in Kelvins	\N	\N
215	TMIN-K	1	3	1	Maximum Temperature in Kelvins	\N	\N
216	TG-K	1	3	1	Ground Temperature in Kelvins	\N	\N
217	SD-M	1	2	1	Snow Depth in Meters	\N	\N
218	SKT-K	1	3	1	Skin temperature	\N	\N
219	LR-KM	1	14	1	Lapse rate K/m	\N	\N
220	CLDTOP-M	1	2	1	Height of cloud top	\N	\N
221	SNL-KGM2	1	18	1	Large scale snow accumulation in kg/m2	\N	\N
222	SNC-KGM2	1	18	1	Convective snow accumulation in kg/m2	\N	\N
223	SNRL-KGM2	1	19	1	Large scale snowfall rate in mm/h	\N	\N
224	SNRC-KGM2	1	19	1	Convective snowfall rate in mm/h	\N	\N
225	PROB-WG-4	1	6	1	Probability of reaching wind gust speed of 30 m/s in EPS	\N	\N
226	PROB-WG-5	1	6	1	Probability of reaching wind gust speed of 35 m/s in EPS	\N	\N
227	PROB-W-3	1	6	1	Probability of reaching wind speed of 17 m/s in EPS	\N	\N
228	PROB-W-4	1	6	1	Probability of reaching wind speed of 21 m/s in EPS	\N	\N
229	PROB-W-5	1	6	1	Probability of reaching wind speed of 25 m/s in EPS	\N	\N
230	PROB-W-6	1	6	1	Probability of reaching wind speed of 30 m/s in EPS	\N	\N
231	PROB-TW-1	1	6	1	Probability of reaching temperature 25 C in EPS	\N	\N
232	PROB-TW-2	1	6	1	Probability of reaching temperature 27 C in EPS	\N	\N
233	PROB-TW-3	1	6	1	Probability of reaching temperature 30 C in EPS	\N	\N
234	PROB-CAPE-1	1	6	1	Probability of reaching CAPE value 50 in EPS	\N	\N
235	PROB-CAPE-2	1	6	1	Probability of reaching CAPE value 500 in EPS	\N	\N
236	PROB-CAPE-3	1	6	1	Probability of reaching CAPE value 1000 in EPS	\N	\N
237	PROB-CAPE-4	1	6	1	Probability of reaching CAPE value 1500 in EPS	\N	\N
238	PROB-RR24-1	1	6	1	Probability of reaching precipitation 30 mm in 24 h in EPS	\N	\N
239	PROB-RR24-2	1	6	1	Probability of reaching precipitation 60 mm in 24 h in EPS	\N	\N
240	PROB-RR24-3	1	6	1	Probability of reaching precipitation 120 mm in 24 h in EPS	\N	\N
241	PROB-RR24-4	1	6	1	Probability of reaching precipitation 70 mm in 24 h in EPS	\N	\N
242	PROB-RR24-5	1	6	1	Probability of reaching precipitation 120 mm in 24 h in EPS	\N	\N
243	PROB-SN-1	1	6	1	Probability of reaching snowfall 1 mm in 6 h in EPS	\N	\N
244	PROB-SN-2	1	6	1	Probability of reaching snowfall 5 mm in 6 h in EPS	\N	\N
245	PROB-SN-3	1	6	1	Probability of reaching snowfall 10 mm in 6 h in EPS	\N	\N
246	PROB-SN-4	1	6	1	Probability of reaching snowfall 15 mm in 6 h in EPS	\N	\N
247	PROB-SN-5	1	6	1	Probability of reaching snowfall 30 mm in 6 h in EPS	\N	\N
248	PROB-SN-6	1	6	1	Probability of reaching snowfall 50 mm in 6 h in EPS	\N	\N
249	PROB-SN24-1	1	6	1	Probability of reaching snowfall 1 mm in 24 h in EPS	\N	\N
250	PROB-SN24-2	1	6	1	Probability of reaching snowfall 5 mm in 24 h in EPS	\N	\N
251	PROB-SN24-3	1	6	1	Probability of reaching snowfall 10 mm in 24 h in EPS	\N	\N
252	PROB-SN24-4	1	6	1	Probability of reaching snowfall 15 mm in 24 h in EPS	\N	\N
253	PROB-SN24-5	1	6	1	Probability of reaching snowfall 30 mm in 24 h in EPS	\N	\N
254	PROB-SN24-6	1	6	1	Probability of reaching snowfall 50 mm in 24 h in EPS	\N	\N
1171	EHLCY-M2S2	1	13	1	Effective storm relative helicity	\N	\N
1172	IRIDGE-CM	1	63	1	Ice ridge thickness	\N	\N
257	PROB-TC-1	1	6	1	Probability of reaching -15 C in EPS	\N	\N
258	PROB-TC-2	1	6	1	Probability of reaching -20 C in EPS	\N	\N
259	PROB-TC-3	1	6	1	Probability of reaching -25 C in EPS	\N	\N
260	PROB-TC-4	1	6	1	Probability of reaching -30 C in EPS	\N	\N
261	RR-AVE6-MM	1	60	1	Average precipitation 6 hours in EPS	\N	\N
262	SN-AVE6-MM	1	60	1	Average snow fall 6 hours in EPS	\N	\N
263	PROB-RR24-6	1	6	1	Probability of reaching precipitation 1 mm in 24 h in EPS	\N	\N
264	PROB-RR24-7	1	6	1	Probability of reaching precipitation 5 mm in 24 h in EPS	\N	\N
265	PROB-RR12-1	1	6	1	Probability of reaching precipitation 0.3 mm in 12 h in EPS	\N	\N
266	PROB-RR12-2	1	6	1	Probability of reaching precipitation 4.5 mm in 12 h in EPS	\N	\N
267	PROB-RR12-3	1	6	1	Probability of reaching precipitation 12 mm in 12 h in EPS	\N	\N
268	NC-PRCNT	1	6	1	Convective Cloud Amount	\N	\N
269	SAL-PSU	1	86	1	Sea water salinity in psu	\N	\N
270	SDEP-M	1	2	1	Snow depth in m for Hirlam Models	\N	\N
271	SDEPOP-M	1	2	1	Snow depth in m on open land	\N	\N
272	CTBT-K	1	3	1	Cloud top brightness temperature (IR)	\N	\N
273	WVBT-K	1	3	1	Water vapour brightness temperature	\N	\N
274	WVBTCC-K	1	3	1	Water vapour brightness temperature including cloud correction	\N	\N
275	CWR-0TO1	1	62	1	Cloud water reflectivity	\N	\N
276	CLDBASE-M	1	2	1	Cloud base height	\N	\N
278	IVELU-MS	1	15	1	Sea ice velocity (U) in m/s	\N	\N
279	IVELV-MS	1	15	1	Sea ice velocity (V) in m/s	\N	\N
280	IRAFTTHK-CM	1	63	1	Rafted sea ice mean thickness	\N	\N
281	T1DER-C	1	58	1	Road Temperature Derivative Sensor 1	\N	\N
282	T2DER-C	1	58	1	Road Temperature Derivative Sensor 2	\N	\N
283	FRPT1-C	1	58	1	Freezing Point Sensor 1	\N	\N
284	FRPT2-C	1	58	1	Freezing Point Sensor 2	\N	\N
285	ROADWARN1-N	1	30	1	Road Warning 1	\N	\N
286	ROADWARN2-N	1	30	1	Road Warning 2	\N	\N
287	ROADWARN3-N	1	30	1	Road Warning 3	\N	\N
288	DPDEF-C	1	58	1	Dew Point Deficit	\N	\N
289	CONDTY1-V	1	40	1	Conductivity Sensor 1	\N	\N
290	CONDTY2-V	1	40	1	Conductivity Sensor 2	\N	\N
291	SENSFT-N	1	30	1	Sensor Fault	\N	\N
292	SALT1-GM2	1	84	1	Salt Content grams per m2 Sensor 1	\N	\N
293	SALT2-GM2	1	84	1	Salt Content grams per m2 Sensor 2	\N	\N
294	SALT1-GL	1	85	1	Salt Concentration grams per litre Sensor 1	\N	\N
295	SALT2-GL	1	85	1	Salt Concentration grams per litre Sensor 2	\N	\N
296	ROADST3-N	1	30	1	Road Status 3	\N	\N
297	FRICTION-N	1	30	1	Friction Coefficient	\N	\N
298	WATERLR-MM	1	60	1	Water Content in mm	\N	\N
299	SNOWLR-MM	1	60	1	Snow Content in mm	\N	\N
300	ICELR-MM	1	60	1	Ice Content in mm	\N	\N
301	RDIDX-CO-N	1	69	1	Road Condition Index, County average	\N	\N
302	PROB-TC-0	1	6	1	Probability of frost	\N	\N
303	WVELU-MS	1	15	1	Sea water velocity (U) in m/s	\N	\N
304	WVELV-MS	1	15	1	Sea water velocity (V) in m/s	\N	\N
305	WVELW-MS	1	15	1	Sea water velocity (W) in m/s	\N	\N
306	IRCNCT-PRCNT	1	6	1	Rafted sea ice concentration	\N	\N
307	IRIDGC-PRCNT	1	6	1	Ice concentration of ridging	\N	\N
308	IFF-MS	1	15	1	Ice speed in m/s	\N	\N
309	IDD-D	1	15	1	Ice Direction in Degrees	\N	\N
310	SFF-MS	1	15	1	Sea water speed in m/s	\N	\N
311	SDD-D	1	15	1	Sea water Direction in Degrees	\N	\N
312	IMEANTHK-CM	1	63	1	Ice mean thickness	\N	\N
313	TP-K	1	3	1	Potential temperature	\N	\N
314	RNETSWA-JM2	1	83	1	Net short wave radiation accumulation	\N	\N
315	RDIFSWA-JM2	1	83	1	Diffuse shortwave radiation accumulation	\N	\N
316	RNETLWA-JM2	1	83	1	Net long wave radiation accumulation	\N	\N
317	RADLWA-JM2	1	83	1	Long wave radiation accumulation	\N	\N
318	RADGLOA-JM2	1	83	1	Global radiation accumulation	\N	\N
319	RTOPSWA-JM2	1	83	1	Net short wave radiation accumulation, top of atmosphere	\N	\N
320	RTOPLWA-JM2	1	83	1	Net long wave radiation accumulation, top of atmosphere	\N	\N
321	RRH-KGM2	1	18	1	Total hail precipitation in kg/m2	\N	\N
1232	EFI-WG--1TO1	1	90	2	Extreme Forecast Index for wind gusts	\N	\N
323	SNRI-KGM2	1	32	1	Instant snowfall rate in mm/s or mm/h	\N	\N
324	RRI-KGM2	1	32	1	Instant rain in kg/m2	\N	\N
325	RRS-KGM2	1	18	1	Solid precipitation (f.ex. snow+graupel)	\N	\N
326	RRRS-KGM2	1	18	1	Solid precipitation rate (f.ex. snow+graupel)	\N	\N
327	SI-N	1	20	1	Showalter index	\N	\N
328	GRI-KGM2	1	32	1	Instant graupel in kg/m2	\N	\N
329	TPE-K	1	3	1	Equivalent potential temperature in K	\N	\N
330	LI-N	1	20	1	Lifted index	\N	\N
331	CTI-N	1	20	1	Cross totals index	\N	\N
332	VTI-N	1	20	1	Vertical totals index	\N	\N
333	TTI-N	1	20	1	Total totals index	\N	\N
334	F0-T-K	1	3	1	0th fractal (ie. minimum) temperature in EPS	\N	\N
335	F10-T-K	1	3	1	10th fractal temperature in EPS	\N	\N
336	F25-T-K	1	3	1	25th fractal temperature in EPS	\N	\N
337	F50-T-K	1	3	1	50th fractal temperature in EPS	\N	\N
338	F75-T-K	1	3	1	75th fractal temperature in EPS	\N	\N
339	F90-T-K	1	3	1	90th fractal temperature in EPS	\N	\N
340	F100-T-K	1	3	1	100th fractal (ie. maximum) temperature in EPS	\N	\N
764	SN-6-MM	1	60	2	Snow fall over the last 6 hours water equivalent	\N	\N
765	SN-12-MM	1	60	2	Snow fall over the last 12 hours water equivalent	\N	\N
766	SN-24-MM	1	60	2	Snow fall over the last 24 hours water equivalent	\N	\N
772	FRSB-CM	1	63	1	Frost soil bottom in centimeters	\N	\N
386	CAPE3KM-JKG	1	77	1	Convective available potential energy, value of CAPE between 0 .. 3km	postgres	2016-09-22 15:51:19
773	FRST-CM	1	63	1	Frost soil top in centimeters	\N	\N
348	F100-N-0TO1	1	62	1	100th fractal cloudiness in EPS	\N	\N
349	F90-N-0TO1	1	62	1	90th fractal cloudiness in EPS	\N	\N
350	F75-N-0TO1	1	62	1	75th fractal cloudiness in EPS	\N	\N
351	F50-N-0TO1	1	62	1	50th fractal cloudiness in EPS	\N	\N
352	F25-N-0TO1	1	62	1	25th fractal cloudiness in EPS	\N	\N
353	F10-N-0TO1	1	62	1	10th fractal cloudiness in EPS	\N	\N
354	F0-N-0TO1	1	62	1	0th fractal cloudiness in EPS	\N	\N
355	F100-FFG-MS	1	15	1	100th fractal wind gust speed in EPS	\N	\N
356	F90-FFG-MS	1	15	1	90th fractal wind gust speed in EPS	\N	\N
357	F75-FFG-MS	1	15	1	75th fractal wind gust speed in EPS	\N	\N
358	F50-FFG-MS	1	15	1	50th fractal wind gust speed in EPS	\N	\N
359	F25-FFG-MS	1	15	1	25th fractal wind gust speed in EPS	\N	\N
360	F10-FFG-MS	1	15	1	10th fractal wind gust speed in EPS	\N	\N
361	F0-FFG-MS	1	15	1	0th fractal wind gust speed in EPS	\N	\N
362	F100-FF-MS	1	15	1	100th fractal wind speed in EPS	\N	\N
363	F90-FF-MS	1	15	1	90th fractal wind speed in EPS	\N	\N
277	MAXICE-N	1	2	2	Maximum icing index, 1-4	wetodb	2018-11-26 06:22:54
364	F75-FF-MS	1	15	1	75th fractal wind speed in EPS	\N	\N
365	F50-FF-MS	1	15	1	50th fractal wind speed in EPS	\N	\N
366	F25-FF-MS	1	15	1	25th fractal wind speed in EPS	\N	\N
367	F10-FF-MS	1	15	1	10th fractal wind speed in EPS	\N	\N
368	F0-FF-MS	1	15	1	0th fractal wind speed in EPS	\N	\N
369	RHO-KGM3	1	87	1	Density of dry air in Kg m-3	\N	\N
370	ABSH-KGM3	1	87	1	Absolute humidity, kg/m^3	\N	\N
371	RSI-KGM2	1	32	1	Instant solid precipitation (snow+graupel) in kg/m2	\N	\N
372	LCL-HPA	1	21	1	Height of LCL in hPa	\N	\N
373	LFC-HPA	1	21	1	Height of LFC in hPa	\N	\N
374	EL-HPA	1	21	1	Height of EL in hPa	\N	\N
375	LCL-M	1	2	1	Height of LCL in meters	\N	\N
376	LFC-M	1	2	1	Height of LFC in meters	\N	\N
377	EL-M	1	2	1	Height of EL in meters	\N	\N
775	LSRH-N	1	30	1	Logarithm of Surface Roughness (heat)	\N	\N
714	TOPL2-N	1	69	1	TopLink aviation weather index 2	\N	\N
715	TOPL3-N	1	69	1	TopLink aviation weather index 3	\N	\N
776	F20-FRST-CM	1	63	1	20th fractal frost top depth	\N	\N
777	F80-FRST-CM	1	63	1	80th fractal frost top depth	\N	\N
716	HICE-M	1	2	1	Sea-ice thickness	\N	\N
717	SSH-M	1	2	1	Sea surface elevation	\N	\N
778	F20-FRSB-CM	1	63	1	20th fractal frost bottom depth	\N	\N
779	F80-FRSB-CM	1	63	1	80th fractal frost bottom depth	\N	\N
780	MEAN-FRST-CM	1	63	1	Mean frost top depth	\N	\N
1029	FFG-STDDEV-MS	1	15	1	Standard deviation of wind gust	\N	\N
718	HSNOW-M	1	2	1	Surface snow thickness	\N	\N
1058	TMIN12H-C	1	58	1	Minimum temperature from the preceeding 12 hours in Celsius	\N	\N
781	MEAN-FRSB-CM	1	63	1	Mean frost bottom depth	\N	\N
719	BLTURB-N	1	64	2	Boundary layer turbulence, values ranging from 0 to 5	postgres	2015-11-20 09:23:09
750	POP-PRCNT	1	6	1	Probability of precipitation	\N	\N
749	ICETYPE-N	1	69	1	Ice type	\N	\N
347	F0-RR-6-MM	1	18	1	0th fractal precipitation in EPS	postgres	2016-08-31 06:01:08
757	F0-CAPE-JKG	1	77	1	0th fractal (ie. minimum) CAPE in EPS	\N	\N
758	F10-CAPE-JKG	1	77	1	10th fractal CAPE in EPS	\N	\N
1173	ICEDEFR-0TO1	1	62	1	Ice deformation fraction	\N	\N
1174	RRS-3-MM	1	60	1	Solid precipitation over the last 3 hours water equivalent	\N	\N
1175	ITHKLVL-CM	1	63	1	Thickness of "level ice", ie. ice that is not deformed	\N	\N
774	VV2-M	1	2	1	Visibility in meters, himan version	wetodb	2017-11-26 07:43:58
1233	EFI-RR--1TO1	1	90	2	Extreme Forecast Index for precipitation	\N	\N
405	SSICING-N	1	64	1	Sea spray icing for major oceans	\N	\N
1235	F0-SNOWLOAD-KGM2	1	18	1	0th fractal snowload in EPS	\N	\N
407	MOL-M	1	2	1	Inverse of Monin-Obukhov length, i.e. 1/L in m-1	\N	\N
408	FX-MS	1	15	1	Maximum Wind Speed in m/s	\N	\N
409	RRT-H	1	59	1	Period of Rain Amount in Hours	\N	\N
410	DS-D	1	5	1	Direction of the Ship in Degrees	\N	\N
411	FFG-MS	1	15	1	Instantaneous Wind Speed in m/s	\N	\N
412	P-HPA	1	21	1	Pressure in hPa	\N	\N
1236	F10-SNOWLOAD-KGM2	1	18	1	10th fractal snowload in EPS	\N	\N
414	TD2M-C	1	58	1	Dew Point Temperature at 2m in Celsius	\N	\N
415	RRON-N	1	30	1	Rain On or Off	\N	\N
416	SSON-N	1	30	1	SunShine On or Off	\N	\N
417	RRL-MM	1	60	1	Precipitation Large Scale in mm	\N	\N
418	RAD-WM2	1	12	1	Radiation amount on Watts per Square Meter	\N	\N
419	N-N	1	64	1	Total Cloud Cover in 1/8ths	\N	\N
420	NH-N	1	64	1	Amount of The Lowest Clouds in 1/8ths	\N	\N
421	HL-M	1	2	1	Height of level in meters	\N	\N
422	NO2-UGM3	1	65	1	Contents of Nitrogen Dioxide	\N	\N
423	CO-MGM3	1	66	1	Contents of Carbon Monoxide	\N	\N
424	SO2-UGM3	1	65	1	Contents of Sulphur Dioxide	\N	\N
425	AQI-N	1	30	1	FMI Air Quality Index	\N	\N
426	VV-M	1	2	1	Visibility in Meters	\N	\N
782	PROB-RAIN	1	28	1	Probability of precipitation form rain	\N	\N
428	SUN-N	1	28	1	Sun on/off	\N	\N
1031	FF-MEAN-MS	1	15	1	Mean wind speed	\N	\N
1032	PROB-TW-4	1	6	1	Probability of reaching temperature 35 C in EPS	\N	\N
431	TSEA-K	1	3	1	Sea Temperature in Kelvins	\N	\N
432	TSEA-C	1	58	1	Sea Temperature in Celsius	\N	\N
433	RADR-WM2	1	12	1	Reflected Radiation in Watts per Square Meter	\N	\N
434	PD-HPA	1	21	1	Pressure Delta in hPa	\N	\N
759	F25-CAPE-JKG	1	77	1	25th fractal CAPE in EPS	\N	\N
760	F50-CAPE-JKG	1	77	1	50th fractal CAPE in EPS	\N	\N
437	RR-24-MM	1	60	1	Rain over the last 24 hours in mm	\N	\N
438	N-0TO1	1	62	1	Cloudiness 0...1	\N	\N
1176	F10-TD-K	1	3	1	10th fractal dewpoint temperature in EPS	\N	\N
441	RRR-KGM2	1	32	1	Total Precipitation rate in kg m-2	\N	\N
442	DF-MS	1	15	1	Wind Vector in m/s	\N	\N
443	SMOGI-N	1	30	1	Calculated smog appearance	\N	\N
444	BATT-V	1	40	1	Battery Voltage (at automatic stations)	\N	\N
445	FCUR-MS	1	15	1	Current speed in m/s	\N	\N
446	DCUR-D	1	5	1	Current direction in degrees	\N	\N
447	HWS-M	1	2	1	Significant wave height in m	\N	\N
448	PWS-S	1	4	1	Peak wave period in s	\N	\N
761	F75-CAPE-JKG	1	77	1	75th fractal CAPE in EPS	\N	\N
762	F90-CAPE-JKG	1	77	1	90th fractal CAPE in EPS	\N	\N
763	F100-CAPE-JKG	1	77	1	100th fractal (ie. maximum) CAPE in EPS	\N	\N
783	PROB-SNOW	1	28	1	Probability of precipitation form snow	\N	\N
784	PROB-SLEET	1	28	1	Probability of precipitation form sleet	\N	\N
785	PROB-DRIZZLE	1	28	1	Probability of precipitation form drizzle	\N	\N
786	PROB-FRDRZZL	1	28	1	Probability of precipitation form freezing drizzle	\N	\N
971	P-N	1	69	2	Pressure code	\N	\N
999	ENSMEMB-N	1	69	2	Available ensemble member count	\N	\N
449	DW-D	1	5	1	Mean wave direction at spectral peak in degrees	\N	\N
450	SPREAD-D	1	5	1	Directional spread at spectral peak in degrees	\N	\N
451	HMAX-M	1	2	1	Maximum wave height in m	\N	\N
452	PWMAX-S	1	4	1	Period of highest wave in s	\N	\N
453	PW-S	1	4	1	Wave period in s	\N	\N
454	HWS-B-M	1	2	1	Significant wave height, band B, in m	\N	\N
455	PWS-BAVE-S	1	4	1	Average wave period, band B, in s	\N	\N
456	DW-BAVE-D	1	5	1	Average wave direction, band B, in degrees	\N	\N
457	HWS-C-M	1	2	1	Significant wave height, band C, in m	\N	\N
458	PWS-CAVE-S	1	4	1	Average wave period, band C, in s	\N	\N
459	DW-CAVE-D	1	5	1	Average wave direction, band C, in degrees	\N	\N
460	UI-N	1	30	1	Unidirectivity index	\N	\N
1204	CAPES-JKG	1	77	1	Convective available potential energy shear	\N	\N
462	LWS-M	1	4	1	Significant wave length in m	\N	\N
463	FL-STRTH-KA	1	67	1	Streght Of The Flash In KiloAmperes	\N	\N
464	FL-ACCSY-KM	1	68	1	Accuracy Of The Flash In Kilometers	\N	\N
465	RADPAR-N	1	69	1	Parameter needed to contain radar parameter number	\N	\N
466	RADLEVT-N	1	69	1	Parameter needed to contain radar level type	\N	\N
467	ELVANG-D	1	5	1	Elevation angle in degrees	\N	\N
468	CAPPIHGT-M	1	2	1	Height of CAPPI level	\N	\N
469	SW0WH-M	1	2	1	Significant Wave Height of Swell 0 in Meters	\N	\N
470	SW0WPER-S	1	4	1	Significant Wave Period of Swell 0 in seconds	\N	\N
1049	LHE-WM2	1	12	1	Latent heat flux through evaporation	\N	\N
472	SW1WH-M	1	2	1	Significant Wave Height of Swell 1 in Meters	\N	\N
473	SW1WPER-S	1	4	1	Significant Wave Period of Swell 1 in seconds	\N	\N
1050	PROB-WATLEV-LOW-1	1	6	1	Probability of water level being lower than given threshold	\N	\N
475	SW2WH-M	1	2	1	Significant Wave Height of Swell 2 in Meters	\N	\N
476	SW2WPER-S	1	4	1	Significant Wave Period of Swell 2 in seconds	\N	\N
1060	FFG3H-MS	1	15	1	Wind gust speed in m/s, three hour period	\N	\N
478	RADIUS-KM	1	68	1	Radar product radius in km	\N	\N
479	MAXHGT-KM	1	68	1	Maximum height of a layer	\N	\N
480	METCODE-N	1	69	1	Code number of the forecaster	\N	\N
481	MINELEV-D	1	5	1	Layer between two elevation angles	\N	\N
482	ACCTIM-H	1	59	1	Accumulation time in hours	\N	\N
483	MINDBZ	1	70	1	Threshold dBZ-value	\N	\N
484	MINRNG-KM	1	68	1	Minimum range	\N	\N
485	MAXRNG-KM	1	68	1	Maximum range	\N	\N
486	COLNUM-N	1	69	1	Number of columns	\N	\N
487	ROWNUM-N	1	69	1	Number of rows	\N	\N
488	HORRESOL-M	1	2	1	Horizontal resolution	\N	\N
489	ZRESOL	1	2	1	Vertical resolution	\N	\N
490	REFLTY-DBZ	1	70	1	Clutter corrected ceflectivity	\N	\N
491	TOPS-KM	1	68	1	Echo top	\N	\N
492	LIQUID-MM	1	60	1	Rainfall depth	\N	\N
493	RAW	1	69	1	Raw radar data	\N	\N
494	RADWIND-MS	1	15	1	Wind in the direction of the radar beam	\N	\N
495	MINHGT-KM	1	68	1	Minimum height of a layer	\N	\N
496	MAXELEV-D	1	5	1	Layer between two elevation angles	\N	\N
497	AZANG-D	1	5	1	Cross section direction	\N	\N
498	RNETSW-WM2	1	12	1	Net short wave radiation	\N	\N
499	RNETLW-WM2	1	12	1	Net long wave radiation	\N	\N
500	RADLW-WM2	1	12	1	Long wave radiation	\N	\N
501	RADSW-WM2	1	12	1	Short wave radiation	\N	\N
502	RADGLO-WM2	1	12	1	Global radiation	\N	\N
1033	FOGINT-N	1	30	2	Fog intensity from 0..2	\N	\N
504	RR-1-MM	1	60	1	Rain over the last 1 hour in mm	\N	\N
505	RR-2-MM	1	60	1	Rain over the last 2 hours in mm	\N	\N
506	RR-3-MM	1	60	1	Rain over the last 3 hours in mm	\N	\N
507	TMAX-24-C	1	58	1	Max temperature in Celsius on the preceding 24 hours period of the date-value	\N	\N
508	TMIN-24-C	1	58	1	Min temperature in Celsius on the preceding 24 hours period of the date-value	\N	\N
509	SNR-KGM2	1	32	1	Snowfall rate in mm/s or mm/h	\N	\N
510	SNACC-KGM2	1	18	1	Snowfall accumulation  in mm	\N	\N
511	URLAT-D	1	5	1	Additional latitude information	\N	\N
512	URLON-D	1	5	1	Additional longitude information	\N	\N
513	PROJID-N	1	30	1	Projection type information	\N	\N
514	GRORIENT-D	1	5	1	Grid orientation	\N	\N
379	CAPE1040-JKG	1	77	1	Convective available potential energy, value of parameter when -40C < T < -10C	postgres	2016-09-22 15:53:04
787	PROB-FRRAIN	1	28	1	Probability of precipitation form freezing rain	\N	\N
788	F99-T-K	1	3	1	99th fractal temperature in EPS	\N	\N
518	TSOIL-C	1	58	1	Soil temperature in Celcius	\N	\N
519	TSOILD-C	1	58	1	Deep soil temperature in Celcius	\N	\N
520	WETSSOIL-M	1	2	1	Surface soil wetness in m	\N	\N
521	MOISTS-M	1	2	1	Soil moisture content in m	\N	\N
522	MOISTSD-M	1	2	1	Deep soil moisture content in m	\N	\N
523	VV-MS	1	15	1	Vertical Velocity in m/s	\N	\N
471	SW0WDIR-D	1	5	1	Direction of Waves of Swell 0 in degrees	postgres	2017-04-18 08:12:24
525	MODLEV-N	1	69	1	Model level number	\N	\N
526	STGR-N	1	69	1	State of ground, code number	\N	\N
528	SD06-CM	1	63	1	Snow depth at 06 UTC in cm	\N	\N
529	SD18-CM	1	63	1	Snow depth at 06 UTC in cm	\N	\N
530	DT-C	1	58	1	Daily mean temperature in Celcius	\N	\N
531	TMIN06-C	1	58	1	Minimum temperature at 06 UTC in celcius	\N	\N
532	TMAX06-C	1	58	1	Maximum temperature at 06 UTC in celcius	\N	\N
533	TGMIN06-C	1	58	1	Minimum temperature at ground at 06 UTC in celcius	\N	\N
534	TMIN18-C	1	58	1	Minimum temperature at 18 UTC in celcius	\N	\N
535	TMAX18-C	1	58	1	Maximum temperature at 18 UTC in celcius	\N	\N
536	MT-C	1	58	1	Monthly mean temperature in Celcius	\N	\N
537	MRR-KGM2	1	18	1	Monthly precipitation in mm	\N	\N
538	DSUN-H	1	59	1	Daily sunshine hours	\N	\N
539	DRADG-KJM2	1	71	1	Daily global radiation in kJ m-2	\N	\N
540	DRADD-KJM2	1	71	1	Daily diffuse radiation in kJ m-2	\N	\N
541	DRADR-KJM2	1	71	1	Daily reflected radiation in kJ m-2	\N	\N
542	DRADN-KJM2	1	71	1	Daily net radiation in kJ m-2	\N	\N
543	DRRIND-N	1	69	1	Daily precipitation indicator (reliability)	\N	\N
544	TOZONE-DU	1	72	1	Total ozone in Dobson units	\N	\N
545	DUV-MED	1	73	1	Daily UV irradiance in skin sensibility units	\N	\N
546	DUVMAX-MEDH	1	74	1	Maximum intensity of UV irradiance	\N	\N
547	DUVMAX-HM	1	75	1	Hour and minute of Maximum intensity of UV	\N	\N
548	HSUN-N	1	69	1	Sunshine during an hour in 6 min units	\N	\N
549	HRADG-KJM2	1	71	1	Hourly global radiation in kJ m-2	\N	\N
550	HRADD-KJM2	1	71	1	Hourly diffuse radiation in kJ m-2	\N	\N
551	HRADR-KJM2	1	71	1	Hourly reflected radiation in kJ m-2	\N	\N
552	HRADN-KJM2	1	71	1	Hourly net radiation in kJ m-2	\N	\N
553	RR3160-KGM2	1	18	1	Monthly mean precipitation for period 1931-60	\N	\N
554	H0C-M	1	2	1	Height of 0 C level in meters	\N	\N
555	FLMOM-PA	1	7	1	Scalar momentum flux in Pa	\N	\N
556	ICEIND-N	1	64	1	Indicator of icing risk for ships	\N	\N
1237	F25-SNOWLOAD-KGM2	1	18	1	25th fractal snowload in EPS	\N	\N
558	SIGNIFICANCE	1	30	1	Vertical Sounding Significance.	\N	\N
559	CAPE-JKG	1	77	1	Convective available potential energy	\N	\N
560	WSTOR-MM	1	60	1	Thickness of water layer on road	\N	\N
561	SRMOM-M	1	2	1	Surface Roughness (momentum) in meters	\N	\N
562	PROB-T	1	6	1	Probability of temperature anomaly (universal)	\N	\N
563	PROB-W	1	6	1	Probability of wind speed (universal)	\N	\N
564	PROB-RR	1	6	1	Probability of precipitation (universal)	\N	\N
565	PROBSN-0TO1	1	62	1	Probability of snow	\N	\N
566	CLN1-N	1	64	1	Cloud Cover in 1/8ths of the lowest layer	\N	\N
567	CLN2-N	1	64	1	Cloud Cover in 1/8ths of the second layer	\N	\N
568	CLN3-N	1	64	1	Cloud Cover in 1/8ths of the third layer	\N	\N
569	CLN4-N	1	64	1	Cloud Cover in 1/8ths of the fourth layer	\N	\N
570	CLDTYP1-N	1	28	1	Cloud type for the lowest layer	\N	\N
571	CLDTYP2-N	1	28	1	Cloud type for the second layer	\N	\N
572	CLDTYP3-N	1	28	1	Cloud type for the third layer	\N	\N
573	CLDTYP4-N	1	28	1	Cloud type for the fourth layer	\N	\N
574	AVIVIS-M	1	2	1	Metar visibility in m	\N	\N
575	VVERT-FT	1	82	1	Vertical visibility in feet	\N	\N
576	CL1-FT	1	82	1	Height of the lowest cloud layer in feet	\N	\N
577	CL2-FT	1	82	1	Height of the second lowest cloud layer in feet	\N	\N
578	CL3-FT	1	82	1	Height of the third lowest cloud layer in feet	\N	\N
579	CL4-FT	1	82	1	Height of the fourth lowest cloud layer in feet	\N	\N
580	METTYPE-N	1	30	1	Metar observation type: manual or auto	\N	\N
581	TVIRT-K	1	3	1	Virtual temperature	\N	\N
582	T-MEAN24-C	1	3	1	24 hour mean temperature	\N	\N
583	CLDCND-KGKG	1	17	1	Cloud condensate	\N	\N
584	GRPRDEV-PCT	1	6	1	Growth period precipitation deviation from normal in percent	\N	\N
585	HUMFO2-0TO1	1	62	1	Forest ground humidity kg in kg	\N	\N
586	EFI-T	1	6	1	Extreme forecast index for temperature	\N	\N
587	EFI-WS	1	6	1	Extreme forecast index for wind speed	\N	\N
588	EFI-WG	1	6	1	Extreme forecast index for wind gusts	\N	\N
589	EFI-RR	1	6	1	Extreme forecast index for precipitation	\N	\N
590	GRR-MMH	1	32	1	Graupel rate in mm/h	\N	\N
591	RRR-MMH	1	32	1	Rain rate in mm/h	\N	\N
592	HLCY-M2S2	1	13	1	Storm relative helicity	\N	\N
593	REFO-DBZ	1	70	1	Observed radar reflectivity	\N	\N
594	WSH-KT	1	31	1	Wind shear in knots	\N	\N
595	WGU-MS	1	2	1	U-component of wind gust	\N	\N
596	WGV-MS	1	2	1	V-component of wind gust	\N	\N
597	PARS-WM2	1	12	1	Photosyntetically active radiation at the surface	\N	\N
171	U-MS	1	15	2	U wind in m/s	wetodb	2018-11-26 06:20:37
599	PSTL-HPA	1	21	1	Pressure on station level	\N	\N
600	RMM-N	1	76	1	Rain minutes of hour	\N	\N
601	UVMAXT-H	1	59	1	Hour of UV maximum	\N	\N
602	MSUN-S	1	4	1	Seconds of sun duration in Minute	\N	\N
603	T-X1-C	1	58	1	Second temperature sensor	\N	\N
604	DD-X1-D	1	5	1	Second wind direction sensor	\N	\N
605	FF-X1-MS	1	15	1	Second wind speed sensor	\N	\N
606	HM20C-M	1	2	1	Height of -20 C level in meters	\N	\N
607	CANW-KGM2	1	18	1	Canopy water	\N	\N
608	STFR-0TO1	1	62	1	Surface type fraction	\N	\N
1034	CLDTOP-FT	1	82	1	Cloud top height in feet	\N	\N
474	SW1WDIR-D	1	5	1	Direction of Waves of Swell 1 in degrees	postgres	2017-04-18 08:12:24
611	UVIMAX-N	1	30	1	UV index maximum	\N	\N
612	UVI-N	1	30	1	UV index	\N	\N
613	O3ANOM-PRCNT	1	6	1	Ozone anomaly	\N	\N
477	SW2WDIR-D	1	5	1	Direction of Waves of Swell 2 in degrees	postgres	2017-04-18 08:12:24
994	PROB-HWS-3	1	6	1	Probability of significant wave height of at least 6m	\N	\N
617	GR-KGM2	1	18	1	Graupel precipitation in kg/m2	\N	\N
618	CRNK-N	1	30	1	Charnock	\N	\N
619	T3160-C	1	58	1	Monthly mean temperature for period 1931-60	\N	\N
620	N3160-PRCNT	1	6	1	Monthly mean cloudiness for period 1931-60	\N	\N
621	SD3160-CM	1	63	1	Mean snow depth on the 15. of the month for period 1931-60	\N	\N
622	RR6190-KGM2	1	18	1	Monthly mean precipitation for period 1961-90	\N	\N
623	T6190-C	1	58	1	Monthly mean temperature for period 1961-90	\N	\N
624	N6190-PRCNT	1	6	1	Monthly mean cloudiness for period 1961-90	\N	\N
625	SD6190-CM	1	63	1	Mean snow depth on the 15. of the month for period 1931-60	\N	\N
626	HP-HPA	1	21	1	Hourly mean pressure	\N	\N
627	HT-C	1	58	1	Hourly mean temperature	\N	\N
628	HTMIN-C	1	58	1	Hourly minimum temperature	\N	\N
629	HTMAX-C	1	58	1	Hourly maximum temperature	\N	\N
630	HRH-PRCNT	1	6	1	Hourly mean relative humidity	\N	\N
631	HFF-MS	1	15	1	Hourly mean wind speed	\N	\N
632	HFFMIN-MS	1	15	1	Hourly minimum wind speed	\N	\N
633	HFFMAX-MS	1	15	1	Hourly maximum wind speed	\N	\N
634	HFFG-MS	1	15	1	Hourly maximum wind gust	\N	\N
635	HDD-D	1	5	1	Hourly mean wind direction	\N	\N
636	HRRR-KGM2	1	18	1	Hourly maximum precipitation rate	\N	\N
1035	SND-KGM3	1	18	1	Snow density in kg/m3	\N	\N
638	HTSEA-C	1	58	1	Hourly mean sea temperature	\N	\N
639	HRRDUR-MIN	1	76	1	The duration of the rain during 1 hour	\N	\N
640	RADPRO-N	1	69	1	Radar producer	\N	\N
641	TURB-N	1	64	1	Turbulence, code 11031 in BUFR	\N	\N
1012	PROB-RR3-1	1	6	1	Probability of Precipitation #1 in 3h	\N	\N
643	BTURB-M	1	2	1	Base of turbulence in meters	\N	\N
644	TTURB-M	1	2	1	Top of turbulence in meters	\N	\N
1013	PROB-RR3-2	1	6	1	Probability of Precipitation #2 in 3h	\N	\N
646	ALTIT-M	1	2	1	Altitude of an object in meters	\N	\N
647	PSEA-HPA	1	21	1	Pressure reduced to mean sea level	\N	\N
648	WATLEV-CM	1	63	1	Water level in centimeters	\N	\N
649	WATMIN-CM	1	63	1	Minimum water level in centimeters	\N	\N
650	WATMAX-CM	1	63	1	Maximum water level in centimeters	\N	\N
651	SHDIR-D	1	5	1	Direction of motion of ship or other observing platform	\N	\N
652	SHSPEED-MS	1	15	1	Speed of motion of ship or other observing platform	\N	\N
653	TKEN-JKG	1	77	1	Kinetic energy of turbulence in J kg-1	\N	\N
654	CLDWAT-KGKG	1	17	1	Cloud water	\N	\N
655	MIXHGT-M	1	2	1	Mixed layer height in m	\N	\N
656	SDC-M	1	2	1	Convective snowfall in m	\N	\N
657	SDL-M	1	2	1	Large scale snowfall in m	\N	\N
658	EVAP-KGM2	1	61	1	Evaporation in mm	\N	\N
659	VFLMOM-NM2	1	78	1	V-component of momentum flux in N m-2	\N	\N
660	UFLMOM-NM2	1	78	1	U-component of momentum flux in N m-2	\N	\N
661	PRCWAT-KGM2	1	18	1	Precipitable water in mm	\N	\N
662	HCHPAR-KGM2	1	61	1	Specific humidity change due to parameterisation processes	\N	\N
663	CWCHPAR-KGM2	1	61	1	Cloud water change due to parameterisation processes	\N	\N
664	TCHPAR-KKGM2	1	79	1	Temperature change due to parameterisation processes	\N	\N
665	T-C1-C	1	58	1	Temperature in cluster 1 of EPS	\N	\N
666	T-C2-C	1	58	1	Temperature in cluster 2 of EPS	\N	\N
667	T-C3-C	1	58	1	Temperature in cluster 3 of EPS	\N	\N
668	T-C4-C	1	58	1	Temperature in cluster 4 of EPS	\N	\N
669	T-C5-C	1	58	1	Temperature in cluster 5 of EPS	\N	\N
670	T-C6-C	1	58	1	Temperature in cluster 6 of EPS	\N	\N
671	Z-C1-M2S2	1	13	1	Geopotential in cluster 1 of EPS	\N	\N
672	Z-C2-M2S2	1	13	1	Geopotential in cluster 2 of EPS	\N	\N
673	Z-C3-M2S2	1	13	1	Geopotential in cluster 3 of EPS	\N	\N
674	Z-C4-M2S2	1	13	1	Geopotential in cluster 4 of EPS	\N	\N
675	Z-C5-M2S2	1	13	1	Geopotential in cluster 5 of EPS	\N	\N
676	Z-C6-M2S2	1	13	1	Geopotential in cluster 6 of EPS	\N	\N
616	ALBEDOSLR-0TO1	1	62	1	Albedo with solar angle correction	postgres	2017-01-08 18:23:45
62	LNB-M	1	2	1	Level of neutral buoyancy (lnb)	postgres	2017-01-08 18:29:43
1014	PROB-RR3-3	1	6	1	Probability of Precipitation #3 in 3h	\N	\N
998	POTPRECT-N	1	69	2	Potential precipitation type, calculated for all grid points	\N	\N
1177	F25-TD-K	1	3	1	25th fractal dewpoint temperature in EPS	\N	\N
1178	F75-TD-K	1	3	1	75th fractal dewpoint temperature in EPS	\N	\N
1179	F90-TD-K	1	3	1	90th fractal dewpoint temperature in EPS	\N	\N
1180	PROB-TC-6	1	6	1	Probability of old #6	\N	\N
685	PROB-W-1	1	6	1	Probability of reaching wind speed of 10 m/s in EPS	\N	\N
686	PROB-W-2	1	6	1	Probability of reaching wind speed of 15 m/s in EPS	\N	\N
687	HUMFOR-0TO1	1	62	1	Forest ground humidity kg in kg	\N	\N
688	HUMFIE-0TO1	1	62	1	Field ground humidity kg in kg	\N	\N
689	MAXT2M-C	1	58	1	Maximum temperature at 2m since previous post-processing	\N	\N
690	CLOUDWATERMR-KGKG	1	17	1	Cloud water mixing ratio	\N	\N
691	CLOUDICEMR-KGKG	1	17	1	Cloud ice mixing ratio	\N	\N
692	RAINMR-KGKG	1	17	1	Rain mixing ratio	\N	\N
789	F97.5-T-K	1	3	1	97.5th fractal temperature in EPS	\N	\N
701	POT-PRCNT	1	6	1	Probability of thunderstorms	\N	\N
697	EWSS-NM2S	1	78	1	Eastward surface stress due to turbulent processes, accumulated	\N	\N
698	NSSS-NM2S	1	78	1	Northward surface stress due to turbulent processes, accumulated	\N	\N
699	TI-S2	1	88	1	Clear Air Turbulence forecasting index	\N	\N
700	TI2-S2	1	88	1	Clear Air Turbulence forecasting index 2	\N	\N
703	IFFG-MS	1	15	1	Maximum 3 second wind at 10 m height as defined by WMO including effects of turbulence and convection	\N	\N
63	CIN-JKG	1	77	1	Convective inhibition (cin)	postgres	2016-03-23 18:50:07
693	GRAUPMR-KGKG	1	17	1	Graupel mixing ratio	postgres	2016-09-23 07:46:27
702	TCW-KGM2	1	18	1	Vertically integrated total water (vapour + cloud water + cloud ice)	\N	\N
767	SNOWMR-KGKG	1	17	1	Snow mixing ratio	\N	\N
768	CL-2-FT	1	82	1	Height of cloud layer in feet, second parameter	\N	\N
44	SD-KGM2	1	18	1	Water equivalent of snow cover in mm	postgres	2016-09-30 11:17:15
790	F95-T-K	1	3	1	95th fractal temperature in EPS	\N	\N
704	LCL-K	1	3	1	Temperature of LCL in K	\N	\N
1059	TMAX12H-C	1	58	1	Maximum temperature from the preceeding 12 hours in Celsius	\N	\N
1061	ABSDI-HZ	1	11	1	Absolute Divergence in HZ	\N	\N
1090	EL-LAST-HPA	1	21	1	Height of last EL in hPa	\N	\N
1091	EL-LAST-M	1	2	1	Height of last EL in meters	\N	\N
707	LFC-K	1	3	1	Temperature of LFC in K	\N	\N
1064	BRVAIFREQ-HZ	1	11	1	Brunt-Vaisala frequency	\N	\N
1181	SMARTSYMBOL-N	1	69	2	Smart weather symbol	\N	\N
1065	ALBEDOSURFNOSNOW-0TO1	1	62	1	Surface albedo for non snow covered areas	\N	\N
1062	ALBEDOBGRND-0TO1	1	62	1	Albedo of bare ground	wetodb	2017-08-04 07:50:50
1063	ALBEDOVEG-0TO1	1	62	1	Albedo of vegetation	wetodb	2017-08-04 07:50:50
1066	ALBEDOSNOW-0TO1	1	62	1	Snow albedo	\N	\N
1067	ICINGBOTTOM-M	1	2	1	Bottom level of icing	\N	\N
1068	BLDIS-WM2	1	12	1	Boundary layer dissipation	\N	\N
1069	BLI-K	1	3	1	Best lifted index (to 500 hPa)	\N	\N
1070	BRTMP-K	1	3	1	Brightness temperature	\N	\N
1071	ALBDO-PRCNT	1	6	1	Albedo	\N	\N
711	EL-K	1	3	1	Temperature of EL in K	\N	\N
1182	WEATHERNUMBER-N	1	69	2	Weather number describing the state of weather, precursor to Smart weather symbol	\N	\N
1262	LFC-LAST-M	1	2	1	Height of last LFC in meters	\N	\N
1074	WMIXE-JKG	1	77	1	Wind mixing energy	\N	\N
1075	VPTMP-K	1	3	1	Virtual potential temperature	\N	\N
1076	UICE-MS	1	15	1	U-Component of Ice Drift	\N	\N
1077	VICE-MS	1	15	1	V-Component of Ice Drift	\N	\N
791	F87.5-T-K	1	3	1	87.5th fractal temperature in EPS	\N	\N
792	F12.5-T-K	1	3	1	12.5th fractal temperature in EPS	\N	\N
793	F5-T-K	1	3	1	5th fractal temperature in EPS	\N	\N
794	F2.5-T-K	1	3	1	2.5th fractal temperature in EPS	\N	\N
972	NL-0TO1	1	28	1	Low Cloud Amount	\N	\N
796	F99-N-0TO1	1	62	1	99th fractal cloudiness in EPS	\N	\N
797	F97.5-N-0TO1	1	62	1	97.5th fractal cloudiness in EPS	\N	\N
798	F95-N-0TO1	1	62	1	95th fractal cloudiness in EPS	\N	\N
799	F87.5-N-0TO1	1	62	1	87.5th fractal cloudiness in EPS	\N	\N
800	F12.5-N-0TO1	1	62	1	12.5th fractal cloudiness in EPS	\N	\N
801	F5-N-0TO1	1	62	1	5th fractal cloudiness in EPS	\N	\N
802	F2.5-N-0TO1	1	62	1	2.5th fractal cloudiness in EPS	\N	\N
803	F1-N-0TO1	1	62	1	1st fractal cloudiness in EPS	\N	\N
804	F100-RR-3-MM	1	18	1	100th fractal precipitation in EPS	\N	\N
805	F99-RR-3-MM	1	18	1	99th fractal precipitation in EPS	\N	\N
806	F97.5-RR-3-MM	1	18	1	97.5th fractal precipitation in EPS	\N	\N
807	F95-RR-3-MM	1	18	1	95th fractal precipitation in EPS	\N	\N
808	F87.5-RR-3-MM	1	18	1	87.5th fractal precipitation in EPS	\N	\N
809	F50-RR-3-MM	1	18	1	50th fractal precipitation in EPS	\N	\N
810	F12.5-RR-3-MM	1	18	1	12.5th fractal precipitation in EPS	\N	\N
811	F5-RR-3-MM	1	18	1	5th fractal precipitation in EPS	\N	\N
812	F2.5-RR-3-MM	1	18	1	2.5th fractal precipitation in EPS	\N	\N
813	F1-RR-3-MM	1	18	1	1st fractal precipitation in EPS	\N	\N
814	F0-RR-3-MM	1	18	1	0th fractal precipitation in EPS	\N	\N
815	F99-FF-MS	1	15	1	99th fractal wind speed in EPS	\N	\N
816	F97.5-FF-MS	1	15	1	97.5th fractal wind speed in EPS	\N	\N
817	F95-FF-MS	1	15	1	95th fractal wind speed in EPS	\N	\N
818	F87.5-FF-MS	1	15	1	87.5th fractal wind speed in EPS	\N	\N
819	F12.5-FF-MS	1	15	1	12.5th fractal wind speed in EPS	\N	\N
820	F5-FF-MS	1	15	1	5th fractal wind speed in EPS	\N	\N
821	F2.5-FF-MS	1	15	1	2.5th fractal wind speed in EPS	\N	\N
822	F1-FF-MS	1	15	1	1st fractal wind speed in EPS	\N	\N
823	F99-FFG-MS	1	15	1	99th fractal wind gust speed in EPS	\N	\N
824	F97.5-FFG-MS	1	15	1	97.5th fractal wind gust speed in EPS	\N	\N
825	F95-FFG-MS	1	15	1	95th fractal wind gust speed in EPS	\N	\N
826	F87.5-FFG-MS	1	15	1	87.5th fractal wind gust speed in EPS	\N	\N
827	F12.5-FFG-MS	1	15	1	12.5th fractal wind gust speed in EPS	\N	\N
828	F5-FFG-MS	1	15	1	5th fractal wind gust speed in EPS	\N	\N
829	F2.5-FFG-MS	1	15	1	2.5th fractal wind gust speed in EPS	\N	\N
830	F1-FFG-MS	1	15	1	1st fractal wind gust speed in EPS	\N	\N
832	F99-CAPE-JKG	1	77	1	99th fractal CAPE in EPS	\N	\N
833	F97.5-CAPE-JKG	1	77	1	97.5th fractal CAPE in EPS	\N	\N
834	F95-CAPE-JKG	1	77	1	95th fractal CAPE in EPS	\N	\N
835	F87.5-CAPE-JKG	1	77	1	87.5th fractal CAPE in EPS	\N	\N
836	F12.5-CAPE-JKG	1	77	1	12.5th fractal CAPE in EPS	\N	\N
837	F5-CAPE-JKG	1	77	1	5th fractal CAPE in EPS	\N	\N
838	F2.5-CAPE-JKG	1	77	1	2.5th fractal CAPE in EPS	\N	\N
839	F1-CAPE-JKG	1	77	1	1st fractal CAPE in EPS	\N	\N
840	F100-IC-0TO1	1	62	1	100th fractal ice cover in EPS	\N	\N
841	F99-IC-0TO1	1	62	1	99th fractal ice cover in EPS	\N	\N
842	F97.5-IC-0TO1	1	62	1	97.5th fractal ice cover in EPS	\N	\N
843	F95-IC-0TO1	1	62	1	95th fractal ice cover in EPS	\N	\N
844	F87.5-IC-0TO1	1	62	1	87.5th fractal ice cover in EPS	\N	\N
845	F50-IC-0TO1	1	62	1	50th fractal ice cover in EPS	\N	\N
846	F12.5-IC-0TO1	1	62	1	12.5th fractal ice cover in EPS	\N	\N
847	F5-IC-0TO1	1	62	1	5th fractal ice cover in EPS	\N	\N
848	F2.5-IC-0TO1	1	62	1	2.5th fractal ice cover in EPS	\N	\N
849	F1-IC-0TO1	1	62	1	1st fractal ice cover in EPS	\N	\N
850	F0-IC-0TO1	1	62	1	0th fractal ice cover in EPS	\N	\N
851	F100-SD-M	1	2	1	100th fractal snow depth in EPS	\N	\N
852	F99-SD-M	1	2	1	99th fractal snow depth in EPS	\N	\N
853	F97.5-SD-M	1	2	1	97.5th fractal snow depth in EPS	\N	\N
854	F95-SD-M	1	2	1	95th fractal snow depth in EPS	\N	\N
855	F87.5-SD-M	1	2	1	87.5th fractal snow depth in EPS	\N	\N
1078	ICINGTOP-M	1	2	1	Top level of icing	\N	\N
1079	ICAHT	1	2	1	ICAO Standard Atmosphere reference height	\N	\N
1080	HSTDV	1	2	1	Standard deviation of height	\N	\N
1072	CDCON-0TO1	1	62	1	Convective cloud cover	wetodb	2017-08-10 07:47:03
1093	EHI-N	1	69	1	Energy-Helicity Index	\N	\N
1094	BRN-N	1	69	1	Bulk-Richardson Number	\N	\N
1189	F0-TD2M-C	1	3	1	0th fractal dewpoint temperature in EPS	\N	\N
1096	F100-RRR-KGM2	1	18	1	100th fractal precipitation in EPS	\N	\N
856	F50-SD-M	1	2	1	50th fractal snow depth in EPS	\N	\N
857	F12.5-SD-M	1	2	1	12.5th fractal snow depth in EPS	\N	\N
858	F5-SD-M	1	2	1	5th fractal snow depth in EPS	\N	\N
859	F2.5-SD-M	1	2	1	2.5th fractal snow depth in EPS	\N	\N
860	F1-SD-M	1	2	1	1st fractal snow depth in EPS	\N	\N
861	F0-SD-M	1	2	1	0th fractal snow depth in EPS	\N	\N
795	F1-T-K	1	3	1	1st fractal temperature in EPS	postgres	2016-12-09 07:30:49
862	F100-TMAX-K	1	3	1	100th fractal maximum temperature in EPS	\N	\N
863	F99-TMAX-K	1	3	1	99th fractal maximum temperature in EPS	\N	\N
864	F97.5-TMAX-K	1	3	1	97.5th fractal maximum temperature in EPS	\N	\N
865	F95-TMAX-K	1	3	1	95th fractal maximum temperature in EPS	\N	\N
866	F87.5-TMAX-K	1	3	1	87.5th fractal maximum temperature in EPS	\N	\N
867	F50-TMAX-K	1	3	1	50th fractal maximum temperature in EPS	\N	\N
868	F12.5-TMAX-K	1	3	1	12.5th fractal maximum temperature in EPS	\N	\N
869	F5-TMAX-K	1	3	1	5th fractal maximum temperature in EPS	\N	\N
870	F2.5-TMAX-K	1	3	1	2.5th fractal maximum temperature in EPS	\N	\N
871	F1-TMAX-K	1	3	1	1st fractal maximum temperature in EPS	\N	\N
872	F0-TMAX-K	1	3	1	0th fractal maximum temperature in EPS	\N	\N
873	F100-TMIN-K	1	3	1	100th fractal minimum temperature in EPS	\N	\N
874	F99-TMIN-K	1	3	1	99th fractal minimum temperature in EPS	\N	\N
875	F97.5-TMIN-K	1	3	1	97.5th fractal minimum temperature in EPS	\N	\N
876	F95-TMIN-K	1	3	1	95th fractal minimum temperature in EPS	\N	\N
877	F87.5-TMIN-K	1	3	1	87.5th fractal minimum temperature in EPS	\N	\N
878	F50-TMIN-K	1	3	1	50th fractal minimum temperature in EPS	\N	\N
879	F12.5-TMIN-K	1	3	1	12.5th fractal minimum temperature in EPS	\N	\N
880	F5-TMIN-K	1	3	1	5th fractal minimum temperature in EPS	\N	\N
881	F2.5-TMIN-K	1	3	1	2.5th fractal minimum temperature in EPS	\N	\N
882	F1-TMIN-K	1	3	1	1st fractal minimum temperature in EPS	\N	\N
883	F0-TMIN-K	1	3	1	0th fractal minimum temperature in EPS	\N	\N
884	F100-TSEA-K	1	3	1	100th fractal sea temperature in EPS	\N	\N
885	F99-TSEA-K	1	3	1	99th fractal sea temperature in EPS	\N	\N
886	F97.5-TSEA-K	1	3	1	97.5th fractal sea temperature in EPS	\N	\N
887	F95-TSEA-K	1	3	1	95th fractal sea temperature in EPS	\N	\N
888	F87.5-TSEA-K	1	3	1	87.5th fractal sea temperature in EPS	\N	\N
889	F50-TSEA-K	1	3	1	50th fractal sea temperature in EPS	\N	\N
890	F12.5-TSEA-K	1	3	1	12.5th fractal sea temperature in EPS	\N	\N
891	F5-TSEA-K	1	3	1	5th fractal sea temperature in EPS	\N	\N
892	F2.5-TSEA-K	1	3	1	2.5th fractal sea temperature in EPS	\N	\N
893	F1-TSEA-K	1	3	1	1st fractal sea temperature in EPS	\N	\N
894	F0-TSEA-K	1	3	1	0th fractal sea temperature in EPS	\N	\N
895	F100-P-PA	1	7	1	100th fractal pressure in EPS	\N	\N
896	F99-P-PA	1	7	1	99th fractal pressure in EPS	\N	\N
897	F97.5-P-PA	1	7	1	97.5th fractal pressure in EPS	\N	\N
898	F95-P-PA	1	7	1	95th fractal pressure in EPS	\N	\N
899	F87.5-P-PA	1	7	1	87.5th fractal pressure in EPS	\N	\N
900	F50-P-PA	1	7	1	50th fractal pressure in EPS	\N	\N
901	F12.5-P-PA	1	7	1	12.5th fractal pressure in EPS	\N	\N
902	F5-P-PA	1	7	1	5th fractal pressure in EPS	\N	\N
903	F2.5-P-PA	1	7	1	2.5th fractal pressure in EPS	\N	\N
904	F1-P-PA	1	7	1	1st fractal pressure in EPS	\N	\N
905	F0-P-PA	1	7	1	0th fractal pressure in EPS	\N	\N
906	F100-TCW-KGM2	1	18	1	100th fractal total column water in EPS	\N	\N
907	F99-TCW-KGM2	1	18	1	99th fractal total column water in EPS	\N	\N
908	F97.5-TCW-KGM2	1	18	1	97.5th fractal total column water in EPS	\N	\N
909	F95-TCW-KGM2	1	18	1	95th fractal total column water in EPS	\N	\N
910	F87.5-TCW-KGM2	1	18	1	87.5th fractal total column water in EPS	\N	\N
911	F50-TCW-KGM2	1	18	1	50th fractal total column water in EPS	\N	\N
912	F12.5-TCW-KGM2	1	18	1	12.5th fractal total column water in EPS	\N	\N
913	F5-TCW-KGM2	1	18	1	5th fractal total column water in EPS	\N	\N
914	F2.5-TCW-KGM2	1	18	1	2.5th fractal total column water in EPS	\N	\N
915	F1-TCW-KGM2	1	18	1	1st fractal total column water in EPS	\N	\N
916	F0-TCW-KGM2	1	18	1	0th fractal total column water in EPS	\N	\N
917	F100-SNR-KGM2	1	32	1	100th fractal snow fall rate in EPS	\N	\N
918	F99-SNR-KGM2	1	32	1	99th fractal snow fall rate in EPS	\N	\N
919	F97.5-SNR-KGM2	1	32	1	97.5th fractal snow fall rate in EPS	\N	\N
920	F95-SNR-KGM2	1	32	1	95th fractal snow fall rate in EPS	\N	\N
921	F87.5-SNR-KGM2	1	32	1	87.5th fractal snow fall rate in EPS	\N	\N
922	F50-SNR-KGM2	1	32	1	50th fractal snow fall rate in EPS	\N	\N
923	F12.5-SNR-KGM2	1	32	1	12.5th fractal snow fall rate in EPS	\N	\N
924	F5-SNR-KGM2	1	32	1	5th fractal snow fall rate in EPS	\N	\N
925	F2.5-SNR-KGM2	1	32	1	2.5th fractal snow fall rate in EPS	\N	\N
926	F1-SNR-KGM2	1	32	1	1st fractal snow fall rate in EPS	\N	\N
927	F0-SNR-KGM2	1	32	1	0th fractal snow fall rate in EPS	\N	\N
928	F100-Z-M2S2	1	13	1	100th fractal geopotential height in EPS	\N	\N
929	F99-Z-M2S2	1	13	1	99th fractal geopotential height in EPS	\N	\N
930	F97.5-Z-M2S2	1	13	1	97.5th fractal geopotential height in EPS	\N	\N
931	F95-Z-M2S2	1	13	1	95th fractal geopotential height in EPS	\N	\N
932	F87.5-Z-M2S2	1	13	1	87.5th fractal geopotential height in EPS	\N	\N
933	F50-Z-M2S2	1	13	1	50th fractal geopotential height in EPS	\N	\N
934	F12.5-Z-M2S2	1	13	1	12.5th fractal geopotential height in EPS	\N	\N
935	F5-Z-M2S2	1	13	1	5th fractal geopotential height in EPS	\N	\N
936	F2.5-Z-M2S2	1	13	1	2.5th fractal geopotential height in EPS	\N	\N
937	F1-Z-M2S2	1	13	1	1st fractal geopotential height in EPS	\N	\N
938	F0-Z-M2S2	1	13	1	0th fractal geopotential height in EPS	\N	\N
939	F100-Q-KGKG	1	17	1	100th fractal specific humidity in EPS	\N	\N
940	F99-Q-KGKG	1	17	1	99th fractal specific humidity in EPS	\N	\N
941	F97.5-Q-KGKG	1	17	1	97.5th fractal specific humidity in EPS	\N	\N
942	F95-Q-KGKG	1	17	1	95th fractal specific humidity in EPS	\N	\N
943	F87.5-Q-KGKG	1	17	1	87.5th fractal specific humidity in EPS	\N	\N
944	F50-Q-KGKG	1	17	1	50th fractal specific humidity in EPS	\N	\N
945	F12.5-Q-KGKG	1	17	1	12.5h fractal specific humidity in EPS	\N	\N
946	F5-Q-KGKG	1	17	1	5th fractal specific humidity in EPS	\N	\N
947	F2.5-Q-KGKG	1	17	1	2.5th fractal specific humidity in EPS	\N	\N
948	F1-Q-KGKG	1	17	1	1st fractal specific humidity in EPS	\N	\N
949	F0-Q-KGKG	1	17	1	0th fractal specific humidity in EPS	\N	\N
950	F100-TD-K	1	3	1	100th fractal dewpoint temperature in EPS	\N	\N
951	F99-TD-K	1	3	1	99th fractal dewpoint temperature in EPS	\N	\N
952	F97.5-TD-K	1	3	1	97.5th fractal dewpoint temperature in EPS	\N	\N
1263	LFC-LAST-K	1	3	1	Temperature of last LFC in meters	\N	\N
954	F95-TD-K	1	3	1	95th fractal dewpoint temperature in EPS	\N	\N
955	F87.5-TD-K	1	3	1	87.5th fractal dewpoint temperature in EPS	\N	\N
956	F50-TD-K	1	3	1	50th fractal dewpoint temperature in EPS	\N	\N
957	F12.5-TD-K	1	3	1	12.5th fractal dewpoint temperature in EPS	\N	\N
958	F5-TD-K	1	3	1	5th fractal dewpoint temperature in EPS	\N	\N
959	F2.5-TD-K	1	3	1	2.5th fractal dewpoint temperature in EPS	\N	\N
960	F1-TD-K	1	3	1	1st fractal dewpoint temperature in EPS	\N	\N
961	F0-TD-K	1	3	1	0th fractal dewpoint temperature in EPS	\N	\N
962	F90-RR-3-MM	1	18	1	90th fractal precipitation in EPS	\N	\N
963	F75-RR-3-MM	1	18	1	75th fractal precipitation in EPS	\N	\N
964	F25-RR-3-MM	1	18	1	25th fractal precipitation in EPS	\N	\N
965	F10-RR-3-MM	1	18	1	10th fractal precipitation in EPS	\N	\N
966	F90-P-PA	1	7	1	90th fractal pressure in EPS	\N	\N
967	F75-P-PA	1	7	1	75th fractal pressure in EPS	\N	\N
968	F25-P-PA	1	7	1	25th fractal pressure in EPS	\N	\N
969	F10-P-PA	1	7	1	10th fractal pressure in EPS	\N	\N
970	SN-3-MM	1	60	2	Snow fall over the last 3 hours water equivalent	\N	\N
975	QNH-HPA	1	21	1	Pressure reduced to mean sea level, aviation style	\N	\N
1015	PROB-RR3-4	1	6	1	Probability of Precipitation #4 in 3h	\N	\N
977	EFI-T-K--1TO1	1	90	2	Extreme Forecast Index for T-K	\N	\N
978	EFI-FF-MS--1TO1	1	90	2	Extreme Forecast Index for FF-MS	\N	\N
979	RADSWA-JM2	1	83	1	Short wave radiation accumulation	\N	\N
980	T-MEAN-K	1	3	1	Mean temperature in Kelvins	\N	\N
981	P-MEAN-PA	1	7	1	Mean pressure in Pascals	\N	\N
65	N-STDDEV-PRCNT	1	6	1	Standard Deviation of total cloudiness	postgres	2017-01-03 08:49:21
982	T-STDDEV-K	1	3	1	Standard deviation of temperature	\N	\N
983	P-STDDEV-PA	1	7	1	Standard deviation of pressure	\N	\N
984	FF-STDDEV-MS	1	15	1	Standard deviation of wind speed	\N	\N
677	ANOM-8-T-K	1	6	1	Probability of big negative temperature anomaly (-8 K) in EPS	postgres	2017-01-05 06:09:09
678	ANOM-4-T-K	1	6	1	Probability of moderate negative temperature anomaly (-4 K) in EPS	postgres	2017-01-05 06:09:40
679	ANOM+4-T-K	1	6	1	Probability of moderate positive temperature anomaly (+4 K) in EPS	postgres	2017-01-05 06:09:51
680	ANOM+8-T-K	1	6	1	Probability of big positive temperature anomaly (+8 K) in EPS	postgres	2017-01-05 06:09:56
985	PM10-UGM3	1	65	1	PM10 consentration	\N	\N
986	NO-UGM3	1	65	1	Contents of Nitrogen Monoxide	\N	\N
987	CO-UGM3	1	65	1	Contents of Carbon Monoxide	\N	\N
995	PROB-HWS-4	1	6	1	Probability of significant wave height of at least 8m	postgres	2017-02-01 12:12:48
996	DPW-D	1	5	1	Wave principal direction at spectral peak in degrees	\N	\N
989	O3-UGM3	1	65	1	Contents of Ozone	wetodb	2017-01-11 15:28:31
990	PM2_5-UGM3	1	65	1	PM2_5 consentration	\N	\N
991	ITHK-M	1	2	1	Ice thickness in meters	\N	\N
1016	PROB-RR3-5	1	6	1	Probability of Precipitation #5 in 3h	\N	\N
1017	PROB-RR3-6	1	6	1	Probability of Precipitation #6 in 3h	\N	\N
1018	PROB-CONV-RR3-1	1	6	1	Probability of Convective Precipitation #1 in 3h	\N	\N
1019	PROB-CONV-RR3-2	1	6	1	Probability of Convective Precipitation #2 in 3h	\N	\N
1020	PROB-CONV-RR3-3	1	6	1	Probability of Convective Precipitation #3 in 3h	\N	\N
1021	PROB-CONV-RR3-4	1	6	1	Probability of Convective Precipitation #4 in 3h	\N	\N
1022	PROB-CONV-RR3-5	1	6	1	Probability of Convective Precipitation #5 in 3h	\N	\N
1023	PROB-CONV-RR3-6	1	6	1	Probability of Convective Precipitation #6 in 3h	\N	\N
1036	CL-DEV-FT	1	82	1	Height of cloud layer in feet DEVELOPMENT PARAMETER REMOVE LATER	\N	\N
1051	PROB-WATLEV-HIGH-1	1	6	1	Probability of water level being higher than given threshold	\N	\N
1052	PROB-WATLEV-HIGH-2	1	6	1	Probability of water level being higher than given threshold	\N	\N
1053	PROB-WATLEV-HIGH-3	1	6	1	Probability of water level being higher than given threshold	\N	\N
1055	RR-STDDEV-MM	1	18	1	Standard deviation of total precipitation	wetodb	2017-05-29 13:16:46
1056	RR-MEAN-MM	1	18	1	Mean total precipitation	wetodb	2017-05-29 13:16:46
1057	F50-RR-MM	1	18	1	50th fractal precipitation in EPS	\N	\N
1081	GPA-GPM	1	8	1	Geopotential Height Anomaly	\N	\N
2	PRECFORM-N	1	69	2	Precipitation form	postgres	2017-02-09 06:47:41
696	PRECFORM3-N	3	69	2	Precipitation form, triplicate parameter for HIMAN purposes	postgres	2017-02-09 06:47:41
189	HESSAA-N	1	30	2	Simple weather symbol fo HS and others	postgres	2017-02-09 06:47:41
429	RAIN-N	1	28	2	Rain on/off	postgres	2017-02-09 06:47:41
430	WET-N	1	28	2	Wetness on/off	postgres	2017-02-09 06:47:41
439	HSADE1-N	1	30	2	Precalculated weather symbol	postgres	2017-02-09 06:47:41
1082	ICED-HZ	1	11	1	Ice divergence	\N	\N
1083	ICEG-MS	1	15	1	Ice growth rate	\N	\N
440	HSADE2-N	1	30	2	Precalculated weather symbol	postgres	2017-02-09 06:47:41
503	FOGSYM-N	1	30	2	Fog symbol	postgres	2017-02-09 06:47:41
527	RRCODE-N	1	69	2	Code number of precipitation, ask Pauli	postgres	2017-02-09 06:47:41
609	SOILTY-N	1	30	2	Soil type	postgres	2017-02-09 06:47:41
610	VEGET-N	1	30	2	Vegetation type	postgres	2017-02-09 06:47:41
614	ROADNOTIF-N	1	69	2	Notification to road users	postgres	2017-02-09 06:47:41
615	ROADWARN-N	1	69	2	Warning to road users	postgres	2017-02-09 06:47:41
637	HWWRRR-N	1	69	2	Weather code of Hourly maximum precipitation rate	postgres	2017-02-09 06:47:41
642	ICING-N	1	64	2	Icing, code 20041 in BUFR	postgres	2017-02-09 06:47:41
645	PHFLIG-N	1	64	2	Phase of flight, code 8004 of BUFR	postgres	2017-02-09 06:47:41
11	PRECTYPE-N	1	69	2	Precipitation type, large scale or convective	postgres	2017-02-09 06:47:41
976	POTPRECF-N	1	69	2	Potential precipitation form, calculated for all grid points	postgres	2017-02-09 06:47:41
1024	PROB-TC-5	1	6	1	Probability of cold #5	\N	\N
1025	RRC-3-MM	1	60	1	Convective rain over the last 3 hours in mm	\N	\N
1037	F100-WATLEV-CM	1	63	1	100th fractal sea level height in EPS	\N	\N
1038	F95-WATLEV-CM	1	63	1	95th fractal sea level height in EPS	\N	\N
1039	F90-WATLEV-CM	1	63	1	90th fractal sea level height in EPS	\N	\N
1040	F75-WATLEV-CM	1	63	1	75th fractal sea level height in EPS	\N	\N
1041	F50-WATLEV-CM	1	63	1	50th fractal sea level height in EPS	\N	\N
1042	F25-WATLEV-CM	1	63	1	25th fractal sea level height in EPS	\N	\N
1043	F10-WATLEV-CM	1	63	1	10th fractal sea level height in EPS	\N	\N
1044	F5-WATLEV-CM	1	63	1	5th fractal sea level height in EPS	\N	\N
1045	F0-WATLEV-CM	1	63	1	0th fractal sea level height in EPS	\N	\N
1046	WATLEV-MEAN-CM	1	63	1	Mean sea level height	\N	\N
1047	WATLEV-STDDEV-CM	1	63	1	Standard deviation of sea level height	\N	\N
1048	CLDTYPE-N	1	28	2	Cloud type in synop font code	\N	\N
1054	CBTCU-FL	1	29	1	Estimated (max) TOP [FL] for CB/TCU clouds in the model	\N	\N
739	TMIN12H-K	1	3	1	Minimum temperature from the preceeding 12 hours in Kelvin	\N	\N
738	TMAX12H-K	1	3	1	Maximum temperature from the preceeding 12 hours in Kelvin	wetodb	2017-05-31 18:12:17
1084	ICEC-0TO1	1	62	1	Ice proportion	\N	\N
1085	UGWD-NM2S	1	78	1	Gravity wave stress U-component	\N	\N
1086	VGWD-NM2S	1	78	1	Gravity wave stress V-component	\N	\N
255	PROB-RR-5	1	6	1	Probability of reaching some precipitation threshold value	wetodb	2017-09-27 05:50:47
256	PROB-RR-6	1	6	1	Probability of reaching some precipitation threshold value	wetodb	2017-09-27 05:50:47
681	PROB-RR-1	1	6	1	Probability of reaching some precipitation threshold value	wetodb	2017-09-27 05:50:47
682	PROB-RR-2	1	6	1	Probability of reaching some precipitation threshold value	wetodb	2017-09-27 05:50:47
683	PROB-RR-3	1	6	1	Probability of reaching some precipitation threshold value	wetodb	2017-09-27 05:50:47
684	PROB-RR-4	1	6	1	Probability of reaching some precipitation threshold value	wetodb	2017-09-27 05:50:47
1092	PROB-RR-01	1	6	1	Probability of reaching some precipitation threshold value	wetodb	2017-09-27 05:50:47
1095	PROB-RR-7	1	6	1	Probability of reaching some precipitation threshold value	wetodb	2017-09-27 05:50:47
1097	F99-RRR-KGM2	1	18	1	99th fractal precipitation in EPS	\N	\N
1098	F97.5-RRR-KGM2	1	18	1	97.5th fractal precipitation in EPS	\N	\N
1099	F95-RRR-KGM2	1	18	1	95th fractal precipitation in EPS	\N	\N
1100	F87.5-RRR-KGM2	1	18	1	87.5th fractal precipitation in EPS	\N	\N
1101	F50-RRR-KGM2	1	18	1	50th fractal precipitation in EPS	\N	\N
1102	F12.5-RRR-KGM2	1	18	1	12.5th fractal precipitation in EPS	\N	\N
1103	F75-RRR-KGM2	1	18	1	75th fractal precipitation in EPS	\N	\N
1104	F25-RRR-KGM2	1	18	1	25th fractal precipitation in EPS	\N	\N
1105	F10-RRR-KGM2	1	18	1	10th fractal precipitation in EPS	\N	\N
1106	F5-RRR-KGM2	1	18	1	5th fractal precipitation in EPS	\N	\N
1107	F2.5-RRR-KGM2	1	18	1	2.5th fractal precipitation in EPS	\N	\N
1108	F1-RRR-KGM2	1	18	1	1st fractal precipitation in EPS	\N	\N
1109	F0-RRR-KGM2	1	18	1	0th fractal precipitation in EPS	\N	\N
1183	TMIN06-K	1	3	1	Minimum temperature at 06 UTC in Kelvin	\N	\N
1184	TMAX06-K	1	3	1	Maximum temperature at 06 UTC in Kelvin	\N	\N
1185	TMAX18-K	1	3	1	Maximum temperature at 18 UTC in Kelvin	\N	\N
1186	TMIN18-K	1	3	1	Minimum temperature at 18 UTC in Kelvin	\N	\N
1187	TMAX-24-K	1	3	1	Maximum temperature in Kelvin on the preceding 24 hours period of the date-value	\N	\N
1188	TMIN-24-K	1	3	1	Minimum temperature in Kelvin on the preceding 24 hours period of the date-value	\N	\N
1190	F5-TD2M-C	1	3	1	5th fractal dewpoint temperature in EPS	\N	\N
1191	F10-TD2M-C	1	3	1	10th fractal dewpoint temperature in EPS	\N	\N
1192	F25-TD2M-C	1	3	1	25th fractal dewpoint temperature in EPS	\N	\N
1193	F50-TD2M-C	1	3	1	50th fractal dewpoint temperature in EPS	\N	\N
1194	F75-TD2M-C	1	3	1	75th fractal dewpoint temperature in EPS	\N	\N
1195	F90-TD2M-C	1	3	1	90th fractal dewpoint temperature in EPS	\N	\N
1196	F95-TD2M-C	1	3	1	95th fractal dewpoint temperature in EPS	\N	\N
1197	F100-TD2M-C	1	3	1	100th fractal dewpoint temperature in EPS	\N	\N
1199	FROSTSUM-C	1	58	1	Cumulative frost sum over some period of time	\N	\N
1200	TROPO-FL	1	29	1	Estimated height [FL] of the tropopause	\N	\N
1201	SDNIRR-JM2	1	83	1	Surface direct normal irradiation	\N	\N
1202	RACC-KGM2	1	18	1	Rain accumulation in mm	\N	\N
1203	GDD-C	1	58	1	Growing degree days	\N	\N
1286	LSM-0TO1	1	62	1	Land-Sea mask	\N	\N
1205	PROB-WG-AGG-1	1	6	1	Probability of reaching wind gust speed more than given value threshold, aggregated over area and/or time	\N	\N
1206	PROB-HAIL-AGG-1	1	6	1	Probability of hail, aggregated over area and/or time	\N	\N
1207	PROB-RR-AGG-1	1	6	1	Probability of reaching some precipitation threshold value, aggregated over area and/or time	\N	\N
1288	F0-IFFG-MS	1	15	1	0th fractal wind gust speed in EPS	\N	\N
1120	PROB-CAPE1040-1	1	6	1	Probability of reaching some -10 .. -40 cape threshold value	wetodb	2017-09-27 12:42:54
1121	PROB-CAPE1040-2	1	6	1	Probability of reaching some -10 .. -40 cape threshold value	wetodb	2017-09-27 12:42:54
1122	PROB-CAPE1040-3	1	6	1	Probability of reaching some -10 .. -40 cape threshold value	wetodb	2017-09-27 12:43:14
1123	PROB-CAPE1040-4	1	6	1	Probability of reaching some -10 .. -40 cape threshold value	wetodb	2017-09-27 12:43:14
1124	PROB-CAPE1040-5	1	6	1	Probability of reaching some -10 .. -40 cape threshold value	wetodb	2017-09-27 12:43:14
1119	PROB-CAPE-5	1	6	1	Probability of reaching some cape threshold value	\N	\N
1125	WSH-MS	1	15	1	Wind shear in m/s	\N	\N
1126	EWSH-MS	1	15	1	Effective wind shear in m/s	\N	\N
1127	LPL-K	1	3	1	Temperature of LPL (Lifted Parcel Level) in K	\N	\N
1128	LPL-HPA	1	21	1	Height of LPL (Lifted Parcel Level) in hPa	wetodb	2017-10-02 06:47:58
1129	LPL-M	1	2	1	Height of LPL (Lifted Parcel Level) in meters	\N	\N
1130	PROB-VV-1	1	6	1	Probability of visibility being lower than some threshold value	\N	\N
1131	PROB-VV-2	1	6	1	Probability of visibility being lower than some threshold value	\N	\N
1132	PROB-VV-3	1	6	1	Probability of visibility being lower than some threshold value	\N	\N
1133	PROB-VV-4	1	6	1	Probability of visibility being lower than some threshold value	\N	\N
1134	PROB-VV-5	1	6	1	Probability of visibility being lower than some threshold value	\N	\N
1135	PROB-VV-6	1	6	1	Probability of visibility being lower than some threshold value	\N	\N
1136	PROB-VV2-1	1	6	1	Probability of Himan calculated visibility being lower than some threshold value	\N	\N
1137	PROB-VV2-2	1	6	1	Probability of Himan calculated visibility being lower than some threshold value	\N	\N
1138	PROB-VV2-3	1	6	1	Probability of Himan calculated visibility being lower than some threshold value	\N	\N
1139	PROB-VV2-4	1	6	1	Probability of Himan calculated visibility being lower than some threshold value	\N	\N
1140	PROB-VV2-5	1	6	1	Probability of Himan calculated visibility being lower than some threshold value	\N	\N
1141	PROB-VV2-6	1	6	1	Probability of Himan calculated visibility being lower than some threshold value	\N	\N
1142	PROB-CLFT-1	1	6	1	Probability of cloud ceiling being lower than some threshold value	\N	\N
1143	PROB-CLFT-2	1	6	1	Probability of cloud ceiling being lower than some threshold value	\N	\N
1144	PROB-CLFT-3	1	6	1	Probability of cloud ceiling being lower than some threshold value	\N	\N
1145	PROB-CLFT-4	1	6	1	Probability of cloud ceiling being lower than some threshold value	\N	\N
1146	PROB-CLFT-5	1	6	1	Probability of cloud ceiling being lower than some threshold value	\N	\N
1147	PROB-CLFT-6	1	6	1	Probability of cloud ceiling being lower than some threshold value	\N	\N
1148	PROB-CBTCU-1	1	6	1	Probability of CB-clouds	\N	\N
1198	PRECFORM4-N	1	69	2	Precipitation form, fourth version	\N	\N
1162	PROB-FRPREC	1	28	1	Probability of freezing precitipation (rain or drizzle)	wetodb	2017-10-05 09:54:03
1151	PROB-SN3-1	1	6	1	Probability of snowfall reaching some threshold value	\N	\N
1152	PROB-SN3-2	1	6	1	Probability of snowfall reaching some threshold value	\N	\N
1153	PROB-SN3-3	1	6	1	Probability of snowfall reaching some threshold value	\N	\N
1154	PROB-SN3-4	1	6	1	Probability of snowfall reaching some threshold value	\N	\N
1155	PROB-SN3-5	1	6	1	Probability of snowfall reaching some threshold value	\N	\N
1156	PROB-SN3-6	1	6	1	Probability of snowfall reaching some threshold value	\N	\N
1157	FEW1-FT	1	82	1	Height of the lowest FEW cloud layer in feet	\N	\N
1158	SCT1-FT	1	82	1	Height of the lowest SCT cloud layer in feet	\N	\N
1159	BKN1-FT	1	82	1	Height of the lowest BKN cloud layer in feet	\N	\N
1160	OVC1-FT	1	82	1	Height of the lowest OVC cloud layer in feet	\N	\N
1161	CB-FT	1	82	1	CB Cloud height in feet	\N	\N
1209	PROB-RR6-1	1	6	1	Probability of reaching some precipitation threshold value in 6h	\N	\N
1163	PROB-SN6-1	1	6	1	Probability of snowfall reaching some threshold value in 6 h	\N	\N
1164	PROB-SN6-2	1	6	1	Probability of snowfall reaching some threshold value in 6 h	\N	\N
1165	PROB-SN6-3	1	6	1	Probability of snowfall reaching some threshold value in 6 h	\N	\N
1166	PROB-SN6-4	1	6	1	Probability of snowfall reaching some threshold value in 6 h	\N	\N
1167	PROB-SN6-5	1	6	1	Probability of snowfall reaching some threshold value in 6 h	\N	\N
1168	PROB-SN6-6	1	6	1	Probability of snowfall reaching some threshold value in 6 h	\N	\N
1210	PROB-RR6-2	1	6	1	Probability of reaching some precipitation threshold value in 6h	\N	\N
1211	PROB-RR6-3	1	6	1	Probability of reaching some precipitation threshold value in 6h	\N	\N
1212	PROB-RR6-4	1	6	1	Probability of reaching some precipitation threshold value in 6h	\N	\N
1213	PROB-RR6-5	1	6	1	Probability of reaching some precipitation threshold value in 6h	\N	\N
1214	PROB-RR6-6	1	6	1	Probability of reaching some precipitation threshold value in 6h	\N	\N
1215	F0-RADGLO-WM2	1	12	1	0th fractal global radiation in EPS	\N	\N
1216	F10-RADGLO-WM2	1	12	1	10th fractal global radiation in EPS	\N	\N
1217	F25-RADGLO-WM2	1	12	1	25th fractal global radiation in EPS	\N	\N
1218	F50-RADGLO-WM2	1	12	1	50th fractal global radiation in EPS	\N	\N
1219	F75-RADGLO-WM2	1	12	1	75th fractal global radiation in EPS	\N	\N
1220	F90-RADGLO-WM2	1	12	1	90th fractal global radiation in EPS	\N	\N
1221	F100-RADGLO-WM2	1	12	1	100th fractal global radiation in EPS	\N	\N
1222	PANM-PA	1	89	1	Pressure anomaly (departure)	\N	\N
1223	HUMGRASS-KGKG	1	17	1	Humidity of ground in a 2 cm thick surface, grassy areas	\N	\N
1224	SOILWET2-M	1	2	1	Surface soil wetness in m at level 2	\N	\N
598	SOILWET-M3M3	1	2	1	Surface soil wetness	wetodb	2018-11-12 05:51:10
1225	SNACC-H	1	59	1	Hours since last snowfall	\N	\N
322	PRECFORM2-N	1	69	2	Precipitation form, duplicate parameter for HIMAN purposes	wetodb	2018-11-26 06:20:11
1227	SNOWDRIFT-N	1	30	1	Snow drift index	\N	\N
1226	SNDACC-N	1	30	1	Snow drift accumulation since last snowfall	wetodb	2018-11-15 15:05:06
174	V-MS	1	15	2	V wind in m/s	wetodb	2018-11-26 06:20:37
164	CLDSYM-N	1	30	2	Cloud Symbol	wetodb	2018-11-26 06:22:54
206	WW-N	1	30	2	Present Weather	wetodb	2018-11-26 06:22:54
207	W1-N	1	30	2	Past Weather 1	wetodb	2018-11-26 06:22:54
208	W2-N	1	30	2	Past Weather 2	wetodb	2018-11-26 06:22:54
404	ILSAA1-N	1	69	2	FMIWEATHERSYMBOL1	wetodb	2018-11-26 06:22:54
406	ICINGWARN-N	1	64	2	Icing warning index, values between 0 ... 4	wetodb	2018-11-26 06:22:54
557	GROWPER-N	1	69	2	Growth period on/off	wetodb	2018-11-26 06:22:54
997	PPRET-N	1	69	2	Potential precipitation type	wetodb	2018-11-26 06:22:54
1238	F50-SNOWLOAD-KGM2	1	18	1	50th fractal snowload in EPS	\N	\N
1239	F75-SNOWLOAD-KGM2	1	18	1	75th fractal snowload in EPS	\N	\N
1240	F90-SNOWLOAD-KGM2	1	18	1	90th fractal snowload in EPS	\N	\N
1241	F100-SNOWLOAD-KGM2	1	18	1	100th fractal snowload in EPS	\N	\N
1247	F10-TMAX-K	1	3	1	10th fractal maximum temperature in EPS	\N	\N
1248	F25-TMAX-K	1	3	1	25th fractal maximum temperature in EPS	\N	\N
1249	F75-TMAX-K	1	3	1	75th fractal maximum temperature in EPS	\N	\N
1250	F90-TMAX-K	1	3	1	90th fractal maximum temperature in EPS	\N	\N
1251	F10-TMIN-K	1	3	1	10th fractal minimum temperature in EPS	\N	\N
1242	SNOWLOAD-MEAN-KGM2	1	18	1	Mean value of snowload in EPS	wetodb	2019-01-23 07:07:21
1243	SNOWLOAD-STDDEV-KGM2	1	18	1	Standard deviation of snowload in EPS	wetodb	2019-01-23 07:07:30
1252	F25-TMIN-K	1	3	1	25th fractal minimum temperature in EPS	\N	\N
1253	F75-TMIN-K	1	3	1	75th fractal minimum temperature in EPS	\N	\N
1254	F90-TMIN-K	1	3	1	90th fractal minimum temperature in EPS	\N	\N
1255	F0-RR-24-MM	1	18	1	0th fractal precipitation in EPS	\N	\N
1256	F10-RR-24-MM	1	18	1	10th fractal precipitation in EPS	\N	\N
1257	F25-RR-24-MM	1	18	1	25th fractal precipitation in EPS	\N	\N
1258	F50-RR-24-MM	1	18	1	50th fractal precipitation in EPS	\N	\N
1259	F75-RR-24-MM	1	18	1	75th fractal precipitation in EPS	\N	\N
1260	F90-RR-24-MM	1	18	1	90th fractal precipitation in EPS	\N	\N
1261	F100-RR-24-MM	1	18	1	100th fractal precipitation in EPS	\N	\N
1073	WTMP-K	1	3	1	Water temperature	wetodb	2019-03-04 06:53:57
974	NH-0TO1	1	28	1	High Cloud Amount	wetodb	2019-03-26 06:06:51
1264	LFC-LAST-HPA	1	21	1	Height of last LFC in hPa	\N	\N
1265	PROB-FOG-1	1	6	1	Probability of fog	\N	\N
1282	PROB-FLASH-AGG-1	1	6	1	Probability of flash (lightning), aggregated over area and/or time	\N	\N
1267	F0-RR-24-KGM2	1	18	1	0th fractal 24h total precipitation in EPS	\N	\N
1268	F10-RR-24-KGM2	1	18	1	10th fractal 24h total precipitation in EPS	\N	\N
1269	F25-RR-24-KGM2	1	18	1	25th fractal 24h total precipitation in EPS	\N	\N
1270	F50-RR-24-KGM2	1	18	1	50th fractal 24h total precipitation in EPS	\N	\N
1271	F75-RR-24-KGM2	1	18	1	75th fractal 24h total precipitation in EPS	\N	\N
1272	F90-RR-24-KGM2	1	18	1	90th fractal 24h total precipitation in EPS	\N	\N
1273	F100-RR-24-KGM2	1	18	1	100th fractal 24h total precipitation in EPS	\N	\N
1274	F0-RR-120-KGM2	1	18	1	0th fractal 120h total precipitation in EPS	\N	\N
1275	F10-RR-120-KGM2	1	18	1	10th fractal 120h total precipitation in EPS	\N	\N
1276	F25-RR-120-KGM2	1	18	1	25th fractal 120h total precipitation in EPS	\N	\N
1277	F50-RR-120-KGM2	1	18	1	50th fractal 120h total precipitation in EPS	\N	\N
1278	F75-RR-120-KGM2	1	18	1	75th fractal 120h total precipitation in EPS	\N	\N
1279	F90-RR-120-KGM2	1	18	1	90th fractal 120h total precipitation in EPS	\N	\N
1280	F100-RR-120-KGM2	1	18	1	100th fractal 120h total precipitation in EPS	\N	\N
1281	CSI-N	1	30	1	Convective severity index	\N	\N
1283	PROB-CSI-1	1	6	1	Probability of reaching some CSI threshold value	\N	\N
1284	PROB-CSI-2	1	6	1	Probability of reaching some CSI threshold value	\N	\N
1285	PROB-CSI-3	1	6	1	Probability of reaching some CSI threshold value	\N	\N
461	FL-MPLTY-N	1	69	1	Multiplicity Of The Flash, strikes / time unit / area	wetodb	2019-08-23 09:42:26
1295	PRECPHASE-0TO1	1	62	1	Precipitation phase as calculated by "Koistinen algorithm"	\N	\N
1296	F100-NLM-PRCNT	1	6	1	100th fractal low and middle cloudiness in EPS	\N	\N
1289	F10-IFFG-MS	1	15	1	10th fractal wind gust speed in EPS	\N	\N
1290	F25-IFFG-MS	1	15	1	25th fractal wind gust speed in EPS	\N	\N
1291	F50-IFFG-MS	1	15	1	50th fractal wind gust speed in EPS	\N	\N
1292	F75-IFFG-MS	1	15	1	75th fractal wind gust speed in EPS	\N	\N
1293	F90-IFFG-MS	1	15	1	90th fractal wind gust speed in EPS	\N	\N
1294	F100-IFFG-MS	1	15	1	100th fractal wind gust speed in EPS	\N	\N
1297	F90-NLM-PRCNT	1	6	1	90th fractal low and middle cloudiness in EPS	\N	\N
1298	F75-NLM-PRCNT	1	6	1	75th fractal low and middle cloudiness in EPS	\N	\N
1299	F50-NLM-PRCNT	1	6	1	50th fractal low and middle cloudiness in EPS	\N	\N
1300	F25-NLM-PRCNT	1	6	1	25th fractal low and middle cloudiness in EPS	\N	\N
1301	F10-NLM-PRCNT	1	6	1	10th fractal low and middle cloudiness in EPS	\N	\N
1302	F0-NLM-PRCNT	1	6	1	0th fractal low and middle cloudiness in EPS	\N	\N
\.


--
-- Name: param_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.param_id_seq', 1302, true);


--
-- PostgreSQL database dump complete
--

