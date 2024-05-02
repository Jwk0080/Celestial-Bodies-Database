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
    name character varying(30) NOT NULL,
    description text,
    radius integer,
    known_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life (
    life_id integer NOT NULL,
    planet_id integer,
    name character varying(30) NOT NULL,
    description text,
    life boolean,
    population numeric
);


ALTER TABLE public.life OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    name character varying(30) NOT NULL,
    description text,
    radius integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    name character varying(30) NOT NULL,
    description text,
    radius integer,
    water boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(30) NOT NULL,
    description text,
    radius integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Home of Humans', 52850, NULL);
INSERT INTO public.galaxy VALUES (2, 'Cartwheel', 'Looks like a cartwheel', 65000, NULL);
INSERT INTO public.galaxy VALUES (3, 'Cigar', 'Skin Oval shaped Galaxy', 38000, NULL);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 'Looks like the Ying and Yang', 26481, NULL);
INSERT INTO public.galaxy VALUES (5, 'Comet', 'Red Puff of Comsic Space', 600000, NULL);
INSERT INTO public.galaxy VALUES (6, 'Backward', 'Golden Comsic Space', 61366, NULL);


--
-- Data for Name: life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life VALUES (1, 1, 'Humans', 'Homosapiens', true, 7.2);
INSERT INTO public.life VALUES (2, 1, 'Dogs', 'Mans best friend', true, 0.0869);
INSERT INTO public.life VALUES (3, 1, 'Cats', 'Like to scratch', true, 0.6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'The Moon', 'Earths Moon', 1079);
INSERT INTO public.moon VALUES (2, 2, 'Phobos', 'Largest Moon of Mars', 7);
INSERT INTO public.moon VALUES (3, 2, 'Deimos', 'Smallest Moon of Mars', 4);
INSERT INTO public.moon VALUES (4, 8, 'Miranda', 'AKA Uranus V', 146);
INSERT INTO public.moon VALUES (5, 8, 'Ariel', '4th Largest moon of Uranus', 360);
INSERT INTO public.moon VALUES (6, 8, 'Umbriel', '3rd Largest moon of Uranus', 363);
INSERT INTO public.moon VALUES (7, 8, 'Titania', 'Uranus III', 490);
INSERT INTO public.moon VALUES (8, 8, 'Oberon', 'Uranus IV', 473);
INSERT INTO public.moon VALUES (9, 7, 'Ganymede', 'Largest Moon in Solar System', 1636);
INSERT INTO public.moon VALUES (10, 7, 'Callisto', 'Jupiter IV', 1498);
INSERT INTO public.moon VALUES (11, 7, 'Lo', '4th Largets moon of Jupiter', NULL);
INSERT INTO public.moon VALUES (12, 7, 'Europa', 'Jupiter II', 970);
INSERT INTO public.moon VALUES (13, 4, 'Titan', 'Largest Moon of Saturn', 1600);
INSERT INTO public.moon VALUES (14, 4, 'Enceladus', '6th Largest Moon of Saturn', 156);
INSERT INTO public.moon VALUES (15, 4, 'Hyperion', 'Saturn VII', 84);
INSERT INTO public.moon VALUES (16, 4, 'Prometheus', 'Icy Moon', 27);
INSERT INTO public.moon VALUES (17, 4, 'Pandora', NULL, 25);
INSERT INTO public.moon VALUES (18, 4, 'Janus', NULL, 56);
INSERT INTO public.moon VALUES (19, 4, 'Mimas', NULL, 123);
INSERT INTO public.moon VALUES (20, 4, 'Phoebe', NULL, 63);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Earth', 'Birth Place of Humans', 3959, true);
INSERT INTO public.planet VALUES (2, 1, 'Mars', 'The Red Planet', 2106, true);
INSERT INTO public.planet VALUES (3, 1, 'Neptune', 'Ice Giant', 15299, true);
INSERT INTO public.planet VALUES (4, 1, 'Saturn', 'Contains Beautiful Rings', 36184, false);
INSERT INTO public.planet VALUES (5, 1, 'Venus', 'Dense Atmosphere', 3760, false);
INSERT INTO public.planet VALUES (6, 1, 'Mercury', '2nd Smallest In Solar System', 1516, true);
INSERT INTO public.planet VALUES (7, 1, 'Jupiter', 'Gas Planet', 43441, true);
INSERT INTO public.planet VALUES (8, 1, 'Uranus', 'Smallest Ice Giant', 15759, true);
INSERT INTO public.planet VALUES (9, 2, 'Unknown Gas Planet', 'Redacted', NULL, false);
INSERT INTO public.planet VALUES (10, 2, 'Unknown Ice Planet', 'Icy', NULL, true);
INSERT INTO public.planet VALUES (11, 2, 'Unknown Nuclear Plane', 'Radioactive', NULL, true);
INSERT INTO public.planet VALUES (12, 2, 'Unknown Water Plane', 'Ocean Plant', NULL, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'SOL', 'Located in the Solar System', 432690);
INSERT INTO public.star VALUES (2, 1, 'VV Cephei', 'Known as a Larger Sun', 454324500);
INSERT INTO public.star VALUES (3, 1, 'EV Carinae', '', 504083850);
INSERT INTO public.star VALUES (4, 1, 'WY Velorum', 'A symbotic binary', 500622330);
INSERT INTO public.star VALUES (5, 1, 'LL Pegasi', NULL, 464709060);
INSERT INTO public.star VALUES (6, 1, 'R Cygni', 'Recent discovery', 356969250);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: life life_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_description_key UNIQUE (description);


--
-- Name: life life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_pkey PRIMARY KEY (life_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: life life_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

