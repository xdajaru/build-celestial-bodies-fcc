--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    id integer,
    yakan integer NOT NULL,
    yakayan text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_yakan_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_yakan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_yakan_seq OWNER TO freecodecamp;

--
-- Name: galaxy_yakan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_yakan_seq OWNED BY public.galaxy.yakan;


--
-- Name: lebih; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lebih (
    id integer,
    ya integer,
    lebih_id integer NOT NULL,
    yagak integer NOT NULL,
    name character varying(11)
);


ALTER TABLE public.lebih OWNER TO freecodecamp;

--
-- Name: lebih_tidak_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lebih_tidak_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lebih_tidak_seq OWNER TO freecodecamp;

--
-- Name: lebih_tidak_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lebih_tidak_seq OWNED BY public.lebih.lebih_id;


--
-- Name: lebih_yagak_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lebih_yagak_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lebih_yagak_seq OWNER TO freecodecamp;

--
-- Name: lebih_yagak_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lebih_yagak_seq OWNED BY public.lebih.yagak;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    id integer,
    lanjut integer NOT NULL,
    lanjutya text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_lanjut_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_lanjut_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_lanjut_seq OWNER TO freecodecamp;

--
-- Name: moon_lanjut_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_lanjut_seq OWNED BY public.moon.lanjut;


--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    distance_from_earth integer,
    apakah_bulat boolean,
    apakah_dekat boolean,
    id integer,
    tambah integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_tambah_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_tambah_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_tambah_seq OWNER TO freecodecamp;

--
-- Name: planet_tambah_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_tambah_seq OWNED BY public.planet.tambah;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth integer,
    num numeric,
    description text,
    id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy yakan; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN yakan SET DEFAULT nextval('public.galaxy_yakan_seq'::regclass);


--
-- Name: lebih lebih_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lebih ALTER COLUMN lebih_id SET DEFAULT nextval('public.lebih_tidak_seq'::regclass);


--
-- Name: lebih yagak; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lebih ALTER COLUMN yagak SET DEFAULT nextval('public.lebih_yagak_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon lanjut; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN lanjut SET DEFAULT nextval('public.moon_lanjut_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet tambah; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN tambah SET DEFAULT nextval('public.planet_tambah_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Bima sakti', 1, 1, NULL);
INSERT INTO public.galaxy VALUES (2, 'asu', 2, 2, NULL);
INSERT INTO public.galaxy VALUES (3, 'bebek', 3, 3, NULL);
INSERT INTO public.galaxy VALUES (4, 'ya', 4, 4, NULL);
INSERT INTO public.galaxy VALUES (5, 'bebeq', 5, 5, NULL);
INSERT INTO public.galaxy VALUES (6, 'tikus', 6, 6, NULL);


--
-- Data for Name: lebih; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lebih VALUES (1, NULL, 1, 1, NULL);
INSERT INTO public.lebih VALUES (2, NULL, 2, 2, NULL);
INSERT INTO public.lebih VALUES (3, NULL, 3, 3, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'bulan', 1, 1, NULL);
INSERT INTO public.moon VALUES (2, NULL, 2, 2, NULL);
INSERT INTO public.moon VALUES (3, NULL, 3, 3, NULL);
INSERT INTO public.moon VALUES (4, NULL, 4, 4, NULL);
INSERT INTO public.moon VALUES (5, NULL, 5, 5, NULL);
INSERT INTO public.moon VALUES (6, NULL, 6, 6, NULL);
INSERT INTO public.moon VALUES (7, NULL, 7, 7, NULL);
INSERT INTO public.moon VALUES (8, NULL, 8, 8, NULL);
INSERT INTO public.moon VALUES (9, NULL, 9, 9, NULL);
INSERT INTO public.moon VALUES (10, NULL, 10, 10, NULL);
INSERT INTO public.moon VALUES (11, NULL, 11, 11, NULL);
INSERT INTO public.moon VALUES (12, NULL, 12, 12, NULL);
INSERT INTO public.moon VALUES (13, NULL, 13, 13, NULL);
INSERT INTO public.moon VALUES (14, NULL, 14, 14, NULL);
INSERT INTO public.moon VALUES (15, NULL, 15, 15, NULL);
INSERT INTO public.moon VALUES (16, NULL, 16, 16, NULL);
INSERT INTO public.moon VALUES (17, NULL, 17, 17, NULL);
INSERT INTO public.moon VALUES (18, NULL, 18, 18, NULL);
INSERT INTO public.moon VALUES (19, NULL, 19, 19, NULL);
INSERT INTO public.moon VALUES (20, NULL, 20, 20, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'namek', NULL, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES (11, 'jk', NULL, NULL, NULL, 2, 2);
INSERT INTO public.planet VALUES (12, 'iu', NULL, NULL, NULL, 3, 3);
INSERT INTO public.planet VALUES (13, 'ya', NULL, NULL, NULL, 4, 4);
INSERT INTO public.planet VALUES (14, 'kk', NULL, NULL, NULL, 5, 5);
INSERT INTO public.planet VALUES (15, 'jkl', NULL, NULL, NULL, 6, 6);
INSERT INTO public.planet VALUES (16, 'jkj', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (17, 'aa', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (18, 'asdfkj', NULL, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES (19, 'dslkfj', NULL, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES (20, 'jlo', NULL, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES (21, 'sdf', NULL, NULL, NULL, NULL, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Cancer', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'sagi', NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'iya', NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'tidak', NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'bagus', NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'yoi', NULL, NULL, NULL, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_yakan_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_yakan_seq', 6, true);


--
-- Name: lebih_tidak_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lebih_tidak_seq', 3, true);


--
-- Name: lebih_yagak_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lebih_yagak_seq', 3, true);


--
-- Name: moon_lanjut_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_lanjut_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: planet_tambah_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_tambah_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: lebih lebih_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lebih
    ADD CONSTRAINT lebih_name_key UNIQUE (name);


--
-- Name: lebih lebih_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lebih
    ADD CONSTRAINT lebih_pkey PRIMARY KEY (lebih_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_fkey FOREIGN KEY (id) REFERENCES public.star(id);


--
-- Name: star star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_fkey FOREIGN KEY (id) REFERENCES public.galaxy(id);


--
-- PostgreSQL database dump complete
--

