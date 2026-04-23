--
-- PostgreSQL database cluster dump
--

\restrict yrbuVfRx2oRr1KdbY9tFUQpcVyQAnil8fbzwgiwGbi6RyWqcShY9zDEfYwbvuNj

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;






\unrestrict yrbuVfRx2oRr1KdbY9tFUQpcVyQAnil8fbzwgiwGbi6RyWqcShY9zDEfYwbvuNj

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict oYKnGO6wHHehHhzRkwGZm6YmcgLtJhbgmoVy8eAvRmp9byUbPhUkw4By8hOatGz

-- Dumped from database version 14.20 (Ubuntu 14.20-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.20 (Ubuntu 14.20-0ubuntu0.22.04.1)

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
-- PostgreSQL database dump complete
--

\unrestrict oYKnGO6wHHehHhzRkwGZm6YmcgLtJhbgmoVy8eAvRmp9byUbPhUkw4By8hOatGz

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict pR06mbotR0SH8K71yfycew33CU4OeuKHZh2wb9ArnEiJ9GHeWYZPvMpXbMOgkfL

-- Dumped from database version 14.20 (Ubuntu 14.20-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.20 (Ubuntu 14.20-0ubuntu0.22.04.1)

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
-- PostgreSQL database dump complete
--

\unrestrict pR06mbotR0SH8K71yfycew33CU4OeuKHZh2wb9ArnEiJ9GHeWYZPvMpXbMOgkfL

--
-- Database "seng3010" dump
--

--
-- PostgreSQL database dump
--

\restrict YZnmeRr2gdptY8eUWfcoszjeKFkkwydnzaS37eLTasOLD4y275sjnTltZpoN6OP

-- Dumped from database version 14.20 (Ubuntu 14.20-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.20 (Ubuntu 14.20-0ubuntu0.22.04.1)

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
-- Name: seng3010; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE seng3010 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


\unrestrict YZnmeRr2gdptY8eUWfcoszjeKFkkwydnzaS37eLTasOLD4y275sjnTltZpoN6OP
\connect seng3010
\restrict YZnmeRr2gdptY8eUWfcoszjeKFkkwydnzaS37eLTasOLD4y275sjnTltZpoN6OP

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
-- Name: faculty; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: faculty_faculty_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.faculty_faculty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: faculty_faculty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.faculty_faculty_id_seq OWNED BY public.faculty.faculty_id;


--
-- Name: faculty faculty_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.faculty ALTER COLUMN faculty_id SET DEFAULT nextval('public.faculty_faculty_id_seq'::regclass);


--
-- Data for Name: faculty; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.faculty (faculty_id, name, rank, email, phone, office, research_interest, remarks) FROM stdin;
\.


--
-- Name: faculty_faculty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.faculty_faculty_id_seq', 1, false);


--
-- Name: faculty faculty_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_email_key UNIQUE (email);


--
-- Name: faculty faculty_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_pkey PRIMARY KEY (faculty_id);


--
-- PostgreSQL database dump complete
--

\unrestrict YZnmeRr2gdptY8eUWfcoszjeKFkkwydnzaS37eLTasOLD4y275sjnTltZpoN6OP

--
-- PostgreSQL database cluster dump complete
--

