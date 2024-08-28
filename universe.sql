--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: extra_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra_table (
    name character varying(255),
    has_purpose boolean NOT NULL,
    value numeric(5,2),
    extra_table_id integer NOT NULL
);


ALTER TABLE public.extra_table OWNER TO freecodecamp;

--
-- Name: extra_table_extra_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_table_extra_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_table_extra_table_id_seq OWNER TO freecodecamp;

--
-- Name: extra_table_extra_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_table_extra_table_id_seq OWNED BY public.extra_table.extra_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(55),
    number_of_planets integer,
    galaxy_type character varying(50) NOT NULL,
    description character varying(255) NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(55),
    planet_id integer NOT NULL,
    moon_type character varying(50),
    has_diamond boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

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
    name character varying(55),
    planet_name text,
    has_life boolean,
    star_id integer NOT NULL
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(55),
    age_in_years integer,
    distance_from_earth_in_km numeric(9,4),
    is_hot boolean,
    galaxy_id integer NOT NULL
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
-- Name: extra_table extra_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_table ALTER COLUMN extra_table_id SET DEFAULT nextval('public.extra_table_extra_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: extra_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra_table VALUES ('Pagkikita', false, 123.45, 1);
INSERT INTO public.extra_table VALUES ('Siguraduhinmo', false, 456.45, 2);
INSERT INTO public.extra_table VALUES ('Pagisipanmo', false, 678.45, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Namek', 533, 'default-type', 'default-description');
INSERT INTO public.galaxy VALUES (2, 'Mikmik', 510, 'default-type', 'default-description');
INSERT INTO public.galaxy VALUES (3, 'Kioa', 5, 'default-type', 'default-description');
INSERT INTO public.galaxy VALUES (4, 'Bo9', 298457, 'default-type', 'default-description');
INSERT INTO public.galaxy VALUES (5, 'Bo1', 1923, 'default-type', 'default-description');
INSERT INTO public.galaxy VALUES (6, 'BoBo', 192083712, 'default-type', 'default-description');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Meen', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Minsan', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Naq', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'M1', 1, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'M2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'M3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'M4', 4, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'M5', 5, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'M6', 6, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'M7', 7, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'M8', 8, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'M9', 9, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'M10', 10, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'M11', 11, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'M12', 12, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'M13', 1, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'M14', 2, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'M15', 3, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'M16', 4, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'M17', 5, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'B310', 'Kral', true, 1);
INSERT INTO public.planet VALUES (2, '610A', 'Maniwala', true, 2);
INSERT INTO public.planet VALUES (3, '610B', 'Fear', false, 3);
INSERT INTO public.planet VALUES (4, 'B1', 'Bee1', true, 4);
INSERT INTO public.planet VALUES (5, 'B2', 'Bee2', true, 4);
INSERT INTO public.planet VALUES (6, 'B3', 'Bee3', true, 3);
INSERT INTO public.planet VALUES (7, 'B4', 'Bee4', true, 2);
INSERT INTO public.planet VALUES (8, 'B5', 'Bee5', true, 3);
INSERT INTO public.planet VALUES (9, 'B6', 'Bee6', true, 1);
INSERT INTO public.planet VALUES (10, 'B7', 'Bee7', false, 2);
INSERT INTO public.planet VALUES (11, 'B8', 'Bee8', true, 5);
INSERT INTO public.planet VALUES (12, 'B9', 'Bee9', true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Althea', 143, 5000.2500, true, 1);
INSERT INTO public.star VALUES (2, 'Hart', 1, 90123.1235, false, 2);
INSERT INTO public.star VALUES (3, 'Dikali', 98123, 81739.9852, true, 3);
INSERT INTO public.star VALUES (4, 'Marga', 10, 123.9012, false, 3);
INSERT INTO public.star VALUES (5, 'Rine', 9, 123.4560, true, 2);
INSERT INTO public.star VALUES (6, 'Sara', 11, 456.3210, true, 1);


--
-- Name: extra_table_extra_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_table_extra_table_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: extra_table extra_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_table
    ADD CONSTRAINT extra_table_pkey PRIMARY KEY (extra_table_id);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: extra_table unique_extra_table_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_table
    ADD CONSTRAINT unique_extra_table_id UNIQUE (extra_table_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

