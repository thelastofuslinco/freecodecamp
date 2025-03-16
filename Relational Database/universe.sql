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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(20) NOT NULL,
    mass double precision NOT NULL,
    distance_from_earth double precision,
    type character varying(20)
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    is_spiral boolean NOT NULL,
    description text,
    size integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer,
    diameter integer NOT NULL,
    composition text,
    is_habitable boolean NOT NULL
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
    name character varying(20) NOT NULL,
    star_id integer,
    atmosphere text,
    has_life boolean NOT NULL,
    radius integer NOT NULL,
    age_in_millions_of_years numeric(10,2)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer,
    mass double precision NOT NULL,
    luminosity integer NOT NULL,
    has_planets boolean NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', 4100000, 26000, 'Supermassivo');
INSERT INTO public.black_hole VALUES (2, 'Cygnus X-1', 14, 6500, 'Estelar');
INSERT INTO public.black_hole VALUES (3, 'M87*', 6500000000, 53000000, 'Supermassivo');
INSERT INTO public.black_hole VALUES (4, 'NGC 1277', 17000000000, 220000000, 'Supermassivo');
INSERT INTO public.black_hole VALUES (5, 'LIGO', 2500000, 120000000, 'Estelar');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', true, 'Nearest spiral galaxy to Milky Way', 110000);
INSERT INTO public.galaxy VALUES (2, 'Triangulum', true, 'Part of the Local Group', 60000);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', false, 'A giant elliptical galaxy', 120000);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', true, 'A galaxy with a bright nucleus', 50000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', true, 'Famous for its spiral arms', 70000);
INSERT INTO public.galaxy VALUES (6, 'Milky Way', true, 'Our home galaxy', 100000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, 3475, 'Rock', false);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 22, 'Rock & Dust', false);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 12, 'Rock & Dust', false);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5, 5262, 'Ice & Rock', false);
INSERT INTO public.moon VALUES (5, 'Callisto', 5, 4821, 'Ice & Rock', false);
INSERT INTO public.moon VALUES (6, 'Io', 5, 3643, 'Sulfur & Rock', false);
INSERT INTO public.moon VALUES (7, 'Europa', 5, 3121, 'Ice & Water', false);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 5150, 'Methane & Ice', false);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, 504, 'Ice & Water', false);
INSERT INTO public.moon VALUES (10, 'Triton', 7, 2706, 'Ice & Rock', false);
INSERT INTO public.moon VALUES (11, 'Charon', 7, 1212, 'Ice & Rock', false);
INSERT INTO public.moon VALUES (12, 'Kepler-442b Moon 1', 8, 3000, 'Unknown', false);
INSERT INTO public.moon VALUES (13, 'Kepler-442b Moon 2', 8, 2500, 'Unknown', false);
INSERT INTO public.moon VALUES (14, 'Gliese 581g Moon', 9, 2800, 'Unknown', false);
INSERT INTO public.moon VALUES (15, 'HD 209458b Moon', 10, 3200, 'Unknown', false);
INSERT INTO public.moon VALUES (16, 'TOI 700 d Moon 1', 11, 3500, 'Unknown', false);
INSERT INTO public.moon VALUES (17, 'TOI 700 d Moon 2', 11, 2700, 'Unknown', false);
INSERT INTO public.moon VALUES (18, 'TRAPPIST-1e Moon 1', 12, 2400, 'Unknown', false);
INSERT INTO public.moon VALUES (19, 'TRAPPIST-1e Moon 2', 12, 2300, 'Unknown', false);
INSERT INTO public.moon VALUES (20, 'TRAPPIST-1e Moon 3', 12, 2100, 'Unknown', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, NULL, false, 2440, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 'Carbon Dioxide', false, 6052, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'Nitrogen & Oxygen', true, 6371, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'Carbon Dioxide', false, 3389, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'Hydrogen & Helium', false, 69911, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'Hydrogen & Helium', false, 58232, NULL);
INSERT INTO public.planet VALUES (7, 'Neptune', 1, 'Methane', false, 24622, NULL);
INSERT INTO public.planet VALUES (8, 'Kepler-442b', 5, 'Unknown', true, 15000, NULL);
INSERT INTO public.planet VALUES (9, 'Gliese 581g', 6, 'Unknown', true, 8000, NULL);
INSERT INTO public.planet VALUES (10, 'HD 209458b', 4, 'Hydrogen & Helium', false, 50000, NULL);
INSERT INTO public.planet VALUES (11, 'TOI 700 d', 6, 'Unknown', true, 10000, NULL);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 6, 'Unknown', true, 7000, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SUN', 6, 1.99e+30, 100, true);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 6, 2.18e+30, 150, true);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 6, 2e+31, 50000, false);
INSERT INTO public.star VALUES (4, 'Sirius', 1, 2.02e+30, 200, true);
INSERT INTO public.star VALUES (5, 'Vega', 1, 2.15e+30, 300, true);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 6, 1.2e+29, 10, true);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 5, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

