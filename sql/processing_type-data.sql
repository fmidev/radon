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
-- Data for Name: processing_type; Type: TABLE DATA; Schema: public; Owner: wetodb
--

COPY processing_type (id, name, description, last_updater, last_updated) FROM stdin;
1	NOPROC	No processing	\N	\N
2	PROBGE	Probability greater than or equal	\N	\N
3	PROBGT	Probability greater than	\N	\N
4	PROBLE	Probability less than or equal	\N	\N
5	PROBLT	Probability less than	\N	\N
6	PROBEQ	Probability equal to	\N	\N
7	PROBIN	Probability in list of values	\N	\N
8	FRACTILE	Fractile	\N	\N
9	PROBGE_AREA	Probability greater than or equal, using an area aggregation	\N	\N
10	PROBGT_AREA	Probability greater than, using an area aggregation	\N	\N
11	PROBLE_AREA	Probability less than or equal, using an area aggregation	\N	\N
12	PROBLT_AREA	Probability less than, using an area aggregation	\N	\N
13	PROBEQ_AREA	Probability equal to, using an area aggregation	\N	\N
14	PROBIN_AREA	Probability in list of values, using an area aggregation	\N	\N
15	BIAS_CORR	Bias correction	\N	\N
15	MEAN	Mean value	\N	\N
15	STDDEV	Standard deviation	\N	\N
\.

SELECT pg_catalog.setval('processing_type_id_seq', 15, true);

--
-- PostgreSQL database dump complete
--

