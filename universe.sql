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
    name character varying(21) NOT NULL,
    intcol3 integer NOT NULL,
    intcol4 integer,
    planets_num numeric(3,2),
    galaxybool boolean
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
    name character varying(14) NOT NULL,
    intcol7 integer NOT NULL,
    intcol8 integer,
    intcol1 integer
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
    name character varying(16) NOT NULL,
    intcol1 integer NOT NULL,
    intcol2 integer,
    citation text,
    intcol5 integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(10) NOT NULL,
    description text,
    intcol9 integer,
    intcol10 integer
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(10) NOT NULL,
    intcol5 integer NOT NULL,
    intcol6 integer,
    starbool boolean,
    intcol3 integer
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
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'AndromedaGalaxy', 8441, 8673, 4.00, true);
INSERT INTO public.galaxy VALUES (2, 'Canis Major', 5968, 6226, 8.00, false);
INSERT INTO public.galaxy VALUES (3, 'Cygnus A', 4838, 9884, 9.00, true);
INSERT INTO public.galaxy VALUES (4, 'Maffei', 9060, 5958, 6.00, false);
INSERT INTO public.galaxy VALUES (5, 'Magellanic', 8277, 4568, 3.00, false);
INSERT INTO public.galaxy VALUES (6, 'Virgo A', 3282, 7754, 2.00, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymede', 4399, 9519, 2605);
INSERT INTO public.moon VALUES (2, 'Callisto', 4752, 4862, 6496);
INSERT INTO public.moon VALUES (3, 'Io', 7110, 8361, 1722);
INSERT INTO public.moon VALUES (4, 'Amalthea', 8724, 7904, 8822);
INSERT INTO public.moon VALUES (37, 'Europa', 9503, 5040, 4013);
INSERT INTO public.moon VALUES (38, 'Himalia', 5825, 3040, 4214);
INSERT INTO public.moon VALUES (39, 'Thebe', 5702, 3491, 6173);
INSERT INTO public.moon VALUES (40, 'Elara', 1536, 5439, 6023);
INSERT INTO public.moon VALUES (41, 'Pasiphae', 5678, 1341, 4013);
INSERT INTO public.moon VALUES (42, 'Metis', 9228, 2772, 6273);
INSERT INTO public.moon VALUES (43, 'Curme', 7431, 1213, 6173);
INSERT INTO public.moon VALUES (44, 'Sinope', 2443, 4597, 8822);
INSERT INTO public.moon VALUES (45, 'Lysithea', 4471, 3078, 4330);
INSERT INTO public.moon VALUES (46, 'Anunke', 7579, 4744, 6023);
INSERT INTO public.moon VALUES (47, 'Leda', 1219, 3023, 8822);
INSERT INTO public.moon VALUES (48, 'Adrastea', 8566, 8664, 6496);
INSERT INTO public.moon VALUES (49, 'Kalyke', 7266, 4053, 4013);
INSERT INTO public.moon VALUES (50, 'Aoede', 9279, 1206, 6023);
INSERT INTO public.moon VALUES (51, 'Isonoe', 9014, 7795, 6273);
INSERT INTO public.moon VALUES (52, 'Pandia', 2944, 8460, 3668);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Spe', 4214, 6613, 'From the latin Sper', 2841);
INSERT INTO public.planet VALUES (2, 'Arion', 6023, 3657, 'Arion was a genius', 5390);
INSERT INTO public.planet VALUES (3, 'Orbitar', 4785, 3101, 'Orbitar is a contrived word', 2841);
INSERT INTO public.planet VALUES (4, 'Taphao_Thong', 4330, 7120, 'Is one of the two sisters', 5796);
INSERT INTO public.planet VALUES (5, 'Taphao_Kaew', 1722, 8970, 'Thai folk tale of Chalawan', 5796);
INSERT INTO public.planet VALUES (6, 'Dimidium', 4013, 8724, 'Is Latin for half', 5796);
INSERT INTO public.planet VALUES (7, 'Galileo', 6496, 6677, 'Italian astronomer and', 4774);
INSERT INTO public.planet VALUES (8, 'Brahe', 6273, 8934, 'was a Danish lens grinder', 5390);
INSERT INTO public.planet VALUES (9, 'Lipperhey', 3668, 7421, 'was a German-Dutch astronomer', 4774);
INSERT INTO public.planet VALUES (10, 'Janssen', 2605, 3725, 'was a Dutch spectacle maker', 5796);
INSERT INTO public.planet VALUES (11, 'Harriot', 8822, 4270, 'was an English ethnographer', 2841);
INSERT INTO public.planet VALUES (12, 'Finlay', 6173, 3400, 'was a recognized epidemiologist', 3572);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'water', 'An inorganic, transparent, tasteless, odorless, and nearly colorless chemical', 6880, 1084);
INSERT INTO public.planet_types VALUES (2, 'gas', 'Is one of the fundamental states of matter', 5387, 9756);
INSERT INTO public.planet_types VALUES (3, 'fire', 'Is the rapid oxidation of material in the exothermic chemical process of combustion', 5862, 2463);
INSERT INTO public.planet_types VALUES (4, 'desert', 'Is a barren area of landscape where little precipitation occurs', 4332, 8657);
INSERT INTO public.planet_types VALUES (5, 'Air', 'Is the layer of gases retained by Earths gravity that surrounds the planet', 2068, 9460);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Absolutro', 4774, 1791, false, 9060);
INSERT INTO public.star VALUES (2, 'Belenos', 5390, 8852, true, 5968);
INSERT INTO public.star VALUES (3, 'Cervantes', 7408, 5162, false, 8277);
INSERT INTO public.star VALUES (4, 'Formosa', 2841, 7132, true, 8441);
INSERT INTO public.star VALUES (5, 'Funi', 5796, 2133, false, 9060);
INSERT INTO public.star VALUES (6, 'Irena', 3572, 9331, true, 4838);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 52, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy constraint1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constraint1 UNIQUE (intcol3);


--
-- Name: star constraint2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT constraint2 UNIQUE (intcol5);


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
-- Name: planet planet_intcol1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_intcol1_key UNIQUE (intcol1);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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
-- Name: moon fk_intcol1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_intcol1 FOREIGN KEY (intcol1) REFERENCES public.planet(intcol1);


--
-- Name: star fk_intcol3; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_intcol3 FOREIGN KEY (intcol3) REFERENCES public.galaxy(intcol3);


--
-- Name: planet fk_star_intcol5; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_intcol5 FOREIGN KEY (intcol5) REFERENCES public.star(intcol5);


--
-- PostgreSQL database dump complete
--

