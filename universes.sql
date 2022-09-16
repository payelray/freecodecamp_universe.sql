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
-- Name: combined; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.combined (
    combined_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL
);


ALTER TABLE public.combined OWNER TO freecodecamp;

--
-- Name: combined_combined_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.combined_combined_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.combined_combined_id_seq OWNER TO freecodecamp;

--
-- Name: combined_combined_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.combined_combined_id_seq OWNED BY public.combined.combined_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60),
    origin_of_name text NOT NULL,
    galaxy_types character varying(140),
    age_in_billions integer,
    constellation character varying(60) NOT NULL,
    how_many_stars_in_billions integer
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
    name character varying(60) NOT NULL,
    age_in_billions integer,
    planet_id integer,
    is_spherical boolean
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
    name character varying(60) NOT NULL,
    distance_from_earth_in_miles numeric,
    has_moon boolean,
    has_life boolean,
    num_of_moons integer
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
    name character varying(60) NOT NULL,
    galaxy_id integer,
    comments text,
    magnitude numeric
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
-- Name: combined combined_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.combined ALTER COLUMN combined_id SET DEFAULT nextval('public.combined_combined_id_seq'::regclass);


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
-- Data for Name: combined; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.combined VALUES (1, 'one', 1, 1);
INSERT INTO public.combined VALUES (2, 'two', 2, 2);
INSERT INTO public.combined VALUES (3, 'three', 2, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (6, 'Cigar Galaxy', 'appears similar to shape of cigar', 'starburst galaxy', 13, 'Ursa Major', 30);
INSERT INTO public.galaxy VALUES (8, 'Milky Way', 'appearance from Earth of the galaxy--a band of light', 'spiral galaxy', 14, 'Sagittarius', 250);
INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'area of the sky in which it appears, the constellation of Andromeda', 'barred spiral galaxy', 10, 'Andromeda', 1000);
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxies', 'appearance similar to the antennaes of an insecte', NULL, NULL, 'Corvus', NULL);
INSERT INTO public.galaxy VALUES (3, 'Backward Galaxy', 'appears to rotate backwards, as the tips of the spiral arms point in the direction of rotation', 'unbarred spiral galaxy', NULL, 'Centaurus', NULL);
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', 'has spectacular dark band of absorbing dust in front of its bright nucleus, giving rise to its nicknames of the BLACK EYE or EVIL EYE GALAXY', 'spiral galaxy', 13, 'Coma Berenices', 100);
INSERT INTO public.galaxy VALUES (7, 'Cosmos Redshift 7', 'based on a redshift measurement of nearly 7', 'high-redshift Lyman-alpha emitter galaxy', 1, 'Sextans', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Phobos', 5, 4, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 5, 4, false);
INSERT INTO public.moon VALUES (1, 'Moon', 4, 1, true);
INSERT INTO public.moon VALUES (4, 'Io', 5, 5, true);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 5, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 5, true);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 5, true);
INSERT INTO public.moon VALUES (8, 'Mimas', 4, 6, true);
INSERT INTO public.moon VALUES (9, 'Enceledas', 1, 6, true);
INSERT INTO public.moon VALUES (10, 'Tethys', 4, 6, true);
INSERT INTO public.moon VALUES (11, 'Dione', 4, 6, true);
INSERT INTO public.moon VALUES (12, 'Rhea', 4, 6, true);
INSERT INTO public.moon VALUES (13, 'Titan', 4, 6, true);
INSERT INTO public.moon VALUES (14, 'Hyperion', NULL, 6, true);
INSERT INTO public.moon VALUES (15, 'Iapetus', 4, 6, true);
INSERT INTO public.moon VALUES (16, 'Phoebe', NULL, 6, true);
INSERT INTO public.moon VALUES (17, 'Puck', 4, 7, false);
INSERT INTO public.moon VALUES (18, 'Miranda', 4, 7, true);
INSERT INTO public.moon VALUES (19, 'Ariel', 4, 7, true);
INSERT INTO public.moon VALUES (20, 'Umbriel', 4, 7, true);
INSERT INTO public.moon VALUES (21, 'Titania', 4, 7, true);
INSERT INTO public.moon VALUES (22, 'Oberon', 5, 7, true);
INSERT INTO public.moon VALUES (23, 'Proteus', 5, 8, false);
INSERT INTO public.moon VALUES (24, 'Triton', 5, 8, true);
INSERT INTO public.moon VALUES (25, 'Nereid', 5, 8, false);
INSERT INTO public.moon VALUES (26, 'Charon', 5, 9, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 3.5, false, false, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', 6.7, false, false, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 14.2, true, false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 48.4, true, false, 79);
INSERT INTO public.planet VALUES (6, 'Saturn', 88.9, true, false, 82);
INSERT INTO public.planet VALUES (7, 'Uranus', 179, true, false, 27);
INSERT INTO public.planet VALUES (8, 'Neptune', 288, true, false, 14);
INSERT INTO public.planet VALUES (9, 'Pluto', 367, true, false, 5);
INSERT INTO public.planet VALUES (10, 'Eris', 6289, true, false, 1);
INSERT INTO public.planet VALUES (11, 'Makemake', 6847, true, false, 1);
INSERT INTO public.planet VALUES (12, 'Haumea', 4010, true, false, 2);
INSERT INTO public.planet VALUES (13, 'Ceres', 257, false, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Adhil', 1, 'name is originally Arabic', 4.9);
INSERT INTO public.star VALUES (1, 'Almach', 1, NULL, 2.26);
INSERT INTO public.star VALUES (3, 'Veritate', 1, 'Latin for WHERE THERE IS TRUTH', 5.22);
INSERT INTO public.star VALUES (4, 'Buna', 1, 'Ethiopian proposal--commonly used word for COFFEE', 7.28);
INSERT INTO public.star VALUES (5, 'Alcor', 6, 'from Arabic meaning THE FAINT ONE', 3.99);
INSERT INTO public.star VALUES (6, 'Alioth', 6, 'member of the Big Dipper', 1.76);
INSERT INTO public.star VALUES (7, 'Chalawan', 6, 'named after mythological crocodile king from Thai folklore', 5.03);
INSERT INTO public.star VALUES (8, 'Alchiba', 2, 'Arabic for TENT', 4.03);
INSERT INTO public.star VALUES (9, 'Kraz', 2, NULL, 2.647);
INSERT INTO public.star VALUES (10, 'Proxima Centauri', 3, 'closest star to the sun', 11.05);
INSERT INTO public.star VALUES (11, 'Toliman', 3, 'Arabic for TWO MALE OSTRICHES', 1.33);
INSERT INTO public.star VALUES (12, 'Diadem', 4, 'only star in this constellation', 3.11);
INSERT INTO public.star VALUES (13, 'Bibha', 7, 'Bengali pronounciation of Sanskrit word meaning BRIGHT BEAM OF LIGHT', 8.73);
INSERT INTO public.star VALUES (14, 'Kaus Borealis', 8, 'top of the teapot asterism', 2.82);
INSERT INTO public.star VALUES (15, 'Pincoya', 8, 'Chilean proposal named after eponymous female water spirit from local mythology', 10);
INSERT INTO public.star VALUES (16, 'Rukbat', 8, NULL, 3.97);


--
-- Name: combined_combined_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.combined_combined_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 8, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 26, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 16, true);


--
-- Name: combined combined_id_fkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.combined
    ADD CONSTRAINT combined_id_fkey UNIQUE (name);


--
-- Name: combined combined_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.combined
    ADD CONSTRAINT combined_pkey PRIMARY KEY (combined_id);


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
-- Name: combined combined_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.combined
    ADD CONSTRAINT combined_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: combined combined_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.combined
    ADD CONSTRAINT combined_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

