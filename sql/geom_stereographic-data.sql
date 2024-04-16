--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.6 (Homebrew)

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
-- Data for Name: geom_stereographic; Type: TABLE DATA; Schema: public; Owner: radon_admin
--

COPY public.geom_stereographic (id, name, ni, nj, first_point, di, dj, scanning_mode, orientation, description, last_updater, last_updated, earth_shape_id, datum_id, latin, lat_ts) FROM stdin;
1086	BLENDSCAN3000	685	765	0101000020E61000004F75C8CD70C317401D38674469874940	3000	3000	+x+y	20.0	Blend Scandinavia from extended LAPS	\N	\N	\N	\N	90	60
1057	ERASCAND	28	31	0101000020E610000000000000000018406666666666A64940	76000	76000	+x+y	20	ERA Interim area for Smartmet Scandinavia editor	\N	\N	\N	\N	90	60
213	MTHIPS25	290	225	0101000020E6100000CDCCCCCCCC4C33C06666666666E63840	25000	25000	+x+y	10	Polar stereographic area covering most of RCR	\N	\N	\N	\N	90	60
1071	PEPSSCAND	735	795	0101000020E6100000CDCCCCCCCCCC1E4048E17A14AE674A40	2465	2473	+x+y	20	PEPS Scandinavia	\N	\N	7	\N	90	60
1073	SMARTMET7500	270	300	0101000020E610000000000000000018406666666666A64940	7494.389	7479.167	+x+y	20.0	SmartMet Scandinavian area 7.5km resolution	\N	\N	1	\N	90	60
1096	SMARTMETSMALL7500	255	280	0101000020E6100000E561A1D634AF15406F8104C58F594A40	7361.039	7414.492	+x+y	20.0	SmartMet Scandinavian area 7.5km resolution, covering MEPS domain	\N	\N	1	\N	90	60
1110	SMARTMET2500	765	840	0101000020E6100000E561A1D634AF15406F8104C58F594A40	2447.256	2465.605	+x+y	20	SmartMet Scandinavian area 2.5km resolution	\N	\N	1	\N	90	60
1067	LAPSSCANLARGE	685	765	0101000020E6100000C7D9740470C3174012BEF73768874940	3000.0	3000.0	+x+y	20.0	LAPS Scandinavia extended domain	\N	\N	8	\N	90	60
41	LAPSSCAN	490	560	0101000020E6100000AA99B51490B61C4003250516C0244B40	3000	3000	+x+y	20	LAPS Analysis Area over Scandinavia	\N	\N	8	\N	90	60
610	NEMO609719	609	743	0101000020E6100000ED530220361555C0A937FE9F9ED34340	12500	12500	+x+y	-45	Polar stereographic area	wetodb	2016-08-18 08:34:48.271252+00	10	\N	90	90
1079	IASI_L2	171	191	0101000020E6100000AED51EF642F11740A73B4F3C678D4940	12017.543	12015.707	+x+y	20.0	IASI L2 satellite area over Europe	\N	\N	1	\N	90	60
40	LAPS3000	270	400	0101000020E61000009483D90418CE31402D27A1F485B04D40	3000	3000	+x+y	20	LAPS Analysis Area over Finland	\N	\N	8	\N	90	60
1125	SMARTMET11000	171	189	0101000020E6100000E561A1D634AF15406F8104C58F594A40	10998.258	11003.422	+x+y	20	SmartMet Scandinavian area 11km resolution	\N	\N	1	\N	90	60
\.


--
-- PostgreSQL database dump complete
--

