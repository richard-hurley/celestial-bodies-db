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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    diameter integer,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    is_spherical boolean
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
-- Name: info_references; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.info_references (
    info_references_id integer NOT NULL,
    reference_types_id integer,
    reference_name text NOT NULL,
    name character varying(30)
);


ALTER TABLE public.info_references OWNER TO freecodecamp;

--
-- Name: info_references_reference_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.info_references_reference_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.info_references_reference_id_seq OWNER TO freecodecamp;

--
-- Name: info_references_reference_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.info_references_reference_id_seq OWNED BY public.info_references.info_references_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_nearest_planet numeric,
    description text,
    is_spherical boolean,
    planet_id integer
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    planet_type character varying(30),
    distance_from_sun_in_km numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer
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
-- Name: reference_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.reference_types (
    reference_types_id integer NOT NULL,
    reference_type character varying(30) NOT NULL,
    name character varying(30)
);


ALTER TABLE public.reference_types OWNER TO freecodecamp;

--
-- Name: reference_types_reference_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.reference_types_reference_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reference_types_reference_type_id_seq OWNER TO freecodecamp;

--
-- Name: reference_types_reference_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.reference_types_reference_type_id_seq OWNED BY public.reference_types.reference_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_light_years numeric,
    description text,
    is_spherical boolean,
    galaxy_id integer,
    diameter_in_km integer
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
-- Name: info_references info_references_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info_references ALTER COLUMN info_references_id SET DEFAULT nextval('public.info_references_reference_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: reference_types reference_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.reference_types ALTER COLUMN reference_types_id SET DEFAULT nextval('public.reference_types_reference_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, 100000, 0, NULL, true, true);
INSERT INTO public.galaxy VALUES (2, 'LMC', NULL, 14000, 158000, NULL, false, false);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', NULL, 220000, 2500000, NULL, false, true);
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', NULL, 37000, 11500000, NULL, false, false);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', NULL, 170000, 20870000, NULL, false, false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', NULL, 50000, 29350000, NULL, false, true);


--
-- Data for Name: info_references; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.info_references VALUES (1, 1, 'www.nasa.gov', NULL);
INSERT INTO public.info_references VALUES (2, 1, 'www.wikipedia.org', NULL);
INSERT INTO public.info_references VALUES (3, 1, 'www.bard.google.com', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth''s Moon', 242286, 'Earth''s Moon is the only place beyond Earth where humans have set foot.', true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, 'Phobos is the larger of Mars'' two moons.', true, 1);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, 'Deimos is the smaller of Mars'' two moons', true, 1);
INSERT INTO public.moon VALUES (4, 'Io', NULL, 'Io is the most volcanically active world in the solar system, with hundreds of volcanoes, some erupting lava fountains dozens of miles (or kilometers) high.', true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', NULL, 'Europa is thought to have an iron core, a rocky mantle and an ocean of salty water that may be one of the best places to look for life beyond Earth in our solar system.', true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', NULL, 'Ganymede is the largest moon in our solar system and the only moon with its own magnetic field.', true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', NULL, 'Callisto is the most heavily cratered object in our solar system.', true, 5);
INSERT INTO public.moon VALUES (8, 'Mimas', NULL, '', true, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', NULL, '', true, 6);
INSERT INTO public.moon VALUES (10, 'Tethys', NULL, '', true, 6);
INSERT INTO public.moon VALUES (11, 'Dione', NULL, '', true, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', NULL, '', true, 6);
INSERT INTO public.moon VALUES (13, 'Titan', NULL, '', true, 6);
INSERT INTO public.moon VALUES (14, 'Hyperion', NULL, '', true, 6);
INSERT INTO public.moon VALUES (15, 'Lapetus', NULL, '', true, 6);
INSERT INTO public.moon VALUES (16, 'Ariel', NULL, 'Ariel''s surface appears to be the youngest of all the moons of Uranus.', true, 7);
INSERT INTO public.moon VALUES (17, 'Oberon', NULL, 'Oberon is the second largest moon of Uranus', true, 7);
INSERT INTO public.moon VALUES (18, 'Rosalind', NULL, 'Little is known about Rosalind, one of several satellites discovered by Voyager 2 as it flew by Uranus in 1986.', true, 7);
INSERT INTO public.moon VALUES (19, 'Galatea', NULL, 'Galatea is another of Neptune''s tiny moons.', true, 8);
INSERT INTO public.moon VALUES (20, 'Triton', NULL, 'Triton is the largest of Neptune''s 13 moons. It is unusual because it is the only large moon in our solar system that orbits in the opposite direction of its planet''s rotation―a retrograde orbit.', true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mars', NULL, 'terrestrial', 153957267, 'Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere.', false, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, 'terrestrial', 67588797, 'Venus is the second planet from the Sun and is Earth’s closest planetary neighbor', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, 'terrestrial', 94492875, 'Our home planet is the third planet from the Sun, and the only place we know of so far that’s inhabited by living things.', true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mercury', NULL, 'terrestrial', 34514307, 'The smallest planet in our solar system and nearest to the Sun', false, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, 'gas giant', 461047350, 'Fifth in line from the Sun, Jupiter is, by far, the largest planet in the solar system', false, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, 'gas giant', 909571612, 'Saturn is the sixth planet from the Sun and the second-largest planet in our solar system.', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, 'ice giant', 1872162579, 'Uranus is the seventh planet from the Sun, and has the third-largest diameter in our solar system. It was the first planet found with the aid of a telescope', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, 'ice giant', 2780119116, 'Dark, cold, and whipped by supersonic winds, ice giant Neptune is the eighth and most distant planet in our solar system.', false, true, 1);
INSERT INTO public.planet VALUES (10, 'Eris', NULL, NULL, NULL, 'Eris is the most massive and second-largest known dwarf planet in the Solar System.', NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', NULL, NULL, NULL, 'Haumea is a dwarf planet located beyond Neptune''s orbit.', NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Ceres', NULL, NULL, NULL, 'Ceres is a dwarf planet in the asteroid belt between the orbits of Mars and Jupiter', NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, 'I''m still calling it a planet', NULL, NULL, 1);


--
-- Data for Name: reference_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.reference_types VALUES (1, 'Website', NULL);
INSERT INTO public.reference_types VALUES (2, 'Book', NULL);
INSERT INTO public.reference_types VALUES (3, 'Article', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4570, 0, NULL, true, 1, 695000);
INSERT INTO public.star VALUES (2, 'R71', 1, 160000, NULL, true, 2, 74365000);
INSERT INTO public.star VALUES (3, 'Alpheratz', 7600, 2500000, NULL, true, 3, 13900000);
INSERT INTO public.star VALUES (4, 'Sirius', 250, 9, NULL, true, 1, 1189145);
INSERT INTO public.star VALUES (5, 'Arcturus', 7100, 37, NULL, true, 1, 17653000);
INSERT INTO public.star VALUES (6, 'R136a1', 2, 163000, NULL, true, 2, 20850000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: info_references_reference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.info_references_reference_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 8, true);


--
-- Name: reference_types_reference_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.reference_types_reference_type_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unq UNIQUE (name);


--
-- Name: info_references info_references_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info_references
    ADD CONSTRAINT info_references_pkey PRIMARY KEY (info_references_id);


--
-- Name: info_references info_references_reference_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info_references
    ADD CONSTRAINT info_references_reference_name_key UNIQUE (reference_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unq UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unq UNIQUE (name);


--
-- Name: reference_types reference_type_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.reference_types
    ADD CONSTRAINT reference_type_unq UNIQUE (reference_type);


--
-- Name: reference_types reference_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.reference_types
    ADD CONSTRAINT reference_types_pkey PRIMARY KEY (reference_types_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unq UNIQUE (name);


--
-- Name: info_references info_references_reference_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info_references
    ADD CONSTRAINT info_references_reference_type_id_fkey FOREIGN KEY (reference_types_id) REFERENCES public.reference_types(reference_types_id);


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

