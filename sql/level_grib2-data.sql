--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.6

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
-- Data for Name: level_grib2; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.level_grib2 (producer_id, level_id, grib_level_id, last_updater, last_updated) FROM stdin;
47	1	1	\N	\N
47	7	101	\N	\N
47	6	103	\N	\N
47	2	100	\N	\N
47	8	10	\N	\N
53	2	100	\N	\N
53	6	103	\N	\N
53	8	200	\N	\N
53	9	106	\N	\N
131	3	105	\N	\N
53	1	1	\N	\N
170	2	100	\N	\N
170	7	101	\N	\N
170	6	103	\N	\N
170	1	1	\N	\N
170	9	106	\N	\N
260	1	1	\N	\N
48	6	103	\N	\N
54	1	1	\N	\N
54	2	100	\N	\N
54	6	103	\N	\N
54	7	101	\N	\N
54	8	10	\N	\N
54	11	108	\N	\N
53	7	101	\N	\N
53	8	10	\N	\N
122	6	103	postgres	2016-06-16 04:26:35.734971+00
260	6	103	\N	\N
260	3	105	\N	\N
109	1	1	\N	\N
109	6	103	\N	\N
109	7	101	\N	\N
134	3	105	\N	\N
121	6	103	\N	\N
180	3	105	\N	\N
180	6	103	\N	\N
180	1	1	\N	\N
4	6	103	\N	\N
4	3	105	\N	\N
281	6	103	\N	\N
4	7	102	\N	\N
4	5	8	\N	\N
4	2	100	\N	\N
4	15	20	\N	\N
260	12	246	\N	\N
181	6	103	\N	\N
131	1	1	\N	\N
152	6	103	\N	\N
152	1	1	\N	\N
181	16	6	\N	\N
181	7	101	\N	\N
119	6	103	\N	\N
10	15	20	\N	\N
107	2	100	\N	\N
109	2	100	\N	\N
107	1	1	\N	\N
240	3	105	\N	\N
107	6	103	\N	\N
183	6	103	\N	\N
243	6	103	wetodb	2018-01-29 11:08:58.453597+00
183	1	1	\N	\N
280	6	103	\N	\N
101	6	103	\N	\N
5	6	103	\N	\N
291	6	103	\N	\N
282	16	6	\N	\N
260	15	20	\N	\N
260	7	101	\N	\N
260	2	100	\N	\N
501	3	105	\N	\N
501	1	1	\N	\N
270	1	1	\N	\N
270	6	103	\N	\N
270	3	105	\N	\N
270	12	246	\N	\N
270	15	20	\N	\N
270	7	101	\N	\N
270	2	100	\N	\N
184	6	103	\N	\N
184	1	1	\N	\N
182	1	1	\N	\N
182	6	103	\N	\N
189	6	103	\N	\N
189	7	101	\N	\N
10	6	103	\N	\N
10	3	105	\N	\N
10	5	8	\N	\N
4	1	1	wetodb	2018-10-08 13:00:08.155521+00
10	1	1	\N	\N
281	7	101	\N	\N
134	1	1	\N	\N
243	3	105	\N	\N
4	8	10	\N	\N
105	6	103	\N	\N
7	6	103	\N	\N
7	3	105	\N	\N
7	7	102	\N	\N
7	5	8	\N	\N
7	2	100	\N	\N
7	15	20	\N	\N
7	1	1	\N	\N
7	8	10	\N	\N
131	8	10	\N	\N
242	1	1	\N	\N
242	3	105	\N	\N
242	6	103	\N	\N
125	2	100	\N	\N
170	19	166	\N	\N
125	6	103	\N	\N
170	6	4	radon_admin	2023-06-13 12:46:20.739033+00
125	7	101	\N	\N
281	16	6	\N	\N
170	18	150	radon_admin	2023-07-10 05:53:43.154+00
220	6	103	\N	\N
241	6	103	\N	\N
244	3	105	\N	\N
244	6	103	\N	\N
220	18	150	\N	\N
220	2	100	\N	\N
220	12	246	\N	\N
4	20	7	\N	\N
7	20	7	\N	\N
283	6	103	\N	\N
263	6	103	\N	\N
244	1	1	\N	\N
243	12	246	\N	\N
104	1	1	\N	\N
271	6	103	\N	\N
282	6	103	\N	\N
282	7	101	\N	\N
134	8	10	\N	\N
134	9	106	\N	\N
290	6	103	\N	\N
55	1	1	\N	\N
8	6	103	\N	\N
8	3	105	\N	\N
8	7	102	\N	\N
8	5	8	\N	\N
8	2	100	\N	\N
8	15	20	\N	\N
8	1	1	\N	\N
8	8	10	\N	\N
264	6	103	\N	\N
272	6	103	\N	\N
272	1	1	\N	\N
272	3	105	\N	\N
272	2	100	\N	\N
272	7	101	\N	\N
131	2	100	\N	\N
272	12	246	\N	\N
272	15	20	\N	\N
240	6	103	\N	\N
284	6	103	\N	\N
240	1	1	\N	\N
240	12	246	\N	\N
240	15	20	\N	\N
240	7	101	\N	\N
240	2	100	\N	\N
190	3	105	\N	\N
285	6	103	\N	\N
286	6	103	\N	\N
287	6	103	\N	\N
288	6	103	\N	\N
285	7	101	\N	\N
286	7	101	\N	\N
287	7	101	\N	\N
288	7	101	\N	\N
16	6	103	\N	\N
16	3	105	\N	\N
16	7	102	\N	\N
16	5	8	\N	\N
16	2	100	\N	\N
16	15	20	\N	\N
16	1	1	\N	\N
16	8	10	\N	\N
16	20	7	\N	\N
190	6	103	\N	\N
131	21	17	\N	\N
260	8	10	\N	\N
270	8	10	\N	\N
265	6	103	\N	\N
266	6	103	\N	\N
130	3	105	\N	\N
130	2	100	\N	\N
130	1	1	\N	\N
130	6	103	\N	\N
130	7	101	\N	\N
130	8	10	\N	\N
266	7	102	\N	\N
120	6	103	\N	\N
289	6	103	\N	\N
289	7	101	\N	\N
\.


--
-- PostgreSQL database dump complete
--

