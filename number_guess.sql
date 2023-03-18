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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: player_details; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.player_details (
    player_id integer NOT NULL,
    username character varying(25)
);


ALTER TABLE public.player_details OWNER TO freecodecamp;

--
-- Name: player_details_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.player_details_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.player_details_player_id_seq OWNER TO freecodecamp;

--
-- Name: player_details_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.player_details_player_id_seq OWNED BY public.player_details.player_id;


--
-- Name: records; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.records (
    record_id integer NOT NULL,
    player_id integer NOT NULL,
    number_of_guess integer
);


ALTER TABLE public.records OWNER TO freecodecamp;

--
-- Name: records_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.records_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.records_player_id_seq OWNER TO freecodecamp;

--
-- Name: records_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.records_player_id_seq OWNED BY public.records.player_id;


--
-- Name: records_record_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.records_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.records_record_id_seq OWNER TO freecodecamp;

--
-- Name: records_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.records_record_id_seq OWNED BY public.records.record_id;


--
-- Name: player_details player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.player_details ALTER COLUMN player_id SET DEFAULT nextval('public.player_details_player_id_seq'::regclass);


--
-- Name: records record_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.records ALTER COLUMN record_id SET DEFAULT nextval('public.records_record_id_seq'::regclass);


--
-- Name: records player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.records ALTER COLUMN player_id SET DEFAULT nextval('public.records_player_id_seq'::regclass);


--
-- Data for Name: player_details; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.player_details VALUES (33, 'Lui');
INSERT INTO public.player_details VALUES (34, 'user_1679124838964');
INSERT INTO public.player_details VALUES (35, 'user_1679124838963');
INSERT INTO public.player_details VALUES (36, 'user_1679124852696');
INSERT INTO public.player_details VALUES (37, 'user_1679124852695');
INSERT INTO public.player_details VALUES (38, 'user_1679124865739');
INSERT INTO public.player_details VALUES (39, 'user_1679124865738');
INSERT INTO public.player_details VALUES (40, 'user_1679124879092');
INSERT INTO public.player_details VALUES (41, 'user_1679124879091');
INSERT INTO public.player_details VALUES (42, 'user_1679124994123');
INSERT INTO public.player_details VALUES (43, 'user_1679124994122');
INSERT INTO public.player_details VALUES (44, 'user_1679125016839');
INSERT INTO public.player_details VALUES (45, 'user_1679125016838');
INSERT INTO public.player_details VALUES (46, 'user_1679125026924');
INSERT INTO public.player_details VALUES (47, 'user_1679125026923');
INSERT INTO public.player_details VALUES (48, 'user_1679125036774');
INSERT INTO public.player_details VALUES (49, 'user_1679125036773');
INSERT INTO public.player_details VALUES (50, 'user_1679125046211');
INSERT INTO public.player_details VALUES (51, 'user_1679125046210');
INSERT INTO public.player_details VALUES (52, 'user_1679125089305');
INSERT INTO public.player_details VALUES (53, 'user_1679125089304');
INSERT INTO public.player_details VALUES (54, 'user_1679125097856');
INSERT INTO public.player_details VALUES (55, 'user_1679125097855');
INSERT INTO public.player_details VALUES (56, 'user_1679125104480');
INSERT INTO public.player_details VALUES (57, 'user_1679125104479');
INSERT INTO public.player_details VALUES (58, 'user_1679125141051');
INSERT INTO public.player_details VALUES (59, 'user_1679125141050');
INSERT INTO public.player_details VALUES (60, 'user_1679125155749');
INSERT INTO public.player_details VALUES (61, 'user_1679125155748');
INSERT INTO public.player_details VALUES (62, 'user_1679125190519');
INSERT INTO public.player_details VALUES (63, 'user_1679125190518');
INSERT INTO public.player_details VALUES (64, 'user_1679125209212');
INSERT INTO public.player_details VALUES (65, 'user_1679125209211');
INSERT INTO public.player_details VALUES (66, 'user_1679125227270');
INSERT INTO public.player_details VALUES (67, 'user_1679125227269');
INSERT INTO public.player_details VALUES (68, 'user_1679125240464');
INSERT INTO public.player_details VALUES (69, 'user_1679125240463');
INSERT INTO public.player_details VALUES (70, 'user_1679125249895');
INSERT INTO public.player_details VALUES (71, 'user_1679125249894');
INSERT INTO public.player_details VALUES (72, 'user_1679125263123');
INSERT INTO public.player_details VALUES (73, 'user_1679125263122');
INSERT INTO public.player_details VALUES (74, 'user_1679125275703');
INSERT INTO public.player_details VALUES (75, 'user_1679125275702');
INSERT INTO public.player_details VALUES (76, 'user_1679125281841');
INSERT INTO public.player_details VALUES (77, 'user_1679125281840');
INSERT INTO public.player_details VALUES (78, 'user_1679125309125');
INSERT INTO public.player_details VALUES (79, 'user_1679125309124');
INSERT INTO public.player_details VALUES (80, 'user_1679125321770');
INSERT INTO public.player_details VALUES (81, 'user_1679125321769');
INSERT INTO public.player_details VALUES (82, 'user_1679125347996');
INSERT INTO public.player_details VALUES (83, 'user_1679125347995');
INSERT INTO public.player_details VALUES (84, 'user_1679125428390');
INSERT INTO public.player_details VALUES (85, 'user_1679125428389');
INSERT INTO public.player_details VALUES (86, 'user_1679125434764');
INSERT INTO public.player_details VALUES (87, 'user_1679125434763');
INSERT INTO public.player_details VALUES (88, 'user_1679125463336');
INSERT INTO public.player_details VALUES (89, 'user_1679125463335');
INSERT INTO public.player_details VALUES (90, 'user_1679125471089');
INSERT INTO public.player_details VALUES (91, 'user_1679125471088');
INSERT INTO public.player_details VALUES (92, 'user_1679125477361');
INSERT INTO public.player_details VALUES (93, 'user_1679125477360');
INSERT INTO public.player_details VALUES (94, 'user_1679125511020');
INSERT INTO public.player_details VALUES (95, 'user_1679125511019');
INSERT INTO public.player_details VALUES (96, 'user_1679125525361');
INSERT INTO public.player_details VALUES (97, 'user_1679125525360');
INSERT INTO public.player_details VALUES (98, 'user_1679125533663');
INSERT INTO public.player_details VALUES (99, 'user_1679125533662');
INSERT INTO public.player_details VALUES (100, 'user_1679125563379');
INSERT INTO public.player_details VALUES (101, 'user_1679125563378');
INSERT INTO public.player_details VALUES (102, 'user_1679125573457');
INSERT INTO public.player_details VALUES (103, 'user_1679125573456');
INSERT INTO public.player_details VALUES (104, 'user_1679125586307');
INSERT INTO public.player_details VALUES (105, 'user_1679125586306');
INSERT INTO public.player_details VALUES (106, 'user_1679125619924');
INSERT INTO public.player_details VALUES (107, 'user_1679125619923');
INSERT INTO public.player_details VALUES (108, 'user_1679125634161');
INSERT INTO public.player_details VALUES (109, 'user_1679125634160');
INSERT INTO public.player_details VALUES (110, 'user_1679125647626');
INSERT INTO public.player_details VALUES (111, 'user_1679125647625');
INSERT INTO public.player_details VALUES (112, 'user_1679125656031');
INSERT INTO public.player_details VALUES (113, 'user_1679125656030');
INSERT INTO public.player_details VALUES (114, 'user_1679125667696');
INSERT INTO public.player_details VALUES (115, 'user_1679125667695');
INSERT INTO public.player_details VALUES (116, 'user_1679125681963');
INSERT INTO public.player_details VALUES (117, 'user_1679125681962');
INSERT INTO public.player_details VALUES (118, 'user_1679125698357');
INSERT INTO public.player_details VALUES (119, 'user_1679125698356');
INSERT INTO public.player_details VALUES (120, 'user_1679125704177');
INSERT INTO public.player_details VALUES (121, 'user_1679125704176');
INSERT INTO public.player_details VALUES (122, 'user_1679125759934');
INSERT INTO public.player_details VALUES (123, 'user_1679125759933');
INSERT INTO public.player_details VALUES (124, 'user_1679125879826');
INSERT INTO public.player_details VALUES (125, 'user_1679125879825');


--
-- Data for Name: records; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.records VALUES (100, 33, 15);
INSERT INTO public.records VALUES (101, 33, 14);
INSERT INTO public.records VALUES (102, 34, 733);
INSERT INTO public.records VALUES (103, 34, 422);
INSERT INTO public.records VALUES (104, 35, 789);
INSERT INTO public.records VALUES (105, 34, 671);
INSERT INTO public.records VALUES (106, 34, 400);
INSERT INTO public.records VALUES (107, 34, 386);
INSERT INTO public.records VALUES (108, 36, 593);
INSERT INTO public.records VALUES (109, 36, 793);
INSERT INTO public.records VALUES (110, 37, 457);
INSERT INTO public.records VALUES (111, 37, 115);
INSERT INTO public.records VALUES (112, 36, 103);
INSERT INTO public.records VALUES (113, 36, 476);
INSERT INTO public.records VALUES (114, 36, 377);
INSERT INTO public.records VALUES (115, 38, 371);
INSERT INTO public.records VALUES (116, 38, 672);
INSERT INTO public.records VALUES (117, 39, 21);
INSERT INTO public.records VALUES (118, 39, 787);
INSERT INTO public.records VALUES (119, 38, 722);
INSERT INTO public.records VALUES (120, 38, 352);
INSERT INTO public.records VALUES (121, 40, 715);
INSERT INTO public.records VALUES (122, 40, 721);
INSERT INTO public.records VALUES (123, 41, 728);
INSERT INTO public.records VALUES (124, 41, 700);
INSERT INTO public.records VALUES (125, 40, 23);
INSERT INTO public.records VALUES (126, 40, 780);
INSERT INTO public.records VALUES (127, 40, 712);
INSERT INTO public.records VALUES (128, 42, 218);
INSERT INTO public.records VALUES (129, 43, 292);
INSERT INTO public.records VALUES (130, 42, 109);
INSERT INTO public.records VALUES (131, 42, 363);
INSERT INTO public.records VALUES (132, 42, 458);
INSERT INTO public.records VALUES (133, 44, 622);
INSERT INTO public.records VALUES (134, 44, 595);
INSERT INTO public.records VALUES (135, 45, 659);
INSERT INTO public.records VALUES (136, 45, 224);
INSERT INTO public.records VALUES (137, 44, 343);
INSERT INTO public.records VALUES (138, 44, 177);
INSERT INTO public.records VALUES (139, 44, 98);
INSERT INTO public.records VALUES (140, 46, 366);
INSERT INTO public.records VALUES (141, 46, 337);
INSERT INTO public.records VALUES (142, 47, 39);
INSERT INTO public.records VALUES (143, 47, 756);
INSERT INTO public.records VALUES (144, 46, 892);
INSERT INTO public.records VALUES (145, 46, 143);
INSERT INTO public.records VALUES (146, 46, 659);
INSERT INTO public.records VALUES (147, 48, 478);
INSERT INTO public.records VALUES (148, 48, 890);
INSERT INTO public.records VALUES (149, 49, 831);
INSERT INTO public.records VALUES (150, 49, 316);
INSERT INTO public.records VALUES (151, 48, 291);
INSERT INTO public.records VALUES (152, 48, 365);
INSERT INTO public.records VALUES (153, 48, 724);
INSERT INTO public.records VALUES (154, 50, 285);
INSERT INTO public.records VALUES (155, 51, 643);
INSERT INTO public.records VALUES (156, 50, 279);
INSERT INTO public.records VALUES (157, 50, 802);
INSERT INTO public.records VALUES (158, 50, 819);
INSERT INTO public.records VALUES (159, 52, 230);
INSERT INTO public.records VALUES (160, 52, 379);
INSERT INTO public.records VALUES (161, 53, 55);
INSERT INTO public.records VALUES (162, 53, 556);
INSERT INTO public.records VALUES (163, 52, 782);
INSERT INTO public.records VALUES (164, 52, 521);
INSERT INTO public.records VALUES (165, 52, 747);
INSERT INTO public.records VALUES (166, 54, 263);
INSERT INTO public.records VALUES (167, 54, 111);
INSERT INTO public.records VALUES (168, 55, 633);
INSERT INTO public.records VALUES (169, 55, 405);
INSERT INTO public.records VALUES (170, 54, 599);
INSERT INTO public.records VALUES (171, 54, 139);
INSERT INTO public.records VALUES (172, 54, 883);
INSERT INTO public.records VALUES (173, 56, 221);
INSERT INTO public.records VALUES (174, 56, 830);
INSERT INTO public.records VALUES (175, 57, 237);
INSERT INTO public.records VALUES (176, 57, 544);
INSERT INTO public.records VALUES (177, 56, 624);
INSERT INTO public.records VALUES (178, 56, 163);
INSERT INTO public.records VALUES (179, 58, 201);
INSERT INTO public.records VALUES (180, 58, 113);
INSERT INTO public.records VALUES (181, 59, 739);
INSERT INTO public.records VALUES (182, 58, 74);
INSERT INTO public.records VALUES (183, 58, 180);
INSERT INTO public.records VALUES (184, 58, 213);
INSERT INTO public.records VALUES (185, 60, 576);
INSERT INTO public.records VALUES (186, 61, 576);
INSERT INTO public.records VALUES (187, 61, 492);
INSERT INTO public.records VALUES (188, 60, 481);
INSERT INTO public.records VALUES (189, 60, 58);
INSERT INTO public.records VALUES (190, 60, 484);
INSERT INTO public.records VALUES (191, 62, 388);
INSERT INTO public.records VALUES (192, 62, 708);
INSERT INTO public.records VALUES (193, 63, 378);
INSERT INTO public.records VALUES (194, 63, 161);
INSERT INTO public.records VALUES (195, 62, 664);
INSERT INTO public.records VALUES (196, 62, 773);
INSERT INTO public.records VALUES (197, 62, 291);
INSERT INTO public.records VALUES (198, 64, 604);
INSERT INTO public.records VALUES (199, 64, 689);
INSERT INTO public.records VALUES (200, 65, 267);
INSERT INTO public.records VALUES (201, 65, 867);
INSERT INTO public.records VALUES (202, 64, 508);
INSERT INTO public.records VALUES (203, 64, 556);
INSERT INTO public.records VALUES (204, 66, 128);
INSERT INTO public.records VALUES (205, 66, 654);
INSERT INTO public.records VALUES (206, 67, 659);
INSERT INTO public.records VALUES (207, 67, 158);
INSERT INTO public.records VALUES (208, 66, 6);
INSERT INTO public.records VALUES (209, 66, 372);
INSERT INTO public.records VALUES (210, 68, 181);
INSERT INTO public.records VALUES (211, 68, 804);
INSERT INTO public.records VALUES (212, 69, 392);
INSERT INTO public.records VALUES (213, 69, 4);
INSERT INTO public.records VALUES (214, 68, 611);
INSERT INTO public.records VALUES (215, 68, 327);
INSERT INTO public.records VALUES (216, 68, 439);
INSERT INTO public.records VALUES (217, 70, 624);
INSERT INTO public.records VALUES (218, 70, 838);
INSERT INTO public.records VALUES (219, 71, 761);
INSERT INTO public.records VALUES (220, 71, 459);
INSERT INTO public.records VALUES (221, 70, 104);
INSERT INTO public.records VALUES (222, 70, 51);
INSERT INTO public.records VALUES (223, 70, 205);
INSERT INTO public.records VALUES (224, 72, 304);
INSERT INTO public.records VALUES (225, 72, 65);
INSERT INTO public.records VALUES (226, 73, 507);
INSERT INTO public.records VALUES (227, 73, 537);
INSERT INTO public.records VALUES (228, 72, 409);
INSERT INTO public.records VALUES (229, 72, 672);
INSERT INTO public.records VALUES (230, 74, 387);
INSERT INTO public.records VALUES (231, 74, 237);
INSERT INTO public.records VALUES (232, 75, 272);
INSERT INTO public.records VALUES (233, 75, 429);
INSERT INTO public.records VALUES (234, 74, 743);
INSERT INTO public.records VALUES (235, 74, 308);
INSERT INTO public.records VALUES (236, 74, 895);
INSERT INTO public.records VALUES (237, 76, 292);
INSERT INTO public.records VALUES (238, 77, 277);
INSERT INTO public.records VALUES (239, 76, 788);
INSERT INTO public.records VALUES (240, 76, 719);
INSERT INTO public.records VALUES (241, 78, 831);
INSERT INTO public.records VALUES (242, 78, 687);
INSERT INTO public.records VALUES (243, 79, 821);
INSERT INTO public.records VALUES (244, 79, 180);
INSERT INTO public.records VALUES (245, 78, 101);
INSERT INTO public.records VALUES (246, 78, 602);
INSERT INTO public.records VALUES (247, 78, 739);
INSERT INTO public.records VALUES (248, 80, 697);
INSERT INTO public.records VALUES (249, 81, 797);
INSERT INTO public.records VALUES (250, 81, 410);
INSERT INTO public.records VALUES (251, 80, 38);
INSERT INTO public.records VALUES (252, 80, 81);
INSERT INTO public.records VALUES (253, 82, 270);
INSERT INTO public.records VALUES (254, 82, 7);
INSERT INTO public.records VALUES (255, 83, 802);
INSERT INTO public.records VALUES (256, 83, 345);
INSERT INTO public.records VALUES (257, 82, 736);
INSERT INTO public.records VALUES (258, 82, 848);
INSERT INTO public.records VALUES (259, 82, 831);
INSERT INTO public.records VALUES (260, 84, 77);
INSERT INTO public.records VALUES (261, 84, 141);
INSERT INTO public.records VALUES (262, 85, 505);
INSERT INTO public.records VALUES (263, 85, 735);
INSERT INTO public.records VALUES (264, 84, 765);
INSERT INTO public.records VALUES (265, 84, 206);
INSERT INTO public.records VALUES (266, 84, 66);
INSERT INTO public.records VALUES (267, 86, 370);
INSERT INTO public.records VALUES (268, 87, 291);
INSERT INTO public.records VALUES (269, 86, 45);
INSERT INTO public.records VALUES (270, 86, 737);
INSERT INTO public.records VALUES (271, 88, 556);
INSERT INTO public.records VALUES (272, 88, 497);
INSERT INTO public.records VALUES (273, 89, 227);
INSERT INTO public.records VALUES (274, 89, 127);
INSERT INTO public.records VALUES (275, 88, 780);
INSERT INTO public.records VALUES (276, 88, 394);
INSERT INTO public.records VALUES (277, 88, 302);
INSERT INTO public.records VALUES (278, 90, 545);
INSERT INTO public.records VALUES (279, 90, 310);
INSERT INTO public.records VALUES (280, 91, 20);
INSERT INTO public.records VALUES (281, 91, 343);
INSERT INTO public.records VALUES (282, 90, 587);
INSERT INTO public.records VALUES (283, 90, 178);
INSERT INTO public.records VALUES (284, 90, 731);
INSERT INTO public.records VALUES (285, 92, 769);
INSERT INTO public.records VALUES (286, 93, 726);
INSERT INTO public.records VALUES (287, 92, 81);
INSERT INTO public.records VALUES (288, 92, 185);
INSERT INTO public.records VALUES (289, 94, 790);
INSERT INTO public.records VALUES (290, 94, 34);
INSERT INTO public.records VALUES (291, 95, 626);
INSERT INTO public.records VALUES (292, 95, 222);
INSERT INTO public.records VALUES (293, 94, 458);
INSERT INTO public.records VALUES (294, 94, 684);
INSERT INTO public.records VALUES (295, 96, 809);
INSERT INTO public.records VALUES (296, 96, 145);
INSERT INTO public.records VALUES (297, 97, 899);
INSERT INTO public.records VALUES (298, 97, 870);
INSERT INTO public.records VALUES (299, 96, 637);
INSERT INTO public.records VALUES (300, 96, 548);
INSERT INTO public.records VALUES (301, 96, 585);
INSERT INTO public.records VALUES (302, 98, 28);
INSERT INTO public.records VALUES (303, 99, 135);
INSERT INTO public.records VALUES (304, 98, 44);
INSERT INTO public.records VALUES (305, 98, 551);
INSERT INTO public.records VALUES (306, 100, 556);
INSERT INTO public.records VALUES (307, 100, 783);
INSERT INTO public.records VALUES (308, 101, 80);
INSERT INTO public.records VALUES (309, 101, 182);
INSERT INTO public.records VALUES (310, 100, 860);
INSERT INTO public.records VALUES (311, 100, 677);
INSERT INTO public.records VALUES (312, 100, 248);
INSERT INTO public.records VALUES (313, 102, 161);
INSERT INTO public.records VALUES (314, 102, 330);
INSERT INTO public.records VALUES (315, 103, 169);
INSERT INTO public.records VALUES (316, 103, 318);
INSERT INTO public.records VALUES (317, 102, 666);
INSERT INTO public.records VALUES (318, 102, 65);
INSERT INTO public.records VALUES (319, 102, 251);
INSERT INTO public.records VALUES (320, 104, 362);
INSERT INTO public.records VALUES (321, 104, 396);
INSERT INTO public.records VALUES (322, 105, 540);
INSERT INTO public.records VALUES (323, 104, 750);
INSERT INTO public.records VALUES (324, 104, 301);
INSERT INTO public.records VALUES (325, 104, 18);
INSERT INTO public.records VALUES (326, 106, 302);
INSERT INTO public.records VALUES (327, 106, 174);
INSERT INTO public.records VALUES (328, 107, 422);
INSERT INTO public.records VALUES (329, 107, 109);
INSERT INTO public.records VALUES (330, 106, 634);
INSERT INTO public.records VALUES (331, 106, 855);
INSERT INTO public.records VALUES (332, 108, 557);
INSERT INTO public.records VALUES (333, 109, 339);
INSERT INTO public.records VALUES (334, 109, 498);
INSERT INTO public.records VALUES (335, 108, 770);
INSERT INTO public.records VALUES (336, 108, 544);
INSERT INTO public.records VALUES (337, 108, 65);
INSERT INTO public.records VALUES (338, 110, 493);
INSERT INTO public.records VALUES (339, 110, 25);
INSERT INTO public.records VALUES (340, 111, 883);
INSERT INTO public.records VALUES (341, 111, 99);
INSERT INTO public.records VALUES (342, 110, 572);
INSERT INTO public.records VALUES (343, 110, 906);
INSERT INTO public.records VALUES (344, 110, 558);
INSERT INTO public.records VALUES (345, 112, 464);
INSERT INTO public.records VALUES (346, 112, 246);
INSERT INTO public.records VALUES (347, 113, 514);
INSERT INTO public.records VALUES (348, 113, 179);
INSERT INTO public.records VALUES (349, 112, 833);
INSERT INTO public.records VALUES (350, 112, 577);
INSERT INTO public.records VALUES (351, 112, 710);
INSERT INTO public.records VALUES (352, 114, 758);
INSERT INTO public.records VALUES (353, 114, 864);
INSERT INTO public.records VALUES (354, 115, 486);
INSERT INTO public.records VALUES (355, 115, 382);
INSERT INTO public.records VALUES (356, 114, 729);
INSERT INTO public.records VALUES (357, 114, 461);
INSERT INTO public.records VALUES (358, 114, 605);
INSERT INTO public.records VALUES (359, 116, 778);
INSERT INTO public.records VALUES (360, 116, 636);
INSERT INTO public.records VALUES (361, 117, 294);
INSERT INTO public.records VALUES (362, 117, 755);
INSERT INTO public.records VALUES (363, 116, 706);
INSERT INTO public.records VALUES (364, 116, 732);
INSERT INTO public.records VALUES (365, 116, 314);
INSERT INTO public.records VALUES (366, 118, 2);
INSERT INTO public.records VALUES (367, 118, 680);
INSERT INTO public.records VALUES (368, 119, 405);
INSERT INTO public.records VALUES (369, 119, 799);
INSERT INTO public.records VALUES (370, 118, 666);
INSERT INTO public.records VALUES (371, 118, 45);
INSERT INTO public.records VALUES (372, 118, 451);
INSERT INTO public.records VALUES (373, 120, 174);
INSERT INTO public.records VALUES (374, 121, 636);
INSERT INTO public.records VALUES (375, 120, 490);
INSERT INTO public.records VALUES (376, 120, 647);
INSERT INTO public.records VALUES (377, 120, 106);
INSERT INTO public.records VALUES (378, 122, 331);
INSERT INTO public.records VALUES (379, 122, 191);
INSERT INTO public.records VALUES (380, 123, 493);
INSERT INTO public.records VALUES (381, 123, 354);
INSERT INTO public.records VALUES (382, 122, 388);
INSERT INTO public.records VALUES (383, 122, 93);
INSERT INTO public.records VALUES (384, 124, 129);
INSERT INTO public.records VALUES (385, 124, 352);
INSERT INTO public.records VALUES (386, 125, 501);
INSERT INTO public.records VALUES (387, 125, 494);
INSERT INTO public.records VALUES (388, 124, 257);
INSERT INTO public.records VALUES (389, 124, 39);
INSERT INTO public.records VALUES (390, 124, 63);


--
-- Name: player_details_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.player_details_player_id_seq', 125, true);


--
-- Name: records_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.records_player_id_seq', 1, false);


--
-- Name: records_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.records_record_id_seq', 390, true);


--
-- Name: player_details player_details_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.player_details
    ADD CONSTRAINT player_details_pkey PRIMARY KEY (player_id);


--
-- Name: records records_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.records
    ADD CONSTRAINT records_pkey PRIMARY KEY (record_id);


--
-- Name: records records_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.records
    ADD CONSTRAINT records_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.player_details(player_id);


--
-- PostgreSQL database dump complete
--

