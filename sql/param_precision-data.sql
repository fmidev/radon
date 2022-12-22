--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.6 (Homebrew)

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
-- Data for Name: param_precision; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.param_precision (id, param_id, "precision", last_updater, last_updated) FROM stdin;
2	1026	0	\N	\N
3	719	0	\N	\N
5	379	1	\N	\N
6	386	1	\N	\N
7	63	1	\N	\N
261	362	1	\N	\N
262	363	1	\N	\N
10	164	0	\N	\N
13	570	0	\N	\N
14	571	0	\N	\N
15	572	0	\N	\N
16	573	0	\N	\N
17	169	0	\N	\N
18	374	2	\N	\N
19	711	1	\N	\N
97	370	6	\N	\N
1	153	1	\N	\N
24	166	1	\N	\N
25	411	1	\N	\N
26	503	0	\N	\N
27	590	2	\N	\N
28	554	1	\N	\N
29	189	0	\N	\N
30	421	1	\N	\N
31	606	1	\N	\N
32	439	0	\N	\N
33	404	0	\N	\N
34	188	1	\N	\N
35	372	2	\N	\N
36	704	1	\N	\N
4	559	1	\N	\N
38	373	2	\N	\N
39	707	1	\N	\N
337	1227	0	\N	\N
41	219	2	\N	\N
314	1089	1	\N	\N
43	438	2	\N	\N
44	412	2	\N	\N
45	701	0	\N	\N
46	976	0	\N	\N
47	998	0	\N	\N
48	2	0	\N	\N
49	322	0	\N	\N
50	695	2	\N	\N
51	975	2	\N	\N
53	369	3	\N	\N
62	371	2	\N	\N
63	217	2	\N	\N
313	162	3	\N	\N
263	364	1	\N	\N
99	500	2	\N	\N
100	501	2	\N	\N
264	365	1	\N	\N
265	366	1	\N	\N
103	333	1	\N	\N
104	332	1	\N	\N
266	367	1	\N	\N
267	368	1	\N	\N
268	815	1	\N	\N
269	816	1	\N	\N
270	817	1	\N	\N
271	818	1	\N	\N
272	819	1	\N	\N
273	820	1	\N	\N
83	146	3	\N	\N
84	405	0	\N	\N
85	154	1	\N	\N
274	821	1	\N	\N
87	216	1	\N	\N
88	313	1	\N	\N
89	159	1	\N	\N
90	171	3	\N	\N
91	174	3	\N	\N
315	1090	2	\N	\N
93	774	0	\N	\N
94	1027	1	\N	\N
95	1030	1	\N	\N
275	822	1	\N	\N
276	355	1	\N	\N
277	356	1	\N	\N
278	357	1	\N	\N
279	358	1	\N	\N
280	359	1	\N	\N
281	360	1	\N	\N
282	361	1	\N	\N
283	823	1	\N	\N
284	824	1	\N	\N
285	825	1	\N	\N
286	826	1	\N	\N
287	827	1	\N	\N
288	828	1	\N	\N
289	829	1	\N	\N
290	830	1	\N	\N
291	341	2	\N	\N
292	342	2	\N	\N
293	343	2	\N	\N
294	344	2	\N	\N
295	345	2	\N	\N
296	346	2	\N	\N
297	347	2	\N	\N
298	804	2	\N	\N
299	805	2	\N	\N
300	806	2	\N	\N
301	807	2	\N	\N
302	808	2	\N	\N
303	809	2	\N	\N
304	810	2	\N	\N
305	811	2	\N	\N
306	812	2	\N	\N
307	813	2	\N	\N
308	814	2	\N	\N
309	962	2	\N	\N
310	963	2	\N	\N
311	964	2	\N	\N
312	965	2	\N	\N
52	163	2	\N	\N
54	504	3	\N	\N
55	506	3	\N	\N
56	181	3	\N	\N
57	324	3	\N	\N
58	441	3	\N	\N
59	201	3	\N	\N
60	200	3	\N	\N
61	326	3	\N	\N
80	509	3	\N	\N
318	1181	0	\N	\N
319	1182	0	\N	\N
320	980	1	\N	\N
322	982	1	\N	\N
323	234	3	\N	\N
324	235	3	\N	\N
325	236	3	\N	\N
326	237	3	\N	\N
327	1120	3	\N	\N
328	1121	3	\N	\N
329	1122	3	\N	\N
330	1123	3	\N	\N
331	1124	3	\N	\N
332	1119	3	\N	\N
321	1199	2	\N	\N
333	1033	0	\N	\N
186	334	1	\N	\N
187	335	1	\N	\N
188	336	1	\N	\N
189	337	1	\N	\N
190	338	1	\N	\N
191	339	1	\N	\N
192	340	1	\N	\N
193	788	1	\N	\N
194	789	1	\N	\N
195	790	1	\N	\N
196	791	1	\N	\N
197	792	1	\N	\N
198	793	1	\N	\N
199	794	1	\N	\N
200	795	1	\N	\N
201	862	1	\N	\N
202	863	1	\N	\N
203	864	1	\N	\N
204	865	1	\N	\N
205	866	1	\N	\N
206	867	1	\N	\N
207	868	1	\N	\N
208	869	1	\N	\N
209	870	1	\N	\N
210	871	1	\N	\N
211	872	1	\N	\N
212	873	1	\N	\N
213	874	1	\N	\N
334	642	3	\N	\N
335	523	5	\N	\N
214	875	1	\N	\N
215	876	1	\N	\N
216	877	1	\N	\N
217	878	1	\N	\N
218	879	1	\N	\N
219	880	1	\N	\N
220	881	1	\N	\N
221	882	1	\N	\N
222	883	1	\N	\N
20	377	2	\N	\N
316	1091	2	\N	\N
339	238	3	\N	\N
223	884	1	\N	\N
224	885	1	\N	\N
225	886	1	\N	\N
226	887	1	\N	\N
227	888	1	\N	\N
228	889	1	\N	\N
229	890	1	\N	\N
230	891	1	\N	\N
231	892	1	\N	\N
232	893	1	\N	\N
233	894	1	\N	\N
234	950	1	\N	\N
235	951	1	\N	\N
236	952	1	\N	\N
237	954	1	\N	\N
238	955	1	\N	\N
239	956	1	\N	\N
240	957	1	\N	\N
241	958	1	\N	\N
242	959	1	\N	\N
243	960	1	\N	\N
244	961	1	\N	\N
245	555	0	\N	\N
246	895	0	\N	\N
247	896	0	\N	\N
248	897	0	\N	\N
249	898	0	\N	\N
250	899	0	\N	\N
251	900	0	\N	\N
252	901	0	\N	\N
253	902	0	\N	\N
254	903	0	\N	\N
255	904	0	\N	\N
256	905	0	\N	\N
257	966	0	\N	\N
258	967	0	\N	\N
259	968	0	\N	\N
260	969	0	\N	\N
37	375	2	\N	\N
40	376	2	\N	\N
336	1129	2	\N	\N
340	239	3	\N	\N
341	240	3	\N	\N
342	241	3	\N	\N
343	242	3	\N	\N
344	263	3	\N	\N
345	264	3	\N	\N
346	265	3	\N	\N
347	266	3	\N	\N
348	267	3	\N	\N
349	564	3	\N	\N
350	1012	3	\N	\N
351	1013	3	\N	\N
352	1014	3	\N	\N
353	1015	3	\N	\N
354	1016	3	\N	\N
355	1017	3	\N	\N
356	255	3	\N	\N
357	256	3	\N	\N
358	681	3	\N	\N
359	682	3	\N	\N
360	683	3	\N	\N
361	684	3	\N	\N
362	1092	3	\N	\N
363	1095	3	\N	\N
364	1207	3	\N	\N
365	1209	3	\N	\N
366	1210	3	\N	\N
367	1211	3	\N	\N
368	1212	3	\N	\N
369	1213	3	\N	\N
370	1214	3	\N	\N
371	750	1	\N	\N
372	1435	4	\N	\N
373	1455	1	\N	\N
374	1458	1	\N	\N
376	1029	1	\N	\N
377	1028	1	\N	\N
378	139	0	\N	\N
380	981	0	\N	\N
379	983	1	\N	\N
\.


--
-- Name: param_precision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: radon_admin
--

SELECT pg_catalog.setval('public.param_precision_id_seq', 380, true);


--
-- PostgreSQL database dump complete
--

