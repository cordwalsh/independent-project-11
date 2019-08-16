--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

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

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: cordwalsh
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO cordwalsh;

--
-- Name: products; Type: TABLE; Schema: public; Owner: cordwalsh
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying,
    cost integer,
    country_of_origin character varying,
    description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.products OWNER TO cordwalsh;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: cordwalsh
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO cordwalsh;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cordwalsh
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: cordwalsh
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    author character varying,
    content_body character varying,
    rating integer,
    product_id integer
);


ALTER TABLE public.reviews OWNER TO cordwalsh;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: cordwalsh
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO cordwalsh;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cordwalsh
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: cordwalsh
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO cordwalsh;

--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: cordwalsh
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: cordwalsh
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: cordwalsh
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-08-16 02:08:22.890629	2019-08-16 02:08:22.890629
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: cordwalsh
--

COPY public.products (id, name, cost, country_of_origin, description, created_at, updated_at) FROM stdin;
1061	Purp	5	usa	nom nom nom	2019-08-16 23:07:06.743734	2019-08-16 23:07:06.743734
1055	Cheese	10	usa	best dro eva	2019-08-16 22:09:34.911823	2019-08-16 22:09:34.911823
1056	Purple Kush	10	usa	dat good good	2019-08-16 22:12:18.663112	2019-08-16 22:12:18.663112
1057	Headband	9	usa	feels like a headband	2019-08-16 22:13:31.575996	2019-08-16 22:13:31.575996
1058	Kings	4	usa	its aight	2019-08-16 22:14:27.524274	2019-08-16 22:14:27.524274
1059	Whitewalker	6	usa	winter is coming	2019-08-16 22:15:02.557945	2019-08-16 22:15:02.557945
1060	Sangria	8	usa	almost sangria	2019-08-16 22:16:43.202961	2019-08-16 22:16:43.202961
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: cordwalsh
--

COPY public.reviews (id, author, content_body, rating, product_id) FROM stdin;
370	cord	best weed iv ever done smoked	5	1042
371	cord	fire dawg	5	1055
319	Jamika Wilkinson	structured, big, watermelon, dates, bakers chocolate	4	0
320	Norris Casper	muted, full, prune, cacao nibs, concord grape	2	0
321	Basil Stanton V	quick, silky, leathery, sundried tomato, hops	3	0
322	Karoline Auer V	vibrant, big, lemon verbena, cola, cola	1	0
323	Josue Corwin	juicy, velvety, barley, passion fruit, marshmallow	3	0
324	Sanford Price	pointed, creamy, leathery, sugar cane, bergamot	3	0
325	Aimee Jast	quick, full, liquorice, prune, hops	2	0
326	Nohemi Langosh	soft, watery, watermelon, lavender, fresh bread	5	0
327	Maurice Metz	clean, round, orange, white pepper, concord grape	1	0
328	Jame Schaefer Sr.	dull, chewy, hay, butter, banana	5	0
329	Les Mraz	dull, watery, peach, meyer lemon, black cherry	5	0
330	Ms. My Satterfield	mild, smooth, lemonade, lavender, hay	3	0
331	Dr. Sonny Armstrong	deep, smooth, tamarind, granola, bittersweet chocolate	1	0
332	Demarcus Leannon	quick, round, soil, clementine, lemon	4	0
333	Karyn Rutherford Jr.	mild, juicy, granola, honeysuckle, cedar	2	0
334	Claire Waters	mild, big, milk chocolate, milk chocolate, red grape	3	0
335	Wilbur Macejkovic	delicate, syrupy, hazelnut, squash, fresh wood	4	0
336	Marvel Luettgen	rounded, round, mushroom, star fruit, potato defect!	3	0
337	Mr. Deangelo Daniel	dense, round, tobacco, medicinal, ginger	3	0
338	Tiara Bernier	rounded, full, magnolia, peanut, black pepper	4	0
339	Jaymie Bosco	complex, coating, potato defect!, black currant, milk chocolate	2	0
340	Dave Nienow	unbalanced, smooth, nutmeg, cherry, rye	5	0
341	Luisa Christiansen	vibrant, silky, dates, black-tea, barley	2	0
342	Jerri Mueller	crisp, watery, red apple, lemon verbena, lemon verbena	1	0
343	Maryanna Doyle	soft, juicy, tamarind, olive, lemonade	1	0
344	Les Schaden DVM	soft, silky, curry, rose hips, cacao nibs	4	0
345	Annis Larson	balanced, chewy, maple syrup, almond, cantaloupe	3	0
346	Lynn Padberg	muted, creamy, banana, strawberry, green-tea	1	0
347	Essie Jaskolski	crisp, full, clove, cedar, white pepper	2	0
348	Charlie Ledner	pointed, big, lemongrass, toast, lavender	5	0
349	Dudley Borer PhD	faint, round, star fruit, orange blossom, mushroom	1	0
350	Dr. Lisandra Mertz	complex, smooth, orange, marshmallow, star fruit	4	0
351	Milan Grant	faint, silky, baggy, tobacco, carmel	4	0
352	Lucio Morissette II	deep, tea-like, green apple, cinnamon, cinnamon	4	0
353	Louetta Huels	wild, syrupy, vanilla, tobacco, tomato	2	0
354	Beatrice Emmerich	unbalanced, coating, concord grape, concord grape, hops	3	0
355	Alvaro Bruen	bright, tea-like, red currant, orange creamsicle, kiwi	4	0
356	Claude Zulauf	complex, full, lime, lemonade, hazelnut	2	0
357	Dr. Billie Lesch	mild, smooth, green-tea, coconut, bittersweet chocolate	1	0
358	Hsiu Legros	structured, velvety, lychee, red currant, mango	4	0
359	Marquetta Kertzmann	juicy, creamy, baggy, lemonade, quakery	1	0
360	Mr. Sergio Hermann	juicy, syrupy, rubber, orange creamsicle, bergamot	3	0
361	Edgardo Olson	quick, tea-like, lychee, walnut, watermelon	5	0
362	Mrs. Valentine Muller	balanced, big, rose hips, hay, ginger	2	0
363	Howard Collins	wild, coating, walnut, soil, snow pea	5	0
364	Dr. Kena Lowe	structured, chewy, mushroom, vanilla, green grape	5	0
365	Reinaldo Kuhlman	rounded, coating, red apple, jasmine, red apple	5	0
366	Dr. Sam Herzog	soft, juicy, almond, corriander, kiwi	1	0
367	Rob Mante	sharp, chewy, tomato, apricot, lavender	4	0
368	Renata Marvin	bright, juicy, green apple, marshmallow, carbon	1	0
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: cordwalsh
--

COPY public.schema_migrations (version) FROM stdin;
20190816004338
20190816004329
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cordwalsh
--

SELECT pg_catalog.setval('public.products_id_seq', 1061, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cordwalsh
--

SELECT pg_catalog.setval('public.reviews_id_seq', 371, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: cordwalsh
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: cordwalsh
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: cordwalsh
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: cordwalsh
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

