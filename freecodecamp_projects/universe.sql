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
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    qtd_bodies integer,
    galaxy_id integer NOT NULL,
    light_years numeric(3,1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    has_water boolean,
    planet_id integer NOT NULL,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    temperature numeric(3,1),
    is_spherical boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    is_spherical boolean,
    planet_id integer,
    galaxy_id integer NOT NULL,
    temperature numeric(3,1)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: visitors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.visitors (
    visitors_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    class character varying(20) NOT NULL,
    nacionality character varying(30)
);


ALTER TABLE public.visitors OWNER TO freecodecamp;

--
-- Name: visitors_visitor_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.visitors_visitor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visitors_visitor_id_seq OWNER TO freecodecamp;

--
-- Name: visitors_visitor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.visitors_visitor_id_seq OWNED BY public.visitors.visitors_id;


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: visitors visitors_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.visitors ALTER COLUMN visitors_id SET DEFAULT nextval('public.visitors_visitor_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('via lactea', 300, NULL, 1, NULL);
INSERT INTO public.galaxy VALUES ('aldebaran', 627, NULL, 2, NULL);
INSERT INTO public.galaxy VALUES ('helix nebula', 154, 74, 3, 6.0);
INSERT INTO public.galaxy VALUES ('the_red_retangle', 904, 125, 4, 5.0);
INSERT INTO public.galaxy VALUES ('mihalklix', 57, 6, 5, 89.5);
INSERT INTO public.galaxy VALUES ('tailbox', 900, 125, 6, 90.0);
INSERT INTO public.galaxy VALUES ('fuc', 2, 7, 15, 89.5);
INSERT INTO public.galaxy VALUES ('ailb', 90, 125, 8, 70.0);
INSERT INTO public.galaxy VALUES ('school', 159, 9, 85, 9.5);
INSERT INTO public.galaxy VALUES ('klb', 80, 15, 10, 7.0);
INSERT INTO public.galaxy VALUES ('school', 1577, 92, 9, 9.5);
INSERT INTO public.galaxy VALUES ('milhouhose', 801, 15, 7, 7.0);
INSERT INTO public.galaxy VALUES ('alreax', 177, 9, 12, 1.5);
INSERT INTO public.galaxy VALUES ('milhouhose', 801, 15, 11, 7.0);
INSERT INTO public.galaxy VALUES ('xtz', 101, 90, 13, 1.5);
INSERT INTO public.galaxy VALUES ('melboruf', 1, 15, 14, 55.0);
INSERT INTO public.galaxy VALUES ('tawtrop', 1001, 900, 16, 12.5);
INSERT INTO public.galaxy VALUES ('ruf-guns', 15, 15, 17, 81.0);
INSERT INTO public.galaxy VALUES ('pullwfroaf', 1001, 9000, 18, 2.5);
INSERT INTO public.galaxy VALUES ('guns-roses', 555, 158, 19, 8.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4, 'lua', false, 9999, 'lua da terra');
INSERT INTO public.moon VALUES (5, 'enceladus', true, 9998, '');
INSERT INTO public.moon VALUES (6, 'lua 1', true, 9997, NULL);
INSERT INTO public.moon VALUES (7, 'lua 2', true, 9996, NULL);
INSERT INTO public.moon VALUES (8, 'lua 3', false, 9995, NULL);
INSERT INTO public.moon VALUES (9, 'lua 4', true, 9994, NULL);
INSERT INTO public.moon VALUES (10, 'lua 5', false, 9993, NULL);
INSERT INTO public.moon VALUES (11, 'lua 7', true, 9992, NULL);
INSERT INTO public.moon VALUES (12, 'lua 6', false, 9991, NULL);
INSERT INTO public.moon VALUES (13, 'lua 8', true, 9990, NULL);
INSERT INTO public.moon VALUES (14, 'lua 9', false, 9989, NULL);
INSERT INTO public.moon VALUES (15, 'dheimos', false, 9988, NULL);
INSERT INTO public.moon VALUES (16, 'calisto', true, 9987, NULL);
INSERT INTO public.moon VALUES (17, 'ganymede', false, 9986, NULL);
INSERT INTO public.moon VALUES (18, 'dione', true, 9985, NULL);
INSERT INTO public.moon VALUES (19, 'mimas', false, 9984, NULL);
INSERT INTO public.moon VALUES (20, 'hyperion', false, 9983, NULL);
INSERT INTO public.moon VALUES (21, 'titania', true, 9982, NULL);
INSERT INTO public.moon VALUES (22, 'oberon', false, 9981, NULL);
INSERT INTO public.moon VALUES (23, 'charon', true, 9980, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (9999, 'terra', 39.5, true, 100);
INSERT INTO public.planet VALUES (9998, 'saturno', 12.2, true, 101);
INSERT INTO public.planet VALUES (9997, 'uranus', 55.6, false, 108);
INSERT INTO public.planet VALUES (9996, 'mars', 51.7, true, 3);
INSERT INTO public.planet VALUES (9995, 'eath-blue', 14.6, false, 4);
INSERT INTO public.planet VALUES (9994, 'arxutres', 22.8, false, 5);
INSERT INTO public.planet VALUES (9993, 'plutus', 5.6, false, 301);
INSERT INTO public.planet VALUES (9992, 'plazrs', 91.7, true, 302);
INSERT INTO public.planet VALUES (9991, 'arzeroth', 44.6, false, 303);
INSERT INTO public.planet VALUES (9990, 'ur', 22.1, false, 304);
INSERT INTO public.planet VALUES (9989, 'all hilak', 58.1, false, 305);
INSERT INTO public.planet VALUES (9988, 'aLv-90', 91.7, true, 306);
INSERT INTO public.planet VALUES (9987, 'tocantins', 74.6, false, 307);
INSERT INTO public.planet VALUES (9986, 'goias', 2.1, false, 308);
INSERT INTO public.planet VALUES (9985, 'salamander', 58.8, true, 406);
INSERT INTO public.planet VALUES (9984, 'skypea', 31.7, true, 501);
INSERT INTO public.planet VALUES (9983, 'sugar', 77.5, false, 407);
INSERT INTO public.planet VALUES (9982, 'jaguar', 42.2, false, 909);
INSERT INTO public.planet VALUES (9981, 'kong', 58.8, true, 403);
INSERT INTO public.planet VALUES (9980, 'fleur', 31.7, false, 408);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (100, 'roma', false, 9999, 2, NULL);
INSERT INTO public.star VALUES (101, 'sparta', true, 9998, 1, NULL);
INSERT INTO public.star VALUES (3, 'canopus', false, NULL, 6, 99.0);
INSERT INTO public.star VALUES (4, 'sirius', true, NULL, 4, 10.0);
INSERT INTO public.star VALUES (5, 'procyon', true, NULL, 5, 66.0);
INSERT INTO public.star VALUES (301, 'superyon', false, NULL, 3, 29.0);
INSERT INTO public.star VALUES (302, 'angel', true, NULL, 7, 89.0);
INSERT INTO public.star VALUES (303, 'asp-234', false, NULL, 8, 89.0);
INSERT INTO public.star VALUES (304, 'dona-florinda', false, NULL, 9, 5.0);
INSERT INTO public.star VALUES (305, 'anx', true, NULL, 10, 11.6);
INSERT INTO public.star VALUES (306, 'vega', false, NULL, 11, 81.9);
INSERT INTO public.star VALUES (307, 'amazon-lily', true, NULL, 12, 56.9);
INSERT INTO public.star VALUES (308, 'fluanx', true, NULL, 13, 71.6);
INSERT INTO public.star VALUES (406, 'pollux', false, NULL, 14, 81.9);
INSERT INTO public.star VALUES (407, 'egg-head', true, NULL, 15, 26.9);
INSERT INTO public.star VALUES (408, 'frateux', false, NULL, 16, 1.6);
INSERT INTO public.star VALUES (501, 'redmi3', false, NULL, 17, 11.9);
INSERT INTO public.star VALUES (403, 'hachinosu', true, NULL, 18, 86.9);
INSERT INTO public.star VALUES (108, 'wano', true, NULL, 19, 16.4);
INSERT INTO public.star VALUES (909, 'rafteux', false, NULL, 85, 22.2);


--
-- Data for Name: visitors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.visitors VALUES (1, 'momonga', 32, 'prime', 'nazarick');
INSERT INTO public.visitors VALUES (2, 'albedo', 28, 'prime', 'nazarick');
INSERT INTO public.visitors VALUES (3, 'agostinho', 37, 'cheap', 'brasilian');
INSERT INTO public.visitors VALUES (4, 'gerrard', 38, 'prime', 'england');
INSERT INTO public.visitors VALUES (5, 'beckham', 42, 'prime', 'EUA');
INSERT INTO public.visitors VALUES (6, 'del piero', 47, 'cheap', 'italian');


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 23, true);


--
-- Name: visitors_visitor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.visitors_visitor_id_seq', 6, true);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_key UNIQUE (planet_id);


--
-- Name: visitors visitors_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.visitors
    ADD CONSTRAINT visitors_name_key UNIQUE (name);


--
-- Name: visitors visitors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.visitors
    ADD CONSTRAINT visitors_pkey PRIMARY KEY (visitors_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

