--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

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
-- Name: urls; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.urls (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    url text NOT NULL,
    "shortUrl" text NOT NULL,
    "visitsCount" integer DEFAULT 0,
    "createdAt" timestamp without time zone DEFAULT now()
);


--
-- Name: urls_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.urls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: urls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.urls_id_seq OWNED BY public.urls.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now()
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: urls id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls ALTER COLUMN id SET DEFAULT nextval('public.urls_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: urls; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.urls VALUES (1, 1, 'asikdja', 'asdasdjh', 2, '2022-12-20 22:01:17.806581');
INSERT INTO public.urls VALUES (2, 21, 'https://www.notion.so/bootcampra/Projeto-Shortly-API-3ef2afe78c254d069f862c036efa6f04', 'lS2y5lD1Fb9Ma7Fdrri_p', 0, '2022-12-21 19:08:47.44383');
INSERT INTO public.urls VALUES (3, 21, 'https://www.notion.so/bootcampra/Projeto-Shortly-API-3ef2afe78c254d069f862c036efa6f04', '1vVuwHzwucOuxBcCJMvst', 0, '2022-12-21 19:09:11.142906');
INSERT INTO public.urls VALUES (4, 21, 'https://www.notion.so/bootcampra/Projeto-Shortly-API-3ef2afe78c254d069f862c036efa6f04', 'w77nEztexdJm_y88mVG-K', 0, '2022-12-21 19:09:40.231902');
INSERT INTO public.urls VALUES (5, 21, 'https://www.notion.so/bootcampra/Projeto-Shortly-API-3ef2afe78c254d069f862c036efa6f04', 'Eum0_1-RycKcmP0IR4owg', 0, '2022-12-21 19:09:43.359728');
INSERT INTO public.urls VALUES (6, 21, 'https://www.notion.so/bootcampra/Projeto-Shortly-API-3ef2afe78c254d069f862c036efa6f04', '0nSyMJ05CUMFbidtPMBsI', 0, '2022-12-21 19:09:44.232594');
INSERT INTO public.urls VALUES (7, 21, 'https://www.notion.so/bootcampra/Projeto-Shortly-API-3ef2afe78c254d069f862c036efa6f04', 'agT0BBSSCOn7AfLbttu41', 0, '2022-12-21 19:09:44.961095');
INSERT INTO public.urls VALUES (9, 22, 'https://www.notion.so/bootcampra/Projeto-Shortly-API-3ef2afe78c254d069f862c036efa6f04', 'gUZjzhpseRiQBDJcU6JnK', 0, '2022-12-21 19:10:43.76767');
INSERT INTO public.urls VALUES (10, 22, 'https://www.notion.so/bootcampra/Projeto-Shortly-API-3ef2afe78c254d069f862c036efa6f04', 'iWSBXO7FxxEPmtOrSPbfc', 0, '2022-12-21 19:10:44.314808');
INSERT INTO public.urls VALUES (11, 22, 'https://www.notion.so/bootcampra/Projeto-Shortly-API-3ef2afe78c254d069f862c036efa6f04', 'LMSo5KlUDgMiWi7bYk5H1', 0, '2022-12-21 19:10:44.800048');
INSERT INTO public.urls VALUES (12, 22, 'https://www.notion.so/bootcampra/Projeto-Shortly-API-3ef2afe78c254d069f862c036efa6f04', '9ZN83yGfQCaGz1HWNlLLK', 0, '2022-12-21 19:10:45.295753');
INSERT INTO public.urls VALUES (13, 22, 'https://www.notion.so/bootcampra/Projeto-Shortly-API-3ef2afe78c254d069f862c036efa6f04', 'hFa0epEC05JyM0zjRvnqu', 0, '2022-12-21 19:10:46.043667');
INSERT INTO public.urls VALUES (14, 22, 'https://www.notion.so/bootcampra/Projeto-Shortly-API-3ef2afe78c254d069f862c036efa6f04', 'eqQGK8lQYWlhOUsVzE2uU', 3, '2022-12-21 19:10:46.590117');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, 'lucas', 'lucas@gmail.com', 'lucas', '2022-12-20 22:00:04.057023');
INSERT INTO public.users VALUES (2, 'João', 'joao@driven.com.br', '$2b$12$Qx94AHt6UaBwP4iN.pdZpeRzkYvx5IPNJh9W0JMk7gnTGWickBVGO', '2022-12-21 18:25:19.720572');
INSERT INTO public.users VALUES (3, 'Cleitin', 'cleitin@driven.com.br', '$2b$12$78zFrAaHiRrAvd9IWEbt8eVRC63boY7C5YepY0ngBd55LPGDUBF/y', '2022-12-21 18:28:29.259185');
INSERT INTO public.users VALUES (4, 'paulo', 'paulo@driven.com.br', '$2b$12$yHK7qunuvDN34Zg5AG0mS.49Pd5j54SDJzzBt5W/LcC6nV3OIeBFu', '2022-12-21 18:29:22.994347');
INSERT INTO public.users VALUES (5, 'ana', 'ana@driven.com.br', '$2b$12$N3WpxTjXabt624ntbV.JqOCiarMo2XA1zRanUbH3PWck8Q0ZyxYy.', '2022-12-21 18:29:34.678559');
INSERT INTO public.users VALUES (6, 'marina', 'marina@driven.com.br', '$2b$12$QLE0qcHvbFz7qyET5OLYJ.YO7TIlZVXNjpwvEugRiua9WFceevRA.', '2022-12-21 18:29:44.672903');
INSERT INTO public.users VALUES (7, 'diogenes', 'diogenes@driven.com.br', '$2b$12$tbYTtmCkeeEPlLAllmSPQOQcic5T1HXcftUYvwESf9MXsnHzEqEw.', '2022-12-21 18:33:07.724057');
INSERT INTO public.users VALUES (8, 'luiza', 'luiza@driven.com.br', '$2b$12$hGq3d3gwINKSi4fbLvrlB.4c7JJ9fn/1V7IeUNld6Ck8sTvvD/Cfy', '2022-12-21 18:33:23.414051');
INSERT INTO public.users VALUES (9, 'leonardo', 'leonardo@driven.com.br', '$2b$12$2JuzP5d62LmvwezyhjCQw.6hk09EPCzfO70CxrY5atZR10ja0rOtG', '2022-12-21 18:33:36.253147');
INSERT INTO public.users VALUES (10, 'pedro', 'pedro@driven.com.br', '$2b$12$0mAS7HJm9RM3ashjr84l1OmlrTrob48L/3QBXNlINE9oQGD3ttHba', '2022-12-21 18:34:54.509698');
INSERT INTO public.users VALUES (11, 'rodolfo', 'rodolfo@driven.com.br', '$2b$12$p7YVMIfbmTi7C2LQLZhMkeOmOizZtzEemkcIBwhyT8feqeMwIfSn6', '2022-12-21 18:35:09.211215');
INSERT INTO public.users VALUES (12, 'beatriz', 'beatriz@driven.com.br', '$2b$12$TQ06iTsKa9EQnSX6rxCtB.YRBnkcpN4Qd0i4b52PCf4Yd8e6sjUty', '2022-12-21 18:35:41.528062');
INSERT INTO public.users VALUES (13, 'wesley', 'wesley@driven.com.br', '$2b$12$PK6YtEJpeLhyiRNR9/tHCuBmz4rXikJIsSRNM5ssaaRZ8T3I0rdZy', '2022-12-21 18:36:29.074071');
INSERT INTO public.users VALUES (14, 'barbara', 'barbara@driven.com.br', '$2b$12$Q6wFrKSczzIQfCDRyruzW.Tkk1VTKVF4kwH2DhBxFa80gTAq9W0lG', '2022-12-21 18:36:40.910082');
INSERT INTO public.users VALUES (15, 'mario', 'mario@driven.com.br', '$2b$12$9s5RNom/eFTVKxx../1nlOf9ZcyqpJPXajjmPG08unWbTXFYFvoRW', '2022-12-21 18:37:21.319279');
INSERT INTO public.users VALUES (16, 'eloyna', 'eloyna@driven.com.br', '$2b$12$2y7SPFxPibF6430y4Kl61uFZr8tyshlTyiLwlcwMESRvBkAgw1cHC', '2022-12-21 18:37:31.590596');
INSERT INTO public.users VALUES (17, 'gabriela', 'gabriela@driven.com.br', '$2b$12$UrMucf817.bikeH8RqqnI.fcmV3aiPk07taCiKnjcN1.DZnm3SfPu', '2022-12-21 18:37:44.778151');
INSERT INTO public.users VALUES (18, 'rebeca', 'rebeca@driven.com.br', '$2b$12$Zjf8XBtii4qI9CwkyJPbe.AGOz6ta706U.w1FRIPsHj6QngVUD8fG', '2022-12-21 18:37:55.833154');
INSERT INTO public.users VALUES (19, 'theo', 'theo@driven.com.br', '$2b$12$nVk.3oaOu.b2iqtwPKFTfehCyLMKI9CjkbH4Acdvx7TXD02MjWsGy', '2022-12-21 18:38:10.325228');
INSERT INTO public.users VALUES (20, 'mbappe', 'mbappe@driven.com.br', '$2b$12$1RfVEQ5rdPlLzpP8iraPZuPQUkF.Zkf52xPI7ihLi1fCHxquBEnqy', '2022-12-21 18:38:25.588227');
INSERT INTO public.users VALUES (21, 'messi', 'messi@driven.com.br', '$2b$12$GCozvKmhavkueCcRscvk1upmsgq2ztxNudelfafhe8fxKNbgnxIX6', '2022-12-21 18:38:34.152179');
INSERT INTO public.users VALUES (22, 'ronaldinho', 'ronaldinho@driven.com.br', '$2b$12$16ZEYMbtFC5Se5VtxZCL0OUD9FTlwrqxyGeaT5cVSCI2td23j2fRG', '2022-12-21 18:38:48.800118');
INSERT INTO public.users VALUES (23, 'haland', 'haland@driven.com.br', '$2b$12$1RGFS/q3Hk7kK9TIW/mq3uITGn4WOUv.4Nx/67x16hayRf3EuHO4S', '2022-12-21 18:39:09.644003');
INSERT INTO public.users VALUES (24, 'foden', 'foden@driven.com.br', '$2b$12$7tCPQUF6PxsA8l0CGtS1N.UDQlzVvVBs7eurT3udKyEbDSWCdNkmm', '2022-12-21 18:39:26.71307');
INSERT INTO public.users VALUES (25, 'gavi', 'gavi@driven.com.br', '$2b$12$1C7PfJBiuMvbfaV7tSq9KuM/XSHgQJmOl4E8/OsjEsw8boD09GP32', '2022-12-21 18:39:39.191246');
INSERT INTO public.users VALUES (26, 'pedri', 'pedri@driven.com.br', '$2b$12$X.adtVh8Hmi/3vjh8amRu.JrSKabFo7AHzpnZaAgwxFYMru1xvVLK', '2022-12-21 18:39:52.017438');
INSERT INTO public.users VALUES (27, 'rodrygo', 'rodrygo@driven.com.br', '$2b$12$2tGM9Cx0FDFKMg71S.TWSONWborRZj2e8Sfz.9Ktes2yM.8QVlFV6', '2022-12-21 18:40:05.312629');
INSERT INTO public.users VALUES (28, 'kane', 'kane@driven.com.br', '$2b$12$fqfdkYom23mWPoGQiH3Ne.BUcYxLZz6yNInv4h0/bHF8hQKkJ7M0O', '2022-12-21 18:40:33.569812');
INSERT INTO public.users VALUES (29, 'DeLigt', 'deligt@driven.com.br', '$2b$12$Obm0zvyY3keKQvw9iLqf3O2isj9fpmLvMHZnPM1W92tAgG.BkV4sK', '2022-12-21 18:41:03.702846');
INSERT INTO public.users VALUES (30, 'pelé', 'pele@driven.com.br', '$2b$12$l5SJANq8Ibi2cLqmI0TcTufoCwrb/Gpex4.Tp7AWRUIsuJk5w7HLO', '2022-12-21 18:41:19.292445');


--
-- Name: urls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.urls_id_seq', 14, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 30, true);


--
-- Name: urls urls_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: urls urls_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT "urls_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

