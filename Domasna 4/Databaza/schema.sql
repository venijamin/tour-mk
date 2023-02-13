--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-02-13 00:23:38

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
-- TOC entry 214 (class 1259 OID 16610)
-- Name: place; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.place (
    name character varying(255) NOT NULL,
    category character varying(255),
    description character varying(3000),
    img character varying(255),
    lat real NOT NULL,
    lon real NOT NULL,
    mk_name character varying(255),
    phone character varying(255),
    rating real,
    review_count character varying(255),
    website character varying(255)
);


ALTER TABLE public.place OWNER TO postgres;

--
-- TOC entry 3316 (class 0 OID 16610)
-- Dependencies: 214
-- Data for Name: place; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.place (name, category, description, img, lat, lon, mk_name, phone, rating, review_count, website) FROM stdin;
„Plaoshnik“	Archaeological site	This archeological site features a restored 9th-century church plus ruins from earlier structures.	https://lh5.googleusercontent.com/p/AF1QipPzI7F3L61x1NhgkYK9bTYZcYQo2hmw-Tbe31XU=w408-h306-k-no	41.112766	20.790802	„Плаошник“	none	4.7	672 reviews	none
Aqua Park Macedonia	Amusement park	none	https://lh5.googleusercontent.com/p/AF1QipNi4iGDMSUTlplgVU2I0xE1phMuJkjrnDAGlBPT=w408-h306-k-no	42.005463	22.17595	Аквапарк Македонија	+389 32 480 080	3.9	760 reviews	none
Archaeological Museum of the Republic of Macedonia	Museum	Grand museum offering archeological relics from ancient Macedonian times, including coins & statues.	https://lh5.googleusercontent.com/p/AF1QipMfevIpMDL-UaBQrrlCrnFivQYuClRSLRMblDC-=w408-h306-k-no	41.996784	21.434341	Археолошки музеј на Република Македонија	+389 2 323 3999	4.1	768 reviews	amm.org.mk
Berovo lake	Lake	none	https://lh5.googleusercontent.com/p/AF1QipOVBA04wfBsHA2nQU8DKgRJlyjMfIiAx6k25rk=w408-h306-k-no	41.66899	22.905136	Беровско езеро	none	4.7	117 reviews	none
Bigorski Monastery St John the Baptist	Monastery	Tranquil monastery founded in 1020 overlooking mountains & housing a collection of holy relics.	https://lh5.googleusercontent.com/p/AF1QipM5Qv0YOoTQ7afx7sVZoW9mpgTv2W2CJmzomVzi=w426-h240-k-no	41.62118	20.609425	Манастир Свети Јован Бигорски	+389 42 333 399	4.9	2,564 reviews	bigorski.mk
Bitola Zoo	Zoo	none	https://lh5.googleusercontent.com/p/AF1QipNEWzzYVSeV3p_BSDOsE57YpXBlY9QzCgT1fv0r=w408-h306-k-no	41.014687	21.342072	Зоолошка градина Битола	+389 47 222 956	3.5	511 reviews	none
BUNK'ART	Museum	Former Cold War bunker, now an underground contemporary art & history museum over several floors.	https://lh5.googleusercontent.com/p/AF1QipNUPZ_7spqd3FMObhmkw05BWHdrsUMoXeLUwTlj=w408-h271-k-no	41.349823	19.86053	none	none	4.7	905 reviews	none
Camping Lakeside	none	none	https://lh5.googleusercontent.com/p/AF1QipNRIVm1FtRdZXYXbgViTfuxcwVpfV5k6ppas-XV=w408-h306-k-no	41.15127	20.65121	none	+389 78 271 491	4.9	56 reviews	facebook.com
Camping Rino 2	Campground	none	https://lh5.googleusercontent.com/p/AF1QipP3BK2fO7dalmi4d4qdcOZ3XnR_TLREt826hzbS=w427-h240-k-no	41.155903	20.650831	Рино 2	+389 70 878 256	4.9	115 reviews	campingrino.com
Canyon Matka	Nature preserve	Picturesque gorge with medieval monasteries, also offering boating, hiking & cave exploration.	https://i1.wp.com/www.discoveringmacedonia.com/wp-content/uploads/2018/01/IMG_4281-1.jpg?fit=1000%2C750&ssl=1	41.9507	21.299622	Клисура Матка	+389 70 271 900	4.7	7,258 reviews	none
Canyon Matka Hotel & Restaurant	none	none	https://lh5.googleusercontent.com/p/AF1QipMAmR2Cbbw2EdmHgdjZ9LF1b0Jq7eKg1LRZYafy=w408-h407-k-no	41.950294	21.299215	none	+389 2 205 2655	3.5	333 reviews	canyonmatka.mk
Car Camp Ljubanishta	Campground	none	https://lh5.googleusercontent.com/p/AF1QipNwfEW3rwBR75HdhFE_fvdoN6E8Jh0VPe_4tNhx=w408-h306-k-no	40.924755	20.774082	Авто-камп Љубаништа	+389 46 283 011	4.4	1,052 reviews	campljubanista.mk
Church of Saint John the Theologian	Orthodox church	Historic, landmark Orthodox church overlooking Lake Ohrid, with picnic & seating areas.	https://lh5.googleusercontent.com/p/AF1QipM8DGM2obc9GOxs2mDp-xNvI9sl1T5YICgAiZ1b=w408-h306-k-no	41.111103	20.788754	Црква „Свети Јован Богослов“	+389 46 230 455	4.9	2,702 reviews	none
Church of Saint Sophia	Orthodox church	Built in the Middle Ages, this Macedonian Orthodox Church displays centuries-old religious art.	https://lh5.googleusercontent.com/p/AF1QipMp2NHsPEoOLowQ9UIXznkZtw232sWhsL4lEpI=w408-h306-k-no	41.112095	20.794235	Црква “Св. Софија” - Охрид	+389 46 267 403	4.7	1,986 reviews	mpc.org.mk
Church of Saints Clement and Panteleimon	Orthodox church	The most sacred in the region, this ancient Byzantine church sits on a hill overlooking the lake.	https://lh5.googleusercontent.com/p/AF1QipOeq1UYxMvrLnPW3F2bSsy5yfsw8wkLaygW_NjR=w408-h306-k-no	41.112423	20.790943	Црква Свети Климент и Пантелеjмон	none	4.7	448 reviews	none
Ciflik Winery	none	none	https://lh5.googleusercontent.com/p/AF1QipNDTClVNS0sTSSyRhGpMii9lXjwqVItK1uwHR78=w416-h240-k-no	41.031994	21.29291	Винарија „Чифлик“	+389 78 305 369	4.5	577 reviews	ciflikwinery.com
DMC Balkans Travel & Events	Tour operator	none	https://lh5.googleusercontent.com/p/AF1QipN56Zzg8DNLPB3mmwCwhUiMvDrs8cxIM5t5xumL=w408-h323-k-no	41.11716	20.802275	none	+389 46 256 333	4.9	68 reviews	dmcbalkans.com
Dojran Lake	Lake	Picturesque lake bordered by national parkland, featuring trails alongside abundant flora & fauna.	https://lh5.googleusercontent.com/p/AF1QipOU0yugSHV6sbeGbrn_9CuZ1bQm8s-2D35PHIKh=w408-h306-k-no	41.221752	22.750965	Дојранско Езеро	none	4.3	561 reviews	none
Duf Waterfall	Nature preserve	none	https://lh5.googleusercontent.com/p/AF1QipNDKz_OphSYXJqobIrlZZseAxI5HzFYIFUl00hK=w408-h544-k-no	41.60272	20.596733	Водопад Дуф	none	4.8	253 reviews	macedonia-timeless.com
Explore Macedonia	Tour operator	none	https://lh5.googleusercontent.com/p/AF1QipNc0_xSdBbTnVHs1i5_40fkUvFnC6p1syAW9OhD=w427-h240-k-no	42.00735	21.359163	none	+389 71 237 447	5	3 reviews	explore-macedonia.mk
Explore Ohrid	Tourist information center	none	https://lh5.googleusercontent.com/p/AF1QipNWXwGetOWObeUhJzPJk8sv0WYJbjf5K42x1vFq=w426-h240-k-no	41.117397	20.799149	none	+389 78 908 303	4.9	11 reviews	none
Free Skopje Walking Tours	Travel agency	none	https://lh5.googleusercontent.com/p/AF1QipPJszlYfgEKMUtWvkl_gss9GzEBlYkCWlZbD134=w408-h242-k-no	41.995453	21.43143	none	+389 71 385 939	4.9	145 reviews	freeskopjewalkingtours.com
Galičica National Park	National park	Protected area around Mount Galicica, with rugged hiking & biking trails overlooking 2 vast lakes.	https://lh5.googleusercontent.com/p/AF1QipMiTUI26d2Vdzv7v867cfuf_deQSJqDMsbGXtB_=w408-h273-k-no	40.96727	20.840078	Национален парк „Галичица“	none	4.7	2,402 reviews	galicica.org.mk
Goblin Games	Game store	none	https://lh5.googleusercontent.com/p/AF1QipNE6LFi3enQJun5dd1X3ZOrV3z3icC1GTglJCJv=w511-h240-k-no	41.998924	21.419685	none	+389 78 669 482	4.9	155 reviews	goblingames.mk
Golden Beach	Beach	none	https://lh5.googleusercontent.com/p/AF1QipNrI3j98W2DJ-a1STtyQKscFrUH-UdGyAaOUhTj=w408-h306-k-no	41.090168	20.79839	none	none	3.7	127 reviews	none
Great Prespa Lake	Lake	none	https://lh5.googleusercontent.com/p/AF1QipMOnOiVE7oTA8mBsfnXUWAjt8P7h1UmqNyZFopo=w408-h306-k-no	40.883316	21.022196	Преспанско Езеро	none	4.6	68 reviews	none
Heraclea Lyncestis	Archaeological site	none	https://lh5.googleusercontent.com/p/AF1QipPXv2HBJ53LRis4MeNXG2AN4LUaBTIXn-6hxM5h=w426-h240-k-no	41.011112	21.342342	Хераклеа Линкестис	+389 47 235 329	4.5	900 reviews	none
Hisarlaka Fortress	Fortress	none	https://lh5.googleusercontent.com/p/AF1QipNXTEa8PosiRuysb-9r_BazE5PBzzWdJ29hxgfS=w408-h306-k-no	42.27576	22.69135	Крепост Хисарлъка	none	4.7	3,390 reviews	kreposthisarluka.bgsait.com
Holy Mother of God (Treskavec Monastery)	Monastery	Hilltop church dating from the 12th century, with elaborate ceiling frescoes & valley views.	https://lh5.googleusercontent.com/p/AF1QipOcr6LDqvDZt78S_MSYIF7M8x_Cgvn5BswczNQk=w408-h270-k-no	41.404152	21.537975	Успение на Пресвета Богородица	none	4.8	312 reviews	none
Holy Transfiguration	Monastery	none	https://lh5.googleusercontent.com/p/AF1QipN9fQ6Ndu7K3-jgVWhSaFJ_EifDk7AzatR-6Uw=w539-h240-k-no	41.521576	21.341694	Свето Преображение	+389 48 459 400	4.9	276 reviews	facebook.com
House of Mijaks Ethno Restaurant	Restaurant	none	https://lh5.googleusercontent.com/p/AF1QipPD7nEUmZ-oTf0bbN6_QwCEDE5CUKNeQpO5sg39=w480-h240-k-no	41.62261	20.607151	Етно ресторан “Куќа на Мијаците“	+389 70 378 333	4.7	1,230 reviews	kukjanamijacite.mk
Info Point Mavrovo National Park	Tourist information center	none	https://lh5.googleusercontent.com/p/AF1QipMVS-2xk0AELiCj8h2JQ2LHxe9McehIDDPzqfJK=w408-h306-k-no	41.698605	20.752657	none	+389 42 489 425	4.2	77 reviews	npmavrovo.org.mk
Kamnik Winery	Winery	none	https://lh5.googleusercontent.com/p/AF1QipNvT0l9ET8GmEL7Zqed3uWPKgQXnPSkLQ8Vzd6g=w408-h266-k-no	42.00775	21.490284	Винарија „Камник“	+389 2 252 1789	4.9	119 reviews	chateaukamnik.com
Kaneo	Beach	Tiny, rocky beach on Lake Ohrid featuring traditional seafood restaurants & a swimming platform.	https://lh5.googleusercontent.com/p/AF1QipP9hRmbEafjQLhqgsi7AA4S1tee8HN4pd3r2_aE=w408-h272-k-no	41.111103	20.789495	Канео	none	4.7	68 reviews	none
Kokino megalithic observatory	Observatory	Mountainous site with the archaeological ruins of a Bronze Age observatory.	https://upload.wikimedia.org/wikipedia/commons/c/c5/Megalithic_Observatory_Kokino.jpg	42.263035	21.95372	Кокино мегалитска опсерваторија	none	4.7	426 reviews	kokino.mk
Koleshino Waterfall	Tourist attraction	none	https://lh5.googleusercontent.com/p/AF1QipPiU_BpUeX6DVK62JBNx0vdjgaShssCfNKu8_Ov=w408-h883-k-no	41.369507	22.806892	Колешински Водопад	+389 34 351 796	4.8	463 reviews	none
Lake Debar	Lake	none	https://lh5.googleusercontent.com/p/AF1QipPIup0Bot0KMW6KMwfZUb70hPTy5hH_V9XlrEk6=w408-h271-k-no	41.50141	20.527504	Дебарско Езеро	none	4.4	64 reviews	none
Lake Matka	Lake	Man-made lake in a scenic canyon, stocked for fishing & with an underwater cave.	https://lh5.googleusercontent.com/p/AF1QipNIJuGXLuwi2VVBM2K6u409ioL8FZ95_La9-J4U=w426-h240-k-no	41.952236	21.298779	Матка	none	4.7	141 reviews	none
Lake Ohrid	Lake	This large ancient lake straddling the border between Albania & Macedonia reaches a depth of 300m.	https://lh5.googleusercontent.com/p/AF1QipM2sXnVKbhYedkfQqic2BZ5yie0l0uCqCj8d8X_=w408-h272-k-no	41.041912	20.718998	Охридско Езеро	none	4.8	951 reviews	none
Lake Prespa	Lake	Picturesque freshwater lake bordered by national parkland, offering trails & abundant flora & fauna.	https://lh5.googleusercontent.com/p/AF1QipM-4OmplPqyYSXMIUzBm6Pq7v8p0AGVtIbTZLEg=w408-h272-k-no	40.883316	21.022196	Преспанско Езеро	none	4.8	379 reviews	none
Laserhunt Fun Center Macedonia	Laser tag center	none	https://lh5.googleusercontent.com/p/AF1QipNJE5ZDTJ0-XNMfV0_pSEL6CRxh7D2aUAoupijw=w426-h240-k-no	41.97366	21.437582	none	+389 72 209 606	4.6	142 reviews	none
Macedonia Experience	Tour agency	none	https://lh5.googleusercontent.com/p/AF1QipMt4ZPaWuoaYzn3TiRztYuyg8IUsMXcA042iVOZ=w408-h839-k-no	41.996315	21.429672	Маседонијан експиријанс	+389 2 310 9448	4.7	10 reviews	macedoniaexperience.com
Macedonia Square	Tourist attraction	none	https://lh5.googleusercontent.com/p/AF1QipPzVuaSoDmiQPFE4A0UueVWYD2JLyRvyCvueKro=w408-h271-k-no	41.99621	21.431892	Плоштад „Македонија“	none	4.4	1,339 reviews	skopje.mk
Macedonia Travel	Travel	none	https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=NxwyonQft7ck7X3MM4vsew&cb_client=search.gws-prod.gps&w=408&h=240&yaw=149.13553&pitch=0&thumbfov=100	42.001633	21.420912	Македонија Травел	+389 2 311 2408	4.8	4 reviews	macedoniatravel.com
Macedonian Holocaust Museum	History museum	Holocaust museum dedicated to Jewish Macedonian people in a contemporary building, open since 2011.	https://lh5.googleusercontent.com/p/AF1QipPch5PtS3Hj7jPITdFaoIHR0zTXA-mcySMSQ7Ed=w408-h306-k-no	41.99844	21.433355	Меморијален центар на холокаустот на Евреите од Македонија	+389 2 312 2697	4.4	268 reviews	none
Makedonium - Ilinden Monument	Monument	none	https://lh5.googleusercontent.com/p/AF1QipMCd3pKKr1mg7Q1XcdQAELBeVlLehu2X5vOw1Vb=w408-h306-k-no	41.37748	21.248415	Споменик Илинден / Меморијален центар Македониум	none	4.7	527 reviews	none
Mavrovka	Shopping mall	none	https://lh5.googleusercontent.com/p/AF1QipMyZ3XXhXCJraxxn9vWy2uW_yrkHieKhBQd-uWp=w408-h544-k-no	41.999443	21.439342	Трговски центар „Мавровка“	+389 77 941 503	3.6	1,090 reviews	none
Mavrovo National Park	National park	Large national park founded in 1949, featuring trails through mountains & canyons & along a river.	https://lh5.googleusercontent.com/p/AF1QipP1CZZSm2VAsbggSQy_t4V3ElqajfbnS1skR5sp=w408-h306-k-no	41.699566	20.665277	Национален парк „Маврово“	+389 42 489 425	4.7	2,691 reviews	npmavrovo.org.mk
Memorial House of Mother Teresa	History museum	Museum dedicated to a renowned Catholic nun, with an eclectic design & a striking, modern chapel.	https://lh5.googleusercontent.com/p/AF1QipOEDKj94JbqjDoyv3H1jQAOffH67Tl7NEqsNdSv=w408-h272-k-no	41.99382	21.430872	Спомен-куќа на Мајка Тереза	+389 2 329 0674	4.4	2,007 reviews	memorialhouseofmotherteresa.com
Millennium Cross	Tourist attraction	Memorial cross on top of a mountain accessible by cable car, with picturesque views of city below.	https://lh5.googleusercontent.com/p/AF1QipMDetPvKteYvflGDqYX1eQoHTsmCAvr5NVtUtXJ=w408-h544-k-no	41.965137	21.39435	Милениумски крст	+389 70 806 626	4.6	3,378 reviews	zicnica.jsp.com.mk
Monastery of St. Naum	Monastery	Eastern Orthodox monastery founded in 905, open to the public with lake views & live peacocks.	https://lh5.googleusercontent.com/p/AF1QipNWGhlIIRfYjUs3tpajxH_-gOvaR21GlnrkS1Kc=w408-h306-k-no	40.913902	20.740726	Манастир Свети Наум	none	4.8	6,606 reviews	none
Monastery Visoki Decani	Monastery	none	https://lh5.googleusercontent.com/p/AF1QipOL8wHKt8boumx1AlW6jzoXd_ZxqfRKofyZQUdc=w426-h240-k-no	42.546223	20.265388	Manastiri i Deçanit	none	4.9	884 reviews	none
Mother Teresa Cathedral	Cathedral	Elegant, Romanesque-style cathedral built in honor of St. Teresa of Calcutta & inaugurated in 2010.	https://lh5.googleusercontent.com/p/AF1QipMcrsB5zUsDobeM5FaOC0HcAqYa8qAgroybqJW2=w408-h544-k-no	42.65628	21.159353	Katedralja Nënë Tereza	none	4.5	610 reviews	facebook.com
Mr. Bricolage	Shopping mall	none	https://lh5.googleusercontent.com/p/AF1QipNJTpKzUomtqOZGLs1X9oZXnQHsTpFyCaKXBe36=w426-h240-k-no	41.995926	21.47489	Трговски центар со опрема за дома „Бриколаж“	+389 2 321 7980	4.2	3,052 reviews	none
Museum of Contemporary Art	Art museum	Bright, airy museum housing modern & contemporary works by Macedonian & international artists.	https://lh5.googleusercontent.com/p/AF1QipPXXjHGY7HXnClhtzlOhH2RVqhxYxdWXv0KBN_x=w426-h240-k-no	42.003887	21.432777	Музеј на современа уметност	+389 2 311 7734	4.3	446 reviews	msu.mk
Stone Bridge	Bridge	Built in the 15th century, this stone, arched bridge is a prominent symbol of the country's capital.	https://macedonia-timeless.com/wp-content/uploads/2018/09/kamen-most.jpg	41.996986	21.433031	Камен мост	none	4.6	3,666 reviews	none
Museum of the City of Skopje	Museum	Housed in a former railway station, this museum features exhibitions on the city's history.	https://lh5.googleusercontent.com/p/AF1QipOfbB84rqDaFi31X3mwQD8RTrwvvGQrNnugGWA3=w408-h306-k-no	41.991093	21.429108	Музеј на град Скопје	+389 2 311 4742	4.2	299 reviews	mgs.org.mk
Museum of the Macedonian Struggle	History museum	Stately museum showcasing scenes & artifacts from the Macedonian revolution for independence.	https://lh5.googleusercontent.com/p/AF1QipPbNXAOC3-QKz08mabxzutwwgHE7Stz-8LhfCpH=w408-h243-k-no	41.998074	21.433084	Музеј на македонската борба за самостојност	+389 2 325 6668	4.3	704 reviews	mmb.org.mk
Museum of the Republic of Macedonia	Museum	National museum dedicated to the archeological, ethnological & historic heritage of Macedonia.	https://lh5.googleusercontent.com/p/AF1QipPgXWohuJ0znGGZoJcuMFoHqFbmpAU3AmiKapvs=w408-h306-k-no	42.00245	21.436522	Музеј на Република Северна Македонија	+389 2 311 6044	4	117 reviews	museum.org.mk
National Park „Pelister“	National park	Covering 66 sq .mi., this popular forest of rare pines offers trails, wildlife, ski areas & views.	https://lh5.googleusercontent.com/p/AF1QipOvx5I7NTg_LCX6NOd-mwptHo4c01gC2a7SLCSs=w408-h306-k-no	41.001453	21.212961	Национален парк „Пелистер“	+389 47 233 464	4.8	1,112 reviews	park-pelister.com
Ohrid St. Paul The Apostle Airport	International airport	none	https://lh5.googleusercontent.com/p/AF1QipOeLfivc_QnN8iqhbEI25zVST5Jb50nErQso_Pw=w426-h240-k-no	41.18111	20.745277	Аеродром Св. Апостол Павле - Охрид	+389 46 252 820	3.7	289 reviews	ohd.airports.com.mk
Old Bazaar	Market	Vibrant old bazaar built in Ottoman architectural style, with mosques, markets, shops and cafes.	https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/c5/d2/3d/img-20190602-101536-415.jpg?w=1200&h=-1&s=1	42.00096	21.437155	Стара чаршија	none	4.5	14,853 reviews	none
Old Mavrovo Church	Church	none	https://lh5.googleusercontent.com/p/AF1QipNI3AHL-Aa_K8Si9joV56HDJjSxvKMNEZckTcBh=w426-h240-k-no	41.660057	20.735472	Старата Мавровска црква	none	4.7	239 reviews	none
Paragliding Ohrid	Tourist attraction	none	https://lh5.googleusercontent.com/p/AF1QipO6B14_frQif7p4n1cbyRGTW0JKL5mskt9Vrp8F=w408-h306-k-no	41.10133	20.806112	none	+389 75 281 090	4.9	79 reviews	paraglidingohrid.com
Paragliding Take-off Velestovo	Tourist attraction	none	https://lh5.googleusercontent.com/p/AF1QipM9CND0ai0OPDubOwazQprIoh_3Vsj8yqgwAlwH=w408-h408-k-no	41.092052	20.835176	none	+389 75 281 090	5	2 reviews	none
Paragloding Club Heli Xc	Sports school	none	https://lh5.googleusercontent.com/p/AF1QipMPFfiOu2VxED6EIxD1kR7hccQNS5OE6XEHnVns=w426-h240-k-no	41.98464	21.48231	none	+389 71 261 398	\N	0 reviews	none
Peshna Cave	Tourist attraction	none	https://lh5.googleusercontent.com/p/AF1QipPzOC8_nqEjCIhI8nxziLyaBI_X2dFBC5YfzLPE=w408-h272-k-no	41.547733	21.252483	Пештера Пешна	none	4.8	195 reviews	exploringmacedonia.com
Ponikva, Kochani, Macedonia	Ski resort	none	https://lh5.googleusercontent.com/p/AF1QipPCkbPamLdewdou31Mf-MfLE8moD58Qi0bh54bB=w408-h306-k-no	42.03373	22.354774	Пониква, Кочани, Македонија	none	4.5	722 reviews	none
Popova Kula Winery	none	none	https://lh5.googleusercontent.com/p/AF1QipN2pbG3-Ruiex4GCGcZET0uemJFVxLWtrYc2I7r=w719-h240-k-no	41.410885	22.226564	Попова Кула	+389 76 432 630	4.5	499 reviews	popovakula.com.mk
Port of Ohrid, Macedonia	Port	none	https://lh5.googleusercontent.com/p/AF1QipOLRMowUGiL6kzCsp1XKbqGI2ft6w-52vHIFK_2=w408-h306-k-no	41.111237	20.798534	Пристаниште Охрид, Македонија	none	4.7	1,486 reviews	none
Rock Land Camp	none	none	https://lh3.googleusercontent.com/proxy/nLVyzQTKP6Blw6NvZzES5TJDhHmh0NfxKI-5hrG0h09IrrZwNxIYH8hCi0T8mjizpltjo1wy7yIr1WNSEouEuBA3JgVyGTwiadU7uXuYI1x_Qq5xw9Njm_im6UyoQM4RCyfDxnZmD02ZZNe3c0PZvJg_9Qym2Os=w437-h240-k-no	41.402054	22.246601	none	+389 70 343 401	4.5	108 reviews	campingmacedonia.com
Saint Joachim Osogovski	Monastery	Orthodox monastery & church complex with elaborate frescoes, a natural spring & a restaurant.	https://lh5.googleusercontent.com/p/AF1QipM0DgCcGqLkq6H52YcO5JXV6YXCWgrSBLfdSCBt=w408-h306-k-no	42.208992	22.36227	Свети Јоаким Осоговски	+389 76 499 599	4.8	1,534 reviews	none
Skopje City Mall	Shopping mall	Local staple for shopping & dining, with multiple levels of name-brand stores, cafes & a cinema.	https://lh5.googleusercontent.com/p/AF1QipPPw7tfsFfYjvbKvXRMDEhtMqH69lnouA00NFOR=w408-h541-k-no	42.00422	21.391712	Скопје Сити мол	+389 2 321 7012	4.4	8,384 reviews	skopjecitymall.mk
Skopje City Park	Park	none	https://lh5.googleusercontent.com/p/AF1QipPgdr8YKj7XCmDfCluwPn6wBtlospA9sIZidyCm=w408-h306-k-no	42.005173	21.421366	Градски парк Скопје	+389 2 329 7204	4.6	3,189 reviews	skopje.gov.mk
Skopje City Tours	Sightseeing tour agency	none	https://lh5.googleusercontent.com/p/AF1QipPaTdKupINOCkh0zRAvFXTJbyO8FzkvAu4NCMRn=w426-h240-k-no	42.00735	21.359163	none	+389 78 290 935	\N	0 reviews	travel4macedonia.mk
Skopje Fortress	Fortress	Remains of a 6th-century hilltop stone fortress, offering panoramic views of the city & river.	https://lh5.googleusercontent.com/p/AF1QipN0jES36stjCaeM7ceHH2eJINWgjGgEXb3eXGQ=w408-h544-k-no	42.00066	21.432629	Скопска тврдина Кале	+389 2 312 9323	4.2	1,470 reviews	none
Skopje Marriott Hotel	none	none	https://lh5.googleusercontent.com/p/AF1QipNcUgqHCrrRjGFVBELR3BvWH4RzR6QVJrGy6qJh=w408-h272-k-no	41.995907	21.430323	Хотел „Мериот“	+389 2 510 2510	4.7	2,631 reviews	marriott.com
Skopje Walking Tours	Travel agency	none	https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=TfiRIneS7ZnXyezv65EaQQ&cb_client=search.gws-prod.gps&w=408&h=240&yaw=1.9342576&pitch=0&thumbfov=100	41.994488	21.432322	none	+389 75 287 434	\N	0 reviews	skopjewalkingtours.com
Skopje Zoo	Zoo	Founded in 1926, the 12-hectare zoo houses many animal species, an educational center & a play area.	https://lh5.googleusercontent.com/p/AF1QipNuYmWZxnChd5boGOn3TvypmmdIupIsWnZokYDo=w408-h544-k-no	42.006477	21.417206	Зоолошка градина Скопје	+389 2 322 0578	4.3	5,915 reviews	zooskopje.com.mk
Smolare Waterfall	Tourist attraction	none	https://lh5.googleusercontent.com/p/AF1QipP-jGhV5vCdZIJbxW6GfIJleFSjfXctMk83Vqq-=w408-h555-k-no	41.36628	22.89962	Смоларски Водопад	none	4.8	552 reviews	none
South East European University	University	none	https://lh5.googleusercontent.com/p/AF1QipPeJhRawXQHqOPMFalQwFS57tNJmaqK5kyjbtnZ=w408-h272-k-no	41.98671	20.96073	Југоисточна Европа	+389 44 356 000	4.6	108 reviews	seeu.edu.mk
St. Panteleimon	Monastery	Compact, Byzantine-era church dating to 1164, known for its colorful medieval frescoes.	https://lh5.googleusercontent.com/p/AF1QipPgKeD_34K3uiWF4PL2hjcMQxpYkho2UGqtli-x=w408-h306-k-no	41.976894	21.374483	Манастир „Свети Пантелејмон“	+389 2 308 1255	4.7	566 reviews	travel2macedonia.com.mk
Stobi	Archaeological site	Conserved archaeological site consisting of a Paeonian city that was later conquered by Macedonians.	https://lh5.googleusercontent.com/p/AF1QipMLWQy2gz0jWkMutyIKQcHuBBcHFWD_Y8Mcl_Gs=w408-h306-k-no	41.552273	21.975351	Стоби	+389 75 210 752	4.7	411 reviews	stobi.mk
Suli An	Tourist attraction	Grand 15th-century caravansarai, now housing a local-history museum & Academy of Arts.	https://lh5.googleusercontent.com/p/AF1QipPoDK903Y1aFNfroY2zjLgqhVT_V34cYeXDex3Z=w408-h306-k-no	42.001602	21.437742	Сули Ан	none	4.6	145 reviews	none
The Ancient Macedonian	Educational consultant	none	https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=DjgZM26zTVdaFjbK8rexyA&cb_client=search.gws-prod.gps&w=408&h=240&yaw=177.58269&pitch=0&thumbfov=100	42.03049	21.44866	none	+389 71 907 577	4	1 review	none
The Bay of Bones	Museum	Reconstructed village of stilt houses displaying Bronze & Iron Age items recovered from Lake Ohrid.	https://lh5.googleusercontent.com/p/AF1QipNm3G85sC9Xn0CUxodIYPVMQ0_m-xmiYk5EJzJM=w408-h305-k-no	40.994366	20.798096	Заливот на коските	+389 46 231 300	4.5	2,739 reviews	muzejohrid.mk
The Bridge of Art Skopje	Bridge	none	https://lh5.googleusercontent.com/p/AF1QipM5r9UYC12dujWscPK-fIohtz4dcMT65nprU0zy=w408-h288-k-no	41.995693	21.43592	Мост на уметноста	none	4.4	359 reviews	none
The Bridge of Civilisations in Macedonia	Bridge	none	https://lh5.googleusercontent.com/p/AF1QipNwDet5vYbPLXIdfxXurl5IpSf0bUTjbYCBZe3o=w426-h240-k-no	41.9964	21.433987	Мост на цивилизациите / Око	none	4.4	60 reviews	none
The Tose Proeski Memorial House	Memorial park	none	https://lh5.googleusercontent.com/p/AF1QipMVfI44G4bTKSzbgnhxScTcQIX5tmn7TAeaGj8M=w408-h248-k-no	41.37434	21.246256	Спомен-куќа на Тодор Проески - Тоше	+389 48 477 888	4.8	907 reviews	spomenkukatose.org.mk
Treska	Water	Macedonian river, a tributary of the Vardar, with 3 dams & lakes along its 132-km. course.	https://lh5.googleusercontent.com/p/AF1QipMU42H-0w0voeAt9gkz2DSKPrxjrjtp5zCa74pT=w408-h544-k-no	42.000473	21.344774	Треска	none	4.5	13 reviews	none
Varosh Old Town Ohrid	Historical landmark	none	https://lh5.googleusercontent.com/p/AF1QipNQ0LMx_1bXzu6lfVmm2M7FL62g_HlZknHW4lWT=w408-h272-k-no	41.11433	20.79502	Варош Стариот град Охрид	none	4.6	43 reviews	none
Visit Macedonia DMC	Tour operator	none	https://lh5.googleusercontent.com/p/AF1QipMKtIqgXIStWDBNm4i7mqfubMAVVYSCNZ-WROS0=w408-h306-k-no	42.00415	21.373169	none	+389 70 269 697	4.6	8 reviews	visitmacedonia.mk
Visit North Macedonia	Sightseeing tour agency	none	https://lh5.googleusercontent.com/p/AF1QipMi8HCok2gZxV-8amobzbM_dwIk1tgdV5YnhRgt=w531-h240-k-no	42.00735	21.359163	none	+389 78 290 935	\N	0 reviews	travel4macedonia.mk
Vodno	Mountain peak	1,066-m. mountain featuring hiking, churches, the Millennium Cross, the Prskalo waterfall & more.	https://lh5.googleusercontent.com/p/AF1QipPBC041MASh1gF1f9gh3NBF6psqkLqXJPI4nJtE=w408-h306-k-no	41.965	21.394444	Врв Водно	none	4.8	184 reviews	none
Wine Tours Macedonia	Tour operator	none	https://lh5.googleusercontent.com/p/AF1QipNkDUkln2_EdSLo2unqRYsjo5GzY8Bio3i68Cgt=w408-h271-k-no	42.001404	21.424255	none	+389 70 958 307	5	2 reviews	winetours.mk
Zaharchev Wines & Spirits	Winery	none	https://lh5.googleusercontent.com/p/AF1QipMeeajO-zxxIZGxhqf3dIJe9te1tZeTy8iZlvtK=w408-h306-k-no	41.436047	22.00487	Семејна винарија „Захарчев“	+389 70 743 742	\N	0 reviews	zaharchev.mk
Пчeлна Инхалација	Tourist attraction	none	https://lh5.googleusercontent.com/p/AF1QipPcVj1i4l2axKTWEHxj2XfI81t64RHUuYzXUrze=w408-h306-k-no	41.312065	20.796965	none	+389 78 252 800	4	3 reviews	facebook.com
Спортски центар Борис Трајковски	Sports complex	none	https://lh5.googleusercontent.com/p/AF1QipPLyBCY3mIDckuD1RdDhAEFU-OYCy9d0hY7w0IJ=w408-h305-k-no	42.009525	21.404018	none	+389 76 361 185	4.5	3,708 reviews	salaboristrajkovski.gov.mk
Улица „Македонија“	Hiking area	none	https://lh5.googleusercontent.com/p/AF1QipNs9ubj9hgdBBcKC1Rhh5uvj2KYP8X3mB-xjTlT=w408-h544-k-no	41.991863	21.42964	none	none	5	2 reviews	none
\.


--
-- TOC entry 3173 (class 2606 OID 16616)
-- Name: place place_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.place
    ADD CONSTRAINT place_pkey PRIMARY KEY (name);


-- Completed on 2023-02-13 00:23:38

--
-- PostgreSQL database dump complete
--

