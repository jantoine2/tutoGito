/home/codeally/project/universe.sql

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
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types text,
    galaxy_types text NOT NULL,
    distance_from_earth numeric,
    size integer,
    planet_id integer
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric,
    size integer
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
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric,
    size integer,
    age_in_millions_of_years integer
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
-- Name: solarsystem; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solarsystem (
    solarsystem_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric,
    size integer
);


ALTER TABLE public.solarsystem OWNER TO freecodecamp;

--
-- Name: solarsystem_solarsystem_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solarsystem_solarsystem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solarsystem_solarsystem_id_seq OWNER TO freecodecamp;

--
-- Name: solarsystem_solarsystem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solarsystem_solarsystem_id_seq OWNED BY public.solarsystem.solarsystem_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric,
    size integer
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
-- Name: solarsystem solarsystem_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarsystem ALTER COLUMN solarsystem_id SET DEFAULT nextval('public.solarsystem_solarsystem_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'The Andromeda Galaxy is a spiral galaxy located in the Andromeda constellation', false, false, 10000, 'Gas Giant', 'Spiral', 2.5, 220000, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way Galaxy', 'The Milky Way Galaxy is our home galaxy,a spiral galaxy containing your solar system', true, false, 13500, 'Ice Giant', 'Spiral', 1, 100000, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 'The Triangulum Galaxy is a spiral galaxy located in the Triangulum constellation', false, false, 5800, 'Terrestial', 'Spiral', 3000000, 60000, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 'The Sombrero Galaxy is a spiral galaxy Known for its distinctive hat-like appareance', false, false, 8000, 'Terrestial', 'Spiral', 31000000, 50000, NULL);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 'Centaurus A is an Elliptical galaxy located in the Centaurus constellation', false, true, 12000, 'Terrestial', 'Elliptical', 11000000, 50000, NULL);
INSERT INTO public.galaxy VALUES (6, 'Whirpool Galaxy', 'The Whirpool Galaxy is a spiral galaxy known for its prominent spiral arms', false, false, 1000, 'Terrestial', 'Spiral', 23000000, 60000, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth natural satellite and the fifth-largest moon in the Solar System', false, true, 4530000, 'Terrestial', 'Spiral', 384.400, 2);
INSERT INTO public.moon VALUES (2, 'Titan', 'Saturn is largest moon, known for its thick atmosphere and hydrocarbon lakes', false, true, 4503000, 'Gas Giant', 'Spiral', 1.2, 3);
INSERT INTO public.moon VALUES (3, 'Europa', 'One of Jupiter is moons, believed to have a subsurface ocean of liquid water', false, true, 5, 'Gas Giant', 'Spiral', 628000000, 2);
INSERT INTO public.moon VALUES (4, 'Enceladus', 'A moon of Saturn with geysers of water erupting from its south polar region', false, true, 5, 'Gas Giant', 'Spiral', 1.27000000000, 252);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'The largest moon in the solar System, orbiting jupiter', false, true, 5, 'Gas Giant', 'Spiral', 628000000, 3);
INSERT INTO public.moon VALUES (6, 'Callisto', 'One of Jupiter is moons,known for its heavily cratered surface', false, true, 5, 'Gas Giant', 'Spiral', 628000000, 2);
INSERT INTO public.moon VALUES (7, 'lo', 'One of Jupiter is moons,exhibiting intense volcanic activity', false, true, 5, 'Gas Giant', 'Spiral', 628000000, 2);
INSERT INTO public.moon VALUES (8, 'Triton', 'Neptune is largest moon, exhibiting geysers of liquid nitrogen', false, true, 5, 'Ice Giant', 'Spiral', 4.5000000000, 1);
INSERT INTO public.moon VALUES (9, 'Charon', 'Pluto is largest moon, known for its highly reflective surface', false, true, 5, 'Dwarf', 'Spiral', 7.50000000000, 606);
INSERT INTO public.moon VALUES (10, 'Phobos', 'The larger and innermost moon of Mars', false, false, 5, 'Terrestial', 'Spiral', 55000000, 11);
INSERT INTO public.moon VALUES (11, 'Deimos', 'The smaller and outermost moon of Mars', false, false, 5, 'Terrestial', 'Spiral', 55000000, 6);
INSERT INTO public.moon VALUES (12, 'Mimas', 'A moon of Saturn with a large impact crater called Herschel', false, true, 5, 'Gas Giant', 'Spiral', 1.2000000000, 198);
INSERT INTO public.moon VALUES (13, 'Rhea', 'Saturn is second-largest moon, known for its bright icy surface', false, true, 5, 'Gas Giant', 'Spiral', 1.27000000000, 763);
INSERT INTO public.moon VALUES (14, 'Titania', 'Uranus is largest moon and the eighth-largest moon in the Solar System', false, true, 5, 'Ice Giant', 'Spiral', 3000000000, 788);
INSERT INTO public.moon VALUES (15, 'Oberon', 'The outermost of Uranus is five major moons', false, true, 5, 'Ice Giant', 'Spiral', 3000000000, 761);
INSERT INTO public.moon VALUES (16, 'Miranda', 'A moon of Uranus with a varied and geologically active surface', false, true, 5, 'Ice Giant', 'Spiral', 3000000000, 236);
INSERT INTO public.moon VALUES (17, 'Ariel', 'One of Uranus is major moons,knwon for its smooth plains and fractured terrain', false, true, 5, 'Ice Giant', 'Spiral', 3000000000, 578);
INSERT INTO public.moon VALUES (18, 'Umbriel', 'The darkest of Uranus is major moons, covered in impact craters', false, true, 5, 'Ice Giant', 'Spiral', 3000000000, 584);
INSERT INTO public.moon VALUES (19, 'Dione', 'One of Saturn is major moons, exhibiting bright ice cliffs and impact craters', false, true, 5, 'Gas Giant', 'Spiral', 1.27000000000, 561);
INSERT INTO public.moon VALUES (20, 'Tethys', 'A moon of Saturn with a prominent impact crater named Odysseus', false, true, 5, 'Gas Giant', 'Spiral', 1.27000000000, 531);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'The third planet from the Sun and the only known planet to support life', true, true, 'Terrestial', 'Spiral', 0, 13, 4540000);
INSERT INTO public.planet VALUES (2, 'Mars', 'The fourth planet from the Sun and often called the Red planet', false, true, 'Terrestial', 'Spiral', 4170000, 7, 4603000);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'The largest planet in the Solar System, know for its distinct bands and iconic Great Red Spot', false, false, 'Gas Giant', 'Spiral', 588000000, 70, 4503000);
INSERT INTO public.planet VALUES (4, 'Saturn', 'The second-largest planet, recognized for its prominent ring system', false, false, 'Gas Giant', 'Spiral', 1200000, 58, 4503000);
INSERT INTO public.planet VALUES (5, 'Venus', 'The second planet from the Sun,known for its thick atmosphere and extreme temperatures', false, true, 'Terrestial', 'Spiral', 261000000, 6, 4540000);
INSERT INTO public.planet VALUES (6, 'Neptune', 'The eight and farthest planet from the Sun,known for its vivid blue color', false, true, 'Ice Giant', 'Spiral', 4300000, 25, 4503000);
INSERT INTO public.planet VALUES (7, 'Mercury', 'The closest planet to the Sun,with a surface marked by craters and extreme temperature variations', false, true, 'Terrestial', 'Spiral', 222000000, 2, 4503000);
INSERT INTO public.planet VALUES (8, 'Uranus', 'The seventh planet from the Sun,characterized by its unique titled axis of rotation', false, true, 'Ice Giant', 'Spiral', 2600000, 25, 4503000);
INSERT INTO public.planet VALUES (9, 'Pluto', 'A dwarf planet located in the outer reaches of the Solar System,known for its highly elliptical orbit', false, false, 'Dwarf', 'Spiral', 4670000, 1, 4503000);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 'An exoplanet located in the habitable zone of its host star,approximately 500 light-years from Earth', false, true, 'Terrestial', 'Unknown', 500000000, 0, 0);
INSERT INTO public.planet VALUES (11, 'HD 189733b', 'An exoplanet known for its vivid blue color and extremeweather conditions,orbiting a star in the constellation Vulpecula', false, true, 'Gas Giant', 'Unknown', 0, 63000000, 0);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1E', 'An exoplanet located in the TRAPPIST-1 system,within the habitable zone and potentially having liquid water', false, true, 'Terrestial', 'Unkown', 39000000, 0, 0);


--
-- Data for Name: solarsystem; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solarsystem VALUES (1, 'Solar System', 'Our system solar', true, true, 5, 'Solar Giant', 'Spiral', 300000000, 100000);
INSERT INTO public.solarsystem VALUES (2, 'Alpha Centauri System', 'A triple star system, one of the closest star systems to Earth', false, false, 6000000, 'Solar Giant', 'Spiral', 4.37, 10000);
INSERT INTO public.solarsystem VALUES (3, 'Trappist system ', 'An exoplanetary system containing seven Earth sized planets orbiting a small,cool star known as Trappist1', false, false, 5000000, 'Solar Giant', 'Spiral', 39000000, 100000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The Sun is a central star of the Solar System,primarily composed of hydrogen and helium', false, true, 4600, 'Terrestial,Gas Giant,Ice Giant', 'Spiral', 149600000, 1400000);
INSERT INTO public.star VALUES (2, 'Sirius', 'Sirius,also known as the Dog Star,is the brightest star in the night sky', false, true, 300000000, 'Unknown', 'Unknown', 8.6, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Betelgeuse is a red supergiant star located in the constellation Orion', false, false, 8500000, 'Unknown', 'Unknown', 642.5, 887);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 'Alpha Centauri A is the larger and brighter of the two main stars in the Alpha Centauri system', false, true, 6400000, 'Terrestial', 'Unknown', 4.37, 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'Proxima Centauri is a red dwarf star and the closest known star to the Solar System', false, true, 4850000, 'Terrestial', 'Unknown', 4.24, 0);
INSERT INTO public.star VALUES (6, 'Vega', 'Vega is a bright star in the constellation Lyra and one of the brightest stars in the northern sky', false, true, 455000000, 'Unknown', 'Unknown', 25.05, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: solarsystem_solarsystem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solarsystem_solarsystem_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_unique UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solarsystem solarsystem_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarsystem
    ADD CONSTRAINT solarsystem_id_unique UNIQUE (solarsystem_id);


--
-- Name: solarsystem solarsystem_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarsystem
    ADD CONSTRAINT solarsystem_pkey PRIMARY KEY (solarsystem_id);


--
-- Name: star star_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_unique UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--


