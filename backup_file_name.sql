--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Ubuntu 15.4-2.pgdg22.04+1)
-- Dumped by pg_dump version 16.0 (Ubuntu 16.0-1.pgdg22.04+1)

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
-- Name: action_text_rich_texts; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.action_text_rich_texts (
    id bigint NOT NULL,
    name character varying NOT NULL,
    body text,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.action_text_rich_texts OWNER TO pawan_postgres;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.action_text_rich_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNER TO pawan_postgres;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNED BY public.action_text_rich_texts.id;


--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO pawan_postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_attachments_id_seq OWNER TO pawan_postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO pawan_postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_blobs_id_seq OWNER TO pawan_postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO pawan_postgres;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNER TO pawan_postgres;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO pawan_postgres;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.articles (
    id bigint NOT NULL,
    title character varying,
    description text,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.articles OWNER TO pawan_postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.articles_id_seq OWNER TO pawan_postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: blogs; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.blogs (
    id bigint NOT NULL,
    title character varying,
    body text,
    user_id integer,
    creator character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.blogs OWNER TO pawan_postgres;

--
-- Name: blogs_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.blogs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blogs_id_seq OWNER TO pawan_postgres;

--
-- Name: blogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.blogs_id_seq OWNED BY public.blogs.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    title character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    commentable_type character varying NOT NULL,
    commentable_id bigint NOT NULL
);


ALTER TABLE public.comments OWNER TO pawan_postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comments_id_seq OWNER TO pawan_postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: connections; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.connections (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    connected_user_id integer,
    status character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.connections OWNER TO pawan_postgres;

--
-- Name: connections_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.connections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.connections_id_seq OWNER TO pawan_postgres;

--
-- Name: connections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.connections_id_seq OWNED BY public.connections.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.events (
    id bigint NOT NULL,
    event_type character varying,
    event_name character varying,
    start_date date,
    end_date date,
    start_time character varying,
    end_time character varying,
    description text,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.events OWNER TO pawan_postgres;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.events_id_seq OWNER TO pawan_postgres;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: follows; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.follows (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    page_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.follows OWNER TO pawan_postgres;

--
-- Name: follows_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.follows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.follows_id_seq OWNER TO pawan_postgres;

--
-- Name: follows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.follows_id_seq OWNED BY public.follows.id;


--
-- Name: job_categories; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.job_categories (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.job_categories OWNER TO pawan_postgres;

--
-- Name: job_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.job_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.job_categories_id_seq OWNER TO pawan_postgres;

--
-- Name: job_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.job_categories_id_seq OWNED BY public.job_categories.id;


--
-- Name: jobs; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    title character varying,
    description character varying,
    employee_type character varying,
    location character varying,
    salary character varying,
    qualification character varying,
    status character varying,
    job_category_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.jobs OWNER TO pawan_postgres;

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_id_seq OWNER TO pawan_postgres;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: likes; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.likes (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    post_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.likes OWNER TO pawan_postgres;

--
-- Name: likes_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.likes_id_seq OWNER TO pawan_postgres;

--
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;


--
-- Name: messages; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.messages (
    id bigint NOT NULL,
    message character varying,
    user_id character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.messages OWNER TO pawan_postgres;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.messages_id_seq OWNER TO pawan_postgres;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.notifications (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id bigint NOT NULL,
    user_id bigint NOT NULL,
    viewed boolean DEFAULT false NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.notifications OWNER TO pawan_postgres;

--
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.notifications_id_seq OWNER TO pawan_postgres;

--
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.pages (
    id bigint NOT NULL,
    title character varying,
    content text,
    industry character varying,
    website character varying,
    organization_size character varying,
    organization_type character varying,
    user_id bigint NOT NULL,
    about text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.pages OWNER TO pawan_postgres;

--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pages_id_seq OWNER TO pawan_postgres;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: post_visits; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.post_visits (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.post_visits OWNER TO pawan_postgres;

--
-- Name: post_visits_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.post_visits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.post_visits_id_seq OWNER TO pawan_postgres;

--
-- Name: post_visits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.post_visits_id_seq OWNED BY public.post_visits.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.posts (
    id bigint NOT NULL,
    title character varying,
    description text,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    hidden boolean,
    page_id bigint
);


ALTER TABLE public.posts OWNER TO pawan_postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_id_seq OWNER TO pawan_postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: relationships; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.relationships (
    id bigint NOT NULL,
    follower_id integer,
    followed_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.relationships OWNER TO pawan_postgres;

--
-- Name: relationships_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.relationships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.relationships_id_seq OWNER TO pawan_postgres;

--
-- Name: relationships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.relationships_id_seq OWNED BY public.relationships.id;


--
-- Name: reposts; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.reposts (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.reposts OWNER TO pawan_postgres;

--
-- Name: reposts_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.reposts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reposts_id_seq OWNER TO pawan_postgres;

--
-- Name: reposts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.reposts_id_seq OWNED BY public.reposts.id;


--
-- Name: rooms; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.rooms (
    id bigint NOT NULL,
    name character varying,
    is_private boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.rooms OWNER TO pawan_postgres;

--
-- Name: rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.rooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rooms_id_seq OWNER TO pawan_postgres;

--
-- Name: rooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.rooms_id_seq OWNED BY public.rooms.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO pawan_postgres;

--
-- Name: shares; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.shares (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    sender_id bigint NOT NULL,
    recipient_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.shares OWNER TO pawan_postgres;

--
-- Name: shares_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.shares_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.shares_id_seq OWNER TO pawan_postgres;

--
-- Name: shares_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.shares_id_seq OWNED BY public.shares.id;


--
-- Name: skills; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.skills (
    id bigint NOT NULL,
    title character varying,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.skills OWNER TO pawan_postgres;

--
-- Name: skills_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.skills_id_seq OWNER TO pawan_postgres;

--
-- Name: skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.skills_id_seq OWNED BY public.skills.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp(6) without time zone,
    last_sign_in_at timestamp(6) without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    first_name character varying,
    last_name character varying,
    date_of_birth date,
    username character varying,
    city character varying,
    state character varying,
    country character varying,
    pincode character varying,
    street_address character varying,
    profile_title character varying,
    about text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    contact_number character varying,
    connected_user_ids integer[] DEFAULT '{}'::integer[],
    otp character varying,
    uid character varying,
    provider character varying
);


ALTER TABLE public.users OWNER TO pawan_postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO pawan_postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: work_experiences; Type: TABLE; Schema: public; Owner: pawan_postgres
--

CREATE TABLE public.work_experiences (
    id bigint NOT NULL,
    start_date date,
    end_date date,
    job_title character varying,
    employment_type character varying,
    location character varying,
    location_type character varying,
    currently_working_here boolean,
    description text,
    company character varying,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.work_experiences OWNER TO pawan_postgres;

--
-- Name: work_experiences_id_seq; Type: SEQUENCE; Schema: public; Owner: pawan_postgres
--

CREATE SEQUENCE public.work_experiences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.work_experiences_id_seq OWNER TO pawan_postgres;

--
-- Name: work_experiences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pawan_postgres
--

ALTER SEQUENCE public.work_experiences_id_seq OWNED BY public.work_experiences.id;


--
-- Name: action_text_rich_texts id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.action_text_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.action_text_rich_texts_id_seq'::regclass);


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: blogs id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.blogs ALTER COLUMN id SET DEFAULT nextval('public.blogs_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: connections id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.connections ALTER COLUMN id SET DEFAULT nextval('public.connections_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: follows id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.follows ALTER COLUMN id SET DEFAULT nextval('public.follows_id_seq'::regclass);


--
-- Name: job_categories id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.job_categories ALTER COLUMN id SET DEFAULT nextval('public.job_categories_id_seq'::regclass);


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);


--
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: post_visits id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.post_visits ALTER COLUMN id SET DEFAULT nextval('public.post_visits_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: relationships id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.relationships ALTER COLUMN id SET DEFAULT nextval('public.relationships_id_seq'::regclass);


--
-- Name: reposts id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.reposts ALTER COLUMN id SET DEFAULT nextval('public.reposts_id_seq'::regclass);


--
-- Name: rooms id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.rooms ALTER COLUMN id SET DEFAULT nextval('public.rooms_id_seq'::regclass);


--
-- Name: shares id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.shares ALTER COLUMN id SET DEFAULT nextval('public.shares_id_seq'::regclass);


--
-- Name: skills id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.skills ALTER COLUMN id SET DEFAULT nextval('public.skills_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: work_experiences id; Type: DEFAULT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.work_experiences ALTER COLUMN id SET DEFAULT nextval('public.work_experiences_id_seq'::regclass);


--
-- Data for Name: action_text_rich_texts; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.action_text_rich_texts (id, name, body, record_type, record_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
90	image	User	15	90	2023-09-28 07:19:24.98295
94	image	User	21	94	2023-09-28 08:22:14.515508
103	image	Event	4	103	2023-10-06 12:04:36.661862
104	image	Event	1	104	2023-10-06 12:05:12.09257
105	image	User	1	105	2023-10-09 07:59:31.231046
106	image	Post	63	106	2023-10-09 08:03:37.82437
107	image	Post	19	107	2023-10-09 08:04:13.755015
108	image	Post	18	108	2023-10-09 08:04:30.41992
109	image	Post	14	109	2023-10-09 08:04:49.594709
110	image	Event	5	110	2023-10-09 08:10:56.197121
111	image	Event	6	111	2023-10-09 08:15:08.961884
120	image	Post	72	120	2023-10-10 12:12:21.92974
121	image	User	25	121	2023-10-13 10:29:21.897617
122	image	Post	60	122	2023-10-13 10:30:24.662062
123	image	Post	59	123	2023-10-13 10:36:37.880247
125	image	User	22	125	2023-10-13 10:38:21.249282
126	image	User	20	126	2023-10-13 10:40:05.341393
127	image	Post	58	127	2023-10-13 11:35:31.106102
128	image	User	12	128	2023-10-13 11:37:01.84184
129	image	Post	54	129	2023-10-13 11:38:19.212791
53	image	User	100	53	2023-09-15 08:19:38.942733
130	image	Post	15	130	2023-10-13 11:40:33.291784
55	image	User	59	55	2023-09-15 08:22:20.693741
131	image	User	101	131	2023-10-13 11:41:02.615099
132	image	User	4	132	2023-10-13 11:42:09.524846
133	image	Post	20	133	2023-10-13 11:42:42.090029
134	image	User	113	134	2023-10-13 11:44:26.848146
62	image	User	114	62	2023-09-22 06:28:55.751701
63	image	User	115	63	2023-09-22 10:55:04.346626
136	image	Post	25	136	2023-10-13 11:46:49.365427
137	image	User	50	137	2023-10-16 06:11:42.132286
141	images	Post	63	141	2023-10-17 08:45:17.585079
142	images	Post	14	142	2023-10-17 08:48:22.344904
143	images	Post	14	143	2023-10-17 08:48:22.354958
74	image	User	10	74	2023-09-28 06:16:20.945869
144	images	Post	14	144	2023-10-17 08:48:22.36285
145	images	Post	72	145	2023-10-17 09:16:43.728502
146	images	Post	72	146	2023-10-17 09:16:43.738345
147	images	Post	72	147	2023-10-17 09:16:43.746091
148	images	Post	60	148	2023-10-18 06:25:00.234804
149	images	Post	60	149	2023-10-18 06:25:00.245547
150	images	Post	60	150	2023-10-18 06:25:00.255902
151	images	Post	60	151	2023-10-18 06:25:00.263504
152	images	Post	59	152	2023-10-18 06:27:46.21344
153	images	Post	59	153	2023-10-18 06:27:46.222892
154	images	Post	59	154	2023-10-18 06:27:46.232955
155	images	Post	54	155	2023-10-18 06:30:51.373696
156	images	Post	54	156	2023-10-18 06:30:51.383457
157	images	Post	54	157	2023-10-18 06:30:51.39371
158	images	User	1	158	2023-10-18 07:15:43.081979
160	image	Page	2	160	2023-10-19 06:24:32.160382
161	image	Page	3	161	2023-10-19 06:25:25.194303
162	image	Page	1	162	2023-10-19 11:15:55.181156
166	images	Post	80	166	2023-10-20 10:01:37.914315
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
166	7eqlnzpez4od4u7rgtzghk92tdo6	software.avif	image/avif	{"identified":true,"analyzed":true}	local	21489	m0IZsByH1T1JGpKUHFMOWQ==	2023-10-20 10:01:37.909025
90	v83h3jtr0kvs0cqwlnztekwaa026	bearded-man-illustration-character-avatar_101266-29801.avif	image/avif	{"identified":true,"analyzed":true}	local	9534	N2c59ZD4KgwEw85sYSCB8A==	2023-09-28 07:19:24.979542
94	2qhsloktuji927n6jmlnk918x9sg	young-bearded-man-with-striped-shirt_273609-5677.avif	image/avif	{"identified":true,"analyzed":true}	local	20853	Dqa4bwyaEhE+aUNxZLczlA==	2023-09-28 08:22:14.512245
106	egvasa3h9mku94k6lrmke983wymo	😍 This time audience beat Darshan♥️ 🔥 Darshan Raval Live performance #darshanraval #music #trending.mp4	video/mp4	{"identified":true,"audio":false,"video":false,"analyzed":true}	local	7627095	OzJHgKkNyZSleQrQQ1cXHA==	2023-10-09 08:03:37.820661
104	13xlv9xtg3dnxgjyxsb4w9lik7xq	people-concert_132453-3835.avif	image/avif	{"identified":true,"analyzed":true}	local	22445	Cj5chobnU8hl5sFGQ8jrZA==	2023-10-06 12:05:12.088186
103	24dq9c520s37oo6bmhfnga58jqwr	beautiful-table-arrangement-with-roses_23-2150737379.avif	image/avif	{"identified":true,"analyzed":true}	local	51256	08w4SgMdLWbtFnMHJ06R4A==	2023-10-06 12:04:36.654342
105	a2smqv749m05ruqk2aa3u5xps74s	cartoon-man-with-glasses-beard-blue-shirt-generative-ai_958165-24562.avif	image/avif	{"identified":true,"analyzed":true}	local	12841	nHGWkc1u0K55ua9A7t9nBQ==	2023-10-09 07:59:31.224704
109	5ac8gswylbjqikk0ugx0rgl78oje	mesmerizing-shot-famous-historic-taj-mahal-agra-india_181624-16028.avif	image/avif	{"identified":true,"analyzed":true}	local	35915	zoMVCGOpW5DQo0K4wrquZQ==	2023-10-09 08:04:49.592349
107	2t5h6b35415z0mtkaz913m3r4098	amazing-bengal-tiger-nature_475641-1205.avif	image/avif	{"identified":true,"analyzed":true}	local	28783	aAZLHWaYX6EPKpJHGJbfMw==	2023-10-09 08:04:13.752587
108	7dprxuauclivda7pscc13nnshk6t	india-gate-new-delhi-sunset-view_400112-356.avif	image/avif	{"identified":true,"analyzed":true}	local	25943	kj6CwqyzefKvoyeClPANCA==	2023-10-09 08:04:30.416737
53	7equz5f0qcbu1iymdqx7bghwzs0e	teacher-man-avatar-icon-illustration-vector-style_131965-958.avif	image/avif	{"identified":true,"analyzed":true}	local	21411	kGvUhb7v8GwvNKOoO/iluw==	2023-09-15 08:19:38.938692
110	rpofrflatm9ekz2g4k67da9a6xfh	colorful-light-show-is-lit-up-club_1340-32811.avif	image/avif	{"identified":true,"analyzed":true}	local	12056	RHm/qG8BtZ4UaIYRXB5Ctg==	2023-10-09 08:10:56.194723
55	4v3y72fpriop16cgt1nvwkif8h5v	businessman-avatar-illustration-cartoon-user-portrait-user-profile-icon_118339-5502.avif	image/avif	{"identified":true,"analyzed":true}	local	9019	safoeINvYSdeC0L5zE1iEw==	2023-09-15 08:22:20.689884
74	o3pczirp4rjxns398nu1prryv3bu	bearded-man-illustration-character-avatar_101266-29801.avif	image/avif	{"identified":true,"analyzed":true}	local	9534	N2c59ZD4KgwEw85sYSCB8A==	2023-09-28 06:16:20.942612
111	fz8zlz6tlb1vqzdj3hp9lszejip8	colorful-light-show-is-lit-up-club_1340-32811.avif	image/avif	{"identified":true,"analyzed":true}	local	12056	RHm/qG8BtZ4UaIYRXB5Ctg==	2023-10-09 08:15:08.959433
62	sf90vc8t8stjyfawf91fuvcx1hh9	illustration-man-with-glasses-black-jacket_893012-74052.avif	image/avif	{"identified":true,"analyzed":true}	local	11315	TL8q9LHXj2/aqnoSq/EgHg==	2023-09-22 06:28:55.747019
63	vmtx8fsundosu3n6yyc9q105ydxi	isolated-young-handsome-man-set-different-poses-white-background-illustration_632498-660.avif	image/avif	{"identified":true,"analyzed":true}	local	6426	V/YE8GTEiFkot/D8yCTyKw==	2023-09-22 10:55:04.341865
130	upp9tbdkuxsf2l4qaagotrh813is	illustration-india-flag_53876-27130.avif	image/avif	{"identified":true,"analyzed":true}	local	3844	eFq/xwKor1pdnkw1G9qx4A==	2023-10-13 11:40:33.286549
131	5ebzsr45m0opfj6oaopvoep8uvws	mysterious-mafia-man-smoking-cigarette_52683-34828.avif	image/avif	{"identified":true,"analyzed":true}	local	10384	E4gQlVDccbzjS9LWG7EMeg==	2023-10-13 11:41:02.612286
120	pzunqasqzycwrsglgloneol0eh4o	3d-render-empty-reminder-popup-push-notification-icon-with-cute-yellow-bell-email-web-symbol-mobile-phone-app-template-copy-space-3d-rendering-vector-illustration_165488-6963.avif	image/avif	{"identified":true,"analyzed":true}	local	1986	v7wipu8v/nvXAPlg+P1cTA==	2023-10-10 12:12:21.926203
121	tfroazbh6v9i89yeo69vl38698e2	man-character_665280-46971.avif	image/avif	{"identified":true,"analyzed":true}	local	16696	B5E+FigxTaMGrovjsopW+Q==	2023-10-13 10:29:21.893916
122	1byxz96vqqigr0zz8gx8owt5a7qv	developer-writing-code-website-laptop-computer-designer-flat-vector-illustration-coding-programming_74855-13055.avif	image/avif	{"identified":true,"analyzed":true}	local	9943	Qt8diSbt25j59j3bE+6npw==	2023-10-13 10:30:24.659667
123	j9tooag177067bpakez2cr5lk7zm	javascript-frameworks-concept-illustration_114360-4699.avif	image/avif	{"identified":true,"analyzed":true}	local	13997	GdMICadsp2UP6qn4rsOW4Q==	2023-10-13 10:36:37.876935
132	ba7ibl9f7wn759uitynaom2jqdzq	businessman-character-avatar-isolated_24877-60111.avif	image/avif	{"identified":true,"analyzed":true}	local	4470	5UKcizHbyfSWMGu6RDmwVQ==	2023-10-13 11:42:09.520925
125	4me3tx78wx9abpx3zin5nhcntlrl	young-woman-white_25030-39552.avif	image/avif	{"identified":true,"analyzed":true}	local	5163	fU3Y3z78sq9IStPfhEMGLg==	2023-10-13 10:38:21.245193
126	vtwqx58brd3dedmdjkyjtu650ux1	woman-profile-cartoon_18591-58480.avif	image/avif	{"identified":true,"analyzed":true}	local	5438	p/Pe6hP+08CTjEqowh96bw==	2023-10-13 10:40:05.337933
127	5e893164vrhmj3pgqnx9hm2tphun	programming-background-with-person-working-with-codes-computer_23-2150010125.avif	image/avif	{"identified":true,"analyzed":true}	local	26970	5oWU7zKgylWB1+jmdxLT2Q==	2023-10-13 11:35:31.103585
128	zkw6qi7tcshmllxujh3igomiju4u	isolated-young-handsome-man-different-poses-white-background-illustration_632498-859.avif	image/avif	{"identified":true,"analyzed":true}	local	3713	p32l6A/WSlCO0no486us4w==	2023-10-13 11:37:01.838995
129	54l6r71i6bdxx8rht8nmbflbcmsk	spaceship-orbits-dark-galaxy-glowing-blue-comet-generated-by-ai_188544-9662.avif	image/avif	{"identified":true,"analyzed":true}	local	33337	siZP29jTxNNrzjbxgrMmsw==	2023-10-13 11:38:19.209545
133	7amz8fqo22jkpo8ky997qn2v2wh7	china-landmark-great-wall-world-wonders-famous-attractions-ancient-wallpaper-background_911849-173319.avif	image/avif	{"identified":true,"analyzed":true}	local	44606	vcRB4PywsJIV9nmccP9yCA==	2023-10-13 11:42:42.086659
134	6gshbfs8o8oc2tjtirkbn07d2gy0	3d-cartoon-avatar-isolated-3d-rendering_235528-258.avif	image/avif	{"identified":true,"analyzed":true}	local	11634	iDGgJfCmuBC2twCRupGM0Q==	2023-10-13 11:44:26.845568
136	zxj42uzlo3lr0x7qs450cemtaabc	ca06906eda660940fdeaebb24855bbb4248ab397.png	image/png	{"identified":true,"analyzed":true}	local	10382	erHwco9QSYvSAH/MszrRwQ==	2023-10-13 11:46:49.362688
137	n7jrhbdv8fws0vthagl1o2zemtuq	businessman-profile-cartoon_18591-58481.avif	image/avif	{"identified":true,"analyzed":true}	local	7045	hja+SuOu8WIUwrPx7jELsg==	2023-10-16 06:11:42.127321
148	258f3q0ziprqa4wyy4vjf86qux2g	php04.avif	image/avif	{"identified":true,"analyzed":true}	local	31595	EWZa0BGRwWe+FZ0zy2DU/w==	2023-10-18 06:25:00.229472
141	kvq3phkumcgndk60evpeeke5zigo	😍 This time audience beat Darshan♥️ 🔥 Darshan Raval Live performance #darshanraval #music #trending.mp4	video/mp4	{"identified":true,"audio":false,"video":false,"analyzed":true}	local	7627095	OzJHgKkNyZSleQrQQ1cXHA==	2023-10-17 08:45:17.580111
142	xlp3vd84nx4bpcum1yqxy8uolkjx	taj mahal 03.avif	image/avif	{"identified":true,"analyzed":true}	local	46969	Gp+HuxEV/8sLKWMdxQDI2Q==	2023-10-17 08:48:22.340549
143	ewswhb337ddc1i3hxi1jwsmle9fz	taj mahal 02.avif	image/avif	{"identified":true,"analyzed":true}	local	12808	jrml8c+7thdylyh61jemcw==	2023-10-17 08:48:22.349892
144	0fbhrl7qd2fmf9ddazbqza1hepc7	taj mahal 01.avif	image/avif	{"identified":true,"analyzed":true}	local	35886	OM3agl/jfkhI06veKbvd+A==	2023-10-17 08:48:22.359452
145	ui8kls4d4v29gjia42ho762e7avg	real_time_notification02.avif	image/avif	{"identified":true,"analyzed":true}	local	23044	gxkHI1e2iZlTkZNWX5gT1w==	2023-10-17 09:16:43.724148
146	178060guogo2ah66h8mvy89sg52e	real_time_notification01.avif	image/avif	{"identified":true,"analyzed":true}	local	14929	ipgSt11ZSR7r+rHlCF58mQ==	2023-10-17 09:16:43.733713
147	boxp2zjhhvk2wrrnlfc1ojl85gf6	real_time_notification.avif	image/avif	{"identified":true,"analyzed":true}	local	9097	Rt3EddPfliB1xT0QKAm7Uw==	2023-10-17 09:16:43.742672
149	jd1m03noadodrvhb07m927oul1ls	php03.avif	image/avif	{"identified":true,"analyzed":true}	local	13610	qbk+PrvQj1Q+F1EBYoRZGw==	2023-10-18 06:25:00.241838
150	ify3qc279k1f9g4vyptgdqz2ry8h	php02.avif	image/avif	{"identified":true,"analyzed":true}	local	9943	Qt8diSbt25j59j3bE+6npw==	2023-10-18 06:25:00.250388
151	gczik7k29loapzetybxnifp49e0t	php01.avif	image/avif	{"identified":true,"analyzed":true}	local	18789	naHZoP1EHhfDSGRrRN70Gg==	2023-10-18 06:25:00.260094
152	yliklkqoresrs7jfvrwy073d99nn	angular03.avif	image/avif	{"identified":true,"analyzed":true}	local	22839	zWDUH+1b4+oul5f6oDlh7A==	2023-10-18 06:27:46.207163
153	laytl0aoen8347lqfz9qca62uqws	angular02.avif	image/avif	{"identified":true,"analyzed":true}	local	32695	gFPM5KMwIXcAk6l6iQWUlA==	2023-10-18 06:27:46.21813
154	uu0cksh6bg2e979ye6u3mvx9llts	angular01.avif	image/avif	{"identified":true,"analyzed":true}	local	11677	enUTSgjZhmYExBTY72yTyw==	2023-10-18 06:27:46.228894
155	b3kb356co4xuwfz24dryyjfq0qhf	planet03.avif	image/avif	{"identified":true,"analyzed":true}	local	43526	mlbVQzGFpd+Fa/ghSvWWzQ==	2023-10-18 06:30:51.368541
157	eycs79rxr6rcp9he6hz2wwy4wekk	planet01.avif	image/avif	{"identified":true,"analyzed":true}	local	33337	siZP29jTxNNrzjbxgrMmsw==	2023-10-18 06:30:51.388468
156	xaq1d1a6qazt1nz4a12oay5ao12g	planet02.avif	image/avif	{"identified":true,"analyzed":true}	local	25404	WV058PQd85dWSymyQZ5dtg==	2023-10-18 06:30:51.379959
158	bsa0e18li84okz97kxko65k4mtuh	male avatar 01.avif	image/avif	{"identified":true,"analyzed":true}	local	5127	b24lX6vM2ZfgBRriR/wslw==	2023-10-18 07:15:43.077373
160	wg9ai1jeyfwcekc4o9hhucme64kt	company02.avif	image/avif	{"identified":true,"analyzed":true}	local	3524	PjdGR2kcAyh4hynEWQdObg==	2023-10-19 06:24:32.156396
161	4k9t5zixxxb79wis5s60mwnx8lfl	company03.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	13727	+sKK8laOXqiBuyUWrX4Tvg==	2023-10-19 06:25:25.190126
162	34cog5o8ip4wtyk99q85a5ml090c	company03.avif	image/avif	{"identified":true,"analyzed":true}	local	1772	KqJLgtUCmD8e9zGe62SiKw==	2023-10-19 11:15:55.177383
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2023-07-17 08:05:19.061706	2023-07-17 08:05:19.061706
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.articles (id, title, description, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: blogs; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.blogs (id, title, body, user_id, creator, created_at, updated_at) FROM stdin;
1	test 1 blog	gfgfgdshfhsgdfshfgsdhfhjdsgf	\N	richard 10	2023-08-01 10:34:34.511052	2023-08-01 10:34:34.511052
2	test 1 blog	gfgfgdshfhsgdfshfgsdhfhjdsgf	1	richard 10	2023-08-01 10:34:41.372601	2023-08-01 10:34:41.372601
3	test 1 blog	gfgfgdshfhsgdfshfgsdhfhjdsgf	\N	richard 129	2023-08-01 10:55:43.281883	2023-08-01 10:55:43.281883
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.comments (id, user_id, title, created_at, updated_at, commentable_type, commentable_id) FROM stdin;
2	60	<div>That's Interesting!!!</div>	2023-08-29 08:58:51.187054	2023-08-29 08:58:51.187054	Post	1
3	1	<div>Thanks!!!!</div>	2023-09-05 10:42:04.154338	2023-09-05 10:42:04.154338	Post	8
4	101	<div>Interesting...</div>	2023-09-06 11:23:41.028748	2023-09-06 11:23:41.028748	Post	18
5	101	<div>jhjhvjhjhhhjv</div>	2023-09-08 05:31:01.315208	2023-09-08 05:31:01.315208	Post	20
6	112	<div>thanksss</div>	2023-09-08 05:33:21.633366	2023-09-08 05:33:21.633366	Post	20
7	3	<div>thanksss</div>	2023-09-08 07:15:56.173975	2023-09-08 07:15:56.173975	Post	19
8	1	<div>Thankss</div>	2023-09-08 09:32:40.047035	2023-09-08 09:32:48.197274	Post	19
9	1	<div>gjghjjghgggg</div>	2023-09-09 11:15:21.047197	2023-09-09 11:15:21.047197	Post	20
11	1	asdfghjkl;	2023-09-09 12:12:29.858245	2023-09-13 07:42:56.966622	Post	21
14	115	Thanks!!!	2023-09-27 14:01:08.737546	2023-09-27 14:01:08.737546	Post	25
15	50	Thankss!!	2023-09-27 15:23:43.323247	2023-09-27 15:23:43.323247	Post	20
16	10	Thankss	2023-09-28 07:02:11.913517	2023-09-28 07:02:11.913517	Post	55
17	15	Thanks!!	2023-09-28 07:21:19.933469	2023-09-28 07:21:19.933469	Post	57
18	20	Thanks!!	2023-09-28 07:30:37.596619	2023-09-28 07:30:37.596619	Post	58
19	22	Thankss!!	2023-09-28 08:29:10.243748	2023-09-28 08:29:10.243748	Post	59
20	25	Thankss!!	2023-09-28 09:18:25.837824	2023-09-28 09:18:25.837824	Post	60
21	1	dfhsgfhgsdff	2023-10-04 05:33:34.515389	2023-10-04 05:33:34.515389	Post	25
25	50	lzdfbkj;zdfbzdfbjzbd	2023-10-10 09:51:43.512169	2023-10-10 09:51:43.512169	Post	65
26	1	jbkbkbbkbk\n	2023-10-10 09:53:44.608527	2023-10-10 09:53:44.608527	Post	65
27	1	Nice!!!	2023-10-10 13:13:12.589029	2023-10-10 13:13:12.589029	Post	63
28	1	Thank You!!!!	2023-10-13 04:01:08.813969	2023-10-13 04:01:08.813969	Post	58
29	1	Thanks	2023-10-20 10:26:44.35284	2023-10-20 10:26:44.35284	Post	80
30	1	Nice!!	2023-10-20 10:43:32.420973	2023-10-20 10:43:32.420973	Post	80
31	1	Thank You!!!	2023-10-20 10:49:17.286995	2023-10-20 10:49:17.286995	Post	80
\.


--
-- Data for Name: connections; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.connections (id, user_id, connected_user_id, status, created_at, updated_at) FROM stdin;
1	2	2	accepted	2023-08-02 06:59:45.650612	2023-08-03 11:44:08.714971
72	22	15	accepted	2023-09-28 08:28:14.73345	2023-09-28 08:28:24.861262
3	1	3	pending	2023-08-07 07:53:37.186513	2023-08-07 08:22:21.908971
4	1	4	pending	2023-08-07 08:24:50.006681	2023-08-07 08:24:50.006681
5	1	5	pending	2023-08-07 08:25:04.785918	2023-08-07 08:25:04.785918
7	1	6	pending	2023-08-07 10:48:46.751689	2023-08-07 10:48:46.751689
8	1	7	pending	2023-08-07 10:48:52.846274	2023-08-07 10:48:52.846274
10	95	3	pending	2023-08-07 11:51:24.67074	2023-08-07 11:51:24.67074
11	95	2	pending	2023-08-07 11:51:31.355591	2023-08-07 11:51:31.355591
9	95	1	accepted	2023-08-07 11:50:43.108309	2023-08-07 11:54:29.207474
13	97	1	rejected	2023-08-07 11:52:56.018467	2023-08-07 11:54:50.942572
14	98	1	accepted	2023-08-07 11:53:26.008409	2023-08-07 11:56:44.129552
12	96	1	rejected	2023-08-07 11:52:28.474159	2023-08-07 11:57:22.756581
15	99	1	accepted	2023-08-07 11:58:59.133986	2023-08-07 11:59:19.16843
16	94	1	rejected	2023-08-07 12:00:15.882705	2023-08-07 12:00:24.745347
17	93	1	accepted	2023-08-07 12:00:57.267379	2023-08-07 12:01:16.829196
6	90	100	accepted	2023-08-07 08:28:16.984546	2023-08-11 10:22:44.212641
18	50	1	accepted	2023-08-11 10:54:17.235906	2023-08-11 10:54:17.235906
19	50	2	accepted	2023-08-11 10:54:17.245741	2023-08-11 10:54:17.245741
20	50	10	accepted	2023-08-11 10:54:17.251419	2023-08-11 10:54:17.251419
21	50	50	accepted	2023-08-11 10:54:17.257912	2023-08-11 10:54:17.257912
22	51	1	accepted	2023-08-11 10:54:17.263367	2023-08-11 10:54:17.263367
23	51	2	accepted	2023-08-11 10:54:17.273531	2023-08-11 10:54:17.273531
24	51	10	accepted	2023-08-11 10:54:17.280984	2023-08-11 10:54:17.280984
25	51	50	accepted	2023-08-11 10:54:17.288229	2023-08-11 10:54:17.288229
26	52	1	accepted	2023-08-11 10:54:17.29427	2023-08-11 10:54:17.29427
27	52	2	accepted	2023-08-11 10:54:17.302108	2023-08-11 10:54:17.302108
28	52	10	accepted	2023-08-11 10:54:17.309349	2023-08-11 10:54:17.309349
29	52	50	accepted	2023-08-11 10:54:17.3161	2023-08-11 10:54:17.3161
30	53	1	accepted	2023-08-11 10:54:17.321183	2023-08-11 10:54:17.321183
31	53	2	accepted	2023-08-11 10:54:17.328192	2023-08-11 10:54:17.328192
32	53	10	accepted	2023-08-11 10:54:17.334689	2023-08-11 10:54:17.334689
33	53	50	accepted	2023-08-11 10:54:17.342096	2023-08-11 10:54:17.342096
34	54	1	accepted	2023-08-11 10:54:17.347199	2023-08-11 10:54:17.347199
35	54	2	accepted	2023-08-11 10:54:17.353246	2023-08-11 10:54:17.353246
36	54	10	accepted	2023-08-11 10:54:17.359608	2023-08-11 10:54:17.359608
37	54	50	accepted	2023-08-11 10:54:17.372929	2023-08-11 10:54:17.372929
38	55	1	accepted	2023-08-11 10:54:17.382151	2023-08-11 10:54:17.382151
39	55	2	accepted	2023-08-11 10:54:17.392557	2023-08-11 10:54:17.392557
40	55	10	accepted	2023-08-11 10:54:17.403614	2023-08-11 10:54:17.403614
41	55	50	accepted	2023-08-11 10:54:17.410575	2023-08-11 10:54:17.410575
42	56	1	accepted	2023-08-11 10:54:17.417423	2023-08-11 10:54:17.417423
43	56	2	accepted	2023-08-11 10:54:17.427044	2023-08-11 10:54:17.427044
44	56	10	accepted	2023-08-11 10:54:17.436352	2023-08-11 10:54:17.436352
45	56	50	accepted	2023-08-11 10:54:17.444543	2023-08-11 10:54:17.444543
46	57	1	accepted	2023-08-11 10:54:17.451984	2023-08-11 10:54:17.451984
47	57	2	accepted	2023-08-11 10:54:17.460249	2023-08-11 10:54:17.460249
48	57	10	accepted	2023-08-11 10:54:17.468538	2023-08-11 10:54:17.468538
49	57	50	accepted	2023-08-11 10:54:17.474935	2023-08-11 10:54:17.474935
50	58	1	accepted	2023-08-11 10:54:17.483128	2023-08-11 10:54:17.483128
51	58	2	accepted	2023-08-11 10:54:17.490131	2023-08-11 10:54:17.490131
52	58	10	accepted	2023-08-11 10:54:17.497814	2023-08-11 10:54:17.497814
53	58	50	accepted	2023-08-11 10:54:17.504616	2023-08-11 10:54:17.504616
54	59	1	accepted	2023-08-11 10:54:17.511455	2023-08-11 10:54:17.511455
55	59	2	accepted	2023-08-11 10:54:17.517	2023-08-11 10:54:17.517
56	59	10	accepted	2023-08-11 10:54:17.525335	2023-08-11 10:54:17.525335
57	59	50	accepted	2023-08-11 10:54:17.532205	2023-08-11 10:54:17.532205
2	1	2	accepted	2023-08-07 07:52:57.927826	2023-08-11 10:55:33.069669
58	1	14	pending	2023-08-17 11:02:02.218887	2023-08-17 11:02:02.218887
59	1	40	accepted	2023-08-22 07:05:46.509315	2023-08-22 07:06:02.434999
60	1	30	accepted	2023-08-22 07:10:06.148658	2023-08-22 07:13:33.05798
61	1	32	accepted	2023-08-22 07:56:02.382888	2023-08-22 07:59:44.84534
62	101	1	accepted	2023-08-28 11:39:15.879717	2023-08-28 11:40:12.842815
63	1	60	accepted	2023-08-29 08:25:42.522924	2023-08-29 08:28:08.79824
64	115	1	accepted	2023-09-27 14:57:53.281925	2023-09-27 14:58:12.969363
65	115	113	accepted	2023-09-27 15:03:48.608676	2023-09-27 15:03:58.08497
66	50	4	accepted	2023-09-27 15:22:51.880653	2023-09-27 15:23:01.293883
68	10	1	accepted	2023-09-28 06:53:22.090667	2023-09-28 06:53:40.375182
67	10	1	accepted	2023-09-28 06:53:21.645355	2023-09-28 06:53:58.385802
69	10	12	accepted	2023-09-28 07:02:49.91148	2023-09-28 07:02:56.426458
70	15	12	pending	2023-09-28 07:23:21.911898	2023-09-28 07:23:21.911898
71	20	15	accepted	2023-09-28 07:29:27.657543	2023-09-28 07:29:37.479793
73	25	22	accepted	2023-09-28 09:21:42.87309	2023-09-28 09:21:49.973722
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.events (id, event_type, event_name, start_date, end_date, start_time, end_time, description, user_id, created_at, updated_at) FROM stdin;
4	Online	ROR Bootcamp	2023-10-06	2023-10-06	05.00 PM	06.00 PM	Join this ROR Bootcamp online	50	2023-10-06 11:38:26.454014	2023-10-06 12:04:36.668809
1	In Person	ROR Event	2023-10-06	2023-10-06	01.00 AM	01.00 AM	In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.	1	2023-10-06 09:55:46.458653	2023-10-06 12:05:12.0969
5	Online	Ruby on Rails Bootcamp	2023-10-09	2023-10-09	04.00 PM	06.00 PM	Join this Ruby on rails bootcamp	1	2023-10-09 08:10:56.180488	2023-10-09 08:10:56.199157
6	Online	React Bootcamp	2023-10-09	2023-10-09	05.00 PM	07.00 PM	Join this bootcamp	1	2023-10-09 08:14:24.578822	2023-10-09 08:15:08.963786
7	Online	Angular Bootcamp	2023-10-09	2023-10-09	05.00 PM	06.00 PM	join this bootcamp	1	2023-10-09 08:43:19.830457	2023-10-09 08:43:19.830457
\.


--
-- Data for Name: follows; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.follows (id, user_id, page_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: job_categories; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.job_categories (id, name, created_at, updated_at) FROM stdin;
1	IT Sector	2023-09-11 10:24:30.932634	2023-09-11 10:24:30.932634
2	Private Sector	2023-09-11 10:54:42.582299	2023-09-11 10:54:42.582299
3	Public Sector	2023-09-16 12:18:27.836371	2023-09-16 12:18:27.836371
4	Administrator	2023-09-16 12:19:17.790115	2023-09-16 12:19:17.790115
5	Business development manager	2023-09-16 12:19:27.486183	2023-09-16 12:19:27.486183
6	 Company secretary	2023-09-16 12:19:51.391215	2023-09-16 12:19:51.391215
7	Project manager	2023-09-16 12:20:05.244613	2023-09-16 12:20:05.244613
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.jobs (id, title, description, employee_type, location, salary, qualification, status, job_category_id, created_at, updated_at, user_id) FROM stdin;
2	Senior Full Stack Developer	Full Stack Developer	Trainee	Indore	₹ 5000-10000	B.E	Public	1	2023-09-11 11:00:45.64376	2023-09-11 11:00:45.64376	\N
1	Full Stack ROR Developer	Full stack ROR developer	Full-time	Indore	₹ 15000-20000	B.E	Public	1	2023-09-11 10:25:44.467142	2023-09-11 11:03:59.413321	\N
3	Senior Full Stack Developer	Full Stack Developer	Full-time	Bhopal	₹ 20000-25000	B.E	Public	2	2023-09-11 11:25:50.61277	2023-09-11 11:25:50.61277	50
5	Node. js Developer	Node. js Developer is an IT professional who responsible for managing the interchange of data between the server and the users. In order to attract Node. js Developer that best matches your needs, it is very important to write a clear and precise Node.	Internship	Indore	₹ 5000-10000	Graduation	Public	2	2023-09-13 08:33:03.005873	2023-09-13 08:33:03.005873	100
6	Python Developer	Python Developer is a part of a software team who skills in creating, designing, deploying computer applications, and different programs using the Python programming language. In addition to this, a python developer is also responsible for finding the errors (debugging) in the development projects created with Python.	Part-time	Indore	₹ 5000-10000	Graduation	Public	1	2023-09-13 08:34:50.837019	2023-09-13 08:34:50.837019	100
7	Node Js Developer	Node. js Developer is an IT professional who responsible for managing the interchange of data between the server and the users. In order to attract Node. js Developer that best matches your needs, it is very important to write a clear and precise Node.	Full-time	Indore	₹ 20000-25000	Graduation	Public	2	2023-09-18 08:16:19.351658	2023-09-18 08:16:19.351658	1
8	Senior Full Stack Developer	Full stack ROR Developer	Full-time	Indore	₹ 25000-30000	Graduation	Public	1	2023-09-28 06:19:34.846324	2023-09-28 06:19:34.846324	10
9	Python Developer	Python Developer	Full-time	Indore	₹ 20000-25000	Graduation	Public	1	2023-09-28 07:22:46.601695	2023-09-28 07:22:46.601695	15
10	Jr. Angluar Developer	Angular Developer	Full-time	Indore	₹ 15000-20000	Graduation	Public	1	2023-09-28 08:31:02.440121	2023-09-28 08:31:02.440121	22
11	Php Developer	Php Developer	Internship	Indore	₹ 10000-15000	Graduation	Public	1	2023-09-28 09:23:27.441833	2023-09-28 09:23:27.441833	25
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.likes (id, user_id, post_id, created_at, updated_at) FROM stdin;
8	1	19	2023-09-07 07:32:49.797852	2023-09-07 07:32:49.797852
10	1	18	2023-09-07 07:50:20.442493	2023-09-07 07:50:20.442493
14	115	25	2023-09-27 14:01:46.237114	2023-09-27 14:01:46.237114
16	50	25	2023-09-27 15:24:38.847721	2023-09-27 15:24:38.847721
19	20	58	2023-09-28 07:30:48.856171	2023-09-28 07:30:48.856171
20	22	59	2023-09-28 08:29:22.203619	2023-09-28 08:29:22.203619
21	25	60	2023-09-28 09:18:54.328401	2023-09-28 09:18:54.328401
22	25	25	2023-09-28 09:20:40.851872	2023-09-28 09:20:40.851872
23	1	63	2023-10-02 10:32:53.494702	2023-10-02 10:32:53.494702
27	1	60	2023-10-10 10:40:44.930304	2023-10-10 10:40:44.930304
28	1	59	2023-10-10 10:41:05.803385	2023-10-10 10:41:05.803385
30	1	58	2023-10-10 10:42:10.857208	2023-10-10 10:42:10.857208
34	1	54	2023-10-10 10:49:11.141298	2023-10-10 10:49:11.141298
35	1	72	2023-10-10 13:10:44.788397	2023-10-10 13:10:44.788397
36	1	20	2023-10-10 13:11:51.313036	2023-10-10 13:11:51.313036
38	1	25	2023-10-11 05:54:31.040787	2023-10-11 05:54:31.040787
39	1	15	2023-10-11 06:34:09.304236	2023-10-11 06:34:09.304236
40	1	14	2023-10-11 06:35:57.371119	2023-10-11 06:35:57.371119
41	87	72	2023-10-11 06:39:38.03691	2023-10-11 06:39:38.03691
42	87	63	2023-10-11 06:41:02.021245	2023-10-11 06:41:02.021245
43	87	60	2023-10-11 06:41:54.581638	2023-10-11 06:41:54.581638
44	20	72	2023-10-12 11:31:24.859276	2023-10-12 11:31:24.859276
45	20	60	2023-10-12 11:32:29.157067	2023-10-12 11:32:29.157067
47	1	80	2023-10-20 10:08:28.391336	2023-10-20 10:08:28.391336
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.messages (id, message, user_id, created_at, updated_at) FROM stdin;
1		\N	2023-08-12 10:56:09.979346	2023-08-12 10:56:09.979346
2		\N	2023-08-12 10:56:18.92716	2023-08-12 10:56:18.92716
3	zfbdzf zg 	\N	2023-08-12 10:56:52.982376	2023-08-12 10:56:52.982376
4	zfbdzf zg 	\N	2023-08-12 10:56:59.427776	2023-08-12 10:56:59.427776
5	sfbzf dzf 	\N	2023-08-12 10:57:14.616205	2023-08-12 10:57:14.616205
6	szgfdhxcvmb	\N	2023-08-12 11:08:52.85643	2023-08-12 11:08:52.85643
7	test chat	\N	2023-08-12 11:37:47.516199	2023-08-12 11:37:47.516199
8	onasofnvo11111	\N	2023-08-12 11:44:51.321845	2023-08-12 11:44:51.321845
9		\N	2023-08-12 11:46:41.178362	2023-08-12 11:46:41.178362
10	qwertyuio	\N	2023-08-12 11:56:21.70184	2023-08-12 11:56:21.70184
11	test	\N	2023-08-12 11:59:24.788024	2023-08-12 11:59:24.788024
12	aaaaaaaaaaaaa	\N	2023-08-12 12:03:50.601102	2023-08-12 12:03:50.601102
13	qqqqqqqqqqqqq	\N	2023-08-12 12:04:49.690002	2023-08-12 12:04:49.690002
14	fsgdhfgfdsfxbcn	\N	2023-08-12 12:34:27.816968	2023-08-12 12:34:27.816968
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.notifications (id, item_type, item_id, user_id, viewed, created_at, updated_at) FROM stdin;
2361	Like	45	20	f	2023-10-12 11:32:29.172071	2023-10-12 11:32:29.172071
2362	Like	45	109	f	2023-10-12 11:32:29.179083	2023-10-12 11:32:29.179083
2363	Like	45	114	f	2023-10-12 11:32:29.189003	2023-10-12 11:32:29.189003
2364	Like	45	3	f	2023-10-12 11:32:29.197917	2023-10-12 11:32:29.197917
2365	Like	45	30	f	2023-10-12 11:32:29.207146	2023-10-12 11:32:29.207146
2366	Like	45	102	f	2023-10-12 11:32:29.215692	2023-10-12 11:32:29.215692
2367	Like	45	40	f	2023-10-12 11:32:29.225052	2023-10-12 11:32:29.225052
2368	Like	45	108	f	2023-10-12 11:32:29.23387	2023-10-12 11:32:29.23387
2369	Like	45	4	f	2023-10-12 11:32:29.24368	2023-10-12 11:32:29.24368
2370	Like	45	100	f	2023-10-12 11:32:29.253951	2023-10-12 11:32:29.253951
2372	Like	45	116	f	2023-10-12 11:32:29.273951	2023-10-12 11:32:29.273951
2373	Like	45	52	f	2023-10-12 11:32:29.285023	2023-10-12 11:32:29.285023
2374	Like	45	117	f	2023-10-12 11:32:29.294342	2023-10-12 11:32:29.294342
2375	Like	45	103	f	2023-10-12 11:32:29.303183	2023-10-12 11:32:29.303183
2376	Like	45	110	f	2023-10-12 11:32:29.309758	2023-10-12 11:32:29.309758
2377	Like	45	115	f	2023-10-12 11:32:29.318118	2023-10-12 11:32:29.318118
2378	Like	45	10	f	2023-10-12 11:32:29.326008	2023-10-12 11:32:29.326008
2379	Like	45	118	f	2023-10-12 11:32:29.334423	2023-10-12 11:32:29.334423
2380	Like	45	106	f	2023-10-12 11:32:29.341284	2023-10-12 11:32:29.341284
2381	Like	45	18	f	2023-10-12 11:32:29.381396	2023-10-12 11:32:29.381396
2382	Like	45	19	f	2023-10-12 11:32:29.388061	2023-10-12 11:32:29.388061
2383	Like	45	26	f	2023-10-12 11:32:29.395902	2023-10-12 11:32:29.395902
2384	Like	45	27	f	2023-10-12 11:32:29.40215	2023-10-12 11:32:29.40215
2385	Like	45	66	f	2023-10-12 11:32:29.409222	2023-10-12 11:32:29.409222
2386	Like	45	111	f	2023-10-12 11:32:29.414998	2023-10-12 11:32:29.414998
2387	Like	45	104	f	2023-10-12 11:32:29.422317	2023-10-12 11:32:29.422317
2388	Like	45	59	f	2023-10-12 11:32:29.428889	2023-10-12 11:32:29.428889
2389	Like	45	2	f	2023-10-12 11:32:29.436183	2023-10-12 11:32:29.436183
2390	Like	45	67	f	2023-10-12 11:32:29.441671	2023-10-12 11:32:29.441671
2391	Like	45	74	f	2023-10-12 11:32:29.449788	2023-10-12 11:32:29.449788
2392	Like	45	75	f	2023-10-12 11:32:29.455932	2023-10-12 11:32:29.455932
2393	Like	45	82	f	2023-10-12 11:32:29.46256	2023-10-12 11:32:29.46256
2394	Like	45	83	f	2023-10-12 11:32:29.468776	2023-10-12 11:32:29.468776
2395	Like	45	91	f	2023-10-12 11:32:29.476275	2023-10-12 11:32:29.476275
2396	Like	45	92	f	2023-10-12 11:32:29.483045	2023-10-12 11:32:29.483045
2397	Like	45	99	f	2023-10-12 11:32:29.490117	2023-10-12 11:32:29.490117
2398	Like	45	105	f	2023-10-12 11:32:29.495969	2023-10-12 11:32:29.495969
2399	Like	45	101	f	2023-10-12 11:32:29.502802	2023-10-12 11:32:29.502802
2400	Like	45	112	f	2023-10-12 11:32:29.50845	2023-10-12 11:32:29.50845
2401	Like	45	107	f	2023-10-12 11:32:29.515564	2023-10-12 11:32:29.515564
2402	Like	45	113	f	2023-10-12 11:32:29.521351	2023-10-12 11:32:29.521351
2403	Like	45	89	f	2023-10-12 11:32:29.528144	2023-10-12 11:32:29.528144
2405	Like	45	5	f	2023-10-12 11:32:29.540927	2023-10-12 11:32:29.540927
2406	Like	45	6	f	2023-10-12 11:32:29.546541	2023-10-12 11:32:29.546541
2407	Like	45	7	f	2023-10-12 11:32:29.553774	2023-10-12 11:32:29.553774
2408	Like	45	8	f	2023-10-12 11:32:29.559304	2023-10-12 11:32:29.559304
2409	Like	45	9	f	2023-10-12 11:32:29.566474	2023-10-12 11:32:29.566474
2410	Like	45	11	f	2023-10-12 11:32:29.572156	2023-10-12 11:32:29.572156
2411	Like	45	15	f	2023-10-12 11:32:29.579273	2023-10-12 11:32:29.579273
2412	Like	45	12	f	2023-10-12 11:32:29.584854	2023-10-12 11:32:29.584854
2413	Like	45	13	f	2023-10-12 11:32:29.591305	2023-10-12 11:32:29.591305
2414	Like	45	14	f	2023-10-12 11:32:29.59675	2023-10-12 11:32:29.59675
2415	Like	45	16	f	2023-10-12 11:32:29.603284	2023-10-12 11:32:29.603284
2416	Like	45	17	f	2023-10-12 11:32:29.608785	2023-10-12 11:32:29.608785
2417	Like	45	22	f	2023-10-12 11:32:29.615309	2023-10-12 11:32:29.615309
2418	Like	45	21	f	2023-10-12 11:32:29.620784	2023-10-12 11:32:29.620784
2419	Like	45	25	f	2023-10-12 11:32:29.627365	2023-10-12 11:32:29.627365
2420	Like	45	23	f	2023-10-12 11:32:29.633082	2023-10-12 11:32:29.633082
2421	Like	45	24	f	2023-10-12 11:32:29.640324	2023-10-12 11:32:29.640324
2422	Like	45	32	f	2023-10-12 11:32:29.647193	2023-10-12 11:32:29.647193
2423	Like	45	28	f	2023-10-12 11:32:29.655174	2023-10-12 11:32:29.655174
2424	Like	45	29	f	2023-10-12 11:32:29.661033	2023-10-12 11:32:29.661033
2425	Like	45	31	f	2023-10-12 11:32:29.668008	2023-10-12 11:32:29.668008
2426	Like	45	33	f	2023-10-12 11:32:29.67374	2023-10-12 11:32:29.67374
2427	Like	45	34	f	2023-10-12 11:32:29.681052	2023-10-12 11:32:29.681052
2428	Like	45	35	f	2023-10-12 11:32:29.687413	2023-10-12 11:32:29.687413
2429	Like	45	36	f	2023-10-12 11:32:29.695016	2023-10-12 11:32:29.695016
2430	Like	45	37	f	2023-10-12 11:32:29.700894	2023-10-12 11:32:29.700894
2431	Like	45	38	f	2023-10-12 11:32:29.707764	2023-10-12 11:32:29.707764
2432	Like	45	39	f	2023-10-12 11:32:29.713428	2023-10-12 11:32:29.713428
2433	Like	45	41	f	2023-10-12 11:32:29.720084	2023-10-12 11:32:29.720084
2434	Like	45	42	f	2023-10-12 11:32:29.725773	2023-10-12 11:32:29.725773
2435	Like	45	43	f	2023-10-12 11:32:29.73223	2023-10-12 11:32:29.73223
2436	Like	45	44	f	2023-10-12 11:32:29.737818	2023-10-12 11:32:29.737818
2437	Like	45	45	f	2023-10-12 11:32:29.744298	2023-10-12 11:32:29.744298
2438	Like	45	46	f	2023-10-12 11:32:29.749913	2023-10-12 11:32:29.749913
2439	Like	45	47	f	2023-10-12 11:32:29.761826	2023-10-12 11:32:29.761826
2440	Like	45	48	f	2023-10-12 11:32:29.770118	2023-10-12 11:32:29.770118
2441	Like	45	49	f	2023-10-12 11:32:29.777673	2023-10-12 11:32:29.777673
2442	Like	45	51	f	2023-10-12 11:32:29.783201	2023-10-12 11:32:29.783201
2443	Like	45	53	f	2023-10-12 11:32:29.789587	2023-10-12 11:32:29.789587
2444	Like	45	54	f	2023-10-12 11:32:29.796308	2023-10-12 11:32:29.796308
2445	Like	45	55	f	2023-10-12 11:32:29.803742	2023-10-12 11:32:29.803742
2446	Like	45	56	f	2023-10-12 11:32:29.80981	2023-10-12 11:32:29.80981
2447	Like	45	57	f	2023-10-12 11:32:29.816533	2023-10-12 11:32:29.816533
2448	Like	45	58	f	2023-10-12 11:32:29.822148	2023-10-12 11:32:29.822148
2449	Like	45	60	f	2023-10-12 11:32:29.828673	2023-10-12 11:32:29.828673
2450	Like	45	61	f	2023-10-12 11:32:29.83424	2023-10-12 11:32:29.83424
2451	Like	45	62	f	2023-10-12 11:32:29.840808	2023-10-12 11:32:29.840808
2452	Like	45	63	f	2023-10-12 11:32:29.846335	2023-10-12 11:32:29.846335
2453	Like	45	64	f	2023-10-12 11:32:29.85308	2023-10-12 11:32:29.85308
2454	Like	45	65	f	2023-10-12 11:32:29.85877	2023-10-12 11:32:29.85877
2455	Like	45	68	f	2023-10-12 11:32:29.865211	2023-10-12 11:32:29.865211
2456	Like	45	69	f	2023-10-12 11:32:29.876163	2023-10-12 11:32:29.876163
2457	Like	45	70	f	2023-10-12 11:32:29.886112	2023-10-12 11:32:29.886112
2371	Like	45	50	t	2023-10-12 11:32:29.263806	2023-10-19 09:38:01.729599
2458	Like	45	71	f	2023-10-12 11:32:29.892594	2023-10-12 11:32:29.892594
2459	Like	45	72	f	2023-10-12 11:32:29.899343	2023-10-12 11:32:29.899343
2460	Like	45	73	f	2023-10-12 11:32:29.904835	2023-10-12 11:32:29.904835
2461	Like	45	76	f	2023-10-12 11:32:29.911492	2023-10-12 11:32:29.911492
2462	Like	45	77	f	2023-10-12 11:32:29.917962	2023-10-12 11:32:29.917962
2463	Like	45	78	f	2023-10-12 11:32:29.924615	2023-10-12 11:32:29.924615
2464	Like	45	79	f	2023-10-12 11:32:29.930105	2023-10-12 11:32:29.930105
2465	Like	45	80	f	2023-10-12 11:32:29.93696	2023-10-12 11:32:29.93696
2466	Like	45	81	f	2023-10-12 11:32:29.94239	2023-10-12 11:32:29.94239
2467	Like	45	87	f	2023-10-12 11:32:29.949144	2023-10-12 11:32:29.949144
2468	Like	45	84	f	2023-10-12 11:32:29.956059	2023-10-12 11:32:29.956059
2469	Like	45	85	f	2023-10-12 11:32:29.963477	2023-10-12 11:32:29.963477
2470	Like	45	86	f	2023-10-12 11:32:29.970994	2023-10-12 11:32:29.970994
2471	Like	45	88	f	2023-10-12 11:32:29.978398	2023-10-12 11:32:29.978398
2472	Like	45	90	f	2023-10-12 11:32:29.985639	2023-10-12 11:32:29.985639
2473	Like	45	95	f	2023-10-12 11:32:29.993753	2023-10-12 11:32:29.993753
2474	Like	45	93	f	2023-10-12 11:32:30.001512	2023-10-12 11:32:30.001512
2475	Like	45	94	f	2023-10-12 11:32:30.009336	2023-10-12 11:32:30.009336
2476	Like	45	96	f	2023-10-12 11:32:30.016741	2023-10-12 11:32:30.016741
2477	Like	45	97	f	2023-10-12 11:32:30.024984	2023-10-12 11:32:30.024984
2478	Like	45	98	f	2023-10-12 11:32:30.031555	2023-10-12 11:32:30.031555
2479	Comment	28	109	f	2023-10-13 04:01:08.833001	2023-10-13 04:01:08.833001
2480	Comment	28	114	f	2023-10-13 04:01:08.839865	2023-10-13 04:01:08.839865
2481	Comment	28	3	f	2023-10-13 04:01:08.849693	2023-10-13 04:01:08.849693
2482	Comment	28	30	f	2023-10-13 04:01:08.857344	2023-10-13 04:01:08.857344
2483	Comment	28	102	f	2023-10-13 04:01:08.866994	2023-10-13 04:01:08.866994
2484	Comment	28	40	f	2023-10-13 04:01:08.873495	2023-10-13 04:01:08.873495
2485	Comment	28	108	f	2023-10-13 04:01:08.882209	2023-10-13 04:01:08.882209
2486	Comment	28	4	f	2023-10-13 04:01:08.889014	2023-10-13 04:01:08.889014
2487	Comment	28	100	f	2023-10-13 04:01:08.89771	2023-10-13 04:01:08.89771
3541	Post	80	109	f	2023-10-20 10:01:37.936666	2023-10-20 10:01:37.936666
2489	Comment	28	116	f	2023-10-13 04:01:08.913405	2023-10-13 04:01:08.913405
2490	Comment	28	52	f	2023-10-13 04:01:08.920491	2023-10-13 04:01:08.920491
2491	Comment	28	117	f	2023-10-13 04:01:08.928776	2023-10-13 04:01:08.928776
2492	Comment	28	103	f	2023-10-13 04:01:08.93634	2023-10-13 04:01:08.93634
2493	Comment	28	110	f	2023-10-13 04:01:08.94453	2023-10-13 04:01:08.94453
2494	Comment	28	115	f	2023-10-13 04:01:08.952221	2023-10-13 04:01:08.952221
2495	Comment	28	10	f	2023-10-13 04:01:08.960456	2023-10-13 04:01:08.960456
2496	Comment	28	118	f	2023-10-13 04:01:08.96747	2023-10-13 04:01:08.96747
2497	Comment	28	106	f	2023-10-13 04:01:08.974939	2023-10-13 04:01:08.974939
2498	Comment	28	18	f	2023-10-13 04:01:08.981656	2023-10-13 04:01:08.981656
2499	Comment	28	19	f	2023-10-13 04:01:08.995787	2023-10-13 04:01:08.995787
2500	Comment	28	26	f	2023-10-13 04:01:09.002198	2023-10-13 04:01:09.002198
2501	Comment	28	27	f	2023-10-13 04:01:09.00979	2023-10-13 04:01:09.00979
2502	Comment	28	66	f	2023-10-13 04:01:09.016196	2023-10-13 04:01:09.016196
2503	Comment	28	111	f	2023-10-13 04:01:09.023516	2023-10-13 04:01:09.023516
2504	Comment	28	104	f	2023-10-13 04:01:09.029098	2023-10-13 04:01:09.029098
2505	Comment	28	59	f	2023-10-13 04:01:09.041315	2023-10-13 04:01:09.041315
2506	Comment	28	2	f	2023-10-13 04:01:09.049797	2023-10-13 04:01:09.049797
2507	Comment	28	67	f	2023-10-13 04:01:09.057947	2023-10-13 04:01:09.057947
2508	Comment	28	74	f	2023-10-13 04:01:09.06406	2023-10-13 04:01:09.06406
2509	Comment	28	75	f	2023-10-13 04:01:09.07136	2023-10-13 04:01:09.07136
2510	Comment	28	82	f	2023-10-13 04:01:09.077292	2023-10-13 04:01:09.077292
2511	Comment	28	83	f	2023-10-13 04:01:09.084628	2023-10-13 04:01:09.084628
2512	Comment	28	91	f	2023-10-13 04:01:09.091694	2023-10-13 04:01:09.091694
2513	Comment	28	92	f	2023-10-13 04:01:09.098764	2023-10-13 04:01:09.098764
2514	Comment	28	99	f	2023-10-13 04:01:09.104455	2023-10-13 04:01:09.104455
2515	Comment	28	105	f	2023-10-13 04:01:09.111576	2023-10-13 04:01:09.111576
2516	Comment	28	101	f	2023-10-13 04:01:09.117423	2023-10-13 04:01:09.117423
2517	Comment	28	112	f	2023-10-13 04:01:09.12487	2023-10-13 04:01:09.12487
2518	Comment	28	107	f	2023-10-13 04:01:09.130646	2023-10-13 04:01:09.130646
2519	Comment	28	113	f	2023-10-13 04:01:09.137626	2023-10-13 04:01:09.137626
2520	Comment	28	89	f	2023-10-13 04:01:09.143429	2023-10-13 04:01:09.143429
3542	Post	80	114	f	2023-10-20 10:01:37.948299	2023-10-20 10:01:37.948299
2522	Comment	28	5	f	2023-10-13 04:01:09.155766	2023-10-13 04:01:09.155766
2523	Comment	28	6	f	2023-10-13 04:01:09.163112	2023-10-13 04:01:09.163112
2524	Comment	28	7	f	2023-10-13 04:01:09.169414	2023-10-13 04:01:09.169414
2525	Comment	28	8	f	2023-10-13 04:01:09.176663	2023-10-13 04:01:09.176663
2526	Comment	28	9	f	2023-10-13 04:01:09.186416	2023-10-13 04:01:09.186416
2527	Comment	28	11	f	2023-10-13 04:01:09.19474	2023-10-13 04:01:09.19474
2528	Comment	28	15	f	2023-10-13 04:01:09.200619	2023-10-13 04:01:09.200619
2529	Comment	28	12	f	2023-10-13 04:01:09.20762	2023-10-13 04:01:09.20762
2530	Comment	28	13	f	2023-10-13 04:01:09.213321	2023-10-13 04:01:09.213321
2531	Comment	28	14	f	2023-10-13 04:01:09.225801	2023-10-13 04:01:09.225801
2532	Comment	28	16	f	2023-10-13 04:01:09.234383	2023-10-13 04:01:09.234383
2533	Comment	28	17	f	2023-10-13 04:01:09.24317	2023-10-13 04:01:09.24317
2534	Comment	28	22	f	2023-10-13 04:01:09.252469	2023-10-13 04:01:09.252469
2535	Comment	28	21	f	2023-10-13 04:01:09.265041	2023-10-13 04:01:09.265041
2536	Comment	28	25	f	2023-10-13 04:01:09.276147	2023-10-13 04:01:09.276147
2537	Comment	28	20	f	2023-10-13 04:01:09.289192	2023-10-13 04:01:09.289192
2538	Comment	28	23	f	2023-10-13 04:01:09.299891	2023-10-13 04:01:09.299891
2539	Comment	28	24	f	2023-10-13 04:01:09.308114	2023-10-13 04:01:09.308114
2540	Comment	28	32	f	2023-10-13 04:01:09.315839	2023-10-13 04:01:09.315839
2541	Comment	28	28	f	2023-10-13 04:01:09.323038	2023-10-13 04:01:09.323038
2542	Comment	28	29	f	2023-10-13 04:01:09.331575	2023-10-13 04:01:09.331575
2543	Comment	28	31	f	2023-10-13 04:01:09.339068	2023-10-13 04:01:09.339068
2544	Comment	28	33	f	2023-10-13 04:01:09.346792	2023-10-13 04:01:09.346792
2545	Comment	28	34	f	2023-10-13 04:01:09.354211	2023-10-13 04:01:09.354211
2546	Comment	28	35	f	2023-10-13 04:01:09.361697	2023-10-13 04:01:09.361697
2547	Comment	28	36	f	2023-10-13 04:01:09.369431	2023-10-13 04:01:09.369431
2548	Comment	28	37	f	2023-10-13 04:01:09.376316	2023-10-13 04:01:09.376316
2549	Comment	28	38	f	2023-10-13 04:01:09.385455	2023-10-13 04:01:09.385455
2550	Comment	28	39	f	2023-10-13 04:01:09.391697	2023-10-13 04:01:09.391697
2551	Comment	28	41	f	2023-10-13 04:01:09.410287	2023-10-13 04:01:09.410287
2552	Comment	28	42	f	2023-10-13 04:01:09.430664	2023-10-13 04:01:09.430664
2553	Comment	28	43	f	2023-10-13 04:01:09.441051	2023-10-13 04:01:09.441051
2554	Comment	28	44	f	2023-10-13 04:01:09.450376	2023-10-13 04:01:09.450376
2555	Comment	28	45	f	2023-10-13 04:01:09.463825	2023-10-13 04:01:09.463825
2556	Comment	28	46	f	2023-10-13 04:01:09.470744	2023-10-13 04:01:09.470744
2557	Comment	28	47	f	2023-10-13 04:01:09.479789	2023-10-13 04:01:09.479789
2558	Comment	28	48	f	2023-10-13 04:01:09.486536	2023-10-13 04:01:09.486536
2559	Comment	28	49	f	2023-10-13 04:01:09.495737	2023-10-13 04:01:09.495737
2560	Comment	28	51	f	2023-10-13 04:01:09.503368	2023-10-13 04:01:09.503368
2561	Comment	28	53	f	2023-10-13 04:01:09.512943	2023-10-13 04:01:09.512943
2562	Comment	28	54	f	2023-10-13 04:01:09.519672	2023-10-13 04:01:09.519672
2563	Comment	28	55	f	2023-10-13 04:01:09.528389	2023-10-13 04:01:09.528389
2564	Comment	28	56	f	2023-10-13 04:01:09.535639	2023-10-13 04:01:09.535639
2565	Comment	28	57	f	2023-10-13 04:01:09.544563	2023-10-13 04:01:09.544563
2566	Comment	28	58	f	2023-10-13 04:01:09.552803	2023-10-13 04:01:09.552803
2567	Comment	28	60	f	2023-10-13 04:01:09.562332	2023-10-13 04:01:09.562332
2568	Comment	28	61	f	2023-10-13 04:01:09.568866	2023-10-13 04:01:09.568866
2569	Comment	28	62	f	2023-10-13 04:01:09.582713	2023-10-13 04:01:09.582713
2570	Comment	28	63	f	2023-10-13 04:01:09.592259	2023-10-13 04:01:09.592259
2571	Comment	28	64	f	2023-10-13 04:01:09.600324	2023-10-13 04:01:09.600324
2572	Comment	28	65	f	2023-10-13 04:01:09.60798	2023-10-13 04:01:09.60798
2573	Comment	28	68	f	2023-10-13 04:01:09.615675	2023-10-13 04:01:09.615675
2574	Comment	28	69	f	2023-10-13 04:01:09.62337	2023-10-13 04:01:09.62337
2575	Comment	28	70	f	2023-10-13 04:01:09.631291	2023-10-13 04:01:09.631291
2576	Comment	28	71	f	2023-10-13 04:01:09.638856	2023-10-13 04:01:09.638856
2577	Comment	28	72	f	2023-10-13 04:01:09.647333	2023-10-13 04:01:09.647333
2578	Comment	28	73	f	2023-10-13 04:01:09.655322	2023-10-13 04:01:09.655322
2579	Comment	28	76	f	2023-10-13 04:01:09.667563	2023-10-13 04:01:09.667563
2580	Comment	28	77	f	2023-10-13 04:01:09.68247	2023-10-13 04:01:09.68247
2581	Comment	28	78	f	2023-10-13 04:01:09.688733	2023-10-13 04:01:09.688733
2582	Comment	28	79	f	2023-10-13 04:01:09.697397	2023-10-13 04:01:09.697397
2583	Comment	28	80	f	2023-10-13 04:01:09.703953	2023-10-13 04:01:09.703953
2584	Comment	28	81	f	2023-10-13 04:01:09.712884	2023-10-13 04:01:09.712884
2585	Comment	28	87	f	2023-10-13 04:01:09.719436	2023-10-13 04:01:09.719436
2586	Comment	28	84	f	2023-10-13 04:01:09.728191	2023-10-13 04:01:09.728191
2587	Comment	28	85	f	2023-10-13 04:01:09.735063	2023-10-13 04:01:09.735063
2588	Comment	28	86	f	2023-10-13 04:01:09.743215	2023-10-13 04:01:09.743215
2589	Comment	28	88	f	2023-10-13 04:01:09.750495	2023-10-13 04:01:09.750495
2590	Comment	28	90	f	2023-10-13 04:01:09.758466	2023-10-13 04:01:09.758466
2591	Comment	28	95	f	2023-10-13 04:01:09.766469	2023-10-13 04:01:09.766469
2592	Comment	28	93	f	2023-10-13 04:01:09.774184	2023-10-13 04:01:09.774184
2593	Comment	28	94	f	2023-10-13 04:01:09.782232	2023-10-13 04:01:09.782232
2594	Comment	28	96	f	2023-10-13 04:01:09.789623	2023-10-13 04:01:09.789623
2595	Comment	28	97	f	2023-10-13 04:01:09.797539	2023-10-13 04:01:09.797539
2596	Comment	28	98	f	2023-10-13 04:01:09.805113	2023-10-13 04:01:09.805113
3543	Post	80	3	f	2023-10-20 10:01:37.959903	2023-10-20 10:01:37.959903
3544	Post	80	4	f	2023-10-20 10:01:37.969156	2023-10-20 10:01:37.969156
3545	Post	80	30	f	2023-10-20 10:01:37.98088	2023-10-20 10:01:37.98088
3546	Post	80	102	f	2023-10-20 10:01:37.990794	2023-10-20 10:01:37.990794
3547	Post	80	40	f	2023-10-20 10:01:38.002137	2023-10-20 10:01:38.002137
3548	Post	80	108	f	2023-10-20 10:01:38.013681	2023-10-20 10:01:38.013681
3549	Post	80	50	f	2023-10-20 10:01:38.029206	2023-10-20 10:01:38.029206
3550	Post	80	100	f	2023-10-20 10:01:38.039964	2023-10-20 10:01:38.039964
3551	Post	80	116	f	2023-10-20 10:01:38.051547	2023-10-20 10:01:38.051547
3552	Post	80	52	f	2023-10-20 10:01:38.063409	2023-10-20 10:01:38.063409
3553	Post	80	117	f	2023-10-20 10:01:38.07389	2023-10-20 10:01:38.07389
3554	Post	80	103	f	2023-10-20 10:01:38.082701	2023-10-20 10:01:38.082701
3555	Post	80	110	f	2023-10-20 10:01:38.092429	2023-10-20 10:01:38.092429
3556	Post	80	10	f	2023-10-20 10:01:38.101135	2023-10-20 10:01:38.101135
3557	Post	80	115	f	2023-10-20 10:01:38.111148	2023-10-20 10:01:38.111148
3558	Post	80	118	f	2023-10-20 10:01:38.11983	2023-10-20 10:01:38.11983
3559	Post	80	106	f	2023-10-20 10:01:38.1298	2023-10-20 10:01:38.1298
3560	Post	80	18	f	2023-10-20 10:01:38.138784	2023-10-20 10:01:38.138784
3561	Post	80	19	f	2023-10-20 10:01:38.148857	2023-10-20 10:01:38.148857
3562	Post	80	26	f	2023-10-20 10:01:38.158427	2023-10-20 10:01:38.158427
3563	Post	80	27	f	2023-10-20 10:01:38.168666	2023-10-20 10:01:38.168666
3564	Post	80	66	f	2023-10-20 10:01:38.177853	2023-10-20 10:01:38.177853
3565	Post	80	111	f	2023-10-20 10:01:38.188336	2023-10-20 10:01:38.188336
3566	Post	80	104	f	2023-10-20 10:01:38.197491	2023-10-20 10:01:38.197491
3567	Post	80	59	f	2023-10-20 10:01:38.207268	2023-10-20 10:01:38.207268
3568	Post	80	2	f	2023-10-20 10:01:38.215951	2023-10-20 10:01:38.215951
3569	Post	80	67	f	2023-10-20 10:01:38.226031	2023-10-20 10:01:38.226031
3570	Post	80	74	f	2023-10-20 10:01:38.234868	2023-10-20 10:01:38.234868
3571	Post	80	75	f	2023-10-20 10:01:38.244719	2023-10-20 10:01:38.244719
3572	Post	80	82	f	2023-10-20 10:01:38.254208	2023-10-20 10:01:38.254208
3573	Post	80	83	f	2023-10-20 10:01:38.264995	2023-10-20 10:01:38.264995
3574	Post	80	91	f	2023-10-20 10:01:38.273866	2023-10-20 10:01:38.273866
3575	Post	80	92	f	2023-10-20 10:01:38.284499	2023-10-20 10:01:38.284499
3576	Post	80	99	f	2023-10-20 10:01:38.293225	2023-10-20 10:01:38.293225
3577	Post	80	105	f	2023-10-20 10:01:38.303025	2023-10-20 10:01:38.303025
3578	Post	80	101	f	2023-10-20 10:01:38.31148	2023-10-20 10:01:38.31148
3579	Post	80	112	f	2023-10-20 10:01:38.320914	2023-10-20 10:01:38.320914
3580	Post	80	107	f	2023-10-20 10:01:38.329295	2023-10-20 10:01:38.329295
3581	Post	80	113	f	2023-10-20 10:01:38.338983	2023-10-20 10:01:38.338983
3582	Post	80	89	f	2023-10-20 10:01:38.347253	2023-10-20 10:01:38.347253
3583	Post	80	1	f	2023-10-20 10:01:38.357241	2023-10-20 10:01:38.357241
3584	Post	80	5	f	2023-10-20 10:01:38.371038	2023-10-20 10:01:38.371038
3585	Post	80	6	f	2023-10-20 10:01:38.382872	2023-10-20 10:01:38.382872
3586	Post	80	7	f	2023-10-20 10:01:38.393287	2023-10-20 10:01:38.393287
3587	Post	80	8	f	2023-10-20 10:01:38.404089	2023-10-20 10:01:38.404089
3588	Post	80	9	f	2023-10-20 10:01:38.415605	2023-10-20 10:01:38.415605
3589	Post	80	11	f	2023-10-20 10:01:38.427366	2023-10-20 10:01:38.427366
3590	Post	80	15	f	2023-10-20 10:01:38.437975	2023-10-20 10:01:38.437975
3591	Post	80	12	f	2023-10-20 10:01:38.453896	2023-10-20 10:01:38.453896
3592	Post	80	13	f	2023-10-20 10:01:38.464941	2023-10-20 10:01:38.464941
3593	Post	80	14	f	2023-10-20 10:01:38.47888	2023-10-20 10:01:38.47888
3594	Post	80	16	f	2023-10-20 10:01:38.48948	2023-10-20 10:01:38.48948
3595	Post	80	17	f	2023-10-20 10:01:38.499725	2023-10-20 10:01:38.499725
3596	Post	80	25	f	2023-10-20 10:01:38.5114	2023-10-20 10:01:38.5114
3597	Post	80	22	f	2023-10-20 10:01:38.523044	2023-10-20 10:01:38.523044
3598	Post	80	21	f	2023-10-20 10:01:38.53303	2023-10-20 10:01:38.53303
3599	Post	80	20	f	2023-10-20 10:01:38.545698	2023-10-20 10:01:38.545698
3600	Post	80	23	f	2023-10-20 10:01:38.557506	2023-10-20 10:01:38.557506
3601	Post	80	24	f	2023-10-20 10:01:38.56776	2023-10-20 10:01:38.56776
3602	Post	80	32	f	2023-10-20 10:01:38.578544	2023-10-20 10:01:38.578544
3603	Post	80	28	f	2023-10-20 10:01:38.592032	2023-10-20 10:01:38.592032
3604	Post	80	29	f	2023-10-20 10:01:38.600902	2023-10-20 10:01:38.600902
3605	Post	80	31	f	2023-10-20 10:01:38.612952	2023-10-20 10:01:38.612952
3606	Post	80	33	f	2023-10-20 10:01:38.643618	2023-10-20 10:01:38.643618
3607	Post	80	34	f	2023-10-20 10:01:38.657308	2023-10-20 10:01:38.657308
3608	Post	80	35	f	2023-10-20 10:01:38.670381	2023-10-20 10:01:38.670381
3609	Post	80	36	f	2023-10-20 10:01:38.68243	2023-10-20 10:01:38.68243
3610	Post	80	37	f	2023-10-20 10:01:38.697229	2023-10-20 10:01:38.697229
3611	Post	80	38	f	2023-10-20 10:01:38.710529	2023-10-20 10:01:38.710529
3612	Post	80	39	f	2023-10-20 10:01:38.72141	2023-10-20 10:01:38.72141
3613	Post	80	41	f	2023-10-20 10:01:38.733611	2023-10-20 10:01:38.733611
3614	Post	80	42	f	2023-10-20 10:01:38.745245	2023-10-20 10:01:38.745245
3615	Post	80	43	f	2023-10-20 10:01:38.757072	2023-10-20 10:01:38.757072
3616	Post	80	44	f	2023-10-20 10:01:38.767253	2023-10-20 10:01:38.767253
3617	Post	80	45	f	2023-10-20 10:01:38.779486	2023-10-20 10:01:38.779486
3618	Post	80	46	f	2023-10-20 10:01:38.790106	2023-10-20 10:01:38.790106
3619	Post	80	47	f	2023-10-20 10:01:38.80173	2023-10-20 10:01:38.80173
3620	Post	80	48	f	2023-10-20 10:01:38.813243	2023-10-20 10:01:38.813243
3621	Post	80	49	f	2023-10-20 10:01:38.82858	2023-10-20 10:01:38.82858
3622	Post	80	51	f	2023-10-20 10:01:38.838109	2023-10-20 10:01:38.838109
3623	Post	80	53	f	2023-10-20 10:01:38.849856	2023-10-20 10:01:38.849856
3624	Post	80	54	f	2023-10-20 10:01:38.862416	2023-10-20 10:01:38.862416
3625	Post	80	55	f	2023-10-20 10:01:38.874143	2023-10-20 10:01:38.874143
3626	Post	80	56	f	2023-10-20 10:01:38.884447	2023-10-20 10:01:38.884447
3627	Post	80	57	f	2023-10-20 10:01:38.896866	2023-10-20 10:01:38.896866
3628	Post	80	58	f	2023-10-20 10:01:38.907912	2023-10-20 10:01:38.907912
3629	Post	80	60	f	2023-10-20 10:01:38.919103	2023-10-20 10:01:38.919103
3630	Post	80	61	f	2023-10-20 10:01:38.931211	2023-10-20 10:01:38.931211
3631	Post	80	62	f	2023-10-20 10:01:38.944247	2023-10-20 10:01:38.944247
3632	Post	80	63	f	2023-10-20 10:01:38.957536	2023-10-20 10:01:38.957536
3633	Post	80	64	f	2023-10-20 10:01:38.969604	2023-10-20 10:01:38.969604
3634	Post	80	65	f	2023-10-20 10:01:38.984699	2023-10-20 10:01:38.984699
3635	Post	80	68	f	2023-10-20 10:01:39.000354	2023-10-20 10:01:39.000354
3636	Post	80	69	f	2023-10-20 10:01:39.012386	2023-10-20 10:01:39.012386
3637	Post	80	70	f	2023-10-20 10:01:39.024695	2023-10-20 10:01:39.024695
3638	Post	80	71	f	2023-10-20 10:01:39.034571	2023-10-20 10:01:39.034571
3639	Post	80	72	f	2023-10-20 10:01:39.046652	2023-10-20 10:01:39.046652
3640	Post	80	73	f	2023-10-20 10:01:39.057952	2023-10-20 10:01:39.057952
3641	Post	80	76	f	2023-10-20 10:01:39.06957	2023-10-20 10:01:39.06957
3642	Post	80	77	f	2023-10-20 10:01:39.082667	2023-10-20 10:01:39.082667
3643	Post	80	78	f	2023-10-20 10:01:39.095486	2023-10-20 10:01:39.095486
3644	Post	80	79	f	2023-10-20 10:01:39.10742	2023-10-20 10:01:39.10742
3645	Post	80	80	f	2023-10-20 10:01:39.119669	2023-10-20 10:01:39.119669
3646	Post	80	81	f	2023-10-20 10:01:39.131433	2023-10-20 10:01:39.131433
3647	Post	80	87	f	2023-10-20 10:01:39.143924	2023-10-20 10:01:39.143924
3648	Post	80	84	f	2023-10-20 10:01:39.154721	2023-10-20 10:01:39.154721
3649	Post	80	85	f	2023-10-20 10:01:39.16745	2023-10-20 10:01:39.16745
3650	Post	80	86	f	2023-10-20 10:01:39.179712	2023-10-20 10:01:39.179712
3651	Post	80	88	f	2023-10-20 10:01:39.192448	2023-10-20 10:01:39.192448
3652	Post	80	90	f	2023-10-20 10:01:39.202569	2023-10-20 10:01:39.202569
3653	Post	80	95	f	2023-10-20 10:01:39.214278	2023-10-20 10:01:39.214278
3654	Post	80	93	f	2023-10-20 10:01:39.225623	2023-10-20 10:01:39.225623
3655	Post	80	94	f	2023-10-20 10:01:39.237028	2023-10-20 10:01:39.237028
3656	Post	80	96	f	2023-10-20 10:01:39.248698	2023-10-20 10:01:39.248698
3657	Post	80	97	f	2023-10-20 10:01:39.260995	2023-10-20 10:01:39.260995
3658	Post	80	98	f	2023-10-20 10:01:39.271931	2023-10-20 10:01:39.271931
3854	Comment	29	46	f	2023-10-20 10:26:45.25841	2023-10-20 10:26:45.25841
3855	Comment	29	47	f	2023-10-20 10:26:45.27008	2023-10-20 10:26:45.27008
3856	Comment	29	48	f	2023-10-20 10:26:45.280257	2023-10-20 10:26:45.280257
3857	Comment	29	49	f	2023-10-20 10:26:45.292132	2023-10-20 10:26:45.292132
3858	Comment	29	51	f	2023-10-20 10:26:45.302859	2023-10-20 10:26:45.302859
3859	Comment	29	53	f	2023-10-20 10:26:45.313486	2023-10-20 10:26:45.313486
3860	Comment	29	54	f	2023-10-20 10:26:45.324216	2023-10-20 10:26:45.324216
3861	Comment	29	55	f	2023-10-20 10:26:45.335771	2023-10-20 10:26:45.335771
3862	Comment	29	56	f	2023-10-20 10:26:45.344978	2023-10-20 10:26:45.344978
3863	Comment	29	57	f	2023-10-20 10:26:45.357403	2023-10-20 10:26:45.357403
3864	Comment	29	58	f	2023-10-20 10:26:45.370042	2023-10-20 10:26:45.370042
3865	Comment	29	60	f	2023-10-20 10:26:45.383558	2023-10-20 10:26:45.383558
3866	Comment	29	61	f	2023-10-20 10:26:45.396666	2023-10-20 10:26:45.396666
3867	Comment	29	62	f	2023-10-20 10:26:45.408522	2023-10-20 10:26:45.408522
3868	Comment	29	63	f	2023-10-20 10:26:45.419708	2023-10-20 10:26:45.419708
3869	Comment	29	64	f	2023-10-20 10:26:45.431666	2023-10-20 10:26:45.431666
3870	Comment	29	65	f	2023-10-20 10:26:45.44259	2023-10-20 10:26:45.44259
3871	Comment	29	68	f	2023-10-20 10:26:45.454797	2023-10-20 10:26:45.454797
3872	Comment	29	69	f	2023-10-20 10:26:45.464562	2023-10-20 10:26:45.464562
3873	Comment	29	70	f	2023-10-20 10:26:45.481318	2023-10-20 10:26:45.481318
3874	Comment	29	71	f	2023-10-20 10:26:45.520827	2023-10-20 10:26:45.520827
3875	Comment	29	72	f	2023-10-20 10:26:45.532611	2023-10-20 10:26:45.532611
3876	Comment	29	73	f	2023-10-20 10:26:45.542678	2023-10-20 10:26:45.542678
3877	Comment	29	76	f	2023-10-20 10:26:45.555012	2023-10-20 10:26:45.555012
3878	Comment	29	77	f	2023-10-20 10:26:45.565814	2023-10-20 10:26:45.565814
3879	Comment	29	78	f	2023-10-20 10:26:45.576581	2023-10-20 10:26:45.576581
3880	Comment	29	79	f	2023-10-20 10:26:45.587507	2023-10-20 10:26:45.587507
3881	Comment	29	80	f	2023-10-20 10:26:45.599022	2023-10-20 10:26:45.599022
3882	Comment	29	81	f	2023-10-20 10:26:45.608505	2023-10-20 10:26:45.608505
3883	Comment	29	87	f	2023-10-20 10:26:45.621053	2023-10-20 10:26:45.621053
3884	Comment	29	84	f	2023-10-20 10:26:45.632914	2023-10-20 10:26:45.632914
3885	Comment	29	85	f	2023-10-20 10:26:45.641888	2023-10-20 10:26:45.641888
3886	Comment	29	86	f	2023-10-20 10:26:45.653713	2023-10-20 10:26:45.653713
3887	Comment	29	88	f	2023-10-20 10:26:45.664623	2023-10-20 10:26:45.664623
3888	Comment	29	90	f	2023-10-20 10:26:45.675385	2023-10-20 10:26:45.675385
3889	Comment	29	95	f	2023-10-20 10:26:45.686429	2023-10-20 10:26:45.686429
3659	Like	47	109	f	2023-10-20 10:08:28.406527	2023-10-20 10:08:28.406527
3660	Like	47	114	f	2023-10-20 10:08:28.41759	2023-10-20 10:08:28.41759
3111	Post	77	1	t	2023-10-20 05:33:34.980922	2023-10-20 08:31:57.397425
3661	Like	47	3	f	2023-10-20 10:08:28.429418	2023-10-20 10:08:28.429418
3662	Like	47	4	f	2023-10-20 10:08:28.43994	2023-10-20 10:08:28.43994
3663	Like	47	30	f	2023-10-20 10:08:28.451677	2023-10-20 10:08:28.451677
3664	Like	47	102	f	2023-10-20 10:08:28.461516	2023-10-20 10:08:28.461516
3665	Like	47	40	f	2023-10-20 10:08:28.472959	2023-10-20 10:08:28.472959
3666	Like	47	108	f	2023-10-20 10:08:28.482037	2023-10-20 10:08:28.482037
3667	Like	47	50	f	2023-10-20 10:08:28.49314	2023-10-20 10:08:28.49314
3668	Like	47	100	f	2023-10-20 10:08:28.503751	2023-10-20 10:08:28.503751
3669	Like	47	116	f	2023-10-20 10:08:28.514153	2023-10-20 10:08:28.514153
3670	Like	47	52	f	2023-10-20 10:08:28.523192	2023-10-20 10:08:28.523192
3671	Like	47	117	f	2023-10-20 10:08:28.533086	2023-10-20 10:08:28.533086
3672	Like	47	103	f	2023-10-20 10:08:28.543026	2023-10-20 10:08:28.543026
3673	Like	47	110	f	2023-10-20 10:08:28.552548	2023-10-20 10:08:28.552548
3674	Like	47	10	f	2023-10-20 10:08:28.561353	2023-10-20 10:08:28.561353
3675	Like	47	115	f	2023-10-20 10:08:28.571025	2023-10-20 10:08:28.571025
3676	Like	47	118	f	2023-10-20 10:08:28.579769	2023-10-20 10:08:28.579769
3677	Like	47	106	f	2023-10-20 10:08:28.589508	2023-10-20 10:08:28.589508
3678	Like	47	18	f	2023-10-20 10:08:28.598212	2023-10-20 10:08:28.598212
3679	Like	47	19	f	2023-10-20 10:08:28.607861	2023-10-20 10:08:28.607861
3680	Like	47	26	f	2023-10-20 10:08:28.616508	2023-10-20 10:08:28.616508
3681	Like	47	27	f	2023-10-20 10:08:28.625866	2023-10-20 10:08:28.625866
3682	Like	47	66	f	2023-10-20 10:08:28.634204	2023-10-20 10:08:28.634204
3683	Like	47	111	f	2023-10-20 10:08:28.644103	2023-10-20 10:08:28.644103
3684	Like	47	104	f	2023-10-20 10:08:28.652794	2023-10-20 10:08:28.652794
3685	Like	47	59	f	2023-10-20 10:08:28.662259	2023-10-20 10:08:28.662259
3686	Like	47	2	f	2023-10-20 10:08:28.671481	2023-10-20 10:08:28.671481
3687	Like	47	67	f	2023-10-20 10:08:28.681344	2023-10-20 10:08:28.681344
3688	Like	47	74	f	2023-10-20 10:08:28.689789	2023-10-20 10:08:28.689789
3689	Like	47	75	f	2023-10-20 10:08:28.699842	2023-10-20 10:08:28.699842
3690	Like	47	82	f	2023-10-20 10:08:28.708293	2023-10-20 10:08:28.708293
3691	Like	47	83	f	2023-10-20 10:08:28.717883	2023-10-20 10:08:28.717883
3692	Like	47	91	f	2023-10-20 10:08:28.726562	2023-10-20 10:08:28.726562
3693	Like	47	92	f	2023-10-20 10:08:28.736183	2023-10-20 10:08:28.736183
3694	Like	47	99	f	2023-10-20 10:08:28.744847	2023-10-20 10:08:28.744847
3695	Like	47	105	f	2023-10-20 10:08:28.755043	2023-10-20 10:08:28.755043
3696	Like	47	101	f	2023-10-20 10:08:28.764622	2023-10-20 10:08:28.764622
3697	Like	47	112	f	2023-10-20 10:08:28.774592	2023-10-20 10:08:28.774592
3698	Like	47	107	f	2023-10-20 10:08:28.783565	2023-10-20 10:08:28.783565
3699	Like	47	113	f	2023-10-20 10:08:28.793398	2023-10-20 10:08:28.793398
3700	Like	47	89	f	2023-10-20 10:08:28.803901	2023-10-20 10:08:28.803901
3701	Like	47	1	f	2023-10-20 10:08:28.813837	2023-10-20 10:08:28.813837
3702	Like	47	5	f	2023-10-20 10:08:28.822646	2023-10-20 10:08:28.822646
3703	Like	47	6	f	2023-10-20 10:08:28.832935	2023-10-20 10:08:28.832935
3704	Like	47	7	f	2023-10-20 10:08:28.842692	2023-10-20 10:08:28.842692
3705	Like	47	8	f	2023-10-20 10:08:28.854607	2023-10-20 10:08:28.854607
3706	Like	47	9	f	2023-10-20 10:08:28.864594	2023-10-20 10:08:28.864594
3707	Like	47	11	f	2023-10-20 10:08:28.87841	2023-10-20 10:08:28.87841
3708	Like	47	15	f	2023-10-20 10:08:28.888148	2023-10-20 10:08:28.888148
3709	Like	47	12	f	2023-10-20 10:08:28.898629	2023-10-20 10:08:28.898629
3710	Like	47	13	f	2023-10-20 10:08:28.909236	2023-10-20 10:08:28.909236
3711	Like	47	14	f	2023-10-20 10:08:28.921764	2023-10-20 10:08:28.921764
3712	Like	47	16	f	2023-10-20 10:08:28.931755	2023-10-20 10:08:28.931755
3713	Like	47	17	f	2023-10-20 10:08:28.942548	2023-10-20 10:08:28.942548
3714	Like	47	25	f	2023-10-20 10:08:28.953143	2023-10-20 10:08:28.953143
3715	Like	47	22	f	2023-10-20 10:08:28.964085	2023-10-20 10:08:28.964085
3716	Like	47	21	f	2023-10-20 10:08:28.973718	2023-10-20 10:08:28.973718
3717	Like	47	20	f	2023-10-20 10:08:28.98427	2023-10-20 10:08:28.98427
3718	Like	47	23	f	2023-10-20 10:08:28.994046	2023-10-20 10:08:28.994046
3719	Like	47	24	f	2023-10-20 10:08:29.004648	2023-10-20 10:08:29.004648
3720	Like	47	32	f	2023-10-20 10:08:29.016374	2023-10-20 10:08:29.016374
3721	Like	47	28	f	2023-10-20 10:08:29.027503	2023-10-20 10:08:29.027503
3722	Like	47	29	f	2023-10-20 10:08:29.037125	2023-10-20 10:08:29.037125
3723	Like	47	31	f	2023-10-20 10:08:29.047576	2023-10-20 10:08:29.047576
3724	Like	47	33	f	2023-10-20 10:08:29.056711	2023-10-20 10:08:29.056711
3725	Like	47	34	f	2023-10-20 10:08:29.06743	2023-10-20 10:08:29.06743
3726	Like	47	35	f	2023-10-20 10:08:29.076789	2023-10-20 10:08:29.076789
3727	Like	47	36	f	2023-10-20 10:08:29.087035	2023-10-20 10:08:29.087035
3728	Like	47	37	f	2023-10-20 10:08:29.096898	2023-10-20 10:08:29.096898
3729	Like	47	38	f	2023-10-20 10:08:29.10686	2023-10-20 10:08:29.10686
3730	Like	47	39	f	2023-10-20 10:08:29.115834	2023-10-20 10:08:29.115834
3731	Like	47	41	f	2023-10-20 10:08:29.12766	2023-10-20 10:08:29.12766
3732	Like	47	42	f	2023-10-20 10:08:29.137607	2023-10-20 10:08:29.137607
3733	Like	47	43	f	2023-10-20 10:08:29.148621	2023-10-20 10:08:29.148621
3734	Like	47	44	f	2023-10-20 10:08:29.159287	2023-10-20 10:08:29.159287
3735	Like	47	45	f	2023-10-20 10:08:29.17096	2023-10-20 10:08:29.17096
3736	Like	47	46	f	2023-10-20 10:08:29.181357	2023-10-20 10:08:29.181357
3737	Like	47	47	f	2023-10-20 10:08:29.192539	2023-10-20 10:08:29.192539
3738	Like	47	48	f	2023-10-20 10:08:29.203943	2023-10-20 10:08:29.203943
3739	Like	47	49	f	2023-10-20 10:08:29.215757	2023-10-20 10:08:29.215757
3740	Like	47	51	f	2023-10-20 10:08:29.225146	2023-10-20 10:08:29.225146
3741	Like	47	53	f	2023-10-20 10:08:29.23678	2023-10-20 10:08:29.23678
3742	Like	47	54	f	2023-10-20 10:08:29.24738	2023-10-20 10:08:29.24738
3743	Like	47	55	f	2023-10-20 10:08:29.257451	2023-10-20 10:08:29.257451
3744	Like	47	56	f	2023-10-20 10:08:29.269294	2023-10-20 10:08:29.269294
3745	Like	47	57	f	2023-10-20 10:08:29.279992	2023-10-20 10:08:29.279992
3746	Like	47	58	f	2023-10-20 10:08:29.291638	2023-10-20 10:08:29.291638
3747	Like	47	60	f	2023-10-20 10:08:29.301719	2023-10-20 10:08:29.301719
3748	Like	47	61	f	2023-10-20 10:08:29.313092	2023-10-20 10:08:29.313092
3749	Like	47	62	f	2023-10-20 10:08:29.323969	2023-10-20 10:08:29.323969
3750	Like	47	63	f	2023-10-20 10:08:29.334669	2023-10-20 10:08:29.334669
3751	Like	47	64	f	2023-10-20 10:08:29.346145	2023-10-20 10:08:29.346145
3752	Like	47	65	f	2023-10-20 10:08:29.357567	2023-10-20 10:08:29.357567
3753	Like	47	68	f	2023-10-20 10:08:29.368306	2023-10-20 10:08:29.368306
3754	Like	47	69	f	2023-10-20 10:08:29.380732	2023-10-20 10:08:29.380732
3755	Like	47	70	f	2023-10-20 10:08:29.391885	2023-10-20 10:08:29.391885
3756	Like	47	71	f	2023-10-20 10:08:29.4039	2023-10-20 10:08:29.4039
3757	Like	47	72	f	2023-10-20 10:08:29.414155	2023-10-20 10:08:29.414155
3758	Like	47	73	f	2023-10-20 10:08:29.4257	2023-10-20 10:08:29.4257
3759	Like	47	76	f	2023-10-20 10:08:29.435003	2023-10-20 10:08:29.435003
3760	Like	47	77	f	2023-10-20 10:08:29.448292	2023-10-20 10:08:29.448292
3761	Like	47	78	f	2023-10-20 10:08:29.458946	2023-10-20 10:08:29.458946
3762	Like	47	79	f	2023-10-20 10:08:29.469297	2023-10-20 10:08:29.469297
3763	Like	47	80	f	2023-10-20 10:08:29.47955	2023-10-20 10:08:29.47955
3764	Like	47	81	f	2023-10-20 10:08:29.49205	2023-10-20 10:08:29.49205
3765	Like	47	87	f	2023-10-20 10:08:29.502052	2023-10-20 10:08:29.502052
3766	Like	47	84	f	2023-10-20 10:08:29.516757	2023-10-20 10:08:29.516757
3767	Like	47	85	f	2023-10-20 10:08:29.530381	2023-10-20 10:08:29.530381
3768	Like	47	86	f	2023-10-20 10:08:29.552422	2023-10-20 10:08:29.552422
3769	Like	47	88	f	2023-10-20 10:08:29.563664	2023-10-20 10:08:29.563664
3770	Like	47	90	f	2023-10-20 10:08:29.577356	2023-10-20 10:08:29.577356
3771	Like	47	95	f	2023-10-20 10:08:29.591745	2023-10-20 10:08:29.591745
3772	Like	47	93	f	2023-10-20 10:08:29.608664	2023-10-20 10:08:29.608664
3773	Like	47	94	f	2023-10-20 10:08:29.623484	2023-10-20 10:08:29.623484
3774	Like	47	96	f	2023-10-20 10:08:29.647616	2023-10-20 10:08:29.647616
3775	Like	47	97	f	2023-10-20 10:08:29.674712	2023-10-20 10:08:29.674712
3776	Like	47	98	f	2023-10-20 10:08:29.683717	2023-10-20 10:08:29.683717
3890	Comment	29	93	f	2023-10-20 10:26:45.696751	2023-10-20 10:26:45.696751
3891	Comment	29	94	f	2023-10-20 10:26:45.714028	2023-10-20 10:26:45.714028
3892	Comment	29	96	f	2023-10-20 10:26:45.727467	2023-10-20 10:26:45.727467
3893	Comment	29	97	f	2023-10-20 10:26:45.738496	2023-10-20 10:26:45.738496
3894	Comment	29	98	f	2023-10-20 10:26:45.750144	2023-10-20 10:26:45.750144
3777	Comment	29	109	f	2023-10-20 10:26:44.382403	2023-10-20 10:26:44.382403
3778	Comment	29	114	f	2023-10-20 10:26:44.39852	2023-10-20 10:26:44.39852
3779	Comment	29	3	f	2023-10-20 10:26:44.412524	2023-10-20 10:26:44.412524
3780	Comment	29	4	f	2023-10-20 10:26:44.42376	2023-10-20 10:26:44.42376
3781	Comment	29	30	f	2023-10-20 10:26:44.437334	2023-10-20 10:26:44.437334
3782	Comment	29	102	f	2023-10-20 10:26:44.447257	2023-10-20 10:26:44.447257
3069	Post	77	109	f	2023-10-20 05:33:34.556429	2023-10-20 05:33:34.556429
3070	Post	77	114	f	2023-10-20 05:33:34.567505	2023-10-20 05:33:34.567505
3071	Post	77	3	f	2023-10-20 05:33:34.5773	2023-10-20 05:33:34.5773
3072	Post	77	4	f	2023-10-20 05:33:34.589053	2023-10-20 05:33:34.589053
3073	Post	77	30	f	2023-10-20 05:33:34.599957	2023-10-20 05:33:34.599957
3074	Post	77	102	f	2023-10-20 05:33:34.611264	2023-10-20 05:33:34.611264
3075	Post	77	40	f	2023-10-20 05:33:34.622076	2023-10-20 05:33:34.622076
3076	Post	77	108	f	2023-10-20 05:33:34.632949	2023-10-20 05:33:34.632949
3077	Post	77	50	f	2023-10-20 05:33:34.643234	2023-10-20 05:33:34.643234
3078	Post	77	100	f	2023-10-20 05:33:34.655053	2023-10-20 05:33:34.655053
3079	Post	77	116	f	2023-10-20 05:33:34.664465	2023-10-20 05:33:34.664465
3080	Post	77	52	f	2023-10-20 05:33:34.676393	2023-10-20 05:33:34.676393
3081	Post	77	117	f	2023-10-20 05:33:34.686729	2023-10-20 05:33:34.686729
3082	Post	77	103	f	2023-10-20 05:33:34.698035	2023-10-20 05:33:34.698035
3083	Post	77	110	f	2023-10-20 05:33:34.707925	2023-10-20 05:33:34.707925
3084	Post	77	10	f	2023-10-20 05:33:34.718772	2023-10-20 05:33:34.718772
3085	Post	77	115	f	2023-10-20 05:33:34.728264	2023-10-20 05:33:34.728264
3086	Post	77	118	f	2023-10-20 05:33:34.738815	2023-10-20 05:33:34.738815
3087	Post	77	106	f	2023-10-20 05:33:34.748286	2023-10-20 05:33:34.748286
3088	Post	77	18	f	2023-10-20 05:33:34.758744	2023-10-20 05:33:34.758744
3089	Post	77	19	f	2023-10-20 05:33:34.767884	2023-10-20 05:33:34.767884
3090	Post	77	26	f	2023-10-20 05:33:34.778427	2023-10-20 05:33:34.778427
3091	Post	77	27	f	2023-10-20 05:33:34.787713	2023-10-20 05:33:34.787713
3092	Post	77	66	f	2023-10-20 05:33:34.797773	2023-10-20 05:33:34.797773
3093	Post	77	111	f	2023-10-20 05:33:34.806898	2023-10-20 05:33:34.806898
3094	Post	77	104	f	2023-10-20 05:33:34.817111	2023-10-20 05:33:34.817111
3095	Post	77	59	f	2023-10-20 05:33:34.826396	2023-10-20 05:33:34.826396
3096	Post	77	2	f	2023-10-20 05:33:34.836522	2023-10-20 05:33:34.836522
3097	Post	77	67	f	2023-10-20 05:33:34.845852	2023-10-20 05:33:34.845852
3098	Post	77	74	f	2023-10-20 05:33:34.855863	2023-10-20 05:33:34.855863
3099	Post	77	75	f	2023-10-20 05:33:34.865158	2023-10-20 05:33:34.865158
3100	Post	77	82	f	2023-10-20 05:33:34.875701	2023-10-20 05:33:34.875701
3101	Post	77	83	f	2023-10-20 05:33:34.885277	2023-10-20 05:33:34.885277
3102	Post	77	91	f	2023-10-20 05:33:34.895635	2023-10-20 05:33:34.895635
3103	Post	77	92	f	2023-10-20 05:33:34.905138	2023-10-20 05:33:34.905138
3104	Post	77	99	f	2023-10-20 05:33:34.915456	2023-10-20 05:33:34.915456
3105	Post	77	105	f	2023-10-20 05:33:34.924313	2023-10-20 05:33:34.924313
3106	Post	77	101	f	2023-10-20 05:33:34.934254	2023-10-20 05:33:34.934254
3107	Post	77	112	f	2023-10-20 05:33:34.943058	2023-10-20 05:33:34.943058
3108	Post	77	107	f	2023-10-20 05:33:34.952987	2023-10-20 05:33:34.952987
3109	Post	77	113	f	2023-10-20 05:33:34.962007	2023-10-20 05:33:34.962007
3110	Post	77	89	f	2023-10-20 05:33:34.971928	2023-10-20 05:33:34.971928
3783	Comment	29	40	f	2023-10-20 10:26:44.460446	2023-10-20 10:26:44.460446
3112	Post	77	5	f	2023-10-20 05:33:34.990824	2023-10-20 05:33:34.990824
3113	Post	77	6	f	2023-10-20 05:33:34.999651	2023-10-20 05:33:34.999651
3114	Post	77	7	f	2023-10-20 05:33:35.009889	2023-10-20 05:33:35.009889
3115	Post	77	8	f	2023-10-20 05:33:35.019616	2023-10-20 05:33:35.019616
3116	Post	77	9	f	2023-10-20 05:33:35.030423	2023-10-20 05:33:35.030423
3117	Post	77	11	f	2023-10-20 05:33:35.040313	2023-10-20 05:33:35.040313
3118	Post	77	15	f	2023-10-20 05:33:35.052763	2023-10-20 05:33:35.052763
3119	Post	77	12	f	2023-10-20 05:33:35.06523	2023-10-20 05:33:35.06523
3120	Post	77	13	f	2023-10-20 05:33:35.076462	2023-10-20 05:33:35.076462
3121	Post	77	14	f	2023-10-20 05:33:35.089455	2023-10-20 05:33:35.089455
3122	Post	77	16	f	2023-10-20 05:33:35.10039	2023-10-20 05:33:35.10039
3123	Post	77	17	f	2023-10-20 05:33:35.113376	2023-10-20 05:33:35.113376
3124	Post	77	25	f	2023-10-20 05:33:35.12451	2023-10-20 05:33:35.12451
3125	Post	77	22	f	2023-10-20 05:33:35.135731	2023-10-20 05:33:35.135731
3126	Post	77	21	f	2023-10-20 05:33:35.149534	2023-10-20 05:33:35.149534
3127	Post	77	20	f	2023-10-20 05:33:35.160538	2023-10-20 05:33:35.160538
3128	Post	77	23	f	2023-10-20 05:33:35.173836	2023-10-20 05:33:35.173836
3129	Post	77	24	f	2023-10-20 05:33:35.185953	2023-10-20 05:33:35.185953
3130	Post	77	32	f	2023-10-20 05:33:35.198635	2023-10-20 05:33:35.198635
3131	Post	77	28	f	2023-10-20 05:33:35.20832	2023-10-20 05:33:35.20832
3132	Post	77	29	f	2023-10-20 05:33:35.224122	2023-10-20 05:33:35.224122
3133	Post	77	31	f	2023-10-20 05:33:35.235798	2023-10-20 05:33:35.235798
3134	Post	77	33	f	2023-10-20 05:33:35.248245	2023-10-20 05:33:35.248245
3135	Post	77	34	f	2023-10-20 05:33:35.257895	2023-10-20 05:33:35.257895
3136	Post	77	35	f	2023-10-20 05:33:35.273911	2023-10-20 05:33:35.273911
3137	Post	77	36	f	2023-10-20 05:33:35.285968	2023-10-20 05:33:35.285968
3138	Post	77	37	f	2023-10-20 05:33:35.298617	2023-10-20 05:33:35.298617
3139	Post	77	38	f	2023-10-20 05:33:35.308771	2023-10-20 05:33:35.308771
3140	Post	77	39	f	2023-10-20 05:33:35.321665	2023-10-20 05:33:35.321665
3141	Post	77	41	f	2023-10-20 05:33:35.333513	2023-10-20 05:33:35.333513
3142	Post	77	42	f	2023-10-20 05:33:35.346879	2023-10-20 05:33:35.346879
3143	Post	77	43	f	2023-10-20 05:33:35.357364	2023-10-20 05:33:35.357364
3144	Post	77	44	f	2023-10-20 05:33:35.370324	2023-10-20 05:33:35.370324
3145	Post	77	45	f	2023-10-20 05:33:35.383246	2023-10-20 05:33:35.383246
3146	Post	77	46	f	2023-10-20 05:33:35.394367	2023-10-20 05:33:35.394367
3147	Post	77	47	f	2023-10-20 05:33:35.405699	2023-10-20 05:33:35.405699
3148	Post	77	48	f	2023-10-20 05:33:35.417032	2023-10-20 05:33:35.417032
3149	Post	77	49	f	2023-10-20 05:33:35.427794	2023-10-20 05:33:35.427794
3150	Post	77	51	f	2023-10-20 05:33:35.439809	2023-10-20 05:33:35.439809
3151	Post	77	53	f	2023-10-20 05:33:35.45147	2023-10-20 05:33:35.45147
3152	Post	77	54	f	2023-10-20 05:33:35.463714	2023-10-20 05:33:35.463714
3153	Post	77	55	f	2023-10-20 05:33:35.473854	2023-10-20 05:33:35.473854
3154	Post	77	56	f	2023-10-20 05:33:35.48599	2023-10-20 05:33:35.48599
3155	Post	77	57	f	2023-10-20 05:33:35.497763	2023-10-20 05:33:35.497763
3156	Post	77	58	f	2023-10-20 05:33:35.508652	2023-10-20 05:33:35.508652
3157	Post	77	60	f	2023-10-20 05:33:35.519961	2023-10-20 05:33:35.519961
3158	Post	77	61	f	2023-10-20 05:33:35.543371	2023-10-20 05:33:35.543371
3159	Post	77	62	f	2023-10-20 05:33:35.556359	2023-10-20 05:33:35.556359
3160	Post	77	63	f	2023-10-20 05:33:35.569423	2023-10-20 05:33:35.569423
3161	Post	77	64	f	2023-10-20 05:33:35.581525	2023-10-20 05:33:35.581525
3162	Post	77	65	f	2023-10-20 05:33:35.59332	2023-10-20 05:33:35.59332
3163	Post	77	68	f	2023-10-20 05:33:35.606155	2023-10-20 05:33:35.606155
3164	Post	77	69	f	2023-10-20 05:33:35.618964	2023-10-20 05:33:35.618964
3165	Post	77	70	f	2023-10-20 05:33:35.628243	2023-10-20 05:33:35.628243
3166	Post	77	71	f	2023-10-20 05:33:35.639987	2023-10-20 05:33:35.639987
3167	Post	77	72	f	2023-10-20 05:33:35.651203	2023-10-20 05:33:35.651203
3168	Post	77	73	f	2023-10-20 05:33:35.662273	2023-10-20 05:33:35.662273
3169	Post	77	76	f	2023-10-20 05:33:35.672718	2023-10-20 05:33:35.672718
3170	Post	77	77	f	2023-10-20 05:33:35.685271	2023-10-20 05:33:35.685271
3171	Post	77	78	f	2023-10-20 05:33:35.696463	2023-10-20 05:33:35.696463
3172	Post	77	79	f	2023-10-20 05:33:35.708235	2023-10-20 05:33:35.708235
3173	Post	77	80	f	2023-10-20 05:33:35.720191	2023-10-20 05:33:35.720191
3174	Post	77	81	f	2023-10-20 05:33:35.732396	2023-10-20 05:33:35.732396
3175	Post	77	87	f	2023-10-20 05:33:35.7432	2023-10-20 05:33:35.7432
3176	Post	77	84	f	2023-10-20 05:33:35.756553	2023-10-20 05:33:35.756553
3177	Post	77	85	f	2023-10-20 05:33:35.768543	2023-10-20 05:33:35.768543
3178	Post	77	86	f	2023-10-20 05:33:35.780325	2023-10-20 05:33:35.780325
3179	Post	77	88	f	2023-10-20 05:33:35.792342	2023-10-20 05:33:35.792342
3180	Post	77	90	f	2023-10-20 05:33:35.804906	2023-10-20 05:33:35.804906
3181	Post	77	95	f	2023-10-20 05:33:35.819577	2023-10-20 05:33:35.819577
3182	Post	77	93	f	2023-10-20 05:33:35.833003	2023-10-20 05:33:35.833003
3183	Post	77	94	f	2023-10-20 05:33:35.84397	2023-10-20 05:33:35.84397
3184	Post	77	96	f	2023-10-20 05:33:35.855719	2023-10-20 05:33:35.855719
3185	Post	77	97	f	2023-10-20 05:33:35.867361	2023-10-20 05:33:35.867361
3186	Post	77	98	f	2023-10-20 05:33:35.8802	2023-10-20 05:33:35.8802
3784	Comment	29	108	f	2023-10-20 10:26:44.471804	2023-10-20 10:26:44.471804
3785	Comment	29	50	f	2023-10-20 10:26:44.488864	2023-10-20 10:26:44.488864
3786	Comment	29	100	f	2023-10-20 10:26:44.508737	2023-10-20 10:26:44.508737
3787	Comment	29	116	f	2023-10-20 10:26:44.519866	2023-10-20 10:26:44.519866
3788	Comment	29	52	f	2023-10-20 10:26:44.529187	2023-10-20 10:26:44.529187
3789	Comment	29	117	f	2023-10-20 10:26:44.539683	2023-10-20 10:26:44.539683
3790	Comment	29	103	f	2023-10-20 10:26:44.549633	2023-10-20 10:26:44.549633
3791	Comment	29	110	f	2023-10-20 10:26:44.559887	2023-10-20 10:26:44.559887
3792	Comment	29	10	f	2023-10-20 10:26:44.569413	2023-10-20 10:26:44.569413
3793	Comment	29	115	f	2023-10-20 10:26:44.580242	2023-10-20 10:26:44.580242
3794	Comment	29	118	f	2023-10-20 10:26:44.589307	2023-10-20 10:26:44.589307
3795	Comment	29	106	f	2023-10-20 10:26:44.599537	2023-10-20 10:26:44.599537
3796	Comment	29	18	f	2023-10-20 10:26:44.608694	2023-10-20 10:26:44.608694
3797	Comment	29	19	f	2023-10-20 10:26:44.619528	2023-10-20 10:26:44.619528
3798	Comment	29	26	f	2023-10-20 10:26:44.629166	2023-10-20 10:26:44.629166
3799	Comment	29	27	f	2023-10-20 10:26:44.639179	2023-10-20 10:26:44.639179
3800	Comment	29	66	f	2023-10-20 10:26:44.648285	2023-10-20 10:26:44.648285
3801	Comment	29	111	f	2023-10-20 10:26:44.658216	2023-10-20 10:26:44.658216
3802	Comment	29	104	f	2023-10-20 10:26:44.666953	2023-10-20 10:26:44.666953
3803	Comment	29	59	f	2023-10-20 10:26:44.67659	2023-10-20 10:26:44.67659
3804	Comment	29	2	f	2023-10-20 10:26:44.685255	2023-10-20 10:26:44.685255
3805	Comment	29	67	f	2023-10-20 10:26:44.695354	2023-10-20 10:26:44.695354
3806	Comment	29	74	f	2023-10-20 10:26:44.704691	2023-10-20 10:26:44.704691
3807	Comment	29	75	f	2023-10-20 10:26:44.715367	2023-10-20 10:26:44.715367
3808	Comment	29	82	f	2023-10-20 10:26:44.724622	2023-10-20 10:26:44.724622
3809	Comment	29	83	f	2023-10-20 10:26:44.734933	2023-10-20 10:26:44.734933
3810	Comment	29	91	f	2023-10-20 10:26:44.743947	2023-10-20 10:26:44.743947
3811	Comment	29	92	f	2023-10-20 10:26:44.753907	2023-10-20 10:26:44.753907
3812	Comment	29	99	f	2023-10-20 10:26:44.762828	2023-10-20 10:26:44.762828
3813	Comment	29	105	f	2023-10-20 10:26:44.772635	2023-10-20 10:26:44.772635
3814	Comment	29	101	f	2023-10-20 10:26:44.781474	2023-10-20 10:26:44.781474
3815	Comment	29	112	f	2023-10-20 10:26:44.79349	2023-10-20 10:26:44.79349
3816	Comment	29	107	f	2023-10-20 10:26:44.803902	2023-10-20 10:26:44.803902
3817	Comment	29	113	f	2023-10-20 10:26:44.814822	2023-10-20 10:26:44.814822
3818	Comment	29	89	f	2023-10-20 10:26:44.824239	2023-10-20 10:26:44.824239
3819	Comment	29	1	f	2023-10-20 10:26:44.83681	2023-10-20 10:26:44.83681
3820	Comment	29	5	f	2023-10-20 10:26:44.847341	2023-10-20 10:26:44.847341
3821	Comment	29	6	f	2023-10-20 10:26:44.857957	2023-10-20 10:26:44.857957
3822	Comment	29	7	f	2023-10-20 10:26:44.868508	2023-10-20 10:26:44.868508
3823	Comment	29	8	f	2023-10-20 10:26:44.879628	2023-10-20 10:26:44.879628
3824	Comment	29	9	f	2023-10-20 10:26:44.890481	2023-10-20 10:26:44.890481
3825	Comment	29	11	f	2023-10-20 10:26:44.902507	2023-10-20 10:26:44.902507
3826	Comment	29	15	f	2023-10-20 10:26:44.911987	2023-10-20 10:26:44.911987
3827	Comment	29	12	f	2023-10-20 10:26:44.923693	2023-10-20 10:26:44.923693
3828	Comment	29	13	f	2023-10-20 10:26:44.934256	2023-10-20 10:26:44.934256
3829	Comment	29	14	f	2023-10-20 10:26:44.944787	2023-10-20 10:26:44.944787
3830	Comment	29	16	f	2023-10-20 10:26:44.956142	2023-10-20 10:26:44.956142
3831	Comment	29	17	f	2023-10-20 10:26:44.969086	2023-10-20 10:26:44.969086
3832	Comment	29	25	f	2023-10-20 10:26:44.979299	2023-10-20 10:26:44.979299
3833	Comment	29	22	f	2023-10-20 10:26:44.991396	2023-10-20 10:26:44.991396
3834	Comment	29	21	f	2023-10-20 10:26:45.005156	2023-10-20 10:26:45.005156
3835	Comment	29	20	f	2023-10-20 10:26:45.018029	2023-10-20 10:26:45.018029
3836	Comment	29	23	f	2023-10-20 10:26:45.027773	2023-10-20 10:26:45.027773
3837	Comment	29	24	f	2023-10-20 10:26:45.039707	2023-10-20 10:26:45.039707
3838	Comment	29	32	f	2023-10-20 10:26:45.050628	2023-10-20 10:26:45.050628
3839	Comment	29	28	f	2023-10-20 10:26:45.061426	2023-10-20 10:26:45.061426
3840	Comment	29	29	f	2023-10-20 10:26:45.072427	2023-10-20 10:26:45.072427
3841	Comment	29	31	f	2023-10-20 10:26:45.085651	2023-10-20 10:26:45.085651
3842	Comment	29	33	f	2023-10-20 10:26:45.095907	2023-10-20 10:26:45.095907
3843	Comment	29	34	f	2023-10-20 10:26:45.107745	2023-10-20 10:26:45.107745
3844	Comment	29	35	f	2023-10-20 10:26:45.119484	2023-10-20 10:26:45.119484
3845	Comment	29	36	f	2023-10-20 10:26:45.131374	2023-10-20 10:26:45.131374
3846	Comment	29	37	f	2023-10-20 10:26:45.141963	2023-10-20 10:26:45.141963
3847	Comment	29	38	f	2023-10-20 10:26:45.161452	2023-10-20 10:26:45.161452
3848	Comment	29	39	f	2023-10-20 10:26:45.182496	2023-10-20 10:26:45.182496
3849	Comment	29	41	f	2023-10-20 10:26:45.199564	2023-10-20 10:26:45.199564
3850	Comment	29	42	f	2023-10-20 10:26:45.21111	2023-10-20 10:26:45.21111
3851	Comment	29	43	f	2023-10-20 10:26:45.223879	2023-10-20 10:26:45.223879
3852	Comment	29	44	f	2023-10-20 10:26:45.235518	2023-10-20 10:26:45.235518
3853	Comment	29	45	f	2023-10-20 10:26:45.247406	2023-10-20 10:26:45.247406
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.pages (id, title, content, industry, website, organization_size, organization_type, user_id, about, created_at, updated_at) FROM stdin;
2	Code By Brain	Converting The Life Into Digital	IT Service and IT Consulting		11-50 employees	Partnership	1	We are a tech startup name Code By Brain. We offer services like web development, custom software development, app development & so on. If you want to go online, need to get customers, transfer your physical business to digital, need to expand your business audience vast. Then we are right for you at a very reasonable price only. 	2023-10-18 11:57:43.120175	2023-10-19 06:24:32.16556
3	Precious Infosystem	Software Development Services Enabling Business Competence!!	IT Service and IT Consulting	precious_infosystem.info	51-200 employees	Private held	1	At Precious Infosystem, we are a leading global software development company dedicated to helping businesses achieve their goals through world-class, industry-specific software solutions. Our team of highly experienced professionals excels in providing cutting-edge web and mobile application development using AngularJS, ReactJS, NodeJS, Ruby on Rails, and various other JavaScript frameworks.\r\n\r\nAs an IT company headquartered in Indore, INDIA, we have been rapidly growing since our establishment in April 2015. Our focus is on fostering long-term partnerships with our clients, enabling them to seize new business opportunities, drive growth, and reduce costs. We take pride in delivering tailored software solutions that align with our client's unique requirements and industry standards.\r\n\r\nIn our quest for continuous expansion and success, we are actively seeking talented individuals to join our team. If you possess exceptional skills and a passion for software development, we offer a dynamic and rewarding work environment where you can thrive and contribute to innovative projects.\r\n\r\nAdditionally, we are currently exploring partnerships with potential sales associates in Europe, the US, Canada, Singapore, and Australia. If you are interested in collaborating with us and becoming our sales partner in these regions, we welcome the opportunity to connect and explore mutually beneficial prospects.\r\n\r\nChoose Precious Infosystem as your trusted IT consulting partner and gain access to top-tier software development services. Together, we can unlock new possibilities, drive your business forward, and create impactful solutions that cater to your specific needs.\r\n\r\nReach out to us today to explore how our expertise can elevate your business to new heights. Let's embark on a journey of growth and success together!	2023-10-18 12:00:49.082989	2023-10-19 06:25:25.200274
1	MaxCode IT Solutions Pvt. Ltd.	Top-Notch Website Development, E commerce Solutions, Mobile App Development & Digital Marketing Services.	IT Service and IT Consulting		11-50 employees	Sole Proprietorship	1	MaxCode IT Solutions Pvt. Ltd. is a full-service IT Company. Since the beginning, we have been helping our clients to achieve results online. We are known for Top-Notch Website Development, E-commerce Solutions, Mobile App Development & Digital Marketing Services. We create value for industries like Fin-tech, Healthcare, Ed-tech, Beauty, Travel, E-commerce, and more. When you hire us, you will be working with highly skilled professionals, who have been hand-picked for their expertise.	2023-10-18 11:21:08.12857	2023-10-19 11:15:55.184652
\.


--
-- Data for Name: post_visits; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.post_visits (id, post_id, user_id, created_at, updated_at) FROM stdin;
1	20	1	2023-09-13 11:58:57.072255	2023-09-13 11:58:57.072255
192	72	87	2023-10-10 12:29:16.63168	2023-10-10 12:29:16.63168
196	72	1	2023-10-10 13:44:06.364245	2023-10-10 13:44:06.364245
199	63	1	2023-10-11 07:07:18.577508	2023-10-11 07:07:18.577508
200	72	1	2023-10-11 07:07:45.835916	2023-10-11 07:07:45.835916
6	14	1	2023-09-15 08:18:39.954013	2023-09-15 08:18:39.954013
202	60	1	2023-10-11 07:35:32.560564	2023-10-11 07:35:32.560564
205	72	1	2023-10-12 10:00:30.127784	2023-10-12 10:00:30.127784
207	72	1	2023-10-12 12:34:27.644425	2023-10-12 12:34:27.644425
10	25	1	2023-09-18 08:47:56.66659	2023-09-18 08:47:56.66659
11	25	115	2023-09-22 11:37:44.141645	2023-09-22 11:37:44.141645
12	25	115	2023-09-22 11:38:11.67293	2023-09-22 11:38:11.67293
13	25	115	2023-09-22 11:42:44.873491	2023-09-22 11:42:44.873491
208	72	1	2023-10-12 12:45:56.166661	2023-10-12 12:45:56.166661
15	25	115	2023-09-22 12:44:23.679837	2023-09-22 12:44:23.679837
16	25	115	2023-09-22 12:44:32.403546	2023-09-22 12:44:32.403546
17	25	115	2023-09-22 12:44:50.736599	2023-09-22 12:44:50.736599
211	72	1	2023-10-12 13:10:51.355187	2023-10-12 13:10:51.355187
212	72	1	2023-10-12 13:11:08.769285	2023-10-12 13:11:08.769285
20	25	115	2023-09-22 12:51:07.334187	2023-09-22 12:51:07.334187
21	25	1	2023-09-23 04:58:33.919873	2023-09-23 04:58:33.919873
22	25	1	2023-09-23 06:46:22.628208	2023-09-23 06:46:22.628208
23	25	1	2023-09-23 06:46:51.100369	2023-09-23 06:46:51.100369
24	25	1	2023-09-23 06:51:01.043306	2023-09-23 06:51:01.043306
25	25	1	2023-09-23 07:14:48.502067	2023-09-23 07:14:48.502067
26	25	1	2023-09-23 07:18:10.084776	2023-09-23 07:18:10.084776
27	25	1	2023-09-23 07:19:36.899341	2023-09-23 07:19:36.899341
28	25	1	2023-09-23 07:19:46.876655	2023-09-23 07:19:46.876655
29	25	1	2023-09-23 07:20:09.165054	2023-09-23 07:20:09.165054
30	25	1	2023-09-23 07:21:31.412149	2023-09-23 07:21:31.412149
31	25	1	2023-09-23 07:25:14.493852	2023-09-23 07:25:14.493852
32	25	1	2023-09-23 07:26:06.12725	2023-09-23 07:26:06.12725
33	25	1	2023-09-23 12:15:12.985469	2023-09-23 12:15:12.985469
34	25	1	2023-09-23 12:15:27.401554	2023-09-23 12:15:27.401554
35	25	1	2023-09-25 07:40:13.425116	2023-09-25 07:40:13.425116
213	72	1	2023-10-12 13:12:12.319408	2023-10-12 13:12:12.319408
37	20	1	2023-09-25 07:40:20.998808	2023-09-25 07:40:20.998808
214	72	1	2023-10-12 13:13:12.155962	2023-10-12 13:13:12.155962
39	25	1	2023-09-25 07:42:07.010056	2023-09-25 07:42:07.010056
40	25	1	2023-09-25 07:42:10.22293	2023-09-25 07:42:10.22293
41	25	1	2023-09-25 07:42:25.038088	2023-09-25 07:42:25.038088
42	25	1	2023-09-25 07:42:26.216506	2023-09-25 07:42:26.216506
43	25	1	2023-09-25 07:43:18.434175	2023-09-25 07:43:18.434175
44	25	1	2023-09-25 07:43:23.397654	2023-09-25 07:43:23.397654
45	25	1	2023-09-25 07:43:27.470363	2023-09-25 07:43:27.470363
46	25	1	2023-09-25 07:48:45.882481	2023-09-25 07:48:45.882481
47	25	1	2023-09-25 07:48:57.42152	2023-09-25 07:48:57.42152
48	25	1	2023-09-25 07:49:00.995979	2023-09-25 07:49:00.995979
215	72	1	2023-10-12 13:17:44.169776	2023-10-12 13:17:44.169776
216	72	1	2023-10-12 13:18:24.628451	2023-10-12 13:18:24.628451
217	72	1	2023-10-12 13:18:37.048432	2023-10-12 13:18:37.048432
218	72	1	2023-10-12 13:18:45.603604	2023-10-12 13:18:45.603604
53	25	115	2023-09-25 08:38:34.626516	2023-09-25 08:38:34.626516
54	25	115	2023-09-25 08:38:36.695554	2023-09-25 08:38:36.695554
55	25	115	2023-09-25 08:38:38.594776	2023-09-25 08:38:38.594776
56	20	115	2023-09-25 10:22:56.053749	2023-09-25 10:22:56.053749
57	20	115	2023-09-25 10:58:02.719674	2023-09-25 10:58:02.719674
219	72	1	2023-10-12 13:19:06.008003	2023-10-12 13:19:06.008003
59	25	1	2023-09-26 08:31:33.509214	2023-09-26 08:31:33.509214
60	25	115	2023-09-27 14:00:57.100897	2023-09-27 14:00:57.100897
61	25	115	2023-09-27 14:01:08.77291	2023-09-27 14:01:08.77291
62	25	115	2023-09-27 14:01:22.307506	2023-09-27 14:01:22.307506
63	25	115	2023-09-27 14:01:36.621609	2023-09-27 14:01:36.621609
64	25	115	2023-09-27 14:02:06.088665	2023-09-27 14:02:06.088665
65	25	115	2023-09-27 14:11:41.596474	2023-09-27 14:11:41.596474
66	25	1	2023-09-27 14:14:54.77658	2023-09-27 14:14:54.77658
67	25	115	2023-09-27 14:17:58.706682	2023-09-27 14:17:58.706682
68	25	1	2023-09-27 14:24:30.062244	2023-09-27 14:24:30.062244
69	25	1	2023-09-27 14:24:45.53972	2023-09-27 14:24:45.53972
70	25	1	2023-09-27 14:25:03.099909	2023-09-27 14:25:03.099909
71	25	1	2023-09-27 14:25:12.046132	2023-09-27 14:25:12.046132
220	72	1	2023-10-12 13:19:22.888991	2023-10-12 13:19:22.888991
73	20	50	2023-09-27 15:23:36.038163	2023-09-27 15:23:36.038163
74	20	50	2023-09-27 15:23:43.355104	2023-09-27 15:23:43.355104
75	25	50	2023-09-27 15:24:13.07376	2023-09-27 15:24:13.07376
76	25	50	2023-09-27 15:24:24.000504	2023-09-27 15:24:24.000504
77	25	50	2023-09-27 15:24:32.132523	2023-09-27 15:24:32.132523
78	25	50	2023-09-27 15:24:54.373337	2023-09-27 15:24:54.373337
221	72	1	2023-10-12 13:19:50.023681	2023-10-12 13:19:50.023681
222	72	1	2023-10-12 13:19:58.459435	2023-10-12 13:19:58.459435
223	72	1	2023-10-12 13:20:43.000265	2023-10-12 13:20:43.000265
224	19	1	2023-10-12 13:21:31.789203	2023-10-12 13:21:31.789203
225	58	1	2023-10-13 04:00:59.968552	2023-10-13 04:00:59.968552
226	58	1	2023-10-13 04:01:09.8322	2023-10-13 04:01:09.8322
227	72	1	2023-10-13 04:01:54.612776	2023-10-13 04:01:54.612776
232	72	1	2023-10-13 07:18:44.606341	2023-10-13 07:18:44.606341
234	59	22	2023-10-13 10:36:16.896369	2023-10-13 10:36:16.896369
88	58	20	2023-09-28 07:30:30.036383	2023-09-28 07:30:30.036383
89	58	20	2023-09-28 07:30:37.647818	2023-09-28 07:30:37.647818
90	58	10	2023-09-28 07:31:03.716828	2023-09-28 07:31:03.716828
91	59	22	2023-09-28 08:29:01.545529	2023-09-28 08:29:01.545529
92	59	22	2023-09-28 08:29:10.27709	2023-09-28 08:29:10.27709
93	59	10	2023-09-28 08:29:43.470904	2023-09-28 08:29:43.470904
94	59	22	2023-09-28 08:30:00.364144	2023-09-28 08:30:00.364144
95	54	10	2023-09-28 08:32:03.652345	2023-09-28 08:32:03.652345
96	59	1	2023-09-28 08:48:28.784489	2023-09-28 08:48:28.784489
97	60	25	2023-09-28 09:18:15.492142	2023-09-28 09:18:15.492142
98	60	25	2023-09-28 09:18:25.871962	2023-09-28 09:18:25.871962
99	60	25	2023-09-28 09:18:48.213757	2023-09-28 09:18:48.213757
100	60	100	2023-09-28 09:20:04.000199	2023-09-28 09:20:04.000199
101	25	100	2023-09-28 09:20:12.041019	2023-09-28 09:20:12.041019
102	59	1	2023-09-28 09:32:13.921246	2023-09-28 09:32:13.921246
235	59	22	2023-10-13 10:36:30.564093	2023-10-13 10:36:30.564093
237	58	20	2023-10-13 11:34:28.511371	2023-10-13 11:34:28.511371
240	15	101	2023-10-13 11:40:36.74097	2023-10-13 11:40:36.74097
243	25	113	2023-10-13 11:45:56.683357	2023-10-13 11:45:56.683357
244	25	113	2023-10-13 11:46:41.342118	2023-10-13 11:46:41.342118
246	63	1	2023-10-16 08:12:58.636519	2023-10-16 08:12:58.636519
249	72	1	2023-10-16 10:14:20.325187	2023-10-16 10:14:20.325187
250	72	1	2023-10-16 10:14:24.147791	2023-10-16 10:14:24.147791
252	60	1	2023-10-17 08:29:21.073371	2023-10-17 08:29:21.073371
253	60	1	2023-10-17 08:29:47.48105	2023-10-17 08:29:47.48105
254	60	1	2023-10-17 08:29:56.270952	2023-10-17 08:29:56.270952
255	60	1	2023-10-17 08:30:02.622037	2023-10-17 08:30:02.622037
115	59	1	2023-09-28 12:07:22.580647	2023-09-28 12:07:22.580647
116	59	1	2023-09-28 12:07:39.183059	2023-09-28 12:07:39.183059
256	60	1	2023-10-17 08:30:13.529624	2023-10-17 08:30:13.529624
257	60	1	2023-10-17 08:30:34.048033	2023-10-17 08:30:34.048033
258	63	1	2023-10-17 08:32:05.987983	2023-10-17 08:32:05.987983
259	63	1	2023-10-17 08:32:24.54187	2023-10-17 08:32:24.54187
193	63	1	2023-10-10 13:13:08.48628	2023-10-10 13:13:08.48628
194	63	1	2023-10-10 13:13:13.958801	2023-10-10 13:13:13.958801
195	63	1	2023-10-10 13:20:00.099921	2023-10-10 13:20:00.099921
197	72	1	2023-10-11 07:03:40.983093	2023-10-11 07:03:40.983093
198	72	1	2023-10-11 07:03:50.101973	2023-10-11 07:03:50.101973
201	72	1	2023-10-11 07:15:30.596619	2023-10-11 07:15:30.596619
203	60	1	2023-10-11 09:46:39.222583	2023-10-11 09:46:39.222583
204	60	1	2023-10-11 09:46:57.091455	2023-10-11 09:46:57.091455
206	72	1	2023-10-12 12:21:21.80542	2023-10-12 12:21:21.80542
209	72	1	2023-10-12 12:56:24.23167	2023-10-12 12:56:24.23167
210	59	1	2023-10-12 12:57:42.190625	2023-10-12 12:57:42.190625
228	72	1	2023-10-13 06:01:32.878432	2023-10-13 06:01:32.878432
229	58	1	2023-10-13 06:11:06.130072	2023-10-13 06:11:06.130072
134	63	1	2023-09-28 12:57:33.00214	2023-09-28 12:57:33.00214
135	59	1	2023-10-02 10:32:48.660918	2023-10-02 10:32:48.660918
136	63	1	2023-10-02 13:00:42.105403	2023-10-02 13:00:42.105403
137	63	1	2023-10-02 13:00:42.27356	2023-10-02 13:00:42.27356
138	63	1	2023-10-02 13:01:06.474496	2023-10-02 13:01:06.474496
230	59	1	2023-10-13 06:14:07.933051	2023-10-13 06:14:07.933051
140	60	1	2023-10-03 06:57:21.336498	2023-10-03 06:57:21.336498
141	60	1	2023-10-03 06:57:27.434579	2023-10-03 06:57:27.434579
231	60	1	2023-10-13 06:21:33.171159	2023-10-13 06:21:33.171159
143	25	1	2023-10-04 05:33:30.328341	2023-10-04 05:33:30.328341
144	25	1	2023-10-04 05:33:34.553959	2023-10-04 05:33:34.553959
145	25	1	2023-10-04 05:34:53.07326	2023-10-04 05:34:53.07326
146	63	1	2023-10-04 09:07:26.587831	2023-10-04 09:07:26.587831
147	63	1	2023-10-04 09:10:01.048224	2023-10-04 09:10:01.048224
148	63	1	2023-10-04 09:10:24.542394	2023-10-04 09:10:24.542394
149	63	1	2023-10-04 09:17:32.092503	2023-10-04 09:17:32.092503
150	63	1	2023-10-04 09:39:10.018267	2023-10-04 09:39:10.018267
151	19	1	2023-10-05 06:24:24.055012	2023-10-05 06:24:24.055012
152	25	1	2023-10-05 06:24:34.195995	2023-10-05 06:24:34.195995
153	58	1	2023-10-05 06:36:20.785382	2023-10-05 06:36:20.785382
154	25	1	2023-10-05 06:37:56.453515	2023-10-05 06:37:56.453515
155	58	1	2023-10-05 06:38:14.84133	2023-10-05 06:38:14.84133
156	25	1	2023-10-05 06:42:05.755252	2023-10-05 06:42:05.755252
157	25	1	2023-10-05 06:43:02.081306	2023-10-05 06:43:02.081306
158	63	1	2023-10-05 06:44:39.694417	2023-10-05 06:44:39.694417
159	63	1	2023-10-05 06:44:49.107072	2023-10-05 06:44:49.107072
160	63	1	2023-10-05 06:46:44.398058	2023-10-05 06:46:44.398058
161	63	1	2023-10-05 06:48:11.991749	2023-10-05 06:48:11.991749
162	60	1	2023-10-05 06:48:20.032203	2023-10-05 06:48:20.032203
163	25	1	2023-10-05 09:44:02.503254	2023-10-05 09:44:02.503254
164	58	1	2023-10-05 12:14:16.28345	2023-10-05 12:14:16.28345
165	60	1	2023-10-05 12:14:21.767237	2023-10-05 12:14:21.767237
166	63	1	2023-10-05 13:15:35.471755	2023-10-05 13:15:35.471755
167	63	1	2023-10-05 13:17:54.663562	2023-10-05 13:17:54.663562
168	58	1	2023-10-06 03:34:03.05747	2023-10-06 03:34:03.05747
169	58	1	2023-10-06 03:34:07.591461	2023-10-06 03:34:07.591461
170	14	1	2023-10-06 09:00:34.257845	2023-10-06 09:00:34.257845
171	63	1	2023-10-06 11:46:31.913163	2023-10-06 11:46:31.913163
172	63	1	2023-10-06 11:46:37.844984	2023-10-06 11:46:37.844984
173	63	1	2023-10-06 11:46:43.454904	2023-10-06 11:46:43.454904
233	60	25	2023-10-13 10:30:15.002776	2023-10-13 10:30:15.002776
236	59	22	2023-10-13 10:36:42.000729	2023-10-13 10:36:42.000729
238	54	12	2023-10-13 11:37:18.320778	2023-10-13 11:37:18.320778
239	15	101	2023-10-13 11:40:13.630471	2023-10-13 11:40:13.630471
241	20	4	2023-10-13 11:42:17.98773	2023-10-13 11:42:17.98773
242	25	113	2023-10-13 11:45:44.661565	2023-10-13 11:45:44.661565
245	25	113	2023-10-13 11:46:57.756919	2023-10-13 11:46:57.756919
247	19	1	2023-10-16 09:04:52.051729	2023-10-16 09:04:52.051729
248	19	1	2023-10-16 09:10:00.02305	2023-10-16 09:10:00.02305
251	14	1	2023-10-16 12:22:28.582121	2023-10-16 12:22:28.582121
260	72	1	2023-10-17 08:35:03.369171	2023-10-17 08:35:03.369171
261	72	1	2023-10-17 08:38:36.437846	2023-10-17 08:38:36.437846
262	72	1	2023-10-17 08:38:59.300522	2023-10-17 08:38:59.300522
263	72	1	2023-10-17 08:39:19.213141	2023-10-17 08:39:19.213141
264	72	1	2023-10-17 08:39:50.696415	2023-10-17 08:39:50.696415
265	72	1	2023-10-17 08:40:36.774452	2023-10-17 08:40:36.774452
266	72	1	2023-10-17 08:40:55.313393	2023-10-17 08:40:55.313393
267	72	1	2023-10-17 08:41:06.506912	2023-10-17 08:41:06.506912
268	72	1	2023-10-17 08:41:24.137934	2023-10-17 08:41:24.137934
269	72	1	2023-10-17 08:41:35.919363	2023-10-17 08:41:35.919363
270	72	1	2023-10-17 08:41:46.437231	2023-10-17 08:41:46.437231
271	72	1	2023-10-17 08:41:49.089054	2023-10-17 08:41:49.089054
272	72	1	2023-10-17 08:41:52.31219	2023-10-17 08:41:52.31219
273	72	1	2023-10-17 08:41:59.24148	2023-10-17 08:41:59.24148
274	72	1	2023-10-17 08:42:03.403098	2023-10-17 08:42:03.403098
275	72	1	2023-10-17 08:42:13.381099	2023-10-17 08:42:13.381099
276	72	1	2023-10-17 08:42:53.901168	2023-10-17 08:42:53.901168
277	72	1	2023-10-17 08:43:01.263119	2023-10-17 08:43:01.263119
278	72	1	2023-10-17 08:43:09.513639	2023-10-17 08:43:09.513639
279	72	1	2023-10-17 08:43:21.685981	2023-10-17 08:43:21.685981
280	72	1	2023-10-17 08:43:50.862732	2023-10-17 08:43:50.862732
281	72	1	2023-10-17 08:44:04.080896	2023-10-17 08:44:04.080896
282	72	1	2023-10-17 08:44:12.277584	2023-10-17 08:44:12.277584
283	72	1	2023-10-17 08:44:22.842712	2023-10-17 08:44:22.842712
284	72	1	2023-10-17 08:44:32.034158	2023-10-17 08:44:32.034158
285	72	1	2023-10-17 08:44:38.393372	2023-10-17 08:44:38.393372
286	63	1	2023-10-17 08:44:52.772044	2023-10-17 08:44:52.772044
287	63	1	2023-10-17 08:46:20.481309	2023-10-17 08:46:20.481309
288	60	1	2023-10-17 08:46:41.556649	2023-10-17 08:46:41.556649
289	59	1	2023-10-17 08:46:53.163649	2023-10-17 08:46:53.163649
290	14	1	2023-10-17 08:46:58.872749	2023-10-17 08:46:58.872749
291	14	1	2023-10-17 08:48:42.687062	2023-10-17 08:48:42.687062
292	14	1	2023-10-17 08:49:06.02975	2023-10-17 08:49:06.02975
293	14	1	2023-10-17 08:49:15.967815	2023-10-17 08:49:15.967815
294	15	1	2023-10-17 09:07:13.534409	2023-10-17 09:07:13.534409
295	14	1	2023-10-17 09:13:22.353584	2023-10-17 09:13:22.353584
296	72	1	2023-10-17 09:16:23.187148	2023-10-17 09:16:23.187148
297	72	1	2023-10-17 09:16:30.919312	2023-10-17 09:16:30.919312
298	72	1	2023-10-17 09:16:46.296885	2023-10-17 09:16:46.296885
299	14	1	2023-10-17 09:44:00.127108	2023-10-17 09:44:00.127108
300	72	1	2023-10-17 10:24:31.875179	2023-10-17 10:24:31.875179
301	19	1	2023-10-17 10:36:02.572477	2023-10-17 10:36:02.572477
302	72	1	2023-10-17 10:36:09.165885	2023-10-17 10:36:09.165885
303	72	1	2023-10-17 11:19:08.552638	2023-10-17 11:19:08.552638
304	72	1	2023-10-17 11:33:48.159189	2023-10-17 11:33:48.159189
305	63	1	2023-10-17 11:42:05.046082	2023-10-17 11:42:05.046082
306	63	1	2023-10-17 12:05:50.311774	2023-10-17 12:05:50.311774
307	63	1	2023-10-17 13:04:36.815152	2023-10-17 13:04:36.815152
308	63	1	2023-10-18 06:22:24.732742	2023-10-18 06:22:24.732742
309	60	25	2023-10-18 06:24:50.594801	2023-10-18 06:24:50.594801
310	60	25	2023-10-18 06:25:07.810322	2023-10-18 06:25:07.810322
311	59	22	2023-10-18 06:27:36.10061	2023-10-18 06:27:36.10061
312	54	12	2023-10-18 06:30:38.331327	2023-10-18 06:30:38.331327
313	54	12	2023-10-18 06:31:00.593391	2023-10-18 06:31:00.593391
314	63	1	2023-10-19 07:37:08.265375	2023-10-19 07:37:08.265375
315	58	50	2023-10-19 09:38:13.283291	2023-10-19 09:38:13.283291
316	63	1	2023-10-19 09:41:37.527564	2023-10-19 09:41:37.527564
322	80	1	2023-10-20 10:26:40.649822	2023-10-20 10:26:40.649822
323	80	1	2023-10-20 10:26:45.787562	2023-10-20 10:26:45.787562
324	80	1	2023-10-20 10:26:52.140183	2023-10-20 10:26:52.140183
325	80	1	2023-10-20 10:43:24.95769	2023-10-20 10:43:24.95769
326	80	1	2023-10-20 10:49:00.791291	2023-10-20 10:49:00.791291
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.posts (id, title, description, user_id, created_at, updated_at, hidden, page_id) FROM stdin;
58	React	React (also known as React.js or ReactJS) is a free and open-source front-end JavaScript library for building user interfaces based on components. It is maintained by Meta (formerly Facebook) and a community of individual developers and companies.	20	2023-09-28 07:30:07.49542	2023-10-13 11:35:31.108723	f	\N
72	Real Time Notification System with Hotwire	Time ago i wrote an article here, on how to build a notifications system with Rails and Redis, from scratch. This new one it's a quick update of that one.\r\n\r\nIf you don't know what i'm talking about, and are curious on how to accomplish same thing without Hotwire, here you go:	1	2023-10-10 12:12:21.913844	2023-10-17 09:16:43.75017	f	\N
60	Php	PHP is a general-purpose scripting language geared towards web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1993 and released in 1995. The PHP reference implementation is now produced by the PHP Group.	25	2023-09-28 09:18:08.295803	2023-10-18 06:25:00.267121	f	\N
77	Chandrayaan-3ewhdkjahd	dasdsad	1	2023-10-20 05:33:34.534966	2023-10-20 05:38:03.122825	t	\N
20	Great Wall of China	The Great Wall of China is a series of fortifications that were built across the historical northern borders of ancient Chinese states and Imperial China as protection against various nomadic groups from the Eurasian Steppe.	4	2023-09-07 09:49:35.99038	2023-10-13 11:42:42.092489	f	\N
18	India Gate	At the centre of New Delhi stands the 42 m high India Gate, an “Arc-de-Triomphe” like archway in the middle of a crossroad. Almost similar to its French counterpart, it commemorates the 70,000 Indian soldiers who lost their lives fighting for the British Army during the World War I.	1	2023-09-06 11:20:51.260435	2023-10-11 09:49:43.391395	f	\N
25	Ruby on Rails	Ruby on Rails is used in all types of industries to build web apps and services. This includes applications like marketing websites, CMSs, eCommerce sites, and custom web applications. It's a popular web framework for startups because its ease of use makes for quick application development with small teams.	113	2023-09-18 08:45:54.961464	2023-10-13 11:46:49.367788	f	\N
63	Darshan Raval	This time audience beat Darshan	1	2023-09-28 12:56:15.866666	2023-10-17 08:45:17.5917	f	\N
14	Taj Mahal	The Taj Mahal is an ivory-white marble mausoleum on the right bank of the river Yamuna in Agra, Uttar Pradesh, India. It was commissioned in 1631 by the fifth Mughal emperor, Shah Jahan to house the tomb of his favourite wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself.	1	2023-09-06 10:01:32.784622	2023-10-17 08:48:22.36683	f	\N
59	Angular	Angular is a development platform, built on TypeScript. As a platform, Angular includes: A component-based framework for building scalable web applications. A collection of well-integrated libraries that cover a wide variety of features, including routing, forms management, client-server communication, and more.	22	2023-09-28 08:28:55.757038	2023-10-18 06:27:46.23646	f	\N
54	planet	A planet is a celestial body that (a) is in orbit around the Sun, (b) has sufficient mass for its self-gravity to overcome rigid body forces so that it assumes a hydrostatic equilibrium (nearly round) shape, and (c) has cleared the neighbourhood around its orbit.	12	2023-09-28 06:56:07.769027	2023-10-18 06:30:51.400114	f	\N
19	Tiger	The tiger is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates, such as deer and wild boar. \r\n	1	2023-09-06 11:26:18.295972	2023-10-11 09:21:26.087993	f	\N
15	Indian Flag	In the national flag of India the top band is of Saffron colour, indicating the strength and courage of the country. The white middle band indicates peace and truth with Dharma Chakra. The last band is green in colour shows the fertility, growth and auspiciousness of the land.	101	2023-09-06 10:03:34.239963	2023-10-13 11:40:33.294454	f	\N
80	Software	Software is a set of instructions, data or programs used to operate computers and execute specific tasks. It is the opposite of hardware, which describes the physical aspects of a computer. Software is a generic term used to refer to applications, scripts and programs that run on a device. It can be thought of as the variable part of a computer, while hardware is the invariable part.	1	2023-10-20 10:01:37.898925	2023-10-20 10:01:37.91831	\N	3
\.


--
-- Data for Name: relationships; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.relationships (id, follower_id, followed_id, created_at, updated_at) FROM stdin;
3	1	22	2023-10-04 11:53:27.407569	2023-10-04 11:53:27.407569
4	22	1	2023-10-04 12:07:50.873702	2023-10-04 12:07:50.873702
5	20	1	2023-10-04 12:11:37.814116	2023-10-04 12:11:37.814116
6	1	20	2023-10-04 13:14:53.331798	2023-10-04 13:14:53.331798
10	1	25	2023-10-04 13:26:36.424148	2023-10-04 13:26:36.424148
11	25	1	2023-10-04 13:26:49.362807	2023-10-04 13:26:49.362807
12	1	50	2023-10-05 08:53:18.065586	2023-10-05 08:53:18.065586
13	1	101	2023-10-05 09:03:16.855132	2023-10-05 09:03:16.855132
15	1	1	2023-10-19 07:21:03.085756	2023-10-19 07:21:03.085756
17	50	3	2023-10-19 10:14:37.377267	2023-10-19 10:14:37.377267
18	1	2	2023-10-19 10:24:42.546598	2023-10-19 10:24:42.546598
19	1	3	2023-10-19 10:30:29.158337	2023-10-19 10:30:29.158337
\.


--
-- Data for Name: reposts; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.reposts (id, post_id, user_id, created_at, updated_at) FROM stdin;
4	59	1	2023-09-29 08:55:45.755688	2023-09-29 08:55:45.755688
6	54	1	2023-09-29 08:56:54.587514	2023-09-29 08:56:54.587514
7	63	115	2023-09-29 09:07:06.620089	2023-09-29 09:07:06.620089
8	25	1	2023-09-29 09:23:37.990323	2023-09-29 09:23:37.990323
9	15	1	2023-09-29 09:34:33.415008	2023-09-29 09:34:33.415008
10	60	1	2023-10-04 05:42:28.005507	2023-10-04 05:42:28.005507
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.rooms (id, name, is_private, created_at, updated_at) FROM stdin;
1	General	f	2023-08-12 08:23:10.488332	2023-08-12 08:23:10.488332
2	Tech	f	2023-08-12 08:23:23.061473	2023-08-12 08:23:23.061473
3	Test	f	2023-08-12 08:23:33.608307	2023-08-12 08:23:33.608307
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.schema_migrations (version) FROM stdin;
20230717080238
20230717085445
20230726082709
20230727101421
20230728121510
20230801103244
20230812080119
20230812094802
20230814050254
20230817091151
20230817100434
20230822121127
20230822121311
20230823074253
20230823122041
20230906061543
20230908072315
20230908084410
20230908102104
20230911101515
20230911101533
20230911111507
20230913115811
20230919091129
20230922072941
20230929083713
20231003054914
20231006071745
20231010081631
20231011065440
20231018110808
20231019102656
20231020051627
\.


--
-- Data for Name: shares; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.shares (id, post_id, sender_id, recipient_id, created_at, updated_at) FROM stdin;
13	20	50	1	2023-09-09 09:19:50.332733	2023-09-09 09:19:50.332733
14	15	1	50	2023-09-09 09:20:31.627168	2023-09-09 09:20:31.627168
17	20	1	50	2023-09-11 07:36:51.8206	2023-09-11 07:36:51.8206
18	20	50	1	2023-09-11 07:37:29.857848	2023-09-11 07:37:29.857848
24	20	1	100	2023-09-13 07:53:35.58835	2023-09-13 07:53:35.58835
29	20	100	1	2023-09-13 11:31:10.324395	2023-09-13 11:31:10.324395
31	20	4	1	2023-09-13 12:02:35.94272	2023-09-13 12:02:35.94272
32	20	4	1	2023-09-13 12:03:21.444137	2023-09-13 12:03:21.444137
33	20	5	1	2023-09-13 12:04:15.974222	2023-09-13 12:04:15.974222
34	20	1	5	2023-09-13 12:04:38.695912	2023-09-13 12:04:38.695912
35	20	100	1	2023-09-15 06:23:18.060593	2023-09-15 06:23:18.060593
36	14	100	1	2023-09-15 07:17:18.624727	2023-09-15 07:17:18.624727
37	19	100	1	2023-09-15 07:21:00.558185	2023-09-15 07:21:00.558185
40	19	1	4	2023-09-15 07:34:43.726214	2023-09-15 07:34:43.726214
63	15	100	1	2023-09-15 08:17:00.149772	2023-09-15 08:17:00.149772
64	20	1	103	2023-09-15 11:03:49.249963	2023-09-15 11:03:49.249963
66	25	1	3	2023-09-26 08:28:38.35515	2023-09-26 08:28:38.35515
67	25	1	114	2023-09-26 08:29:29.053234	2023-09-26 08:29:29.053234
68	25	1	100	2023-09-26 08:31:29.599767	2023-09-26 08:31:29.599767
69	25	115	100	2023-09-27 14:01:56.900362	2023-09-27 14:01:56.900362
70	25	1	40	2023-09-27 14:14:47.79476	2023-09-27 14:14:47.79476
71	25	1	102	2023-09-27 14:15:07.867572	2023-09-27 14:15:07.867572
73	25	1	40	2023-09-27 14:24:56.081987	2023-09-27 14:24:56.081987
74	25	50	4	2023-09-27 15:24:47.890358	2023-09-27 15:24:47.890358
77	58	20	100	2023-09-28 07:30:57.360499	2023-09-28 07:30:57.360499
78	54	15	20	2023-09-28 07:32:57.821648	2023-09-28 07:32:57.821648
79	59	22	35	2023-09-28 08:29:35.65463	2023-09-28 08:29:35.65463
80	54	15	22	2023-09-28 08:31:56.336489	2023-09-28 08:31:56.336489
81	59	1	10	2023-09-28 08:48:14.766162	2023-09-28 08:48:14.766162
82	60	25	100	2023-09-28 09:19:03.39523	2023-09-28 09:19:03.39523
83	59	22	25	2023-09-28 09:22:43.052933	2023-09-28 09:22:43.052933
84	63	1	100	2023-09-28 12:57:17.960082	2023-09-28 12:57:17.960082
\.


--
-- Data for Name: skills; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.skills (id, title, user_id, created_at, updated_at) FROM stdin;
1	Ruby on rails V-7	1	2023-09-08 08:45:17.341989	2023-09-08 08:55:10.85496
3	Bootstrap	1	2023-09-08 09:12:13.36926	2023-09-08 09:12:13.36926
4	Ruby on rails	1	2023-09-09 09:48:25.456147	2023-09-09 09:48:25.456147
11	Ruby on rails	50	2023-09-27 15:22:25.305376	2023-09-27 15:22:25.305376
12	Bootstrap	50	2023-09-27 15:22:32.205332	2023-09-27 15:22:32.205332
13	Ruby on rails	10	2023-09-28 06:21:02.529779	2023-09-28 06:21:02.529779
14	Bootstrap	10	2023-09-28 06:21:08.53677	2023-09-28 06:21:08.53677
15	HTML	10	2023-09-28 07:00:52.436396	2023-09-28 07:00:52.436396
16	Ruby on Rails	15	2023-09-28 07:20:29.500097	2023-09-28 07:20:29.500097
17	React 	20	2023-09-28 07:29:01.950175	2023-09-28 07:29:01.950175
18	JavaScript	20	2023-09-28 07:29:13.158787	2023-09-28 07:29:13.158787
19	React	21	2023-09-28 08:21:53.438946	2023-09-28 08:21:53.438946
20	JavaScript	21	2023-09-28 08:22:02.342948	2023-09-28 08:22:02.342948
21	Angular	22	2023-09-28 08:27:26.712414	2023-09-28 08:27:26.712414
22	JavaScript	22	2023-09-28 08:27:34.295962	2023-09-28 08:27:34.295962
23	JavaScript	25	2023-09-28 09:17:11.457125	2023-09-28 09:17:11.457125
24	HTML	25	2023-09-28 09:17:19.663109	2023-09-28 09:17:19.663109
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, first_name, last_name, date_of_birth, username, city, state, country, pincode, street_address, profile_title, about, created_at, updated_at, contact_number, connected_user_ids, otp, uid, provider) FROM stdin;
109	piyush_chouhan@test.com	$2a$12$YioQ/PoWg3c08UJfSSZPMubGqcGPgd/8xdq3ocw2UMuZpcq/8ER9y	\N	\N	\N	1	2023-09-05 06:20:09.103372	2023-09-05 06:20:09.103372	::1	::1	Piyush	Chouhan	2000-01-01	piyush007	Bhopal	MP	IN	452016	001	Senior Full Stack Ruby on Rails Developer	Develop API backend and Web Application using Ruby on Rails. Work closely with the frontend team based on the provided specifications. Develop and maintain test specs using Rspec and related tests.	2023-09-05 06:20:09.096236	2023-09-20 10:17:05.111483	9877786789	{}	812004	\N	\N
114	sikarwar_pawan@example.com	$2a$12$8BZkp71udbsnNieKrsc/GeapkGH9xLvkWuCkv6gWhex7s/oRcrW.u	\N	\N	\N	2	2023-09-22 06:29:58.429104	2023-09-22 06:26:41.544624	::1	::1	Pawan	Sikarwar2	\N	sikarwar_pawan		\N				Jr.ROR Backend Developer		2023-09-22 06:26:41.346515	2023-09-22 06:29:58.429647		{}	111875	\N	\N
3	edwardo.schowalter@stanton-dickens.test	$2a$12$vg1typkrkZd./GBurbEEcOOeXtmrP8EiBVojg/ROK5rxQ7Ch37rvO	\N	\N	\N	3	2023-09-08 07:15:48.515375	2023-09-08 05:35:00.547235	::1	::1	Pawan	Sikarwar	1993-08-08	teodoro 12	Lake Byronhaven	Iowa	VN	23816-2692	429 Reynolds Mountain	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:33.122944	2023-09-08 07:15:48.51557	\N	{}	\N	\N	\N
4	herminia@senger.example	$2a$12$4lS2mhu6rElTH.GWjSqYeeno9ZHYuKAO2z0c.YkJkkHuTblxQbtYG	\N	\N	\N	5	2023-10-13 11:41:51.132304	2023-09-27 15:06:00.619957	::1	::1	Methew	Fernandize	1990-07-21	carroll 13	Lake Alice	Idaho	CH	38345	6964 Waters Plaza	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:33.6009	2023-10-13 11:42:09.527532		{50}	\N	\N	\N
30	dannie@bailey.test	$2a$12$GjpjVjVRRIOKUtGx41QGneOKvU9FS2E77fbY978PW2ntrtxmdmYba	\N	\N	\N	1	2023-08-22 07:09:47.127149	2023-08-22 07:09:47.127149	::1	::1	Alleen	Bednar	1987-07-20	preston 39	Casperville	Kentucky	Somalia	34023-9197	66618 Samual Courts	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:46.016112	2023-08-28 12:09:08.128091	\N	{1}	\N	\N	\N
102	pawan@test.com	$2a$12$EPo.nb2RYk96z/qY/focUOoGrlCXY33mK5kUIkkaPfjVxF87NQNZi	\N	\N	\N	7	2023-09-06 11:21:44.581441	2023-09-06 09:49:15.954372	::1	::1	Pawan	Singh	1996-12-04	singh_pawan	Indore	M.P.	India	452010	127	Full Stack ROR Developer	It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).	2023-08-29 11:10:18.991469	2023-09-06 11:21:44.581839	0123456789	{}	\N	\N	\N
40	danyel@kunze.example	$2a$12$yfbHv5dggpV3NsysH8iLwOxY4XjxrD4ZZn5qN908JVgIWXiyR1USC	\N	\N	\N	1	2023-08-22 07:05:15.252227	2023-08-22 07:05:15.252227	::1	::1	Peter	Auer	1999-07-22	daniel 49	Dachtown	Delaware	Nigeria	35883-2617	3968 Ankunding Burg	Senior Front End Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:50.789343	2023-08-28 12:09:08.12217	\N	{1}	\N	\N	\N
108	manish@example.com	$2a$12$si49cbvYYwV/hpQLtLniWeAOhmIlvbWT1gnWRHSP7a6Os9KtiepYi	\N	\N	\N	1	2023-09-04 07:05:51.25334	2023-09-04 07:05:51.25334	::1	::1	Manish	Sharma	2000-01-01	manish123	Indore	MP	IN	456321	111	Senior Full Stack Ruby on Rails Developer	A full stack developer is someone who can work on both the frontend as well as the back end of websites and applications. They apply their in-depth programming expertise in HTML, CSS, JavaScript, and other languages for frontend development. Their proficiency with Linux, PHP, Apache, MySQL, Express	2023-09-04 07:05:51.245238	2023-09-04 07:07:58.964709	0123456789	{}	\N	\N	\N
50	beula_mitchell@kessler.example	$2a$12$aZgrqTFySDwJ9642ktzLyOyMqWff4jGTLq93fzl19esDmpOzUKh8e	\N	\N	\N	34	2023-10-19 10:14:28.497579	2023-10-19 09:37:57.762122	::1	::1	Tammy	Toy	1997-08-09	garret 59	North Fumikoburgh	Oregon	AF	94640	793 Santos Motorway	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:55.567115	2023-10-19 10:14:28.498113		{1,2,10,50,50,51,52,53,54,55,56,57,58,59,4}	610801	\N	\N
100	al.willms@casper-rutherford.test	$2a$12$5Jl72oprqlbQnEaHYVdCzelkJ2Uq3T8WyyZWzd1PtOQBXaKZW6y0C	\N	\N	\N	21	2023-09-28 09:19:52.850014	2023-09-15 06:22:50.533824	127.0.0.1	::1	Marcy	Labadie	1998-08-14	roosevelt 109	Debramouth	Alabama	AF	60118	72636 Delbert Place	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:19.906757	2023-09-28 09:19:52.85031		{90}	\N	\N	\N
116	kanchankotiya2017@gmail.com	$2a$12$HmJjQku09HsY7WWBbszb0et4m5rqUeve33PwikAZ4SWicqCDidSUq	\N	\N	\N	4	2023-09-26 07:51:31.514052	2023-09-26 07:38:23.269508	::1	::1	kanchan	kotiya	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-25 08:01:33.906088	2023-09-26 07:51:31.514773	\N	{}	\N	\N	\N
52	clifford@lubowitz.test	$2a$12$bQmhsBCYEItFlrIwvb2K2eW.ha1mNWWQOevVveThJjl37WXP2JwTS	\N	\N	\N	0	\N	\N	\N	\N	Willy	Bechtelar	1988-07-18	venetta 61	North Humbertoport	Kansas	Honduras	43042-8509	609 Colin Loaf	Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:56.522098	2023-08-28 12:09:08.406482	\N	{1,2,10,50}	\N	\N	\N
117	pawansikarwar96@gmail.com	$2a$12$/YnlcybIjXMNRM0ekS9hFeuh52LF0JvGx4xkPa3xGEIBQ0ivsLYsm	\N	\N	\N	6	2023-09-26 07:57:54.472456	2023-09-26 07:57:44.107025	127.0.0.1	127.0.0.1	Pawan	Sikarwar	\N	Pawan Sikarwar	\N	\N	\N	\N	\N	\N	\N	2023-09-26 07:37:47.486155	2023-09-26 07:57:54.472754	\N	{}	\N	\N	\N
103	pawan@dev.com	$2a$12$zOl82Er0R.cHARrzqGn1QuPQmbWZIL2AtsWtPgmU8Sp6gdJBnXehO	\N	\N	\N	1	2023-08-29 13:19:25.172222	2023-08-29 13:19:25.172222	::1	::1	Piyush	Thakur	1996-12-04	piyush_thakur	Indore	MP	IN	452001	121	Full Stack ROR Developer	It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).	2023-08-29 13:19:25.163862	2023-08-29 13:31:32.664378	0987654321	{}	\N	\N	\N
110	aman_choudhary@example.com	$2a$12$19Xa5QKVTu29mu1Rse404.6DVMBOO1ucEl3JnVVDWA9IPPcB9eyvO	\N	\N	\N	1	2023-09-05 08:00:16.46094	2023-09-05 08:00:16.46094	::1	::1	Aman	Choudhary	\N	choudhary_aman	\N	\N	\N	\N	\N	Full Stack ROR Developer	\N	2023-09-05 08:00:16.455065	2023-09-05 08:00:16.461112	\N	{}	\N	\N	\N
10	kent.hilpert@goldner.example	$2a$12$pRVtd6YCOnhEBh0tYSlqLO2jJB.V2.WNqzMWlXe6BBhf0TH.qEwNW	\N	\N	\N	8	2023-09-28 06:59:21.134997	2023-09-28 06:52:04.21666	127.0.0.1	127.0.0.1	Gabrielle	Wiegand	1996-08-10	enda 19	Oberbrunnerfurt	Iowa	AF	85746-0183	83490 Maurita Haven	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:36.465488	2023-09-28 07:02:56.435236		{50,51,52,53,54,55,56,57,58,59,1,1,12}	840840	\N	\N
115	pawansikarwar1996@gmail.com	$2a$12$moW2W4NTHOv7kpYUSQQpUeYXIAdlp8Ih8IhFXjij44RklTlu6p75a	\N	\N	\N	38	2023-10-17 08:32:45.858781	2023-09-29 09:06:57.454202	::1	127.0.0.1	Pawan	Sikarwar02	1996-12-04	pawansikarwar1996	Indore	MP	IN	452001	127	Jr.ROR Backend Developer	Junior Backend Developers are responsible for creating and maintaining the back-end architecture of software systems. This role consists of developing server-side logic and implementing APIs to ensure optimal application performance.	2023-09-22 10:07:01.499036	2023-10-17 08:32:45.859187	9630427803	{1,113}	\N	\N	\N
118	kanakshrma52@gmail.com	$2a$12$HQR9S1BFvXfbD5LqY7Qxm.oD2eP8q59wQ/9lLP/mh.1daCzqQu1qO	\N	\N	\N	1	2023-09-26 07:51:51.824417	2023-09-26 07:51:51.824417	::1	::1	Kanak	Shrma	\N	Kanak Shrma	\N	\N	\N	\N	\N	\N	\N	2023-09-26 07:51:51.820353	2023-09-26 07:51:51.824555	\N	{}	\N	\N	\N
106	shyam.singh@example.com	$2a$12$vDT.ulbpYWjtHewVtSd4ceX6mjIFG4tvolrVmzTKVzGZqx1.E2quG	\N	\N	\N	1	2023-08-29 13:38:21.191331	2023-08-29 13:38:21.191331	::1	::1	Shyam	Singh	1990-01-01	shyam_singh001	Indore	MP	India	452103	111	Node JS Developer	It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n	2023-08-29 13:38:21.182027	2023-08-29 13:43:02.623614	098764123	{}	\N	\N	\N
18	rey@hagenes.test	$2a$12$ixmQq/c9Lv8GO4tgjGX7aetJ5fIVTP0Xkd9sZ.X9BCbbUbGO4/xzK	\N	\N	\N	0	\N	\N	\N	\N	Vance	Murphy	1989-07-25	laronda 27	Pourosfurt	Nevada	Andorra	15233-2362	961 Lockman Station	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:40.288017	2023-08-28 12:09:08.246997	\N	{}	\N	\N	\N
19	jeffry_swift@hand-haley.example	$2a$12$yaSq/pqApLMrK4Hg93Iwy.ryKDyx/CQtcP66dMm8YIHVv2GmeXZsa	\N	\N	\N	0	\N	\N	\N	\N	Jules	Wehner	1997-08-16	sherron 28	Fridamouth	South Carolina	Reunion	90919-4755	1093 Kira Crescent	Senior Front End Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:40.765842	2023-08-28 12:09:08.251106	\N	{}	\N	\N	\N
26	svetlana@stoltenberg.example	$2a$12$BYO38DEecHFS/o0SbGL6.uKgQgSJ.gULTioIr8fW9tqo6HMJ.wvE2	\N	\N	\N	0	\N	\N	\N	\N	Larraine	Reinger	1999-07-28	willette 35	South Hoytside	South Dakota	Madagascar	70536-1407	9727 MacGyver Unions	Senior Java Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:44.10652	2023-08-28 12:09:08.287543	\N	{}	\N	\N	\N
27	jerrell_koelpin@macejkovic-mertz.test	$2a$12$Gxf8BWSgktJm8CAlbyio6.eCr3DMSBxmvJifDE.K1yC0YezWfX7KG	\N	\N	\N	0	\N	\N	\N	\N	Doretta	Bradtke	1993-08-01	thi 36	Roweshire	New Mexico	Madagascar	09977-1747	54332 Tuan Roads	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:44.584185	2023-08-28 12:09:08.2918	\N	{}	\N	\N	\N
66	julius.stamm@kuhic.example	$2a$12$pkd8w2RPwbITZ.Hkde5bSOWH/4JTB/i6b.rrB0aqkIeXmfw4RHIOi	\N	\N	\N	0	\N	\N	\N	\N	Sheryl	Glover	1989-08-09	ronnie 75	West Dungstad	Arkansas	Hungary	13019-5224	6848 Curtis Brooks	Senior Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:03.207541	2023-08-28 12:09:08.487056	\N	{}	\N	\N	\N
111	rajive@test.com	$2a$12$tFN5pHN2SJA9DiPpV3pQjur7.oPHA5cviAQvcftzofLk4/w5LfOsG	\N	\N	\N	1	2023-09-05 08:09:35.827504	2023-09-05 08:09:35.827504	::1	::1	Rajiv	Singh	\N	rajiv_singh123	\N	\N	\N	\N	\N	FrontEnd Developer	\N	2023-09-05 08:09:35.821751	2023-09-05 08:09:35.827693	\N	{}	\N	\N	\N
104	ajay.thakur@example.com	$2a$12$krQlaF8notzN9vzMby49I.uEiMxaFPQfzbqnipsPCnbtRJcbpLML6	\N	\N	\N	1	2023-08-29 13:32:31.913705	2023-08-29 13:32:31.913705	::1	::1	Ajay	Thakur	1995-10-10	thakur_ajay01	Bhopal	Madhya Pradesh	IN	461230	123	React Developer	It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).	2023-08-29 13:32:31.904668	2023-08-29 13:35:09.023453	0123456789	{}	\N	\N	\N
59	heather@mueller.example	$2a$12$nSXV3X2akQYNNpjvhBkr..0nOSW2VxeDq55LXhEvBU1M3GTSq9F82	\N	\N	\N	2	2023-09-15 08:20:40.869612	2023-09-07 09:41:24.280041	::1	::1	Kasey	Schuster	1996-08-11	don 68	Karrenfurt	Maryland	AF	20262	9133 Lou Trace	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:59.865552	2023-09-15 08:22:20.697743		{1,2,10,50}	\N	\N	\N
2	osvaldo.purdy@sporer.test	$2a$12$jptcezHr0XwRi.HRJUeyJO3p2ANccrI3ZbD.j5Df47XGD9uTZaWGq	\N	\N	\N	3	2023-09-28 06:55:05.101831	2023-08-24 09:25:29.723872	127.0.0.1	::1	Pawan	Sikarwar	1989-07-23	brendon 11	South Anibalfort	Missouri	JO	14697-4288	63120 Emmerich Corners	Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:32.645184	2023-09-28 06:55:05.102032	\N	{2,2,50,51,52,53,54,55,56,57,58,59,1}	\N	\N	\N
67	waldo@oconnell-brekke.example	$2a$12$CMOBSiKHfHbjvXjE/Y20yuitSviYTtEPdeqQoWEEb6BYCPEns0Hca	\N	\N	\N	0	\N	\N	\N	\N	Rosann	Kutch	1995-08-09	brigitte 76	Lake Luciano	Virginia	Luxembourg	15670	5882 Yundt Pass	Senior Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:03.684584	2023-08-28 12:09:08.491929	\N	{}	\N	\N	\N
74	corie@torphy-koepp.example	$2a$12$LaYA0z0LwYqXzganeAXLXubrE56vXC/mfnEhichViIpjSgcMhKW1a	\N	\N	\N	0	\N	\N	\N	\N	Rosaria	Fadel	1995-07-21	antione 83	South Laurette	Massachusetts	Aruba	95148	6596 Joette Coves	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:07.027148	2023-08-28 12:09:08.533551	\N	{}	\N	\N	\N
75	otto@ratke.test	$2a$12$9NMe6P5kDQfvrgPAHjomQOgag8RHAj8vNl7zbv.pWM7W2M8WCBse2	\N	\N	\N	0	\N	\N	\N	\N	Mckinley	Leffler	1987-07-30	maura 84	West Hortencia	Rhode Island	Belize	18536-2546	2693 Blanda Springs	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:07.505217	2023-08-28 12:09:08.538865	\N	{}	\N	\N	\N
82	king.swaniawski@fay.example	$2a$12$.qLq30QHQmKHrFNudbj7Ce3vTdeG2aNCQMhiFP/K16UyGOYHVA3xu	\N	\N	\N	0	\N	\N	\N	\N	Dorotha	Graham	1993-07-21	alexander 91	Davidtown	Alaska	Angola	90111	53077 Stanton View	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:10.850579	2023-08-28 12:09:08.578682	\N	{}	\N	\N	\N
83	aubrey.pagac@krajcik.test	$2a$12$uYXYYHxZX/pqlTMVTvrcUOGHHhFxKNw3RhqaYiHPxSSE6IOmaEbZm	\N	\N	\N	0	\N	\N	\N	\N	Jenni	Howe	1988-08-13	oren 92	New Boyceland	New Jersey	Heard Island and McDonald Islands	29843-4900	443 Jaimie Walks	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:11.328154	2023-08-28 12:09:08.583056	\N	{}	\N	\N	\N
91	bridget_kris@boyer-schultz.example	$2a$12$cL8aE.4OpopFBZkkxbn4XuhXXpBvXVgZCwVOjlJafrhzcaKLCiQd.	\N	\N	\N	0	\N	\N	\N	\N	Jude	Hermann	1993-07-21	dalton 100	North Darwinside	Kansas	Senegal	75992	58335 Connelly Route	Senior Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:15.611615	2023-08-28 12:09:08.62658	\N	{}	\N	\N	\N
92	mac_howell@boehm-lebsack.example	$2a$12$fxjta.UFqV2rGncc2NzzjOTL.0eGvOzyNpyX1IEBCmA1/tA/TKur2	\N	\N	\N	0	\N	\N	\N	\N	Cassi	Spencer	1995-08-13	chang 101	Port Gaynell	Iowa	United Kingdom	95816-2642	8309 Welch Key	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:16.088344	2023-08-28 12:09:08.631959	\N	{}	\N	\N	\N
99	dessie.predovic@keebler.example	$2a$12$9irlA6klamJuUllKw0pEUuiZeaBXzl/fPwyqvGjWhXbyWCQbQdeDW	\N	\N	\N	1	2023-08-07 11:58:54.705965	2023-08-07 11:58:54.705965	::1	::1	Lyndon	Gutmann	1989-08-15	denice 108	New Ayana	Indiana	Niue	63804-8040	1262 Lakin Junctions	Senior Front End Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:19.428933	2023-08-28 12:09:08.68379	\N	{1}	\N	\N	\N
105	ram.singh@example.com	$2a$12$4pnzPsYpib9l80KRTrbTIOvLVKZnY7x2Y.8LapOLWvrA2vEV/QTFq	\N	\N	\N	0	\N	\N	\N	\N	Ram	Singh	1990-01-01	\N	Bhopal	MP	India	456987	\N	\N	\N	2023-08-29 13:37:42.16368	2023-08-29 13:37:42.16368	\N	{}	\N	\N	\N
101	pawan@example.com	$2a$12$SYcJXV9yveDlPijQppNsyO0Mr5e7n3jWGMwjxXWtKJ9ci6CEeV1fy	\N	\N	\N	18	2023-10-13 11:39:53.935475	2023-09-25 12:10:10.985868	::1	::1	Pawan	Sikarwar	1996-12-04	pawansikarwar	Indore	M.P.	AF	452010	127	Jr.Backend ROR Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-08-28 08:38:27.591668	2023-10-13 11:41:02.617313	9630427803	{1}	576142	\N	\N
112	raj@example.com	$2a$12$oSGM856RWyP0AiRtLkm5JelrL/RViEtlg3HGAP/3PdWSZmHdwtDTa	\N	\N	\N	3	2023-09-08 05:32:59.765658	2023-09-06 11:12:48.722426	::1	::1	Raj	Singh	\N	raj_singh00	\N	\N	\N	\N	\N	Full Stack ROR Developer	\N	2023-09-06 10:59:53.393369	2023-09-08 05:32:59.765862	\N	{}	\N	\N	\N
107	ajay.chouhan@example.com	$2a$12$ontx37DhzdeMvAW9o/Omk.OnH1bBsAUFOxJxSvNzDH9d1ddXheNUu	\N	\N	\N	1	2023-08-30 06:24:11.664861	2023-08-30 06:24:11.664861	::1	::1	Ajay	Chouhan	1990-01-01	ajay_chouhan	Bhopal	MP	IN	456321	111	FrontEnd Developer	There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.	2023-08-30 06:24:11.655813	2023-08-30 06:26:35.15453	0987456321	{}	\N	\N	\N
113	satyam@example.com	$2a$12$ur/1J8gIEVLKZ2pPQlndXOtKLIVEzQyaj6P00c/O0O0nfggEpEHfS	\N	\N	\N	6	2023-10-13 11:43:16.291889	2023-09-27 15:02:13.149346	::1	::1	Satyam	Singh	\N	satyam_singh	Indore	MP	IN	452016	111	Full Stack ROR Developer	A Ruby on Rails developer is a web and mobile app development professional who is responsible for writing codes for application development in the Ruby on Rails interface. A Ruby on Rails developer may also be known as a software engineer, lead developer, front end developer or web developer.	2023-09-07 08:23:36.58043	2023-10-13 11:44:26.851324	0123456789	{115}	\N	\N	\N
89	porter_wunsch@swaniawski.test	$2a$12$zt4lGjh3gVWHs53QQx5KbekFNj7TUy.vY.PTj6FkxoOzRK.ouMIyW	\N	\N	\N	0	\N	\N	\N	\N	Leonel	Lowe	1989-08-10	vernice 98	New Carmine	South Dakota	Gabon	45508	2765 Cummerata River	Senior Front End Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:14.656462	2023-08-28 12:09:08.171153	\N	{}	\N	\N	\N
1	benjamin.abshire@wiegand.test	$2a$12$ekMckcTuVrKyrWxOYSLDre2DIM7ZBsOR8oQNqSgOXBKFU.IVa9.Pm	b2bea87274c02b153bb855d41407b12a700c7ab1ede8c6702c484ed231e633a6	2023-09-22 06:20:18.085493	\N	164	2023-10-17 11:40:35.483002	2023-10-17 08:33:06.019498	::1	::1	John	Doe	1995-08-14	richard 10	New Kenda	BI	BS	69147-6076	482 Lubowitz Islands	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:32.163544	2023-10-18 07:15:43.086479	0123456789	{2,40,30,32,95,98,99,93,50,51,52,53,54,55,56,57,58,59,101,60,115,10,10}	359343	\N	\N
5	ginger@dooley-hermann.test	$2a$12$ij/YfhcwppJoevtixquOcOe1xj8cla76ZQWXAIu3N61rGJYjQCUxO	\N	\N	\N	1	2023-09-13 12:04:02.174779	2023-09-13 12:04:02.174779	127.0.0.1	127.0.0.1	Ike	Senger	1997-07-31	verdie 14	East Truman	Ohio	Peru	49407	22135 Harber Shore	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:34.077326	2023-09-13 12:04:02.175052	\N	{}	\N	\N	\N
6	ella@kilback.test	$2a$12$YZyYePvRAmLMmoMjNBT/q.xK8lfsxu4xVlnGbV9wV4RNMp6ovMgqS	\N	\N	\N	0	\N	\N	\N	\N	Claud	Paucek	1995-07-21	tena 15	Lehnerchester	Indiana	Taiwan	06370-3501	8418 Malvina Ville	Senior Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:34.55552	2023-08-28 12:09:08.187916	\N	{}	\N	\N	\N
7	allyn@lesch.test	$2a$12$LrVq/U.ZNvnMUGmFovoKdeEFh2WPtFWcIWp05FzH9xF70U2.XG0ne	\N	\N	\N	0	\N	\N	\N	\N	Zella	Tremblay	1992-08-15	winston 16	Rosalbaland	Georgia	Saint Pierre and Miquelon	84731-9989	785 Kovacek Expressway	Senior Java Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:35.032297	2023-08-28 12:09:08.193441	\N	{}	\N	\N	\N
8	quinton.kiehn@bergnaum.example	$2a$12$etZdp5i.670Rn5vHU7VEXOeLBRNNQ9YZXflbNytpCyd7MwUTdhOqq	\N	\N	\N	0	\N	\N	\N	\N	Alfonzo	Sawayn	1988-08-16	kellee 17	Port Wmfort	New Mexico	Guyana	19941	8465 Jade Crescent	Senior Front End Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:35.509434	2023-08-28 12:09:08.197632	\N	{}	\N	\N	\N
9	tara@keeling.test	$2a$12$9uIBzKbwdc8MgLXi/WdvA.XnX8KAeVfQrLu/GyDZGd4DKOVUXYUP2	\N	\N	\N	0	\N	\N	\N	\N	Cordell	Rowe	1989-08-03	mamie 18	Jenkinsfort	Nebraska	Aruba	93695	786 Tatum Parkways	Senior Front End Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:35.987501	2023-08-28 12:09:08.203202	\N	{}	\N	\N	\N
11	keneth.ziemann@parisian-klein.example	$2a$12$h9ZP3mnbzJfZmkB6RVemD.17VwvD8PqbCh8bfKjPkE/xnSeu/Rfbi	\N	\N	\N	0	\N	\N	\N	\N	Juliane	Stanton	1988-07-19	orlando 20	Tremblaystad	Georgia	Sierra Leone	14485	13941 Norman Plaza	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:36.94316	2023-08-28 12:09:08.209627	\N	{}	\N	\N	\N
15	palma@pfeffer.test	$2a$12$a1l2wFjM9OfwUBEkcC1l4.ftoUCr2K4vASKwXgRhZX1jX9Vmg.IpO	\N	\N	\N	3	2023-09-28 09:07:54.382986	2023-09-28 07:19:06.024786	127.0.0.1	127.0.0.1	Jayson	Lang	1990-08-14	duncan 24	Fadelmouth	Kentucky	AF	56488-0087	540 Jaskolski Forks	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:38.853214	2023-09-28 09:07:54.383201		{20,22}	699514	\N	\N
12	albert@adams.test	$2a$12$WQpE54NTyglWHGlxjAitOeB2Firvn2yfoclWa49Ce8xCZ4T0OJeOK	\N	\N	\N	5	2023-10-18 06:29:26.997308	2023-10-13 11:36:15.113308	::1	::1	Kevin	Morissette	1990-07-23	marya 21	Port Joaquinahaven	Montana	AF	35826	289 Vandervort Valleys	Senior Java Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:37.420357	2023-10-18 06:29:26.998283		{10}	261350	\N	\N
13	greg.adams@heathcote-ondricka.test	$2a$12$aDDbMoJqrhyslX9D2xQpcel.eRQQTYFAe37DMd7CesCg8IG5G5hDe	\N	\N	\N	0	\N	\N	\N	\N	Van	Gorczany	1989-07-21	darnell 22	Wehnerstad	Maryland	Serbia	72174	3289 Levi Run	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:37.898056	2023-08-28 12:09:08.22001	\N	{}	\N	\N	\N
14	wilmer@hansen.test	$2a$12$VjvlSHJLcDmeRoucAw8jAezmDeOydGwRwf1ERAQby6.EQ2N.0TrLq	\N	\N	\N	0	\N	\N	\N	\N	Treva	Morissette	1993-08-02	jewell 23	Port Maxie	Texas	Grenada	64231	827 Ariel Centers	Senior Java Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:38.376064	2023-08-28 12:09:08.226177	\N	{}	\N	\N	\N
16	nickie@fadel-howell.test	$2a$12$239cp/J48zSRjYbP.yXys.gThTFlc4/1CWfeF.Zr57z1gqOUlbnVi	\N	\N	\N	0	\N	\N	\N	\N	Larisa	Cummings	1988-07-19	ettie 25	West Drucilla	North Carolina	Mayotte	00071	297 Mann Light	Senior Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:39.331821	2023-08-28 12:09:08.23616	\N	{}	\N	\N	\N
17	theodore_murphy@carroll-bergstrom.example	$2a$12$0IA5dKMTc/jiafdb7Vj4ueNoUryKNdrNvoR1yEmBGMs7rbVs7tEmW	\N	\N	\N	0	\N	\N	\N	\N	Mavis	Parisian	1995-08-13	awilda 26	Tyronestad	Delaware	Senegal	68814	440 Yanira Orchard	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:39.810173	2023-08-28 12:09:08.241379	\N	{}	\N	\N	\N
25	rochell@ward.example	$2a$12$fWZaxogZGOn6Fc9kpGqZROVkkoj9xDbY22y1ri64o8kdAk1JNxcG2	\N	\N	\N	6	2023-10-18 06:23:27.132088	2023-10-13 10:28:10.283711	::1	::1	Felipe	Schaden	1997-07-29	pat 34	East Cody	Oregon	AF	25964-3433	7298 Jacob Isle	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:43.629636	2023-10-18 06:23:27.132614		{22}	793008	\N	\N
22	felecia_grant@beatty-grady.test	$2a$12$AVt2SX8SYK1dSLDJzjZaBe.TfFT8iOhz0knRBEI9MiGenbFzneZDq	\N	\N	\N	8	2023-10-18 06:26:16.325136	2023-10-13 10:33:06.473667	::1	::1	Ira	Kilback	1997-08-04	kami 31	North Juliettafort	South Carolina	AF	52641	430 White Wall	Senior Front End Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:42.197235	2023-10-18 06:26:16.325674		{15,25}	765707	\N	\N
21	alton.price@christiansen.example	$2a$12$nN3vIP1ViUZI49DKgSvGU.l7vuA/P/HB6b4Q.yGc8o16ihKP50hz.	\N	\N	\N	3	2023-09-28 08:20:59.669207	2023-09-28 08:20:37.112346	127.0.0.1	127.0.0.1	Carolynn	McGlynn	1996-08-13	dessie 30	New Lawandashire	Virginia	AF	79178	40241 Effertz Pines	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:41.72068	2023-09-28 08:22:14.518748		{}	282441	\N	\N
20	aron@wintheiser-oreilly.test	$2a$12$XGbawESECMFPQHeDYnEK8OuroWFuemlFyD.aRKrna/RiBoeHt2QBS	\N	\N	\N	6	2023-10-13 10:39:35.739513	2023-10-12 11:30:43.453911	::1	::1	Reena	Reichel	1987-07-29	florencia 29	East Karisaburgh	Michigan	AF	26378-9439	472 Harvey Crescent	Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:41.24357	2023-10-13 10:40:05.344853		{15}	324146	\N	\N
23	tyrone_bahringer@conn.test	$2a$12$5cqNdJ7YKulwY8rQcexgPO0cFUIQ0T5TbcijZkNuYxWIvUYXE65NS	\N	\N	\N	0	\N	\N	\N	\N	Sydney	Fay	1996-08-01	ardith 32	Lyndonland	Idaho	Costa Rica	52918	4631 Shanell Rapids	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:42.675239	2023-08-28 12:09:08.271715	\N	{}	\N	\N	\N
24	demarcus@frami.example	$2a$12$AiRQdTYPRJLZL2uw1kzhVegSB390tZooee8tovq.UiobhpsqhRnfC	\N	\N	\N	0	\N	\N	\N	\N	Christoper	Pfeffer	1994-08-12	cesar 33	Darylstad	Missouri	Ecuador	56887	97293 Hamill Village	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:43.152427	2023-08-28 12:09:08.277127	\N	{}	\N	\N	\N
32	alonso@mcglynn.test	$2a$12$k6T.bd4WQdzpmvjJOqbFper3j648OqHxo1o55rs88POoYgyw7DS9a	\N	\N	\N	2	2023-08-25 06:24:54.350951	2023-08-22 07:55:58.607361	::1	::1	Connie	Von	1998-08-14	bobbie 41	East Glenna	Nebraska	Portugal	23756	8711 Tierra Row	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:46.970298	2023-08-28 12:09:08.328179	\N	{1}	\N	\N	\N
28	jene@lebsack-moore.example	$2a$12$el2rSvW13DmVAsuCwuHw3.H85uqwJyIWBo.Rcnm7Mtzqe21X3Q1rC	\N	\N	\N	0	\N	\N	\N	\N	Audrea	Kautzer	1990-07-24	owen 37	New Andreaston	Louisiana	British Indian Ocean Territory (Chagos Archipelago)	63748-5869	889 Kshlerin Canyon	Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:45.061087	2023-08-28 12:09:08.296911	\N	{}	\N	\N	\N
29	jon.douglas@rath.test	$2a$12$Km0iag9CmSZqD.UUxoggwORFoYGne8B2/udO1/7MaxrLPbczB56u.	\N	\N	\N	0	\N	\N	\N	\N	Junior	Grady	1994-08-05	marylynn 38	North Conrad	New Mexico	French Guiana	25184	427 Murazik Field	Senior Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:45.538167	2023-08-28 12:09:08.301746	\N	{}	\N	\N	\N
31	jeraldine@rempel.example	$2a$12$vjMdkMSr22PmXdp.NUZ5ue6bO6JSlq15tCg7jMo5sgIelGhtoYpH2	\N	\N	\N	0	\N	\N	\N	\N	Levi	Bergstrom	1988-07-31	cole 40	New Rebecca	Florida	Czech Republic	75931	6769 Waelchi Point	Senior Front End Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:46.492956	2023-08-28 12:09:08.307566	\N	{}	\N	\N	\N
33	sharilyn.nitzsche@gutmann.test	$2a$12$Q3zkr/W3r3u9sFpv/d7tZuM628Xz84PsluLEdSJz7rEiZ9uKobkom	\N	\N	\N	0	\N	\N	\N	\N	Haydee	Paucek	1999-07-24	guillermo 42	Goyetteville	Alabama	Sudan	72099	27893 McLaughlin Pine	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:47.447425	2023-08-28 12:09:08.31227	\N	{}	\N	\N	\N
34	domenic@hettinger.example	$2a$12$tMprohaY4MvUyO1TTCH.NubXRiLgj5ya31sYRb335beMozs3pw8Le	\N	\N	\N	0	\N	\N	\N	\N	Euna	White	1993-08-07	valencia 43	Cierramouth	Georgia	Andorra	13531-1273	78118 Adena Dale	Senior Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:47.925708	2023-08-28 12:09:08.317411	\N	{}	\N	\N	\N
35	cameron@corwin.example	$2a$12$X9.gme4kI8kNG/YIe4c02.VkCllatRiqhOmoucJrsbPGA1NrV04oq	\N	\N	\N	0	\N	\N	\N	\N	Gala	Bayer	1996-07-24	dewitt 44	East Ivantown	North Dakota	Western Sahara	09410	828 Jerald Islands	Senior Front End Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:48.402874	2023-08-28 12:09:08.322778	\N	{}	\N	\N	\N
36	sona@hayes.example	$2a$12$2a71V8kENu5wKoAM8OrjFehLD43Bq6gZAzJfyUVn/asqb1rZOWwRO	\N	\N	\N	0	\N	\N	\N	\N	Jayna	Rau	1996-08-08	leslie 45	New Jamel	Louisiana	Chile	31732-3636	6768 Winston Junction	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:48.880157	2023-08-28 12:09:08.333205	\N	{}	\N	\N	\N
37	reatha_jacobson@torp-kemmer.example	$2a$12$EeOWmC6UA2pMeGGzSD4G1OQRd.S6zh.PE.rWUcHz2Wd4Z1.CKNKLm	\N	\N	\N	0	\N	\N	\N	\N	Brandon	Osinski	1997-08-07	efren 46	McDermottton	Hawaii	Russian Federation	36083	333 Graham Rapids	Senior Java Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:49.357091	2023-08-28 12:09:08.339433	\N	{}	\N	\N	\N
38	kerry_glover@wolf.test	$2a$12$CPfqg8wNG.MmpTI5wyrEHOdgNyqyaW1JJbAzGSkar4tyysPfkYGEq	\N	\N	\N	0	\N	\N	\N	\N	Boyce	Beier	1993-08-04	joye 47	Lutherside	New Jersey	Heard Island and McDonald Islands	20441	19190 Abbott Highway	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:49.834331	2023-08-28 12:09:08.343932	\N	{}	\N	\N	\N
39	louvenia.aufderhar@rolfson-schaefer.example	$2a$12$yqA3PFnKZQwUbTfiiQh0CO.kiA/k4d5O3ju7LHP.tBCeiQa2Cs0Ku	\N	\N	\N	0	\N	\N	\N	\N	Eloisa	Leuschke	1990-07-27	jaclyn 48	New Leonel	Iowa	Malta	66546-6896	6635 Hegmann Squares	Senior Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:50.312158	2023-08-28 12:09:08.348976	\N	{}	\N	\N	\N
41	terry@sporer.example	$2a$12$Zur11meAaghMlYCw7b3mXO67Dm7.I5uSiO45bfKEepqBESozoe4zi	\N	\N	\N	0	\N	\N	\N	\N	Chelsey	Hegmann	1987-07-27	rhea 50	North Chi	Kansas	Qatar	20147-2245	116 Marcelene Track	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:51.266903	2023-08-28 12:09:08.354096	\N	{}	\N	\N	\N
42	rosina@kessler-kautzer.test	$2a$12$6CXNQ/SairdE411E/wjjGeY6JicrB91pbJHjrpZWG8esxNheceScK	\N	\N	\N	0	\N	\N	\N	\N	Terrence	Weissnat	1993-08-16	clarence 51	West Darrin	Missouri	Guam	49557	85338 Mamie Locks	Senior Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:51.744866	2023-08-28 12:09:08.359136	\N	{}	\N	\N	\N
43	august_boyer@oconner.example	$2a$12$qQQcbR71zqjo01ooFFZIt.Jtfx2ii4YlyDtvybG628UHVvkx48iFS	\N	\N	\N	0	\N	\N	\N	\N	Vincenzo	Kuhlman	1992-08-11	mimi 52	South Spring	New Mexico	Seychelles	40840-6322	891 Paucek Hollow	Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:52.222094	2023-08-28 12:09:08.362892	\N	{}	\N	\N	\N
44	alphonso_senger@jacobi.test	$2a$12$x.eLulKLRBDgOc3P5xQPHuJIeSo9x/GK94DtsM8EY5TiQY.4up2SG	\N	\N	\N	0	\N	\N	\N	\N	Gracia	Murphy	1989-07-23	samual 53	Noeport	Vermont	Republic of Korea	12361-3246	391 Yundt Causeway	Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:52.699679	2023-08-28 12:09:08.368567	\N	{}	\N	\N	\N
45	natividad_jacobs@watsica.example	$2a$12$DTc/YeIRed7S9giINvN5h.L9nv3lqjybxCS0j1RU8vdnF.Zg1mY8K	\N	\N	\N	0	\N	\N	\N	\N	Alejandrina	Kunze	1994-08-01	willie 54	New Danielland	Wisconsin	Brazil	57135	29717 Toby Islands	Senior Front End Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:53.177252	2023-08-28 12:09:08.372946	\N	{}	\N	\N	\N
46	leota_schultz@morissette.example	$2a$12$qYMNnphweRVP/HZKc5w6xuoKLhfoGM36Xz.x1cW7gW8pMIA9gX8y6	\N	\N	\N	0	\N	\N	\N	\N	Cody	Breitenberg	1990-07-22	woodrow 55	West Colton	Indiana	Togo	05403	32966 Roob Lights	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:53.655217	2023-08-28 12:09:08.378244	\N	{}	\N	\N	\N
47	kenya_block@blanda-larson.test	$2a$12$Q.zHG0Q0vw5VcQtI.khn.OcRpe/cPD5fQFA3FLPxh8yo36.mdLu02	\N	\N	\N	0	\N	\N	\N	\N	Josue	Predovic	1993-07-24	bernardina 56	Codyberg	Nebraska	Romania	77549-8250	10361 Denesik Gardens	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:54.132456	2023-08-28 12:09:08.382313	\N	{}	\N	\N	\N
48	roma.swaniawski@dickinson-corwin.example	$2a$12$ksArM.taOd8MWhQiFkJ9LOKNpLlZJyAVQ11fSo354vmYee8mih9KW	\N	\N	\N	0	\N	\N	\N	\N	Marjorie	Trantow	1989-07-22	joshua 57	North Francis	Washington	Czech Republic	83541	747 Sporer Overpass	Senior Java Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:54.610814	2023-08-28 12:09:08.388533	\N	{}	\N	\N	\N
49	kurtis@stiedemann.example	$2a$12$w5ja05TgmqCtdzinIAIQcu2tfYxjSbNKQOh4sUhkpVOfwOkIjbs.a	\N	\N	\N	0	\N	\N	\N	\N	Louie	Reichert	1999-08-06	noe 58	North Jerriburgh	Massachusetts	Liberia	70122-9618	624 Humberto Wells	Senior Front End Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:55.08945	2023-08-28 12:09:08.393429	\N	{}	\N	\N	\N
51	jeromy.nikolaus@abshire.test	$2a$12$JST5mC1oi470t1JokN1lU.BOCgTcD3AWxNS/LLeE451BS3PHrUXoe	\N	\N	\N	0	\N	\N	\N	\N	Alejandro	Schultz	1992-08-08	mervin 60	West Valfurt	Maine	Yemen	37597	5968 Gislason Mountain	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:56.044707	2023-08-28 12:09:08.401134	\N	{1,2,10,50}	\N	\N	\N
53	ross_wolf@friesen-conn.example	$2a$12$hVTDIjzH7R6BvnQy2lJo0u4OyNmkjQZNpkqmt8uu4rio2Xk9MLLJu	\N	\N	\N	0	\N	\N	\N	\N	Gema	Renner	1997-07-26	trey 62	Curthaven	New York	Gambia	12737-6209	121 Bergnaum Hill	Senior Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:56.999384	2023-08-28 12:09:08.413406	\N	{1,2,10,50}	\N	\N	\N
54	jamal.oconnell@will-green.example	$2a$12$YLUBb483bX2x422c/rxu/.jeSOvRv0LMphyj6IHmaXItUVbzNfdp2	\N	\N	\N	0	\N	\N	\N	\N	Paola	Schumm	1995-08-10	joel 63	Sawaynview	Hawaii	Virgin Islands, U.S.	87674-8185	891 Anh Extension	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:57.476933	2023-08-28 12:09:08.419357	\N	{1,2,10,50}	\N	\N	\N
55	nery@skiles-runolfsson.test	$2a$12$BTASGFzVfYoA.SqnvWlAk.cSgTc1B70jh54bmrygvduR6nq9Y5P9q	\N	\N	\N	0	\N	\N	\N	\N	Miguel	Rohan	1999-07-23	teri 64	South Sammyfurt	Kansas	Burundi	83505-5194	6166 Bartell Extensions	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:57.954141	2023-08-28 12:09:08.424339	\N	{1,2,10,50}	\N	\N	\N
56	felica@mante-rosenbaum.example	$2a$12$i1Eq4fCvyIq2ABPgKuqQ3eyaCAa.lSwJ9DIxvo2oshb8mH7PJqCTO	\N	\N	\N	0	\N	\N	\N	\N	Dong	Greenholt	1998-08-10	minna 65	Remonamouth	West Virginia	Tokelau	78357-7484	474 Schuppe Brook	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:58.431792	2023-08-28 12:09:08.431078	\N	{1,2,10,50}	\N	\N	\N
57	bibi@herzog.test	$2a$12$I.52LChdPKeRPhfhba3rBOs8ycNqcRX246qbSSg1XTcocVL1yIvOq	\N	\N	\N	0	\N	\N	\N	\N	Reda	Rutherford	1987-07-30	alfredo 66	South Alica	Idaho	China	93519-2029	43631 Metz Hollow	Senior Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:58.90906	2023-08-28 12:09:08.436967	\N	{1,2,10,50}	\N	\N	\N
58	vernon.breitenberg@fritsch.test	$2a$12$vfZV/b.FkmXMUERr9hSdme4en7doCm0L8ZrMi0PxOxVirvmwWfKGi	\N	\N	\N	0	\N	\N	\N	\N	Winston	Brown	1987-08-12	valerie 67	Hodkiewiczfurt	Iowa	Nicaragua	34914	602 Effertz Wells	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:10:59.386837	2023-08-28 12:09:08.443053	\N	{1,2,10,50}	\N	\N	\N
60	fidel.borer@baumbach.test	$2a$12$v9tsEHmp0oIvRxzlOgv7N.HPii1XMaHPYy50rKjJe6e6tPBqzmVyi	\N	\N	\N	1	2023-08-29 08:25:35.393059	2023-08-29 08:25:35.393059	127.0.0.1	127.0.0.1	Faustino	Treutel	1991-08-10	stephenie 69	Leuschkeborough	Minnesota	Central African Republic	64786	3324 Lubowitz Hills	Senior Java Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:00.343358	2023-08-29 08:28:08.807479	\N	{1}	\N	\N	\N
61	hershel@fadel-toy.example	$2a$12$6FVLJPglNlDxa7plzZWOIOk/I5B2qCudKlhgW78NBkOumvbQhI7Q6	\N	\N	\N	0	\N	\N	\N	\N	Randal	Franecki	1995-07-22	sidney 70	Port Eliseo	Nebraska	Hong Kong	82415-3077	90096 Trent Place	Senior Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:00.819932	2023-08-28 12:09:08.458139	\N	{}	\N	\N	\N
62	gia@larkin.example	$2a$12$50O/zItCNMOjBlOnqfqMwuSMjv6RLOMpsB6sAHuxiLM60zE/.8mKe	\N	\N	\N	0	\N	\N	\N	\N	Charlott	Erdman	1995-07-31	junior 71	North Valentina	Alabama	Canada	68518	65835 Steven Place	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:01.297544	2023-08-28 12:09:08.465251	\N	{}	\N	\N	\N
63	tamra@rempel.example	$2a$12$N3JZT24f6pf669bzq1mIPOd6fy2z8hWtzOF7zkRBXzgpOOVmXY66u	\N	\N	\N	0	\N	\N	\N	\N	Leeanne	Dooley	1993-07-27	bebe 72	Rennerton	Alabama	Aruba	30258-6973	41159 Schulist Points	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:01.774594	2023-08-28 12:09:08.470537	\N	{}	\N	\N	\N
64	buck.dach@goodwin-pagac.test	$2a$12$i9jrH0XSzHXwRSa1fQ3oQet2QOV9o.HcReIHYRdB/eRORAfbo3C7i	\N	\N	\N	0	\N	\N	\N	\N	Dyan	Harris	1998-08-08	columbus 73	East Enochberg	Alaska	Japan	75109-7031	26924 Lillia Plaza	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:02.252143	2023-08-28 12:09:08.47664	\N	{}	\N	\N	\N
65	wilbur@klein.example	$2a$12$tWPtKL5l0FGj/KGFGAggbupmR9KiJDYoPSZ6M9FvN7efFByX3r6bG	\N	\N	\N	0	\N	\N	\N	\N	Roselle	Borer	1987-08-05	clarence 74	Ortizchester	Idaho	South Africa	48347-5638	950 Harvey Club	Senior Front End Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:02.729159	2023-08-28 12:09:08.481116	\N	{}	\N	\N	\N
68	daphne@kuhn-cruickshank.example	$2a$12$dx7tRGj1kctLy2pq/lutwO1mW5z0LCLWZIbkz85a3qjZg3GUF1icG	\N	\N	\N	0	\N	\N	\N	\N	Rickey	Rau	1992-08-11	michel 77	Philomenaton	New Jersey	Czech Republic	07808-9776	4758 Lester Spurs	Senior Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:04.162203	2023-08-28 12:09:08.499392	\N	{}	\N	\N	\N
69	roderick.pagac@blanda.example	$2a$12$IUUbK4Z.gJSdFEWAKx3U6.uq8Sk5pSd3kf2cCsrZ2fVYTCjuzZFju	\N	\N	\N	0	\N	\N	\N	\N	Mindy	Oberbrunner	1991-07-21	jose 78	Port Sierra	Georgia	Mayotte	08040	9543 Romaguera Squares	Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:04.639261	2023-08-28 12:09:08.504627	\N	{}	\N	\N	\N
70	riva.wilkinson@rau-feeney.example	$2a$12$2SLUkmC/TpBpIWPETk14ROe9yrK17PN9oDZrRG3IdMXZDypV9Re.2	\N	\N	\N	0	\N	\N	\N	\N	Caitlyn	Murray	1995-07-29	dena 79	West Mikel	Iowa	Albania	93638	7251 Murphy Plaza	Senior Java Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:05.116628	2023-08-28 12:09:08.510214	\N	{}	\N	\N	\N
71	carolynn@turner-halvorson.example	$2a$12$uIWiTqu.UPr6yyIdgx86We4/VDAxwbBd2hfLdArla6rhgfj2TckTK	\N	\N	\N	0	\N	\N	\N	\N	Xavier	Swift	1992-08-05	courtney 80	North Janchester	South Dakota	Equatorial Guinea	76138-6650	84525 Morar Gateway	Senior Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:05.594923	2023-08-28 12:09:08.514606	\N	{}	\N	\N	\N
72	eddy_gibson@barton.test	$2a$12$wMuxwQBR8oawvASOSzj4MOkAu3MIVH3t9znfqrqUfYqYq3yyJadlS	\N	\N	\N	0	\N	\N	\N	\N	Earle	Hoeger	1988-08-02	cherise 81	Gleichnerburgh	Louisiana	Tuvalu	48598-9623	7919 Goldner Court	Senior Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:06.071536	2023-08-28 12:09:08.520567	\N	{}	\N	\N	\N
73	lavinia@metz.test	$2a$12$dgnbsfNh18gIFKqqGJFG3um.vaXigI1OyVAKSa5i1f.JmN57poFya	\N	\N	\N	0	\N	\N	\N	\N	Lucius	Flatley	1990-08-04	broderick 82	Lake Tyrellbury	Iowa	Trinidad and Tobago	46954	942 Mosciski Turnpike	Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:06.549767	2023-08-28 12:09:08.525999	\N	{}	\N	\N	\N
76	mark_kautzer@kuvalis-stehr.example	$2a$12$djtmZthXMitf1QX7WAnnsupY2r7bwh4YfWv88l.YBLHesnik1pqIq	\N	\N	\N	0	\N	\N	\N	\N	Hanh	Schulist	1995-07-27	chas 85	Adrienview	New Jersey	Cape Verde	36548	712 Morar Crest	Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:07.983296	2023-08-28 12:09:08.544263	\N	{}	\N	\N	\N
77	henry_ullrich@oreilly-walker.example	$2a$12$sR37oSjiac.94Y6U2yOWK.PXDZDF7I2Th7lkPDfPN6LumqgcBBHVe	\N	\N	\N	0	\N	\N	\N	\N	Tristan	O'Conner	1997-07-24	marcos 86	Erinview	Georgia	El Salvador	38749-8758	3922 Arron Lakes	Senior Java Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:08.461189	2023-08-28 12:09:08.549109	\N	{}	\N	\N	\N
78	elroy@thompson.example	$2a$12$WgA93qoZ9PuqmIJvJIFQC.DzFOqNIbSw4Mb2OZU1rEIMaZBIzsKme	\N	\N	\N	0	\N	\N	\N	\N	Lamar	Koepp	1987-08-01	gail 87	South Eura	Nevada	Iraq	62944-4590	9901 Hansen Street	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:08.938265	2023-08-28 12:09:08.555731	\N	{}	\N	\N	\N
79	natasha.anderson@bailey.test	$2a$12$LnNfWOq9E52o470EwXU7PeEKu/KbGWtHXeB8xITXNFERDQGAq1ei6	\N	\N	\N	0	\N	\N	\N	\N	Antonina	Kovacek	1998-08-06	karrie 88	North Napoleonmouth	Ohio	Uganda	69006	3820 Conroy Motorway	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:09.41621	2023-08-28 12:09:08.562544	\N	{}	\N	\N	\N
80	adalberto@yundt.test	$2a$12$yBbzCB5H0GJL4UX/axT8TuI01jVISqCvYOkER/unKXNwJWDjvdWK6	\N	\N	\N	0	\N	\N	\N	\N	Antonetta	Yundt	1987-08-03	kenneth 89	West Adena	Illinois	Netherlands	22979	953 Orn Field	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:09.894137	2023-08-28 12:09:08.568734	\N	{}	\N	\N	\N
81	mary@brakus-terry.test	$2a$12$02aCBJI6RnpPXopnys.Rouxs3JQxmxx5oYVMTzAmZrKFerA0eDopG	\N	\N	\N	0	\N	\N	\N	\N	Terry	Mueller	1994-07-22	cordell 90	South Hazel	West Virginia	Chad	45006-6374	29287 Parker Ports	Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:10.372825	2023-08-28 12:09:08.573356	\N	{}	\N	\N	\N
87	lloyd.treutel@friesen.example	$2a$12$N0Eghua49hLsXnewTck/rufBO4Mr3PZZo953ffRftyLRbSV6K7yWO	\N	\N	\N	3	2023-10-10 12:29:11.870271	2023-10-10 12:08:45.521729	::1	::1	Christin	Leffler	1991-07-18	neville 96	Lateshaberg	Nevada	Cayman Islands	70964	97330 Evette Pines	Senior Front End Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:13.70122	2023-10-10 12:29:11.870796	\N	{}	\N	\N	\N
84	janise@walsh.test	$2a$12$xZYps6gu2WRm4GR9jAkGk.0Cr.OT3Qu1b10UfKbz32Iw3BJXVBCgu	\N	\N	\N	0	\N	\N	\N	\N	Elbert	Cole	1997-08-03	monty 93	West Blancheburgh	Washington	Timor-Leste	13253-7030	680 Spencer Knolls	Senior Java Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:11.820394	2023-08-28 12:09:08.590915	\N	{}	\N	\N	\N
85	desmond@mitchell.example	$2a$12$s4veMcjAgiDc2O/UirkZ1.o83NqLyLRgNQr.zkx.FV6PXPxLfOH2K	\N	\N	\N	0	\N	\N	\N	\N	Guillermina	Waters	1990-08-16	harley 94	New Luigiton	Rhode Island	Papua New Guinea	33735	61949 Jerde Path	Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:12.297831	2023-08-28 12:09:08.597371	\N	{}	\N	\N	\N
86	kurt@becker.test	$2a$12$6nPTht.pUdczqN5Q3hoTV.kd.sl/kPu/dDouMriG8d4KelZ8rj7ta	\N	\N	\N	0	\N	\N	\N	\N	Maybelle	Barton	1999-08-02	tyree 95	South Gertude	Hawaii	Guernsey	92525-4878	863 Kulas Garden	Senior Java Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:12.775413	2023-08-28 12:09:08.603623	\N	{}	\N	\N	\N
88	sidney@oberbrunner-mohr.test	$2a$12$7J2WebZtGN/mrd2q2aG53uEAZsljyStNFcbknkx1teKMwvckpsxXa	\N	\N	\N	0	\N	\N	\N	\N	Fe	Keebler	1990-08-05	doretha 97	South Delmarhaven	Wyoming	Bhutan	77362-9815	7174 Batz Skyway	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:14.178295	2023-08-28 12:09:08.613597	\N	{}	\N	\N	\N
90	natashia.hettinger@kulas-bogisich.test	$2a$12$TImvNrxwnilrOSHqmq0E0.Fcyxld/CK3NgxDaR8M.nQVdpltXBaGm	\N	\N	\N	1	2023-08-07 08:27:29.93099	2023-08-07 08:27:29.93099	127.0.0.1	127.0.0.1	Dick	Ernser	1997-08-15	marshall 99	Ericstad	Indiana	Ukraine	92768-9891	878 Boyer Crossroad	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:15.133983	2023-08-28 12:09:08.618295	\N	{100}	\N	\N	\N
95	stacey_harvey@veum.test	$2a$12$8kKeaVfPA95T7LyOEIrnSOvH/BUOnvxs3R9Xm29RgnGdJ4VtjcbNO	\N	\N	\N	2	2023-10-10 12:07:55.630435	2023-08-07 11:50:34.274294	::1	::1	Shawana	Brown	1990-08-09	wilbur 104	Lerahaven	Wyoming	Venezuela	25613-6881	60238 Deangelo Shore	Senior Front End Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:17.519743	2023-10-10 12:07:55.631123	\N	{1}	\N	\N	\N
93	dell@lynch-lang.test	$2a$12$7U2tD33e9z8AWZwu2TcigOhqN6iXJuERFrXYLX4dEfXx7qw7pFj2K	\N	\N	\N	1	2023-08-07 12:00:49.595302	2023-08-07 12:00:49.595302	::1	::1	Li	Ondricka	1994-08-12	evon 102	Lake Elmoville	West Virginia	Saint Pierre and Miquelon	98719	19153 Michale Valley	Senior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:16.565767	2023-08-28 12:09:08.637995	\N	{1}	\N	\N	\N
94	jayson_ruecker@cronin.test	$2a$12$U5mIlDnYpMqTUc9xIIlRxOP9ar1eqwW1T1sYuGpsNNy3EWoqdLW/6	\N	\N	\N	1	2023-08-07 12:00:13.200548	2023-08-07 12:00:13.200548	::1	::1	Newton	Cartwright	1993-08-03	donnell 103	Caseyfort	North Carolina	Western Sahara	09023-4800	5405 Deangelo Spurs	Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:17.042822	2023-08-28 12:09:08.642869	\N	{}	\N	\N	\N
96	emil.roberts@hermiston-tremblay.test	$2a$12$G1s8jtHesKu4nIwgUvuVNeL6hOg5caaSNB5oRaiv/qsER0k6lCJqe	\N	\N	\N	1	2023-08-07 11:52:22.979374	2023-08-07 11:52:22.979374	::1	::1	Mei	Torp	1994-08-10	natividad 105	Chungview	Arkansas	Suriname	12825	5978 Roy Mill	Senior Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:17.996858	2023-08-28 12:09:08.659387	\N	{}	\N	\N	\N
97	karole@jacobson-bins.example	$2a$12$DweAlpYGiamZIOoXoHSeS.LghJB3Y8WAqKqSqQ1UaFrQl.2/80VLq	\N	\N	\N	1	2023-08-07 11:52:51.887813	2023-08-07 11:52:51.887813	::1	::1	Nick	Gerlach	1991-08-11	lula 106	North Maribeth	Wyoming	Grenada	95264-6253	6077 Wilton Knolls	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:18.473836	2023-08-28 12:09:08.665969	\N	{}	\N	\N	\N
98	richie_davis@bradtke.example	$2a$12$MB0fR0lvrlVORdctfyBNbulIIpLoGDxXlXHLWFKcH8etBTCHuviCO	\N	\N	\N	1	2023-08-07 11:53:21.015362	2023-08-07 11:53:21.015362	::1	::1	Domingo	Ferry	1996-08-02	darius 107	East Erwin	Mississippi	Sweden	76269	7355 Jaskolski Lodge	Junior Full Stack Ruby on Rails Developer	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	2023-07-17 09:11:18.951745	2023-08-28 12:09:08.678326	\N	{1}	\N	\N	\N
\.


--
-- Data for Name: work_experiences; Type: TABLE DATA; Schema: public; Owner: pawan_postgres
--

COPY public.work_experiences (id, start_date, end_date, job_title, employment_type, location, location_type, currently_working_here, description, company, user_id, created_at, updated_at) FROM stdin;
1	2020-01-12	2022-12-05	Senior Full Stack ROR Developer	Freelance	Indore, India	On-site	f	I worked here as Full Stack Rails Developer.	Gold Info System PVT LTD	1	2023-07-28 08:28:54.352619	2023-07-28 10:46:38.012356
3	2023-01-01	\N	Senior Ruby On Rails Developer	Full-time	Indore, India	Hybrid	t	I just started working here.	Wipro Infotecg	1	2023-07-28 11:13:00.82798	2023-07-28 11:13:00.82798
4	2022-11-16	\N	Jr. Backend ROR Developer 	Full-time	Indore	Hybrid	t	Currently working here.	Appsimpact Technology 	101	2023-08-28 08:41:56.077452	2023-08-28 08:41:56.077452
5	2021-12-01	2022-11-15	Frontend Developer 	Full-time	Indore	On-site	f	Frontend Developer 	Appsimpact Technology 	101	2023-08-28 11:38:14.661716	2023-08-28 11:38:14.661716
6	2021-12-01	\N	Full Stack ROR Developer 	Full-time	Indore	On-site	t	Full Stack ROR Developer 	Appsimpact Technology 	102	2023-08-29 11:14:22.850451	2023-08-29 11:14:22.850451
10	2020-01-20	\N	Jr. ROR Backend Developer	Full-time	Indore, India	Remote	t	Jr.ROR Backend Developer	Some Company	50	2023-09-27 15:22:13.345814	2023-09-27 15:22:13.345814
11	2020-10-20	\N	Senior Ruby On Rails Developer	Full-time	Indore, India	Hybrid	t	Senior Ruby On Rails Developer	Some Company	10	2023-09-28 06:20:51.754126	2023-09-28 06:20:51.754126
12	2018-01-01	2020-10-01	Jr. ROR Developer	Full-time	Indore	On-site	f	Jr. ROR Developer	ABC Company	10	2023-09-28 07:00:28.992021	2023-09-28 07:00:28.992021
13	2020-01-20	\N	Full Stack ROR Developer	Full-time	Indore	Hybrid	t	Full Stack ROR Developer	XYZ Company	15	2023-09-28 07:20:13.284268	2023-09-28 07:20:13.284268
14	2023-05-01	\N	React Developer	Internship	Indore	On-site	t	React Developer 	ABC Company	20	2023-09-28 07:28:48.363507	2023-09-28 07:28:48.363507
15	2023-03-01	\N	React Developer	Internship	Indore	On-site	t	React Developer	XYZ Company	21	2023-09-28 08:21:40.881705	2023-09-28 08:21:40.881705
16	2023-04-01	\N	Angular Developer	Internship	Indore	On-site	t	Angular is a development platform, built on TypeScript. As a platform, Angular includes: A component-based framework for building scalable web applications. A collection of well-integrated libraries that cover a wide variety of features, including routing, forms management, client-server communication, and more.	XYZ Company	22	2023-09-28 08:27:15.186165	2023-09-28 08:27:15.186165
17	2023-05-01	\N	Php Developer	Internship	Indore	On-site	t	Php Developer	XYZ Company	25	2023-09-28 09:17:00.502176	2023-09-28 09:17:00.502176
\.


--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.action_text_rich_texts_id_seq', 1, false);


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 166, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 166, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.articles_id_seq', 1, false);


--
-- Name: blogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.blogs_id_seq', 3, true);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.comments_id_seq', 31, true);


--
-- Name: connections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.connections_id_seq', 73, true);


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.events_id_seq', 9, true);


--
-- Name: follows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.follows_id_seq', 1, false);


--
-- Name: job_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.job_categories_id_seq', 7, true);


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.jobs_id_seq', 11, true);


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.likes_id_seq', 47, true);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.messages_id_seq', 14, true);


--
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.notifications_id_seq', 3894, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.pages_id_seq', 3, true);


--
-- Name: post_visits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.post_visits_id_seq', 326, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 80, true);


--
-- Name: relationships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.relationships_id_seq', 19, true);


--
-- Name: reposts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.reposts_id_seq', 10, true);


--
-- Name: rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.rooms_id_seq', 3, true);


--
-- Name: shares_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.shares_id_seq', 84, true);


--
-- Name: skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.skills_id_seq', 24, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 118, true);


--
-- Name: work_experiences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pawan_postgres
--

SELECT pg_catalog.setval('public.work_experiences_id_seq', 17, true);


--
-- Name: action_text_rich_texts action_text_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.action_text_rich_texts
    ADD CONSTRAINT action_text_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: blogs blogs_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: connections connections_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.connections
    ADD CONSTRAINT connections_pkey PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: follows follows_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.follows
    ADD CONSTRAINT follows_pkey PRIMARY KEY (id);


--
-- Name: job_categories job_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.job_categories
    ADD CONSTRAINT job_categories_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: post_visits post_visits_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.post_visits
    ADD CONSTRAINT post_visits_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: relationships relationships_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.relationships
    ADD CONSTRAINT relationships_pkey PRIMARY KEY (id);


--
-- Name: reposts reposts_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.reposts
    ADD CONSTRAINT reposts_pkey PRIMARY KEY (id);


--
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: shares shares_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.shares
    ADD CONSTRAINT shares_pkey PRIMARY KEY (id);


--
-- Name: skills skills_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: work_experiences work_experiences_pkey; Type: CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.work_experiences
    ADD CONSTRAINT work_experiences_pkey PRIMARY KEY (id);


--
-- Name: index_action_text_rich_texts_uniqueness; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE UNIQUE INDEX index_action_text_rich_texts_uniqueness ON public.action_text_rich_texts USING btree (record_type, record_id, name);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_articles_on_user_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_articles_on_user_id ON public.articles USING btree (user_id);


--
-- Name: index_comments_on_commentable; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_comments_on_commentable ON public.comments USING btree (commentable_type, commentable_id);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- Name: index_connections_on_user_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_connections_on_user_id ON public.connections USING btree (user_id);


--
-- Name: index_events_on_user_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_events_on_user_id ON public.events USING btree (user_id);


--
-- Name: index_follows_on_page_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_follows_on_page_id ON public.follows USING btree (page_id);


--
-- Name: index_follows_on_user_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_follows_on_user_id ON public.follows USING btree (user_id);


--
-- Name: index_jobs_on_job_category_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_jobs_on_job_category_id ON public.jobs USING btree (job_category_id);


--
-- Name: index_jobs_on_user_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_jobs_on_user_id ON public.jobs USING btree (user_id);


--
-- Name: index_likes_on_post_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_likes_on_post_id ON public.likes USING btree (post_id);


--
-- Name: index_likes_on_user_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_likes_on_user_id ON public.likes USING btree (user_id);


--
-- Name: index_notifications_on_item; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_notifications_on_item ON public.notifications USING btree (item_type, item_id);


--
-- Name: index_notifications_on_user_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_notifications_on_user_id ON public.notifications USING btree (user_id);


--
-- Name: index_pages_on_user_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_pages_on_user_id ON public.pages USING btree (user_id);


--
-- Name: index_post_visits_on_post_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_post_visits_on_post_id ON public.post_visits USING btree (post_id);


--
-- Name: index_post_visits_on_user_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_post_visits_on_user_id ON public.post_visits USING btree (user_id);


--
-- Name: index_posts_on_page_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_posts_on_page_id ON public.posts USING btree (page_id);


--
-- Name: index_posts_on_user_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_posts_on_user_id ON public.posts USING btree (user_id);


--
-- Name: index_reposts_on_post_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_reposts_on_post_id ON public.reposts USING btree (post_id);


--
-- Name: index_reposts_on_user_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_reposts_on_user_id ON public.reposts USING btree (user_id);


--
-- Name: index_shares_on_post_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_shares_on_post_id ON public.shares USING btree (post_id);


--
-- Name: index_shares_on_recipient_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_shares_on_recipient_id ON public.shares USING btree (recipient_id);


--
-- Name: index_shares_on_sender_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_shares_on_sender_id ON public.shares USING btree (sender_id);


--
-- Name: index_skills_on_user_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_skills_on_user_id ON public.skills USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: index_work_experiences_on_user_id; Type: INDEX; Schema: public; Owner: pawan_postgres
--

CREATE INDEX index_work_experiences_on_user_id ON public.work_experiences USING btree (user_id);


--
-- Name: comments fk_rails_03de2dc08c; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: events fk_rails_0cb5590091; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT fk_rails_0cb5590091 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: follows fk_rails_1b8f05774b; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.follows
    ADD CONSTRAINT fk_rails_1b8f05774b FOREIGN KEY (page_id) REFERENCES public.pages(id);


--
-- Name: likes fk_rails_1e09b5dabf; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT fk_rails_1e09b5dabf FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: follows fk_rails_32479bd030; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.follows
    ADD CONSTRAINT fk_rails_32479bd030 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: articles fk_rails_3d31dad1cc; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT fk_rails_3d31dad1cc FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: posts fk_rails_5b5ddfd518; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT fk_rails_5b5ddfd518 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: connections fk_rails_82c278253d; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.connections
    ADD CONSTRAINT fk_rails_82c278253d FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: pages fk_rails_84a58494eb; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT fk_rails_84a58494eb FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: likes fk_rails_87a8aac469; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT fk_rails_87a8aac469 FOREIGN KEY (post_id) REFERENCES public.posts(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: shares fk_rails_9bf15e5081; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.shares
    ADD CONSTRAINT fk_rails_9bf15e5081 FOREIGN KEY (post_id) REFERENCES public.posts(id);


--
-- Name: post_visits fk_rails_abdfcc139c; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.post_visits
    ADD CONSTRAINT fk_rails_abdfcc139c FOREIGN KEY (post_id) REFERENCES public.posts(id);


--
-- Name: notifications fk_rails_b080fb4855; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_rails_b080fb4855 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: work_experiences fk_rails_bc1907c067; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.work_experiences
    ADD CONSTRAINT fk_rails_bc1907c067 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: reposts fk_rails_c395f67885; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.reposts
    ADD CONSTRAINT fk_rails_c395f67885 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: jobs fk_rails_d609c96dfe; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT fk_rails_d609c96dfe FOREIGN KEY (job_category_id) REFERENCES public.job_categories(id);


--
-- Name: posts fk_rails_d6d931d14f; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT fk_rails_d6d931d14f FOREIGN KEY (page_id) REFERENCES public.pages(id);


--
-- Name: jobs fk_rails_df6238c8a6; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT fk_rails_df6238c8a6 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: reposts fk_rails_e9f75e0f73; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.reposts
    ADD CONSTRAINT fk_rails_e9f75e0f73 FOREIGN KEY (post_id) REFERENCES public.posts(id);


--
-- Name: skills fk_rails_ee47b87d76; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT fk_rails_ee47b87d76 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: post_visits fk_rails_f8427f28d6; Type: FK CONSTRAINT; Schema: public; Owner: pawan_postgres
--

ALTER TABLE ONLY public.post_visits
    ADD CONSTRAINT fk_rails_f8427f28d6 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

