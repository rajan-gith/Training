--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7
-- Dumped by pg_dump version 10.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: stats; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.stats AS ENUM (
    'accepted',
    'pending',
    'completed'
);


ALTER TYPE public.stats OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    name character(30) NOT NULL,
    address character varying(30) NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items (
    id integer NOT NULL,
    name character(50) NOT NULL,
    price integer NOT NULL,
    supplier_id integer NOT NULL
);


ALTER TABLE public.items OWNER TO postgres;

--
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.items_id_seq OWNER TO postgres;

--
-- Name: items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;


--
-- Name: payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment (
    payment_id integer NOT NULL,
    customer_id integer NOT NULL,
    amount integer NOT NULL,
    date date DEFAULT CURRENT_DATE
);


ALTER TABLE public.payment OWNER TO postgres;

--
-- Name: payment_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_payment_id_seq OWNER TO postgres;

--
-- Name: payment_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_payment_id_seq OWNED BY public.payment.payment_id;


--
-- Name: shopping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shopping (
    customer_id integer NOT NULL,
    items_id integer NOT NULL,
    quantity integer NOT NULL
);


ALTER TABLE public.shopping OWNER TO postgres;

--
-- Name: supplier_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supplier_order (
    s_o_id integer NOT NULL,
    supplier_id integer NOT NULL,
    items_id integer NOT NULL,
    status public.stats DEFAULT 'pending'::public.stats NOT NULL
);


ALTER TABLE public.supplier_order OWNER TO postgres;

--
-- Name: supplier_order_s_o_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.supplier_order_s_o_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_order_s_o_id_seq OWNER TO postgres;

--
-- Name: supplier_order_s_o_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.supplier_order_s_o_id_seq OWNED BY public.supplier_order.s_o_id;


--
-- Name: suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suppliers (
    supplier_id integer NOT NULL,
    supplier_name character(50),
    address character varying(50)
);


ALTER TABLE public.suppliers OWNER TO postgres;

--
-- Name: suppliers_supplier_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.suppliers_supplier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.suppliers_supplier_id_seq OWNER TO postgres;

--
-- Name: suppliers_supplier_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.suppliers_supplier_id_seq OWNED BY public.suppliers.supplier_id;


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);


--
-- Name: payment payment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment ALTER COLUMN payment_id SET DEFAULT nextval('public.payment_payment_id_seq'::regclass);


--
-- Name: supplier_order s_o_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier_order ALTER COLUMN s_o_id SET DEFAULT nextval('public.supplier_order_s_o_id_seq'::regclass);


--
-- Name: suppliers supplier_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers ALTER COLUMN supplier_id SET DEFAULT nextval('public.suppliers_supplier_id_seq'::regclass);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (id, name, address) FROM stdin;
1	Jack                          	california
2	Jackie chan                   	capstone
3	Mr chang                      	capstone2
4	Jai kishan                    	India
5	Akshay                        	Mumbai
6	Rahul                         	Delhi
7	Raj                           	Haryana
8	Mona lisa                     	california
9	Bruce wayne                   	Gotham
10	Batman                        	Gotham
11	Super man                     	Krypton
12	Iron man                      	New york
13	Captain America               	Brooklyn
14	Spider man                    	Queens
15	Robert Downey Jr              	America
16	Rock                          	Miami 
17	Chris Evans                   	Australia
18	Chris Hemsworth               	Australia
19	Tom hiddelstone               	Asguard
20	Sherlock Holmes               	Baker Street
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.items (id, name, price, supplier_id) FROM stdin;
1	item1                                             	300	1
2	item2                                             	400	2
3	item3                                             	344	3
4	item4                                             	230	4
5	item5                                             	250	5
6	item6                                             	100	6
7	item7                                             	1000	7
8	item8                                             	122	8
9	item9                                             	976	9
10	item10                                            	400	10
11	item11                                            	456	1
12	item12                                            	345	2
13	item13                                            	670	3
\.


--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment (payment_id, customer_id, amount, date) FROM stdin;
1	1	500	2019-03-01
2	2	400	2019-03-01
3	5	600	2019-03-01
4	4	333	2019-03-01
5	3	332	2019-03-01
6	1	666	2019-03-01
7	2	99	2019-03-01
8	2	59	2019-03-01
9	2	450	2019-03-01
10	1	320	2019-03-01
11	3	420	2019-03-01
12	3	500	2019-03-01
13	5	1000	2019-03-01
14	7	100	2019-03-01
\.


--
-- Data for Name: shopping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shopping (customer_id, items_id, quantity) FROM stdin;
1	2	2
2	3	2
3	4	2
4	5	2
4	6	4
5	7	4
6	7	4
7	6	1
8	5	1
9	4	1
7	5	3
5	3	3
6	3	3
2	2	2
1	1	2
3	9	2
\.


--
-- Data for Name: supplier_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supplier_order (s_o_id, supplier_id, items_id, status) FROM stdin;
1	1	1	pending
2	2	4	accepted
3	3	3	accepted
4	3	5	accepted
5	4	6	accepted
6	5	7	pending
7	6	8	pending
8	7	9	pending
9	8	10	completed
10	9	9	completed
\.


--
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.suppliers (supplier_id, supplier_name, address) FROM stdin;
1	John                                              	add1
2	Wick                                              	add2
3	Nelson                                            	add3
4	Hank                                              	add4
5	Tars                                              	black hole st
6	case                                              	black hole st
7	Matt                                              	dead station
8	Anne                                              	dead station
9	Cooper                                            	alive beach
10	christopher Nolen                                 	East block
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 20, true);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.items_id_seq', 13, true);


--
-- Name: payment_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_payment_id_seq', 14, true);


--
-- Name: supplier_order_s_o_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.supplier_order_s_o_id_seq', 10, true);


--
-- Name: suppliers_supplier_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.suppliers_supplier_id_seq', 10, true);


--
-- Name: customers customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- Name: items item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT item_pkey PRIMARY KEY (id);


--
-- Name: suppliers supplier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (supplier_id);


--
-- Name: shopping customer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping
    ADD CONSTRAINT customer_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- Name: shopping items_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping
    ADD CONSTRAINT items_fkey FOREIGN KEY (items_id) REFERENCES public.items(id);


--
-- Name: supplier_order items_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier_order
    ADD CONSTRAINT items_fkey FOREIGN KEY (items_id) REFERENCES public.items(id);


--
-- Name: payment payment_c_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_c_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- Name: items supplier_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT supplier_fkey FOREIGN KEY (supplier_id) REFERENCES public.suppliers(supplier_id);


--
-- Name: supplier_order supplier_o_pkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier_order
    ADD CONSTRAINT supplier_o_pkey FOREIGN KEY (supplier_id) REFERENCES public.suppliers(supplier_id);


--
-- PostgreSQL database dump complete
--

