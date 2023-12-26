--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: estacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estacion (
    id integer NOT NULL,
    nombre character varying(100),
    direccion character varying(100)
);


ALTER TABLE public.estacion OWNER TO postgres;

--
-- Name: estacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estacion_id_seq OWNER TO postgres;

--
-- Name: estacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estacion_id_seq OWNED BY public.estacion.id;


--
-- Name: pasajero; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pasajero (
    id integer NOT NULL,
    nombre character varying(100),
    direccion_residencia character varying,
    fecha_nacimiento date
);


ALTER TABLE public.pasajero OWNER TO postgres;

--
-- Name: pasajero_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pasajero_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pasajero_id_seq OWNER TO postgres;

--
-- Name: pasajero_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pasajero_id_seq OWNED BY public.pasajero.id;


--
-- Name: trayecto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trayecto (
    id integer NOT NULL,
    id_tren integer,
    id_estacion integer,
    nombre character varying(100)
);


ALTER TABLE public.trayecto OWNER TO postgres;

--
-- Name: trayecto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trayecto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.trayecto_id_seq OWNER TO postgres;

--
-- Name: trayecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trayecto_id_seq OWNED BY public.trayecto.id;


--
-- Name: tren; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tren (
    id integer NOT NULL,
    modelo character varying(30),
    capacidad integer
);


ALTER TABLE public.tren OWNER TO postgres;

--
-- Name: tren_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tren_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tren_id_seq OWNER TO postgres;

--
-- Name: tren_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tren_id_seq OWNED BY public.tren.id;


--
-- Name: viaje; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.viaje (
    id integer NOT NULL,
    id_pasajero integer,
    id_trayecto integer,
    inicio date,
    fin date
);


ALTER TABLE public.viaje OWNER TO postgres;

--
-- Name: viaje_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.viaje_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.viaje_id_seq OWNER TO postgres;

--
-- Name: viaje_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.viaje_id_seq OWNED BY public.viaje.id;


--
-- Name: estacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estacion ALTER COLUMN id SET DEFAULT nextval('public.estacion_id_seq'::regclass);


--
-- Name: pasajero id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasajero ALTER COLUMN id SET DEFAULT nextval('public.pasajero_id_seq'::regclass);


--
-- Name: trayecto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trayecto ALTER COLUMN id SET DEFAULT nextval('public.trayecto_id_seq'::regclass);


--
-- Name: tren id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tren ALTER COLUMN id SET DEFAULT nextval('public.tren_id_seq'::regclass);


--
-- Name: viaje id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viaje ALTER COLUMN id SET DEFAULT nextval('public.viaje_id_seq'::regclass);


--
-- Data for Name: estacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estacion (id, nombre, direccion) FROM stdin;
1	Wilkinson and Sons	6 Superior Place
2	Crooks, Osinski and Collins	756 Orin Place
3	Franecki, Schuppe and Prohaska	9 Cardinal Hill
4	Spencer, Jacobi and Mosciski	298 Hoard Park
5	MacGyver-Wilderman	23 Mifflin Circle
6	Emmerich-Dickens	335 Prentice Place
7	Carter-Lockman	6 Spaight Circle
8	Schmitt LLC	04 Namekagon Way
9	Kautzer-Considine	47287 Mallory Lane
10	Romaguera-Gutkowski	35923 West Hill
11	Nolan-Heathcote	553 Truax Avenue
12	Streich-Crona	60 Ridge Oak Way
13	Fahey, Kohler and Schmitt	3 Forest Run Parkway
14	Hegmann, Schroeder and Nader	04 Twin Pines Court
15	Christiansen-Maggio	5098 Village Point
16	Lang Group	460 Cascade Pass
17	Altenwerth, Hand and Fahey	024 Dixon Road
18	Miller, Walsh and Lindgren	4166 Northwestern Park
19	Dach-Tremblay	2920 Reinke Terrace
20	Bednar, Schimmel and Zieme	11 Northview Avenue
21	Yost-Hoeger	313 Michigan Street
22	Lueilwitz-Kilback	604 Morningstar Crossing
23	Waelchi, Spencer and McCullough	2 North Avenue
24	Padberg-Grady	556 Morningstar Park
25	Runolfsdottir Inc	4035 Hansons Point
26	Murazik, Wisoky and Medhurst	9 Main Circle
27	Armstrong, Weissnat and Dach	3 Northfield Junction
28	Gleichner Group	48 Jay Drive
29	Reichel Group	2365 Veith Alley
30	Feest Group	4531 Colorado Park
31	Bruen, Dibbert and Davis	468 Carey Trail
32	Bosco, VonRueden and Considine	6667 Dovetail Plaza
33	Heidenreich-Raynor	7465 Reindahl Circle
34	Osinski Group	9535 Maryland Hill
35	Wiegand-Crist	43 Red Cloud Plaza
36	Skiles, Bogan and Dibbert	9 Delladonna Terrace
37	Ullrich, Prohaska and Lubowitz	9225 Bayside Lane
38	Marks-Mueller	37 Onsgard Way
39	Dicki, Kemmer and Wuckert	53573 Bayside Court
40	Ortiz-Lebsack	97946 Blackbird Circle
41	Braun and Sons	30 Fuller Place
42	Osinski Group	14145 Moland Point
43	Armstrong Group	58 Toban Street
44	Hammes, Funk and Hickle	3844 Victoria Park
45	Tillman, Kshlerin and Corwin	25 Eagle Crest Park
46	Kuphal LLC	96126 Warbler Circle
47	Corwin, Thiel and Reynolds	278 Arkansas Point
48	Hettinger and Sons	9131 Rieder Pass
49	Ortiz Group	395 Delaware Center
50	Kreiger-Auer	250 Garrison Crossing
51	Prohaska Inc	9047 Southridge Center
52	McKenzie, Bode and Kutch	79 Oriole Junction
53	Ward, Marvin and Schneider	213 Moland Alley
54	Herzog-Russel	22 Lakewood Junction
55	Little, Gulgowski and Veum	1 Morrow Road
56	Larson and Sons	062 Raven Place
57	Schowalter, Bednar and Nolan	83799 Colorado Court
58	Waters Group	78704 Morningstar Avenue
59	MacGyver and Sons	952 Pawling Center
60	Marks Inc	62 Buhler Way
61	Brown, Marvin and Braun	03 Forster Pass
62	Lind-Marks	0374 Mccormick Point
63	Wolf, Torp and Schoen	06748 Sommers Park
64	Bradtke-Stamm	367 Dixon Plaza
65	Koch-Ernser	954 Oakridge Crossing
66	O'Reilly-Denesik	097 Northfield Point
67	Kihn-Jones	823 Hanover Circle
68	Corwin-Jacobs	98 Roth Place
69	Green-Dickinson	8972 Forest Parkway
70	O'Reilly, Heller and Rodriguez	0311 Rockefeller Court
71	Mante, Macejkovic and Bergnaum	2697 Hooker Street
72	Luettgen LLC	6 Aberg Hill
73	Hudson-Ullrich	0 Mendota Plaza
74	Dickens-Wolf	829 Fieldstone Terrace
75	Langosh Group	3 Spaight Drive
76	Witting-Stehr	7 Badeau Avenue
77	Hudson Inc	8 Marquette Avenue
78	Estacion Centro	St 1#12
79	Kessler and Sons	20 Thierer Terrace
80	Purdy-Cassin	2158 Lakewood Gardens Alley
81	Howell, Considine and Fay	0457 Colorado Parkway
82	Herman-Berge	66404 John Wall Road
83	Ullrich, Green and Dach	66990 Morning Center
84	Larson LLC	90337 Hagan Crossing
85	Heathcote Inc	95 Cody Road
86	Bode Group	7557 Granby Avenue
87	Kling-Adams	752 Kipling Pass
88	Franecki, Will and Von	83 Farragut Street
89	Doyle Inc	72 Michigan Road
90	Shields, Olson and Wintheiser	6503 Cordelia Place
91	Weber-Marvin	53 Homewood Parkway
92	Fay-Hickle	033 Oak Crossing
93	Kiehn LLC	748 Sherman Road
94	Reilly-Stamm	03284 Shopko Junction
95	O'Kon-Stroman	0638 3rd Plaza
96	Williamson Inc	16950 Dawn Parkway
97	Johnston Group	7646 Homewood Road
98	Kohler, Turcotte and Kunze	8 Monica Avenue
99	Gleichner Group	92113 John Wall Parkway
100	Kunde-Boyer	154 Melby Junction
101	Nicolas, Nitzsche and Zieme	52650 Birchwood Trail
\.


--
-- Data for Name: pasajero; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pasajero (id, nombre, direccion_residencia, fecha_nacimiento) FROM stdin;
1	Gilligan Jiran	Macpherson	2022-12-28
2	Ximenez Ozelton	Fuller	2022-11-14
3	Evangeline Jarrelt	Ryan	2022-12-31
4	Alis Hurd	Delladonna	2022-12-20
5	Cordey Gossling	Di Loreto	2022-09-14
6	Lucine Yearsley	Jackson	2022-05-03
7	Harper Errichi	Monica	2023-01-17
8	Peta Jiricka	Browning	2023-01-20
9	Blake Measey	Forest	2023-03-16
10	Ciro Hamprecht	Kim	2022-07-26
11	Flori Bellefant	Hazelcrest	2023-03-15
12	Mortimer Bosanko	Dunning	2023-09-08
13	Val McCleod	Mayer	2023-01-18
14	Quent Deluze	Surrey	2023-04-17
15	Wallas Coultas	Buell	2023-01-03
16	Ches Casale	Morningstar	2022-08-29
17	Carlye Shoutt	Fremont	2022-05-09
18	Purcell Gloucester	Buena Vista	2022-12-25
19	Kathe Simonazzi	Corben	2023-01-15
20	Griffie Kasparski	Dexter	2023-03-30
21	Theodoric Zannelli	Stephen	2023-05-12
22	Yelena Cowlam	Pine View	2023-06-19
23	Beverlee Rimington	Warbler	2022-10-01
24	Flss Weatherhead	Kipling	2022-06-27
25	Yolanthe Preto	Banding	2023-08-26
26	Clemmie Krollman	Sheridan	2023-09-09
27	Doralia Panniers	Tennessee	2023-08-03
28	Wylma Lomb	Crowley	2022-12-11
29	Rogers Cramphorn	Boyd	2023-08-21
30	Clarisse Madgin	Milwaukee	2023-02-19
31	Bartlet Quadri	Nancy	2022-11-07
32	Hanson Malan	Sage	2023-07-23
33	Buckie Camin	Meadow Valley	2023-02-25
34	Carlyn Ellams	Hudson	2022-05-21
35	Rorke Ginnelly	South	2022-06-03
36	Karina Perillo	Sloan	2022-11-15
37	Verne Badgers	Lake View	2022-05-15
38	Denys Marshallsay	Oakridge	2023-08-01
39	Hilde Scarrott	Waywood	2023-06-11
40	Lonnie Clynman	Knutson	2023-09-24
41	Lise Fortie	Reindahl	2022-09-15
42	Noni Wilshaw	Carpenter	2023-09-18
43	Leonelle Moles	Truax	2023-12-11
44	Franklyn Orsman	Brentwood	2022-09-14
45	Emmye Ivanshintsev	Stang	2022-11-28
46	Micaela Keymar	Armistice	2023-10-03
47	Staffard Smouten	Reinke	2023-08-16
48	Leonidas Birnie	Victoria	2023-10-21
49	Kenna Abdee	Rowland	2023-09-29
50	Tommie Rennolds	Utah	2023-08-21
51	Erda Arent	Schiller	2023-08-13
52	Alene Greveson	Vahlen	2022-09-17
53	Melisande Baguley	Towne	2023-02-07
54	Wiley Ferbrache	Macpherson	2023-07-08
55	Ailyn Gladebeck	Clyde Gallagher	2023-07-11
56	Floria Lyddiatt	Trailsway	2022-08-27
57	Morten Nassi	Bluejay	2022-05-31
58	Esta De Cristoforo	Eagle Crest	2023-05-07
59	Marlee Cristofano	Saint Paul	2023-03-04
60	Biddie Headly	Cherokee	2023-01-05
61	Philippa Bemrose	Stephen	2023-08-20
62	Retha Ciciura	Bayside	2022-12-12
63	Huey Work	Longview	2023-05-24
64	Taite Birts	Nelson	2022-07-10
65	Teddy Scholcroft	Orin	2023-11-05
66	Amargo Dowall	Forster	2023-12-01
67	Elwood Jakaway	Susan	2023-05-19
68	Anetta Wolfendale	Lakewood	2023-07-31
69	Ximenes Manchester	Scoville	2023-09-02
70	Tammi Digwood	Artisan	2023-09-09
71	Aila Timmins	Pepper Wood	2022-11-14
72	Elissa Greenset	Vermont	2022-10-05
73	Adair Sobtka	Vera	2023-02-27
74	Mayer Vater	Debs	2022-06-21
75	Andriana Durrand	Carey	2023-12-05
76	Nani Meert	Starling	2022-07-22
77	Linda Hebbes	Prairie Rose	2022-08-18
78	Maryrose Curman	Park Meadow	2023-07-05
79	Lita Gwin	Waubesa	2022-08-16
80	Abeu Cossentine	Oxford	2023-08-16
81	Cordelie Gleaves	Banding	2022-08-11
82	Larissa Fresson	Farmco	2023-07-16
83	Flynn McAlinion	New Castle	2022-11-01
84	Cozmo Harwick	Mcguire	2022-12-23
85	Earle Marchington	Nelson	2023-12-09
86	Tyson Caplan	Sugar	2023-10-01
87	Chery Mebs	Bay	2023-05-04
88	Helen Pancoast	Weeping Birch	2023-08-16
89	Cam Corthes	David	2023-10-04
90	Inger Fritchly	Esker	2023-01-11
91	Scott Rawsen	Granby	2022-12-30
92	Reynolds Heppner	Fallview	2022-07-17
93	Merrielle Issatt	Bellgrove	2022-07-30
94	Bernardine Philipeau	Summerview	2023-12-17
95	Son Carsberg	Dixon	2022-11-27
96	Raynard Hartgill	Nobel	2022-10-04
97	Consalve Mazzey	Northland	2023-11-22
98	Juline Pollen	Knutson	2022-05-25
99	Mirelle Hamer	Thackeray	2022-11-27
100	Modestia Jeynes	Springview	2023-08-08
\.


--
-- Data for Name: trayecto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trayecto (id, id_tren, id_estacion, nombre) FROM stdin;
1	1	78	Ruta 1
2	35	86	\N
3	71	3	\N
4	90	54	\N
5	76	88	\N
6	27	92	\N
7	76	14	\N
8	74	51	\N
9	60	35	\N
10	87	68	\N
11	86	38	\N
12	93	74	\N
13	100	45	\N
14	9	75	\N
15	83	8	\N
16	7	45	\N
17	81	85	\N
18	73	24	\N
19	86	26	\N
20	81	5	\N
21	97	83	\N
22	42	28	\N
23	44	91	\N
24	88	52	\N
25	14	94	\N
26	61	8	\N
27	22	86	\N
28	26	99	\N
29	58	52	\N
30	79	32	\N
31	7	50	\N
32	26	13	\N
33	24	80	\N
34	99	54	\N
35	63	97	\N
36	59	12	\N
37	68	82	\N
38	96	41	\N
39	11	76	\N
40	72	25	\N
41	79	44	\N
42	74	19	\N
43	73	66	\N
44	88	84	\N
45	28	9	\N
46	5	29	\N
47	30	73	\N
48	76	70	\N
49	40	57	\N
50	42	23	\N
51	79	58	\N
52	41	73	\N
53	67	88	\N
54	59	83	\N
55	13	87	\N
56	52	32	\N
57	81	93	\N
58	98	91	\N
59	27	19	\N
60	86	97	\N
61	35	101	\N
62	8	51	\N
63	34	55	\N
64	96	52	\N
65	95	1	\N
66	53	9	\N
67	56	87	\N
68	92	85	\N
69	50	30	\N
70	82	20	\N
71	64	90	\N
72	32	9	\N
73	2	33	\N
74	94	22	\N
75	28	24	\N
76	32	100	\N
77	28	12	\N
78	3	74	\N
79	49	78	\N
80	37	72	\N
81	24	96	\N
82	72	100	\N
83	9	37	\N
84	92	17	\N
85	67	24	\N
86	15	14	\N
87	63	31	\N
88	53	8	\N
89	60	17	\N
90	67	11	\N
91	81	6	\N
92	61	57	\N
93	1	70	\N
94	53	55	\N
95	74	81	\N
96	27	42	\N
97	71	96	\N
98	64	75	\N
99	21	79	\N
100	58	17	\N
101	84	59	\N
\.


--
-- Data for Name: tren; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tren (id, modelo, capacidad) FROM stdin;
1	Modelo 1	100
2	Discovery	1
3	Montero	2
4	Wrangler	3
5	E-Series	4
6	626	5
7	Town & Country	6
8	XT	7
9	LS	8
10	B9 Tribeca	9
11	2500 Club Coupe	10
12	Focus	11
13	G6	12
14	Accent	13
15	B-Series Plus	14
16	5 Series	15
17	Maxima	16
18	Explorer	17
19	2500	18
20	Range Rover	19
21	Express 2500	20
22	F-Series Super Duty	21
23	Sierra 1500	22
24	S-Class	23
25	G37	24
26	Bonneville	25
27	Gallardo	26
28	300ZX	27
29	Expo	28
30	Legend	29
31	F250	30
32	Grand Cherokee	31
33	Avalon	32
34	Pajero	33
35	Grand Caravan	34
36	LX	35
37	1500	36
38	Accent	37
39	Elan	38
40	Jetta	39
41	Sable	40
42	Crossfire	41
43	F150	42
44	LR2	43
45	SJ	44
46	Murciélago	45
47	Sable	46
48	MKX	47
49	Vantage	48
50	F250	49
51	XF	50
52	Highlander	51
53	3 Series	52
54	GS	53
55	Land Cruiser	54
56	RL	55
57	Festiva	56
58	S60	57
59	Pathfinder	58
60	Leone	59
61	Corvair 500	60
62	LeMans	61
63	A6	62
64	X-Type	63
65	Boxster	64
66	Concorde	65
67	Sierra	66
68	911	67
69	2500 Club Coupe	68
70	B-Series	69
71	Mirage	70
72	Celica	71
73	Ranger	72
74	Grand Prix	73
75	Camaro	74
76	ES	75
77	EXP	76
78	Altima	77
79	Discovery	78
80	Dakota Club	79
81	Murciélago	80
82	Town Car	81
83	Neon	82
84	XK	83
85	X5 M	84
86	Acadia	85
87	Sable	86
88	Celica	87
89	Titan	88
90	Continental GTC	89
91	QX56	90
92	TT	91
93	NSX	92
94	Galant	93
95	Suburban 1500	94
96	Sterling	95
97	7 Series	96
98	MX-3	97
99	911	98
100	Durango	99
101	DeVille	100
\.


--
-- Data for Name: viaje; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.viaje (id, id_pasajero, id_trayecto, inicio, fin) FROM stdin;
2	37	47	2023-12-05	2023-03-20
3	36	2	2023-01-03	2023-07-04
4	27	25	2022-08-18	2023-11-28
5	27	38	2023-12-15	2023-08-22
6	69	5	2023-08-01	2023-03-04
7	89	48	2022-09-10	2023-10-12
8	89	19	2022-02-06	2023-08-18
9	95	95	2022-07-25	2023-08-05
10	19	36	2022-07-01	2023-05-24
11	5	90	2022-02-10	2023-11-28
12	36	62	2023-10-09	2023-08-19
13	91	58	2023-06-17	2023-04-26
14	45	58	2023-02-21	2023-02-27
15	46	91	2023-12-02	2023-05-30
16	56	33	2022-06-10	2023-12-04
17	67	41	2023-11-01	2023-03-21
18	97	37	2023-07-31	2023-07-24
19	4	72	2022-02-24	2023-12-22
20	83	1	2023-02-06	2023-07-06
21	94	34	2022-05-18	2023-06-20
22	31	92	2023-04-05	2023-11-03
23	39	57	2022-02-08	2023-01-11
24	14	99	2023-02-12	2023-11-20
25	87	28	2022-06-29	2023-01-21
26	45	67	2022-08-10	2023-07-03
27	47	71	2022-05-28	2023-01-03
28	7	92	2023-05-15	2023-01-17
29	13	54	2022-11-16	2023-06-30
30	24	89	2023-09-23	2023-10-11
31	71	31	2023-10-27	2023-01-10
32	41	58	2023-10-25	2023-04-17
33	31	35	2022-07-24	2023-10-08
34	70	20	2022-11-13	2023-02-11
35	82	2	2023-07-17	2023-03-07
36	39	12	2022-12-26	2023-01-02
37	69	68	2022-01-31	2023-04-11
38	91	95	2022-07-10	2023-04-16
39	6	8	2023-12-21	2023-09-20
40	80	30	2022-12-24	2023-08-03
41	42	82	2023-11-04	2023-03-30
42	8	30	2023-08-02	2023-05-21
43	65	86	2022-01-27	2023-03-30
44	85	39	2022-04-25	2023-02-07
45	74	82	2023-08-08	2023-03-20
46	66	96	2022-03-16	2023-10-18
47	54	15	2023-03-31	2023-10-16
48	80	62	2022-11-28	2023-12-06
49	79	79	2023-03-04	2023-10-07
50	24	46	2022-11-07	2023-11-21
51	22	58	2023-09-05	2023-08-22
52	18	84	2022-01-17	2023-01-16
53	13	95	2023-11-10	2023-05-04
54	3	6	2022-02-09	2023-10-31
55	62	66	2023-11-29	2023-03-20
56	94	83	2022-02-04	2023-10-09
57	43	83	2023-09-18	2023-11-25
58	91	1	2023-08-10	2023-05-10
59	53	29	2023-05-15	2023-01-28
60	41	87	2022-07-19	2023-04-08
61	53	83	2023-08-09	2023-01-18
62	79	49	2023-12-01	2023-04-30
63	68	51	2023-04-02	2023-04-10
64	73	25	2023-09-30	2023-09-23
65	31	101	2022-11-09	2023-06-14
66	99	19	2022-03-21	2023-08-13
67	99	64	2023-01-03	2023-07-28
68	77	71	2022-12-15	2023-05-31
69	7	19	2023-02-18	2023-01-12
70	35	20	2022-08-07	2023-04-14
71	67	23	2022-10-02	2023-09-05
72	53	3	2022-12-06	2023-12-16
73	90	28	2023-08-19	2023-03-12
74	5	53	2023-03-07	2023-02-25
75	75	55	2023-10-28	2023-12-21
76	42	48	2022-06-26	2023-07-22
77	65	57	2023-07-05	2023-11-30
78	58	45	2023-07-20	2023-06-26
79	67	39	2022-04-10	2023-03-21
80	88	48	2023-12-15	2023-09-30
81	86	27	2022-06-17	2023-12-22
82	37	10	2023-07-26	2023-12-04
83	81	27	2023-03-20	2023-12-05
84	36	100	2023-10-05	2023-02-15
85	9	53	2023-01-21	2023-10-06
86	76	37	2023-10-07	2023-12-09
87	28	33	2023-12-02	2023-02-02
88	27	46	2022-10-25	2023-05-15
89	56	40	2022-04-14	2023-09-15
90	85	19	2023-04-30	2023-07-21
91	63	53	2022-01-16	2023-12-14
92	97	56	2023-07-30	2023-03-27
93	50	84	2023-12-21	2023-08-14
94	39	35	2022-03-14	2023-09-17
95	94	56	2023-03-30	2023-01-01
96	18	76	2023-05-26	2023-07-05
97	96	7	2022-05-04	2023-07-21
98	91	59	2023-09-03	2023-07-26
99	55	27	2022-01-07	2023-10-21
100	82	33	2022-01-09	2023-04-28
101	79	35	2023-10-27	2023-03-20
\.


--
-- Name: estacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estacion_id_seq', 101, true);


--
-- Name: pasajero_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pasajero_id_seq', 100, true);


--
-- Name: trayecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trayecto_id_seq', 101, true);


--
-- Name: tren_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tren_id_seq', 101, true);


--
-- Name: viaje_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.viaje_id_seq', 101, true);


--
-- Name: estacion estacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estacion
    ADD CONSTRAINT estacion_pkey PRIMARY KEY (id);


--
-- Name: pasajero pasajero_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasajero
    ADD CONSTRAINT pasajero_pkey PRIMARY KEY (id);


--
-- Name: trayecto trayecto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trayecto
    ADD CONSTRAINT trayecto_pkey PRIMARY KEY (id);


--
-- Name: tren tren_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tren
    ADD CONSTRAINT tren_pkey PRIMARY KEY (id);


--
-- Name: viaje viaje_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viaje
    ADD CONSTRAINT viaje_pkey PRIMARY KEY (id);


--
-- Name: trayecto trayecto_estacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trayecto
    ADD CONSTRAINT trayecto_estacion_fkey FOREIGN KEY (id_estacion) REFERENCES public.estacion(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: trayecto trayecto_tren_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trayecto
    ADD CONSTRAINT trayecto_tren_fkey FOREIGN KEY (id_tren) REFERENCES public.tren(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: viaje viaje_pasajero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viaje
    ADD CONSTRAINT viaje_pasajero_fkey FOREIGN KEY (id_pasajero) REFERENCES public.pasajero(id);


--
-- Name: viaje viaje_trayecto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viaje
    ADD CONSTRAINT viaje_trayecto_fkey FOREIGN KEY (id_trayecto) REFERENCES public.trayecto(id);


--
-- Name: TABLE estacion; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.estacion TO usuario_consulta;


--
-- Name: TABLE pasajero; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.pasajero TO usuario_consulta;


--
-- Name: TABLE trayecto; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.trayecto TO usuario_consulta;


--
-- Name: TABLE tren; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.tren TO usuario_consulta;


--
-- Name: TABLE viaje; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,UPDATE ON TABLE public.viaje TO usuario_consulta;


--
-- PostgreSQL database dump complete
--

