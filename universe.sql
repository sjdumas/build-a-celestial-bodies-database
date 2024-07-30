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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    galaxy_types character varying(255) NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    distance_from_earth integer NOT NULL,
    is_visible boolean NOT NULL
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
    name character varying(255) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    planet_id integer NOT NULL,
    is_spherical boolean NOT NULL
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
    name character varying(255) NOT NULL,
    description text NOT NULL,
    planet_types character varying(255) NOT NULL,
    has_life boolean NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    distance_from_earth integer NOT NULL,
    star_id integer NOT NULL,
    is_spherical boolean NOT NULL
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
    name character varying(255) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    distance_from_earth integer NOT NULL,
    galaxy_id integer NOT NULL,
    is_visible boolean NOT NULL
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 'Spiral', 13700, 0, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest spiral galaxy', 'Spiral', 10000, 2500000, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Part of the Local Group', 'Spiral', 9500, 3000000, true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Famous for its spiral structure', 'Spiral', 600, 23000000, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Notable for its bright nucleus', 'Elliptical', 12000, 29000000, true);
INSERT INTO public.galaxy VALUES (6, 'Black Eye Galaxy', 'Named for the dark band of dust in front of the galaxy''s bright nucleus', 'Spiral', 10000, 17000000, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth''s only natural satellite', 4530, 384400, 1, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 'One of Mars'' moons', 4500, 9376, 2, true);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The smaller and outer moon of Mars', 4500, 23460, 2, true);
INSERT INTO public.moon VALUES (4, 'Europa', 'One of Jupiter''s largest moons', 4500, 628300, 3, true);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'The largest moon in the Solar System', 4500, 628300, 3, true);
INSERT INTO public.moon VALUES (6, 'Callisto', 'The second-largest moon of Jupiter', 4500, 628300, 3, true);
INSERT INTO public.moon VALUES (7, 'Io', 'Jupiter''s volcanic moon', 4500, 628300, 3, true);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn''s largest moon', 4500, 1275000, 4, true);
INSERT INTO public.moon VALUES (9, 'Rhea', 'The second-largest moon of Saturn', 4500, 1275000, 4, true);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'A distinctive moon of Saturn', 4500, 1275000, 4, true);
INSERT INTO public.moon VALUES (11, 'Dione', 'One of Saturn''s moons', 4500, 1275000, 4, true);
INSERT INTO public.moon VALUES (12, 'Tethys', 'A mid-sized moon of Saturn', 4500, 1275000, 4, true);
INSERT INTO public.moon VALUES (13, 'Enceladus', 'Saturn''s icy moon', 4500, 1275000, 4, true);
INSERT INTO public.moon VALUES (14, 'Miranda', 'One of Uranus'' moons', 4500, 2720000, 7, true);
INSERT INTO public.moon VALUES (15, 'Ariel', 'Uranus'' bright moon', 4500, 2720000, 7, true);
INSERT INTO public.moon VALUES (16, 'Umbriel', 'A dark moon of Uranus', 4500, 2720000, 7, true);
INSERT INTO public.moon VALUES (17, 'Titania', 'The largest moon of Uranus', 4500, 2720000, 7, true);
INSERT INTO public.moon VALUES (18, 'Oberon', 'The second-largest moon of Uranus', 4500, 2720000, 7, true);
INSERT INTO public.moon VALUES (19, 'Triton', 'Neptune''s largest moon', 4500, 4345000, 8, true);
INSERT INTO public.moon VALUES (20, 'Proteus', 'A large moon of Neptune', 4500, 4345000, 8, true);
INSERT INTO public.moon VALUES (21, 'Nereid', 'A distant moon of Neptune', 4500, 4345000, 8, true);
INSERT INTO public.moon VALUES (22, 'Charon', 'The largest moon of Pluto', 4500, 5906380, 12, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Our home planet', 'Terrestrial', true, 4500, 0, 1, true);
INSERT INTO public.planet VALUES (2, 'Mars', 'The red planet', 'Terrestrial', false, 4500, 78, 1, true);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'The largest planet in our solar system', 'Gas Giant', false, 4500, 628, 1, true);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Known for its ring system', 'Gas Giant', false, 4500, 1275, 1, true);
INSERT INTO public.planet VALUES (5, 'Venus', 'The hottest planet in our solar system', 'Terrestrial', false, 4500, 261, 1, true);
INSERT INTO public.planet VALUES (6, 'Mercury', 'The smallest planet in our solar system', 'Terrestrial', false, 4500, 77, 1, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 'An ice giant with a unique tilt', 'Ice Giant', false, 4500, 2724, 1, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 'An ice giant known for its blue color', 'Ice Giant', false, 4500, 4351, 1, true);
INSERT INTO public.planet VALUES (9, 'Proxima b', 'An exoplanet orbiting Proxima Centauri', 'Exoplanet', false, 4500, 4, 2, true);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 'An exoplanet in the habitable zone of Kepler-22', 'Exoplanet', false, 4500, 600, 3, true);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 'An exoplanet orbiting TRAPPIST-1', 'Exoplanet', false, 4500, 39, 4, true);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', 'An exoplanet orbiting Gliese 581', 'Exoplanet', false, 4500, 20, 5, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of our solar system', 4600, 0, 1, true);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'The closest known star to the Sun', 4600, 4, 2, true);
INSERT INTO public.star VALUES (3, 'Sirius', 'The brightest star in the night sky', 242, 8, 1, true);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'A red supergiant star in the Orion constellation', 8400, 642, 1, true);
INSERT INTO public.star VALUES (5, 'Rigel', 'A blue supergiant star in the Orion constellation', 8000, 860, 1, true);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 'The closest star system to the Solar System', 4600, 4, 2, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

