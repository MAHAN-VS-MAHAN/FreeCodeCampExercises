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
    name character varying(50),
    gravity numeric(15,10) NOT NULL,
    number_of_planet integer,
    number_of_chemical_element integer,
    description text,
    can_be_traveled boolean
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
    name character varying(50),
    gravity numeric(15,10) NOT NULL,
    weight integer,
    number_of_chemical_element integer,
    description text,
    can_be_traveled boolean,
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    name character varying(50) NOT NULL,
    title character varying(30) NOT NULL,
    more_info_id integer NOT NULL
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    gravity numeric(15,10) NOT NULL,
    weight integer,
    number_of_chemical_element integer,
    description text,
    can_be_traveled boolean,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    gravity numeric(15,10) NOT NULL,
    weight integer,
    number_of_chemical_element integer,
    description text,
    can_be_traveled boolean,
    galaxy_id integer
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
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', 15.1800000000, 1598, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 26.1800000000, 1584, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 18.1800000000, 5984, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 10.1800000000, 15004, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 6.1800000000, 184, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 76.1800000000, 17984, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'starwars', 10.3700000000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'MilkyWay23', 9.8000000000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'Andromeda11', 10.2000000000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'Triangulum34', 10.5000000000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'Whirlpool34', 9.9000000000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'Sombrero123', 10.0000000000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'Pinwheel12', 10.3000000000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'LargeMagellanicCloud13', 9.7000000000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'SmallMagellanicCloud55', 10.1000000000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'Messier873', 10.4000000000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'Messier8361', 10.6000000000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'NGC1300', 10.2000000000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'NGC436565', 9.8000000000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 'NGC677744', 10.0000000000, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1.6250000000, NULL, NULL, NULL, NULL, 41);
INSERT INTO public.moon VALUES (2, 'Phobos', 0.0057000000, NULL, NULL, NULL, NULL, 42);
INSERT INTO public.moon VALUES (3, 'Deimos', 0.0018000000, NULL, NULL, NULL, NULL, 43);
INSERT INTO public.moon VALUES (4, 'Io', 1.7960000000, NULL, NULL, NULL, NULL, 44);
INSERT INTO public.moon VALUES (5, 'Europa', 1.3130000000, NULL, NULL, NULL, NULL, 45);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1.4280000000, NULL, NULL, NULL, NULL, 46);
INSERT INTO public.moon VALUES (7, 'Callisto', 1.2350000000, NULL, NULL, NULL, NULL, 47);
INSERT INTO public.moon VALUES (8, 'Titan', 1.3520000000, NULL, NULL, NULL, NULL, 48);
INSERT INTO public.moon VALUES (9, 'Rhea', 0.2640000000, NULL, NULL, NULL, NULL, 49);
INSERT INTO public.moon VALUES (10, 'Iapetus', 0.0910000000, NULL, NULL, NULL, NULL, 50);
INSERT INTO public.moon VALUES (11, 'Dione', 0.2350000000, NULL, NULL, NULL, NULL, 51);
INSERT INTO public.moon VALUES (12, 'Tethys', 0.1560000000, NULL, NULL, NULL, NULL, 52);
INSERT INTO public.moon VALUES (13, 'Enceladus', 0.1130000000, NULL, NULL, NULL, NULL, 53);
INSERT INTO public.moon VALUES (14, 'Mimas', 0.0630000000, NULL, NULL, NULL, NULL, 54);
INSERT INTO public.moon VALUES (15, 'Charon', 0.2930000000, NULL, NULL, NULL, NULL, 55);
INSERT INTO public.moon VALUES (16, 'Triton', 0.7800000000, NULL, NULL, NULL, NULL, 56);
INSERT INTO public.moon VALUES (17, 'Nereid', 0.0370000000, NULL, NULL, NULL, NULL, 57);
INSERT INTO public.moon VALUES (18, 'Proteus', 0.0860000000, NULL, NULL, NULL, NULL, 58);
INSERT INTO public.moon VALUES (19, 'Miranda', 0.0240000000, NULL, NULL, NULL, NULL, 59);
INSERT INTO public.moon VALUES (20, 'Ariel', 0.0480000000, NULL, NULL, NULL, NULL, 60);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES ('vega', 'topic1', 1);
INSERT INTO public.more_info VALUES ('vega2', 'topic2', 2);
INSERT INTO public.more_info VALUES ('vega3', 'topic 3', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (41, 'Mercury', 3.7000000000, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (42, 'Venus', 8.8700000000, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (43, 'Earth', 9.8100000000, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (44, 'Mars', 3.7100000000, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (45, 'Jupiter', 24.7900000000, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (46, 'Saturn', 10.4400000000, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (47, 'Uranus', 8.6900000000, NULL, NULL, NULL, NULL, 42);
INSERT INTO public.planet VALUES (48, 'Neptune', 11.1500000000, NULL, NULL, NULL, NULL, 43);
INSERT INTO public.planet VALUES (49, 'Pluto', 0.6200000000, NULL, NULL, NULL, NULL, 44);
INSERT INTO public.planet VALUES (50, 'Eris', 1.0200000000, NULL, NULL, NULL, NULL, 45);
INSERT INTO public.planet VALUES (51, 'Ceres', 0.2700000000, NULL, NULL, NULL, NULL, 46);
INSERT INTO public.planet VALUES (52, 'Haumea', 0.4400000000, NULL, NULL, NULL, NULL, 47);
INSERT INTO public.planet VALUES (53, 'Makemake', 0.4500000000, NULL, NULL, NULL, NULL, 48);
INSERT INTO public.planet VALUES (54, 'Sedna', 0.0900000000, NULL, NULL, NULL, NULL, 49);
INSERT INTO public.planet VALUES (55, 'Charon', 0.2900000000, NULL, NULL, NULL, NULL, 50);
INSERT INTO public.planet VALUES (56, 'Callisto', 1.2400000000, NULL, NULL, NULL, NULL, 51);
INSERT INTO public.planet VALUES (57, 'Ganymede', 1.4300000000, NULL, NULL, NULL, NULL, 52);
INSERT INTO public.planet VALUES (58, 'Io', 1.7900000000, NULL, NULL, NULL, NULL, 53);
INSERT INTO public.planet VALUES (59, 'Europa', 1.3100000000, NULL, NULL, NULL, NULL, 54);
INSERT INTO public.planet VALUES (60, 'Enceladus', 1.1200000000, NULL, NULL, NULL, NULL, 55);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 19.5600000000, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 19.5860000000, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (3, 'Vega', 19.5646000000, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (4, 'Rigel', 12.5600000000, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (5, 'Polaris', 10.5600000000, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES (6, 'Sirius342', 9.5844600000, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (42, 'Sirius3452', 9.5844260000, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES (43, 'Betelgeuse0012', 11.2000000000, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.star VALUES (44, 'RigelV3', 10.3000000000, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.star VALUES (45, 'ProximaCentauri3', 7.9000000000, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.star VALUES (46, 'AlphaCentauriB3', 8.1000000000, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.star VALUES (47, 'Vega3', 9.5000000000, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.star VALUES (48, 'Altair4', 10.0000000000, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.star VALUES (49, 'Deneb5', 8.7000000000, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.star VALUES (50, 'Spica2', 9.9000000000, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.star VALUES (51, 'Antares5', 11.5000000000, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.star VALUES (52, 'Pollux2', 9.2000000000, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.star VALUES (53, 'Castor5', 8.8000000000, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.star VALUES (54, 'Arcturus25', 7.6000000000, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.star VALUES (55, 'Aldebaran5', 10.2000000000, NULL, NULL, NULL, NULL, 20);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: more_info_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 60, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 55, true);


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
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


--
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


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

