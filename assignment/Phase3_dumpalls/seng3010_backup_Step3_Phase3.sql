--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: faculty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.faculty (
    faculty_id integer NOT NULL,
    name character varying(100) NOT NULL,
    rank character varying(70),
    email character varying(100),
    phone character varying(30),
    office character varying(50),
    research_interest text,
    remarks text
);


ALTER TABLE public.faculty OWNER TO postgres;

--
-- Name: faculty_faculty_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.faculty_faculty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faculty_faculty_id_seq OWNER TO postgres;

--
-- Name: faculty_faculty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.faculty_faculty_id_seq OWNED BY public.faculty.faculty_id;


--
-- Name: faculty_import2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.faculty_import2 (
    id text,
    honorific text,
    first text,
    mi text,
    last text,
    email text,
    phone text,
    office text,
    research_interests text,
    rank text,
    remark text,
    currently_employed text
);


ALTER TABLE public.faculty_import2 OWNER TO postgres;

--
-- Name: faculty faculty_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faculty ALTER COLUMN faculty_id SET DEFAULT nextval('public.faculty_faculty_id_seq'::regclass);


--
-- Data for Name: faculty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.faculty (faculty_id, name, rank, email, phone, office, research_interest, remarks) FROM stdin;
1	Dr. Karl Arahamson	Associate Professor	abrahamsonk@ecu.edu	252-328-9689	Sci-Tech C113	Programming Languages	Undergraduate Program Director
2	Ms. Sheaneatha D Applewhite-Hopkins	Administrative Assistant	applewhitehopkins16@ecu.edu	252-328-9680	Sci-Tech C107	\N	\N
3	Dr. Maral Azizi	Assistant Professor	azizim19@ecu.edu	252-328-9680	Sci-Tech C108	Software Engineering, Information Retrieval, Database Design, Machine Learning	\N
4	Dr. Qin Ding	Associate Professor	dingq@ecu.edu	252-328-9686	Sci-Tech C118	Databases, Data mining, Bioinformatics	\N
5	Dr. Krishnan Gopal	Associate Professor	gopal@ecu.edu	252-328-9688	Sci-Tech C118	Combinatorics, Cryptography and Information Security, Distributed Computing, Algorithms and Theoretical Computer Science	\N
6	Dr. Venkat N Gudivada	Professor	gudivadav15@ecu.edu	252-328-9680	Sci-Tech C-107	Data Management/Analytics, Information Retrieval/Systems, Natural Language Processing, Computer Vision, Personalized Learning	Department Chair
7	Dr. Nick Herndon	Assistant Professor	herndonn19@ecu.edu	252-328-9696	Sci-Tech C108	Artificial Intelligence, Machine Learning, Data Science, Big Data Analytics, and Computational Biology	\N
8	Dr. Mark Hills	Associate Professor	hillsma@ecu.edu	252-328-9692	Sci-Tech C110	Program Analysis, Programming Language Implementation, Domain-Specific Languages, Software Modeling and Verification, Software Analytics, Formal Semantics of Programming Languages	Graduate Program Director
9	Mr. Bobby Hoggard	Instructor	hoggardr@ecu.edu	252-328-9695	Sci-Tech C105	Cloud Computing, Computer Architecture, Web Applications, Computer Science Education	\N
10	Mr. John Jones	Adjunct Instructor	jonesjo@ecu.edu	252-328-9606	Sci-Tech 109	Data Structures and Algorithms, Digital Electronics, Software Construction, Networking, Data Center Virtualization, Distributed Computing, Storage Management, Operating Systems	\N
11	Dr. Jonathan A Saddler	Teaching Assistant Professor	saddlerj20@ecu.edu	252-328-9687	Sci-Tech C117	Software Engineering	\N
12	Dr. Kamran Sartipi	Assistant Professor	sartipik16@ecu.edu	252-328-9694	Sci-Tech C122	Software Engineering, Knowledge Engineering and Data Mining, Cyber Security and Data Privacy, User-Behavior based Access Control, Medical & Health Systems Integration and Informatics, Service Intelligence for Cloud, Decision Support Systems	\N
13	Dr. Ronnie Smith	Research Associate Professor	smithron@cs.ecu.edu	252-328-9687	Sci-Tech C117	Artificial Intelligence, Spoken Natural Languages	\N
14	Mr. Joel Sweatte	Instructor	sweattej@ecu.edu	252-328-9439	Sci-Tech C112	Data Center Virtualization, Cloud Computing, Mainframe Platform Computing, Storage Management	\N
15	Dr. Nasseh Tabrizi	Professor	tabrizim@ecu.edu	252-328-9691	Sci-Tech C112	Big Data Analytics, Cloud Computing, Computer Vision, Software Requirement Engineering, Information Retrieval, Virtual Reality, Machine Learning, Computer Science and Software Engineering Education	\N
16	Dr. Rui Wu	Assistant Professor	wur18@ecu.edu	252-328-9682	Sci-Tech C107	Data Processing and Visualization, Interdisciplinary Research	\N
17	Dr. Patyi Imre	Associate Professor	patyii@ecu.edu	252-328-6461	\N	\N	No
18	Ms. Sumati R Kulkarni	Teaching Assistant	\N	\N	\N	\N	\N
19	Ms. Logan G Childers	Teaching Assistant	\N	\N	\N	\N	\N
20	Mr. Gregory Knight	Adjunct Instructor	\N	\N	\N	\N	\N
21	Dr.  Sergiy Vilkomir	Associate Professor	\N	\N	\N	Software Testing	\N
22	Dr. Ding Junhua	Associate Professor	\N	\N	\N	Software Testing, Machine Learning	\N
23	Mr. David M Anderson	Teaching Assistant	\N	\N	\N	\N	\N
24	Mr. Aryan Azimzadeh	Teaching Assistant	\N	\N	\N	\N	\N
25	Mr. Shawn K Braddy	Teaching Assistant	\N	\N	\N	\N	\N
26	Dr. Masao Kishore	Associate Professor	\N	\N	\N	\N	\N
27	Mr. David R Hoffman	Teaching Assistant	\N	\N	\N	\N	\N
\.


--
-- Data for Name: faculty_import2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.faculty_import2 (id, honorific, first, mi, last, email, phone, office, research_interests, rank, remark, currently_employed) FROM stdin;
1	Dr.	Karl	\N	Arahamson	abrahamsonk@ecu.edu	252-328-9689	Sci-Tech C113	Programming Languages	Associate Professor	Undergraduate Program Director	Yes
2	Ms.	Sheaneatha	D	Applewhite-Hopkins	applewhitehopkins16@ecu.edu	252-328-9680	Sci-Tech C107	\N	Administrative Assistant	\N	Yes
3	Dr.	Maral	\N	Azizi	azizim19@ecu.edu	252-328-9680	Sci-Tech C108	Software Engineering, Information Retrieval, Database Design, Machine Learning	Assistant Professor	\N	Yes
4	Dr.	Qin	\N	Ding	dingq@ecu.edu	252-328-9686	Sci-Tech C118	Databases, Data mining, Bioinformatics	Associate Professor	\N	Yes
5	Dr.	Krishnan	\N	Gopal	gopal@ecu.edu	252-328-9688	Sci-Tech C118	Combinatorics, Cryptography and Information Security, Distributed Computing, Algorithms and Theoretical Computer Science	Associate Professor	\N	Yes
6	Dr.	Venkat	N	Gudivada	gudivadav15@ecu.edu	252-328-9680	Sci-Tech C-107	Data Management/Analytics, Information Retrieval/Systems, Natural Language Processing, Computer Vision, Personalized Learning	Professor	Department Chair	Yes
7	Dr.	Nick	\N	Herndon	herndonn19@ecu.edu	252-328-9696	Sci-Tech C108	Artificial Intelligence, Machine Learning, Data Science, Big Data Analytics, and Computational Biology	Assistant Professor	\N	Yes
8	Dr.	Mark	\N	Hills	hillsma@ecu.edu	252-328-9692	Sci-Tech C110	Program Analysis, Programming Language Implementation, Domain-Specific Languages, Software Modeling and Verification, Software Analytics, Formal Semantics of Programming Languages	Associate Professor	Graduate Program Director	Yes
9	Mr.	Bobby	\N	Hoggard	hoggardr@ecu.edu	252-328-9695	Sci-Tech C105	Cloud Computing, Computer Architecture, Web Applications, Computer Science Education	Instructor	\N	Yes
10	Mr.	John	\N	Jones	jonesjo@ecu.edu	252-328-9606	Sci-Tech 109	Data Structures and Algorithms, Digital Electronics, Software Construction, Networking, Data Center Virtualization, Distributed Computing, Storage Management, Operating Systems	Adjunct Instructor	\N	Yes
11	Dr.	Jonathan	A	Saddler	saddlerj20@ecu.edu	252-328-9687	Sci-Tech C117	Software Engineering	Teaching Assistant Professor	\N	Yes
12	Dr.	Kamran	\N	Sartipi	sartipik16@ecu.edu	252-328-9694	Sci-Tech C122	Software Engineering, Knowledge Engineering and Data Mining, Cyber Security and Data Privacy, User-Behavior based Access Control, Medical & Health Systems Integration and Informatics, Service Intelligence for Cloud, Decision Support Systems	Assistant Professor	\N	Yes
13	Dr.	Ronnie	\N	Smith	smithron@cs.ecu.edu	252-328-9687	Sci-Tech C117	Artificial Intelligence, Spoken Natural Languages	Research Associate Professor	\N	No
14	Mr.	Joel	\N	Sweatte	sweattej@ecu.edu	252-328-9439	Sci-Tech C112	Data Center Virtualization, Cloud Computing, Mainframe Platform Computing, Storage Management	Instructor	\N	Yes
15	Dr.	Nasseh	\N	Tabrizi	tabrizim@ecu.edu	252-328-9691	Sci-Tech C112	Big Data Analytics, Cloud Computing, Computer Vision, Software Requirement Engineering, Information Retrieval, Virtual Reality, Machine Learning, Computer Science and Software Engineering Education	Professor	\N	Yes
16	Dr.	Rui	\N	Wu	wur18@ecu.edu	252-328-9682	Sci-Tech C107	Data Processing and Visualization, Interdisciplinary Research	Assistant Professor	\N	Yes
17	Dr.	Patyi	\N	Imre	patyii@ecu.edu	252-328-6461	\N	\N	Associate Professor	No	\N
18	Ms.	Sumati	R	Kulkarni	\N	\N	\N	\N	Teaching Assistant	\N	No
19	Ms.	Logan	G	Childers	\N	\N	\N	\N	Teaching Assistant	\N	No
20	Mr.	Gregory	\N	Knight	\N	\N	\N	\N	Adjunct Instructor	\N	No
21	Dr.	 Sergiy	\N	Vilkomir	\N	\N	\N	Software Testing	Associate Professor	\N	No
22	Dr.	Ding	\N	Junhua	\N	\N	\N	Software Testing, Machine Learning	Associate Professor	\N	No
23	Mr.	David	M	Anderson	\N	\N	\N	\N	Teaching Assistant	\N	No
24	Mr.	Aryan	\N	Azimzadeh	\N	\N	\N	\N	Teaching Assistant	\N	No
25	Mr.	Shawn	K	Braddy	\N	\N	\N	\N	Teaching Assistant	\N	No
26	Dr.	Masao	\N	Kishore	\N	\N	\N	\N	Associate Professor	\N	No
27	Mr.	David	R	Hoffman	\N	\N	\N	\N	Teaching Assistant	\N	No
\.


--
-- Name: faculty_faculty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.faculty_faculty_id_seq', 1, false);


--
-- Name: faculty faculty_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_email_key UNIQUE (email);


--
-- Name: faculty faculty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_pkey PRIMARY KEY (faculty_id);


--
-- PostgreSQL database dump complete
--

