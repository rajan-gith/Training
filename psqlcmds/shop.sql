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
    name character(50) NOT NULL,
    address character varying(50) NOT NULL
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
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.items (id, name, price, supplier_id) FROM stdin;
\.


--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment (payment_id, customer_id, amount, date) FROM stdin;
\.


--
-- Data for Name: shopping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shopping (customer_id, items_id, quantity) FROM stdin;
\.


--
-- Data for Name: supplier_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supplier_order (s_o_id, supplier_id, items_id, status) FROM stdin;
\.


--
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.suppliers (supplier_id, supplier_name, address) FROM stdin;
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 1, false);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.items_id_seq', 1, false);


--
-- Name: payment_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_payment_id_seq', 1, false);


--
-- Name: supplier_order_s_o_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.supplier_order_s_o_id_seq', 1, false);


--
-- Name: suppliers_supplier_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.suppliers_supplier_id_seq', 1, false);


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

