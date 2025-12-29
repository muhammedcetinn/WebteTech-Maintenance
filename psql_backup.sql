--
-- PostgreSQL database cluster dump
--

\restrict HyXPIsjvGkGryamPBjkcnnyaEtTeYUcbxhIINNY0U0t1BeRB6QpEyGn18avfi5v

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE IF EXISTS gamzelieczanem_db;
DROP DATABASE IF EXISTS znlqr;




--
-- Drop roles
--

DROP ROLE IF EXISTS gamzelieczanem_user;
DROP ROLE IF EXISTS postgres;
DROP ROLE IF EXISTS znlqr_user;


--
-- Roles
--

CREATE ROLE gamzelieczanem_user;
ALTER ROLE gamzelieczanem_user WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:S301cvJZbU4LUbWLZxA7IA==$orZRAS88WjZPwqOIH+X5aVxXsN28L3M7plcWwixTU5Q=:F03c/Dhl4Vu22/LFEsXAIshoKwFOq0L885CkQMOFLI8=';
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;
CREATE ROLE znlqr_user;
ALTER ROLE znlqr_user WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:ezpQv8Hx8jfjYC3IxDbryw==$yoONSNjpAH92f4TLtxceP7ScudigiZOaN0VZIqSGFj4=:elrCfsft5/jwEO01+akej27sY8CsuJxEyiCH7SirQhA=';






\unrestrict HyXPIsjvGkGryamPBjkcnnyaEtTeYUcbxhIINNY0U0t1BeRB6QpEyGn18avfi5v

--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

\restrict OkTnkFCf2WkDv8fva58SqxXkyV8fLsuU3Af96XVxuaT8ZjQtJ0SdK1jOIoQVtkN

-- Dumped from database version 14.20 (Ubuntu 14.20-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.20 (Ubuntu 14.20-0ubuntu0.22.04.1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE template1 OWNER TO postgres;

\unrestrict OkTnkFCf2WkDv8fva58SqxXkyV8fLsuU3Af96XVxuaT8ZjQtJ0SdK1jOIoQVtkN
\connect template1
\restrict OkTnkFCf2WkDv8fva58SqxXkyV8fLsuU3Af96XVxuaT8ZjQtJ0SdK1jOIoQVtkN

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

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\unrestrict OkTnkFCf2WkDv8fva58SqxXkyV8fLsuU3Af96XVxuaT8ZjQtJ0SdK1jOIoQVtkN
\connect template1
\restrict OkTnkFCf2WkDv8fva58SqxXkyV8fLsuU3Af96XVxuaT8ZjQtJ0SdK1jOIoQVtkN

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

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict OkTnkFCf2WkDv8fva58SqxXkyV8fLsuU3Af96XVxuaT8ZjQtJ0SdK1jOIoQVtkN

--
-- Database "gamzelieczanem_db" dump
--

--
-- PostgreSQL database dump
--

\restrict p1gG8a7spI8FfdIIxNVDcXzB1g58qOuAZy72R0QVuwc60gg1axPce88R0M9A1dP

-- Dumped from database version 14.20 (Ubuntu 14.20-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.20 (Ubuntu 14.20-0ubuntu0.22.04.1)

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

--
-- Name: gamzelieczanem_db; Type: DATABASE; Schema: -; Owner: gamzelieczanem_user
--

CREATE DATABASE gamzelieczanem_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE gamzelieczanem_db OWNER TO gamzelieczanem_user;

\unrestrict p1gG8a7spI8FfdIIxNVDcXzB1g58qOuAZy72R0QVuwc60gg1axPce88R0M9A1dP
\connect gamzelieczanem_db
\restrict p1gG8a7spI8FfdIIxNVDcXzB1g58qOuAZy72R0QVuwc60gg1axPce88R0M9A1dP

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

--
-- Name: BillingType; Type: TYPE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TYPE public."BillingType" AS ENUM (
    'INDIVIDUAL',
    'CORPORATE'
);


ALTER TYPE public."BillingType" OWNER TO gamzelieczanem_user;

--
-- Name: CouponType; Type: TYPE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TYPE public."CouponType" AS ENUM (
    'PERCENTAGE',
    'FIXED_AMOUNT',
    'FREE_SHIPPING'
);


ALTER TYPE public."CouponType" OWNER TO gamzelieczanem_user;

--
-- Name: NotificationType; Type: TYPE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TYPE public."NotificationType" AS ENUM (
    'ORDER_CREATED',
    'ORDER_CONFIRMED',
    'ORDER_SHIPPED',
    'ORDER_DELIVERED',
    'ORDER_CANCELLED',
    'REVIEW_APPROVED',
    'COUPON_RECEIVED',
    'PRICE_DROP',
    'BACK_IN_STOCK',
    'SYSTEM'
);


ALTER TYPE public."NotificationType" OWNER TO gamzelieczanem_user;

--
-- Name: OrderStatus; Type: TYPE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TYPE public."OrderStatus" AS ENUM (
    'PENDING',
    'CONFIRMED',
    'PREPARING',
    'SHIPPED',
    'DELIVERED',
    'CANCELLED',
    'RETURNED'
);


ALTER TYPE public."OrderStatus" OWNER TO gamzelieczanem_user;

--
-- Name: PaymentStatus; Type: TYPE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TYPE public."PaymentStatus" AS ENUM (
    'PENDING',
    'PAID',
    'FAILED',
    'REFUNDED'
);


ALTER TYPE public."PaymentStatus" OWNER TO gamzelieczanem_user;

--
-- Name: UserRole; Type: TYPE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TYPE public."UserRole" AS ENUM (
    'CUSTOMER',
    'ADMIN',
    'SUPER_ADMIN'
);


ALTER TYPE public."UserRole" OWNER TO gamzelieczanem_user;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: addresses; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.addresses (
    id text NOT NULL,
    "userId" text NOT NULL,
    title text NOT NULL,
    "firstName" text NOT NULL,
    "lastName" text NOT NULL,
    phone text NOT NULL,
    city text NOT NULL,
    district text NOT NULL,
    neighborhood text NOT NULL,
    address text NOT NULL,
    "postalCode" text,
    "isDefault" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.addresses OWNER TO gamzelieczanem_user;

--
-- Name: banners; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.banners (
    id text NOT NULL,
    title text,
    "imageUrl" text NOT NULL,
    "mobileImageUrl" text,
    "linkUrl" text,
    "position" text NOT NULL,
    "isActive" boolean DEFAULT true NOT NULL,
    "sortOrder" integer DEFAULT 0 NOT NULL,
    "startDate" timestamp(3) without time zone,
    "endDate" timestamp(3) without time zone,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.banners OWNER TO gamzelieczanem_user;

--
-- Name: brands; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.brands (
    id text NOT NULL,
    name text NOT NULL,
    slug text NOT NULL,
    logo text,
    description text,
    "isActive" boolean DEFAULT true NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.brands OWNER TO gamzelieczanem_user;

--
-- Name: cart_items; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.cart_items (
    id text NOT NULL,
    "userId" text,
    "sessionId" text,
    "productId" text NOT NULL,
    "productVariantId" text,
    quantity integer DEFAULT 1 NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.cart_items OWNER TO gamzelieczanem_user;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.categories (
    id text NOT NULL,
    name text NOT NULL,
    slug text NOT NULL,
    description text,
    image text,
    "parentId" text,
    "isActive" boolean DEFAULT true NOT NULL,
    "sortOrder" integer DEFAULT 0 NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.categories OWNER TO gamzelieczanem_user;

--
-- Name: contact_messages; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.contact_messages (
    id text NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    phone text,
    subject text,
    message text NOT NULL,
    "isRead" boolean DEFAULT false NOT NULL,
    "readAt" timestamp(3) without time zone,
    "repliedAt" timestamp(3) without time zone,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.contact_messages OWNER TO gamzelieczanem_user;

--
-- Name: coupon_categories; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.coupon_categories (
    id text NOT NULL,
    "couponId" text NOT NULL,
    "categoryId" text NOT NULL
);


ALTER TABLE public.coupon_categories OWNER TO gamzelieczanem_user;

--
-- Name: coupon_products; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.coupon_products (
    id text NOT NULL,
    "couponId" text NOT NULL,
    "productId" text NOT NULL
);


ALTER TABLE public.coupon_products OWNER TO gamzelieczanem_user;

--
-- Name: coupon_usages; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.coupon_usages (
    id text NOT NULL,
    "couponId" text NOT NULL,
    "userId" text,
    "orderId" text,
    "usedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.coupon_usages OWNER TO gamzelieczanem_user;

--
-- Name: coupons; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.coupons (
    id text NOT NULL,
    code text NOT NULL,
    description text,
    type public."CouponType" NOT NULL,
    value numeric(10,2) NOT NULL,
    "minOrderAmount" numeric(10,2),
    "maxDiscountAmount" numeric(10,2),
    "usageLimit" integer,
    "usageLimitPerUser" integer DEFAULT 1 NOT NULL,
    "usedCount" integer DEFAULT 0 NOT NULL,
    "startDate" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "endDate" timestamp(3) without time zone,
    "isFirstOrderOnly" boolean DEFAULT false NOT NULL,
    "isActive" boolean DEFAULT true NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.coupons OWNER TO gamzelieczanem_user;

--
-- Name: faqs; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.faqs (
    id text NOT NULL,
    question text NOT NULL,
    answer text NOT NULL,
    category text,
    "isActive" boolean DEFAULT true NOT NULL,
    "sortOrder" integer DEFAULT 0 NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.faqs OWNER TO gamzelieczanem_user;

--
-- Name: image_folders; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.image_folders (
    id text NOT NULL,
    name text NOT NULL,
    "displayName" text NOT NULL,
    description text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.image_folders OWNER TO gamzelieczanem_user;

--
-- Name: images; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.images (
    id text NOT NULL,
    filename text NOT NULL,
    "originalName" text NOT NULL,
    "mimeType" text NOT NULL,
    size integer NOT NULL,
    width integer,
    height integer,
    path text NOT NULL,
    url text NOT NULL,
    alt text,
    title text,
    folder text,
    "usedIn" text,
    "entityId" text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.images OWNER TO gamzelieczanem_user;

--
-- Name: invoices; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.invoices (
    id text NOT NULL,
    "orderId" text NOT NULL,
    "invoiceNumber" text NOT NULL,
    "invoiceDate" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "pdfUrl" text,
    "sentAt" timestamp(3) without time zone,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.invoices OWNER TO gamzelieczanem_user;

--
-- Name: notifications; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.notifications (
    id text NOT NULL,
    "userId" text NOT NULL,
    type public."NotificationType" NOT NULL,
    title text NOT NULL,
    message text NOT NULL,
    data text,
    "linkUrl" text,
    "isRead" boolean DEFAULT false NOT NULL,
    "readAt" timestamp(3) without time zone,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.notifications OWNER TO gamzelieczanem_user;

--
-- Name: order_items; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.order_items (
    id text NOT NULL,
    "orderId" text NOT NULL,
    "productId" text NOT NULL,
    "productVariantId" text,
    "variantInfo" text,
    quantity integer NOT NULL,
    price numeric(10,2) NOT NULL,
    total numeric(10,2) NOT NULL
);


ALTER TABLE public.order_items OWNER TO gamzelieczanem_user;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.orders (
    id text NOT NULL,
    "orderNumber" text NOT NULL,
    "userId" text,
    "addressId" text,
    "guestEmail" text,
    "guestPhone" text,
    "guestFirstName" text,
    "guestLastName" text,
    "guestTcNumber" text,
    "shippingFirstName" text,
    "shippingLastName" text,
    "shippingPhone" text,
    "shippingCity" text,
    "shippingDistrict" text,
    "shippingNeighborhood" text,
    "shippingAddress" text,
    "shippingPostalCode" text,
    "billingType" public."BillingType" DEFAULT 'INDIVIDUAL'::public."BillingType" NOT NULL,
    "billingFirstName" text,
    "billingLastName" text,
    "billingTcNumber" text,
    "billingCompanyName" text,
    "billingTaxNumber" text,
    "billingTaxOffice" text,
    "billingCity" text,
    "billingDistrict" text,
    "billingAddress" text,
    subtotal numeric(10,2) NOT NULL,
    "shippingCost" numeric(10,2) DEFAULT 0 NOT NULL,
    discount numeric(10,2) DEFAULT 0 NOT NULL,
    "couponId" text,
    "couponCode" text,
    total numeric(10,2) NOT NULL,
    status public."OrderStatus" DEFAULT 'PENDING'::public."OrderStatus" NOT NULL,
    "paymentStatus" public."PaymentStatus" DEFAULT 'PENDING'::public."PaymentStatus" NOT NULL,
    "paymentMethod" text,
    "paymentId" text,
    "shippingMethodId" text,
    "shippingMethodName" text,
    "trackingNumber" text,
    "shippedAt" timestamp(3) without time zone,
    "deliveredAt" timestamp(3) without time zone,
    note text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.orders OWNER TO gamzelieczanem_user;

--
-- Name: pages; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.pages (
    id text NOT NULL,
    title text NOT NULL,
    slug text NOT NULL,
    content text NOT NULL,
    "metaTitle" text,
    "metaDescription" text,
    "isActive" boolean DEFAULT true NOT NULL,
    "sortOrder" integer DEFAULT 0 NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.pages OWNER TO gamzelieczanem_user;

--
-- Name: product_images; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.product_images (
    id text NOT NULL,
    "productId" text NOT NULL,
    url text NOT NULL,
    alt text,
    "sortOrder" integer DEFAULT 0 NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.product_images OWNER TO gamzelieczanem_user;

--
-- Name: product_variant_images; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.product_variant_images (
    id text NOT NULL,
    "productVariantId" text NOT NULL,
    url text NOT NULL,
    alt text,
    "sortOrder" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.product_variant_images OWNER TO gamzelieczanem_user;

--
-- Name: product_variant_options; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.product_variant_options (
    id text NOT NULL,
    "productVariantId" text NOT NULL,
    "variantOptionId" text NOT NULL
);


ALTER TABLE public.product_variant_options OWNER TO gamzelieczanem_user;

--
-- Name: product_variant_types; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.product_variant_types (
    id text NOT NULL,
    "productId" text NOT NULL,
    "variantTypeId" text NOT NULL
);


ALTER TABLE public.product_variant_types OWNER TO gamzelieczanem_user;

--
-- Name: product_variants; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.product_variants (
    id text NOT NULL,
    "productId" text NOT NULL,
    sku text NOT NULL,
    barcode text,
    price numeric(10,2) NOT NULL,
    "costPrice" numeric(10,2),
    stock integer DEFAULT 0 NOT NULL,
    "isActive" boolean DEFAULT true NOT NULL,
    "sortOrder" integer DEFAULT 0 NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.product_variants OWNER TO gamzelieczanem_user;

--
-- Name: products; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.products (
    id text NOT NULL,
    name text NOT NULL,
    slug text NOT NULL,
    description text,
    "shortDescription" text,
    sku text NOT NULL,
    barcode text,
    price numeric(10,2) NOT NULL,
    "compareAtPrice" numeric(10,2),
    "costPrice" numeric(10,2),
    stock integer DEFAULT 0 NOT NULL,
    "hasVariants" boolean DEFAULT false NOT NULL,
    "lowStockThreshold" integer DEFAULT 10 NOT NULL,
    weight numeric(10,3),
    "categoryId" text NOT NULL,
    "brandId" text,
    "isActive" boolean DEFAULT true NOT NULL,
    "isFeatured" boolean DEFAULT false NOT NULL,
    "requiresPrescription" boolean DEFAULT false NOT NULL,
    "metaTitle" text,
    "metaDescription" text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.products OWNER TO gamzelieczanem_user;

--
-- Name: reviews; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.reviews (
    id text NOT NULL,
    "userId" text NOT NULL,
    "productId" text NOT NULL,
    rating integer NOT NULL,
    title text,
    comment text,
    "isApproved" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.reviews OWNER TO gamzelieczanem_user;

--
-- Name: settings; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.settings (
    id text NOT NULL,
    key text NOT NULL,
    value text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.settings OWNER TO gamzelieczanem_user;

--
-- Name: shipping_methods; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.shipping_methods (
    id text NOT NULL,
    name text NOT NULL,
    description text,
    logo text,
    price numeric(10,2) NOT NULL,
    "freeShippingThreshold" numeric(10,2),
    "estimatedDays" text,
    "isActive" boolean DEFAULT true NOT NULL,
    "sortOrder" integer DEFAULT 0 NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.shipping_methods OWNER TO gamzelieczanem_user;

--
-- Name: sliders; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.sliders (
    id text NOT NULL,
    title text,
    description text,
    "imageUrl" text NOT NULL,
    "mobileImageUrl" text,
    "linkUrl" text,
    "linkTarget" text DEFAULT '_self'::text NOT NULL,
    "isActive" boolean DEFAULT true NOT NULL,
    "sortOrder" integer DEFAULT 0 NOT NULL,
    "startDate" timestamp(3) without time zone,
    "endDate" timestamp(3) without time zone,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.sliders OWNER TO gamzelieczanem_user;

--
-- Name: users; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.users (
    id text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    "firstName" text,
    "lastName" text,
    phone text,
    "tcNumber" text,
    role public."UserRole" DEFAULT 'CUSTOMER'::public."UserRole" NOT NULL,
    "emailVerified" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO gamzelieczanem_user;

--
-- Name: variant_options; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.variant_options (
    id text NOT NULL,
    "variantTypeId" text NOT NULL,
    value text NOT NULL,
    "sortOrder" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.variant_options OWNER TO gamzelieczanem_user;

--
-- Name: variant_types; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.variant_types (
    id text NOT NULL,
    name text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.variant_types OWNER TO gamzelieczanem_user;

--
-- Name: wishlist_items; Type: TABLE; Schema: public; Owner: gamzelieczanem_user
--

CREATE TABLE public.wishlist_items (
    id text NOT NULL,
    "userId" text NOT NULL,
    "productId" text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.wishlist_items OWNER TO gamzelieczanem_user;

--
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.addresses (id, "userId", title, "firstName", "lastName", phone, city, district, neighborhood, address, "postalCode", "isDefault", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: banners; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.banners (id, title, "imageUrl", "mobileImageUrl", "linkUrl", "position", "isActive", "sortOrder", "startDate", "endDate", "createdAt", "updatedAt") FROM stdin;
cmjaiwhr8002d9w2oh5nh4f58	Bioderma	https://beautytribe.com/cdn/shop/files/bioderma-brand-banner.png?v=1760521017&width=1500	https://beautytribe.com/cdn/shop/files/bioderma-brand-banner.png?v=1760521017&width=1500	https://beautytribe.com/collections/bioderma?srsltid=AfmBOooRoXkfIDmq2_auX06yNC-Ijz4mXQHCyrWdoLAp-HS-2k-huT0C	home_bottom	t	0	\N	\N	2025-12-17 21:28:05.324	2025-12-17 21:28:14.243
cmjaizdw0002e9w2o3gk5p0lw	DUCRAY	https://sch-cdn.sachane.com/images/detailed/64/Ducray-homepage-banner.jpg	https://sch-cdn.sachane.com/images/detailed/64/Ducray-homepage-banner.jpg	https://sachane.com/ducray-c-3483?srsltid=AfmBOopz4Y-kYClBtELZW7wGti7Y9DwVnLjdI6P14wCVGvjpTYsiEH_R	home_bottom	t	0	\N	\N	2025-12-17 21:30:20.301	2025-12-17 21:30:20.301
cmjaj06d0002f9w2otyxz1s6e	BABE	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVFttOibSCeqHPhzf08qgWrLXFrKPT7EHw7w&s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVFttOibSCeqHPhzf08qgWrLXFrKPT7EHw7w&s	https://yourdermstore.com/collections/babe?srsltid=AfmBOoqLBh6N6cM4jBhA-RAIqhDZlzjxng54-jvxus3GITWHeZ1kuxUe	home_bottom	t	0	\N	\N	2025-12-17 21:30:57.204	2025-12-17 21:30:57.204
cmjaj1pqn002g9w2ot6epnlfb	AVENE	https://www.pharmamarket.eu/media/pages/Brand/2024/PM-Ave_ne-merkenbanner-2024.png	https://www.pharmamarket.eu/media/pages/Brand/2024/PM-Ave_ne-merkenbanner-2024.png	https://www.pharmamarket.eu/en/brands/avene.html?typeverzorging[0]=Sunscreen	home_bottom	t	0	\N	\N	2025-12-17 21:32:08.975	2025-12-17 21:32:08.975
cmjaj3umn002h9w2of1cdxq3e	COSMED	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_52q0IdaxoFoGKiLuAHCrV-2-R7YnV2GRtg&s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_52q0IdaxoFoGKiLuAHCrV-2-R7YnV2GRtg&s	https://www.sikayetvar.com/cosmed	home_bottom	t	0	\N	\N	2025-12-17 21:33:48.599	2025-12-17 21:33:48.599
cmjaj4mr3002i9w2o579b7zze	LUMİDERMA	https://www.lumiderma.com.np/wp-content/uploads/2024/09/Lumiderma-Banner-scaled.jpeg	https://www.lumiderma.com.np/wp-content/uploads/2024/09/Lumiderma-Banner-scaled.jpeg	https://www.lumiderma.com.np/about-us/	home_bottom	t	0	\N	\N	2025-12-17 21:34:25.071	2025-12-17 21:34:25.071
\.


--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.brands (id, name, slug, logo, description, "isActive", "createdAt", "updatedAt") FROM stdin;
cmjadw4ph000j9w2ok5q6a1rg	Bioderma	bioderma			t	2025-12-17 19:07:50.357	2025-12-17 19:07:50.357
cmjadzk0q000k9w2orbzw4qrk	Topıcrem	topicrem			t	2025-12-17 19:10:30.17	2025-12-17 19:10:30.17
cmjadzqj6000l9w2oaw4cte1t	Ducray	ducray			t	2025-12-17 19:10:38.611	2025-12-17 19:10:38.611
cmjae05om000m9w2o54o249tt	Babe	babe			t	2025-12-17 19:10:58.246	2025-12-17 19:10:58.246
cmjae0z73000n9w2oowzbbkyi	Lazartıgue	lazartigue			t	2025-12-17 19:11:36.496	2025-12-17 19:11:36.496
cmjae2d1c000o9w2oefb5sj18	Avene 	avene			t	2025-12-17 19:12:41.088	2025-12-17 19:12:41.088
cmjae2s0p000p9w2orxlzgy5f	Cecemed	cecemed			t	2025-12-17 19:13:00.505	2025-12-17 19:13:00.505
cmjae3vim000r9w2od1k38oei	Cosmed	cosmed			t	2025-12-17 19:13:51.695	2025-12-17 19:13:51.695
cmjae5o5l000s9w2ojeynjann	Lumiderma 	lumiderma			t	2025-12-17 19:15:15.465	2025-12-17 19:15:15.465
cmjafn0xi00159w2oxyvtjlt5	PuroBıo	purobio			t	2025-12-17 19:56:44.791	2025-12-17 19:56:44.791
cmjah4mct001i9w2omxbgxyx6	Pure By Lotus	pure-by-lotus			t	2025-12-17 20:38:25.325	2025-12-17 20:38:25.325
cmjahlezh001t9w2otvlc7hes	DEXERYL	dexeryl			t	2025-12-17 20:51:28.925	2025-12-17 20:51:28.925
cmjaimbbg002a9w2opuf67te0	La Roche	la-roche			t	2025-12-17 21:20:10.444	2025-12-17 21:20:10.444
cmjaimg9a002b9w2onixynj3l	Cerave	cerave			t	2025-12-17 21:20:16.846	2025-12-17 21:20:16.846
cmjae3dl1000q9w2ojq0z0fdy	SVR	svr			t	2025-12-17 19:13:28.453	2025-12-17 21:20:27.357
cmjalfhk500429w2ouionft3k	Pella Luce	pella-luce			t	2025-12-17 22:38:50.79	2025-12-17 22:38:50.79
\.


--
-- Data for Name: cart_items; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.cart_items (id, "userId", "sessionId", "productId", "productVariantId", quantity, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.categories (id, name, slug, description, image, "parentId", "isActive", "sortOrder", "createdAt", "updatedAt") FROM stdin;
cmjabq00v00029w2ooraxy7yy	Cilt Serumu	cilt-serumu			\N	t	1	2025-12-17 18:07:05.119	2025-12-17 18:07:05.119
cmjabr2kz00049w2ofb24qdtd	Cilt Bakım Kremi	cilt-bakim-kremi			\N	t	2	2025-12-17 18:07:55.092	2025-12-17 18:07:55.092
cmjac2kl800069w2o52xest63	Yüz Temizleyici	yuz-temizleyici			\N	t	3	2025-12-17 18:16:51.644	2025-12-17 18:16:51.644
cmjac2uh700089w2o9v8g8oia	Yüz Kremi	yuz-kremi			\N	t	4	2025-12-17 18:17:04.459	2025-12-17 18:17:04.459
cmjac34fp000a9w2o20rm6wsd	Vücut Güneş Kremi	vucut-gunes-kremi			\N	t	5	2025-12-17 18:17:17.365	2025-12-17 18:17:17.365
cmjac3d1z000c9w2oint4o6rg	Duş Jeli Kremi	dus-jeli-kremi			\N	t	6	2025-12-17 18:17:28.535	2025-12-17 18:17:28.535
cmjac43o3000e9w2oo9qjgj1k	Bebek Şampuanı	bebek-sampuani			\N	t	7	2025-12-17 18:18:03.027	2025-12-17 18:18:03.027
cmjac54wz000g9w2oieomhfin	Deodorant ve Roll on	deodorant-ve-roll-on			\N	t	8	2025-12-17 18:18:51.3	2025-12-17 18:18:51.3
cmjac5wo7000i9w2ojrlq29rj	Dudak Kremi ve Peelingi	dudak-kremi-ve-peelingi			\N	t	9	2025-12-17 18:19:27.272	2025-12-17 18:19:27.272
cmjaf9kjj00109w2ofwx4qede	Termal Su	termal-su			\N	t	10	2025-12-17 19:46:17.024	2025-12-17 19:46:17.024
cmjaflo3n00149w2ohthn32rp	Göz Farı	goz-fari			\N	t	11	2025-12-17 19:55:41.507	2025-12-17 19:55:41.507
cmjago0go001d9w2o9rr7pcah	Allık	allik			\N	t	12	2025-12-17 20:25:30.457	2025-12-17 20:25:30.457
cmjah43jh001h9w2oaiyaoya7	Güneş Kremi	gunes-kremi			\N	t	13	2025-12-17 20:38:00.941	2025-12-17 20:38:00.941
cmjahoj3g001x9w2or23ra7cq	Saç Spreyi	sac-spreyi			\N	t	14	2025-12-17 20:53:54.22	2025-12-17 20:53:54.22
cmjako9fo00399w2oj41kwm4o	Saç Maskesi	sac-maskesi			\N	t	15	2025-12-17 22:17:40.549	2025-12-17 22:17:40.549
cmjbeww6s004s9w2otehw426u	Vücut Losyonu	vucut-losyonu			\N	t	16	2025-12-18 12:24:11.764	2025-12-18 12:24:11.764
cmjbezp9x004w9w2of20w4hx3	Saç Peelingi	sac-peelingi			\N	t	17	2025-12-18 12:26:22.773	2025-12-18 12:26:22.773
cmjbf2ib100529w2o9nadwk3o	Saç Şampuanı	sac-sampuani			\N	t	18	2025-12-18 12:28:33.71	2025-12-18 12:28:33.71
cmjbfjnrt005i9w2ogqvnyebj	Saç Kremi	sac-kremi			\N	t	19	2025-12-18 12:41:53.945	2025-12-18 12:41:53.945
cmjbfm6nk005o9w2o9110fzog	Saç Serumu	sac-serumu			\N	t	20	2025-12-18 12:43:51.728	2025-12-18 12:43:51.728
cmjbfnjqi005s9w2olgzo62de	Saç Bakım Yağı	sac-bakim-yagi			\N	t	21	2025-12-18 12:44:55.338	2025-12-18 12:44:55.338
\.


--
-- Data for Name: contact_messages; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.contact_messages (id, name, email, phone, subject, message, "isRead", "readAt", "repliedAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: coupon_categories; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.coupon_categories (id, "couponId", "categoryId") FROM stdin;
\.


--
-- Data for Name: coupon_products; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.coupon_products (id, "couponId", "productId") FROM stdin;
\.


--
-- Data for Name: coupon_usages; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.coupon_usages (id, "couponId", "userId", "orderId", "usedAt") FROM stdin;
\.


--
-- Data for Name: coupons; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.coupons (id, code, description, type, value, "minOrderAmount", "maxDiscountAmount", "usageLimit", "usageLimitPerUser", "usedCount", "startDate", "endDate", "isFirstOrderOnly", "isActive", "createdAt", "updatedAt") FROM stdin;
cmjaio8o6002c9w2owc6vzbx5	HOSGELDİN20		FIXED_AMOUNT	100.00	1200.00	\N	10	1	0	2025-12-19 00:00:00	2025-12-31 00:00:00	f	t	2025-12-17 21:21:40.326	2025-12-17 21:21:40.326
\.


--
-- Data for Name: faqs; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.faqs (id, question, answer, category, "isActive", "sortOrder", "createdAt", "updatedAt") FROM stdin;
cmjaj8sw3002j9w2o2plmx4y3	Satılan kozmetik ürünleri orijinal mi?	Gamzelieczanem olarak satışa sunduğumuz tüm kozmetik ürünleri %100 orijinaldir. Ürünlerimiz doğrudan resmi distribütörlerden veya üretici firmalardan tedarik edilmekte olup, eczane güvencesiyle adınıza faturalı olarak gönderilmektedir.	Ürün Güvenilirliği	t	1	2025-12-17 21:37:39.651	2025-12-17 21:37:39.651
cmjaj9eqm002k9w2om9w9xw4v	Cilt tipime uygun ürünü nasıl seçebilirim?	Her ürünün detay sayfasında hangi cilt tipine (yağlı, kuru, hassas vb.) uygun olduğu belirtilmektedir. Kararsız kaldığınız durumlarda "Bize Sorun" butonu üzerinden uzman ekibimizle iletişime geçerek cildiniz için en doğru ürün tavsiyesini alabilirsiniz.	Kullanım ve Cilt Uyumu	t	2	2025-12-17 21:38:07.965	2025-12-17 21:38:07.965
cmjaja4ls002l9w2o16eg7fr1	Ürünlerin son kullanma tarihleri nedir?	Stoklarımızda bulunan ürünlerin raf ömürleri düzenli olarak kontrol edilmektedir. Genellikle son kullanma tarihine en az 1 yıl kalmış ürünlerin gönderimi yapılmaktadır. SKT bilgisi kutu üzerinde yer alan "açıldıktan sonra kullanım süresi" (6M, 12M gibi) sembolleriyle de takip edilebilir.	on Kullanma Tarihi (SKT)	t	3	2025-12-17 21:38:41.487	2025-12-17 21:38:41.487
cmjajaq4z002m9w2oiofw1b0k	Kozmetik ürünlerinde iade yapabilir miyim?	Hijyen ve sağlık koruma kuralları gereği; ambalajı açılmış, koruma bandı yırtılmış veya kullanılmış kozmetik ürünlerinin iadesi kabul edilememektedir. Ürünü orijinal haliyle ve faturasıyla birlikte 14 gün içinde iade edebilirsiniz.	İade Koşulları	t	4	2025-12-17 21:39:09.374	2025-12-17 21:39:09.374
cmjajbpbk002n9w2o4amfcp03	Hassas kozmetik ürünleri kargoda zarar görür mü?	Tüm siparişleriniz, özellikle cam şişeli serumlar ve hassas ambalajlı kremler, darbelere dayanıklı koruyucu patpatlar ve özel kutulama yöntemleriyle paketlenir. Eczane titizliğiyle hazırlanan paketlerimizin size hasarsız ulaşması önceliğimizdir.	Kargo ve Paketleme Güvenliği	t	5	2025-12-17 21:39:54.991	2025-12-17 21:39:54.991
cmjajcdij002o9w2oapif6pzw	Siparişimle birlikte deneme ürünü (tester) gönderiyor musunuz?	Gamzelieczanem olarak yeni ürünler deneyimlemenizi seviyoruz! Stok durumumuza ve sepet tutarınıza bağlı olarak, siparişlerinizin yanına cilt tipinize uygun sürpriz tester ürünler eklemeye özen gösteriyoruz.	Numune/Tester Gönderimi	t	6	2025-12-17 21:40:26.347	2025-12-17 21:40:26.347
cmjajcunp002p9w2o50pg64yn	Ürün cildimde alerji yaparsa ne yapmalıyım?	Her cilt yapısı benzersizdir. Bir ürünü ilk kez kullanacaksanız önce bileğinizin iç kısmında denemenizi öneririz. Ciddi bir reaksiyon durumunda kullanımı durdurup bir dermatoloğa danışmalı ve süreci bize iletmelisiniz. (Not: Açılmış ürünlerde alerji kaynaklı iadeler marka onayına tabidir.)	Alerjik Reaksiyon Durumu	t	7	2025-12-17 21:40:48.565	2025-12-17 21:40:48.565
cmjajdg41002q9w2oifz9g1wg	Kredi kartına taksit imkanı var mı?	Evet, anlaşmalı bankaların kredi kartlarına 12 aya varan taksit seçenekleri sunuyoruz. Ayrıca tüm ödemeleriniz 256-bit SSL güvenlik sertifikası ile korunmaktadır.	Ödeme Yöntemleri	t	8	2025-12-17 21:41:16.369	2025-12-17 21:41:16.369
cmjajeakd002r9w2opnozfs4m	Siparişimin durumunu nasıl takip edebilirim?	Siparişiniz kargoya verildiğinde size bir SMS ve e-posta bilgilendirmesi iletilir. Ayrıca web sitemizdeki "Hesabım" bölümünden "Siparişlerim" sekmesine tıklayarak kargonuzun nerede olduğunu anlık olarak takip edebilirsiniz.\n\n	Sipariş Süreçleri	t	9	2025-12-17 21:41:55.837	2025-12-17 21:42:15.1
cmjajfe0p002s9w2o636xs548	Siparişimi iptal edebilir miyim?	Henüz "Kargoya Verildi" aşamasına geçmemiş olan siparişlerinizi, müşteri hizmetlerimize ulaşarak veya paneliniz üzerinden kolayca iptal edebilirsiniz. Kargoya teslim edilen siparişlerde ise iade süreci başlatılmaktadır.	Sipariş İptali	t	10	2025-12-17 21:42:46.969	2025-12-17 21:42:46.969
cmjajfwvl002t9w2ovfa45xuy	Siparişim eksik veya yanlış gelirse ne yapmalıyım?	Gamzelieczanem olarak paketleme sürecinde çifte kontrol yapıyoruz; ancak bir hata oluşursa, kargonuzu teslim alırken tutanak tutmanız veya durumu bize 24 saat içinde bildirmeniz yeterlidir. Eksik ürününüz derhal gönderilir veya ücret iadesi yapılır.	Yanlış veya Eksik Ürün	t	11	2025-12-17 21:43:11.409	2025-12-17 21:43:11.409
cmjajgg7r002u9w2ol3r2qccx	Üye olmadan alışveriş yapabilir miyim?	Evet, sitemizden "Misafir Alışverişi" seçeneğiyle üye olmadan sipariş verebilirsiniz. Ancak sipariş geçmişinizi görmek ve size özel kampanyalardan yararlanmak için hızlıca üye olmanızı öneririz.	Üyeliksiz Sipariş	t	13	2025-12-17 21:43:36.471	2025-12-17 21:43:36.471
cmjajgw5i002v9w2osw359tkl	Sipariş verdikten sonra teslimat adresimi değiştirebilir miyim?	Siparişiniz kargoya teslim edilmeden önce müşteri hizmetlerimizle iletişime geçerek adres değişikliği yapabilirsiniz. Kuryeye teslim edilen paketlerde ise kargo firması üzerinden yönlendirme yapılması gerekmektedir	Adres Değişikliği	t	14	2025-12-17 21:43:57.126	2025-12-17 21:43:57.126
cmjajho4q002w9w2oonfqo3wj	iparişim ne zaman kargoya verilir?	Hafta içi saat 14:00’e kadar verdiğiniz siparişler aynı gün kargoya teslim edilmektedir. Saat 14:00’ten sonra ve hafta sonu verilen siparişler, takip eden ilk iş günü içerisinde kargo firmasına verilir.	Aynı Gün Kargo	t	14	2025-12-17 21:44:33.365	2025-12-17 21:44:33.365
\.


--
-- Data for Name: image_folders; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.image_folders (id, name, "displayName", description, "createdAt", "updatedAt") FROM stdin;
cmj94cf0f00009w82ikvme8e9	deeneme	deeneme	\N	2025-12-16 21:52:47.872	2025-12-16 21:52:47.872
\.


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.images (id, filename, "originalName", "mimeType", size, width, height, path, url, alt, title, folder, "usedIn", "entityId", "createdAt", "updatedAt") FROM stdin;
cmjabsvy800039w82qdrpkavx	168c3af2-655d-4933-9496-392c8a3c96ba.png	avene.png	image/png	111989	771	1193	168c3af2-655d-4933-9496-392c8a3c96ba.png	http://localhost:3002/uploads/168c3af2-655d-4933-9496-392c8a3c96ba.png	\N	\N	\N	\N	\N	2025-12-17 18:09:19.807	2025-12-17 18:09:19.807
cmjabsx5k00049w82ela3gfyu	470cf5fe-316c-4b9a-9b72-f3e9282d229c.png	AVENE1.png	image/png	86376	808	1267	470cf5fe-316c-4b9a-9b72-f3e9282d229c.png	http://localhost:3002/uploads/470cf5fe-316c-4b9a-9b72-f3e9282d229c.png	\N	\N	\N	\N	\N	2025-12-17 18:09:21.368	2025-12-17 18:09:21.368
cmjabszbl00059w82egs4tni0	76ca1832-75d9-49fb-9e6f-dff4f383659c.png	AVENE3.png	image/png	189354	943	1279	76ca1832-75d9-49fb-9e6f-dff4f383659c.png	http://localhost:3002/uploads/76ca1832-75d9-49fb-9e6f-dff4f383659c.png	\N	\N	\N	\N	\N	2025-12-17 18:09:24.178	2025-12-17 18:09:24.178
cmjabt2sh00069w826dv2czsr	8db3af2f-7ab9-4a5f-b675-fe59c4d4addb.png	AVENE4.png	image/png	253467	901	1363	8db3af2f-7ab9-4a5f-b675-fe59c4d4addb.png	http://localhost:3002/uploads/8db3af2f-7ab9-4a5f-b675-fe59c4d4addb.png	\N	\N	\N	\N	\N	2025-12-17 18:09:28.673	2025-12-17 18:09:28.673
cmjabtldn00079w82nt82lwyt	a5ba747c-f9e9-44c5-95f6-0b0940d2ea71.png	BİODERMAATODERMÖN.png	image/png	112780	628	908	a5ba747c-f9e9-44c5-95f6-0b0940d2ea71.png	http://localhost:3002/uploads/a5ba747c-f9e9-44c5-95f6-0b0940d2ea71.png	\N	\N	\N	\N	\N	2025-12-17 18:09:52.763	2025-12-17 18:09:52.763
cmjabtmzn00089w8249lga0fc	613236b1-e596-4489-8732-29c94f9c1f1d.png	biodermagörsel.png	image/png	77800	801	967	613236b1-e596-4489-8732-29c94f9c1f1d.png	http://localhost:3002/uploads/613236b1-e596-4489-8732-29c94f9c1f1d.png	\N	\N	\N	\N	\N	2025-12-17 18:09:54.851	2025-12-17 18:09:54.851
cmjabw9r000099w82efy0v8in	19304669-f4b6-4bf0-b4e2-1552bd972b70.png	cosmed1.png	image/png	69129	803	1048	19304669-f4b6-4bf0-b4e2-1552bd972b70.png	http://localhost:3002/uploads/19304669-f4b6-4bf0-b4e2-1552bd972b70.png	\N	\N	\N	\N	\N	2025-12-17 18:11:57.66	2025-12-17 18:11:57.66
cmjabwkp4000a9w82rhzba1g8	b233edcc-2ee4-44ad-9fcc-e0ce30abcf85.png	DEXERYL.png	image/png	39565	754	868	b233edcc-2ee4-44ad-9fcc-e0ce30abcf85.png	http://localhost:3002/uploads/b233edcc-2ee4-44ad-9fcc-e0ce30abcf85.png	\N	\N	\N	\N	\N	2025-12-17 18:12:11.848	2025-12-17 18:12:11.848
cmjabwm27000b9w82j8gq4p8g	6e6440f9-3137-4f8a-ac73-30c9fd9427c6.png	DEXERYL2.png	image/png	234402	1296	960	6e6440f9-3137-4f8a-ac73-30c9fd9427c6.png	http://localhost:3002/uploads/6e6440f9-3137-4f8a-ac73-30c9fd9427c6.png	\N	\N	\N	\N	\N	2025-12-17 18:12:13.615	2025-12-17 18:12:13.615
cmjabwwov000c9w82w58fux1m	916709b6-eefc-4dc0-be5b-cfd6779f58de.png	ducray1.png	image/png	170151	925	1383	916709b6-eefc-4dc0-be5b-cfd6779f58de.png	http://localhost:3002/uploads/916709b6-eefc-4dc0-be5b-cfd6779f58de.png	\N	\N	\N	\N	\N	2025-12-17 18:12:27.392	2025-12-17 18:12:27.392
cmjabxi2r000d9w82z3bnkmhd	275f95d5-4c22-4aca-b7b4-a0829d24d2a9.png	lumiiderm20ml.png	image/png	274457	1024	1024	275f95d5-4c22-4aca-b7b4-a0829d24d2a9.png	http://localhost:3002/uploads/275f95d5-4c22-4aca-b7b4-a0829d24d2a9.png	\N	\N	\N	\N	\N	2025-12-17 18:12:55.107	2025-12-17 18:12:55.107
cmjabxsgp000e9w82729kkqne	4946ea57-e1de-4971-892b-975d5c02eb47.png	mineadermserum.png	image/png	77237	1065	1249	4946ea57-e1de-4971-892b-975d5c02eb47.png	http://localhost:3002/uploads/4946ea57-e1de-4971-892b-975d5c02eb47.png	\N	\N	\N	\N	\N	2025-12-17 18:13:08.57	2025-12-17 18:13:08.57
cmjabxtas000f9w820sqnmzvb	ea231f79-2c52-4d17-aba6-3636bd88d660.png	mineadermserum2.png	image/png	172632	1193	1240	ea231f79-2c52-4d17-aba6-3636bd88d660.png	http://localhost:3002/uploads/ea231f79-2c52-4d17-aba6-3636bd88d660.png	\N	\N	\N	\N	\N	2025-12-17 18:13:09.653	2025-12-17 18:13:09.653
cmjabyayz000g9w82lp7h8lkf	ac83ebb7-f990-402f-bc06-e59fc048dd13.png	krem50ml.png	image/png	45239	568	703	ac83ebb7-f990-402f-bc06-e59fc048dd13.png	http://localhost:3002/uploads/ac83ebb7-f990-402f-bc06-e59fc048dd13.png	\N	\N	\N	\N	\N	2025-12-17 18:13:32.555	2025-12-17 18:13:32.555
cmjabysuo000h9w82rbgsumvh	0b8d4250-3877-4e6b-b952-b873ad6f5057.png	TOPİCREAM BAR.png	image/png	190516	1268	950	0b8d4250-3877-4e6b-b952-b873ad6f5057.png	http://localhost:3002/uploads/0b8d4250-3877-4e6b-b952-b873ad6f5057.png	\N	\N	\N	\N	\N	2025-12-17 18:13:55.707	2025-12-17 18:13:55.707
cmjabyv0z000i9w82jy2dgxot	b890aa1e-3d1c-4245-a3d2-b49dcd6b8a3b.png	TOPİCREAMARKA.png	image/png	121821	728	1181	b890aa1e-3d1c-4245-a3d2-b49dcd6b8a3b.png	http://localhost:3002/uploads/b890aa1e-3d1c-4245-a3d2-b49dcd6b8a3b.png	\N	\N	\N	\N	\N	2025-12-17 18:13:58.548	2025-12-17 18:13:58.548
cmjabywtf000j9w82h7x55glb	4555e846-ae78-419c-a60e-53546b80112b.png	TOPİCREAMÖN.png	image/png	61055	1100	1235	4555e846-ae78-419c-a60e-53546b80112b.png	http://localhost:3002/uploads/4555e846-ae78-419c-a60e-53546b80112b.png	\N	\N	\N	\N	\N	2025-12-17 18:14:00.867	2025-12-17 18:14:00.867
\.


--
-- Data for Name: invoices; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.invoices (id, "orderId", "invoiceNumber", "invoiceDate", "pdfUrl", "sentAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.notifications (id, "userId", type, title, message, data, "linkUrl", "isRead", "readAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.order_items (id, "orderId", "productId", "productVariantId", "variantInfo", quantity, price, total) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.orders (id, "orderNumber", "userId", "addressId", "guestEmail", "guestPhone", "guestFirstName", "guestLastName", "guestTcNumber", "shippingFirstName", "shippingLastName", "shippingPhone", "shippingCity", "shippingDistrict", "shippingNeighborhood", "shippingAddress", "shippingPostalCode", "billingType", "billingFirstName", "billingLastName", "billingTcNumber", "billingCompanyName", "billingTaxNumber", "billingTaxOffice", "billingCity", "billingDistrict", "billingAddress", subtotal, "shippingCost", discount, "couponId", "couponCode", total, status, "paymentStatus", "paymentMethod", "paymentId", "shippingMethodId", "shippingMethodName", "trackingNumber", "shippedAt", "deliveredAt", note, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.pages (id, title, slug, content, "metaTitle", "metaDescription", "isActive", "sortOrder", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: product_images; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.product_images (id, "productId", url, alt, "sortOrder", "createdAt") FROM stdin;
\.


--
-- Data for Name: product_variant_images; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.product_variant_images (id, "productVariantId", url, alt, "sortOrder") FROM stdin;
\.


--
-- Data for Name: product_variant_options; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.product_variant_options (id, "productVariantId", "variantOptionId") FROM stdin;
\.


--
-- Data for Name: product_variant_types; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.product_variant_types (id, "productId", "variantTypeId") FROM stdin;
\.


--
-- Data for Name: product_variants; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.product_variants (id, "productId", sku, barcode, price, "costPrice", stock, "isActive", "sortOrder", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.products (id, name, slug, description, "shortDescription", sku, barcode, price, "compareAtPrice", "costPrice", stock, "hasVariants", "lowStockThreshold", weight, "categoryId", "brandId", "isActive", "isFeatured", "requiresPrescription", "metaTitle", "metaDescription", "createdAt", "updatedAt") FROM stdin;
cmjaege5m000u9w2obvc1uim3	Lumiderm Hyalo Niacinamide Cilt Serumu 20 ml	lumiderm-hyalo-niacinamide-cilt-serumu-20-ml	 Tüm cilt tipleri için uygun olan bu serum, cildinizin doğal ışıltısını artırırken yaşlanma belirtileriyle mücadele eder.\n\n- Niacinamide içeriği sayesinde cilt bariyerini güçlendirir ve ciltteki kızarıklık gibi sorunlara karşı koruma sağlar.	- Cildi canlandırmak ve aydınlatmak için özel olarak formüle edilmiş, 20 ml'lik Lumiderm Hyalo Niacinamide Cilt Serumu ile cilt tonunu eşitleyin.	LUMİ20	8684221144433	1080.00	\N	\N	3	f	10	\N	cmjabq00v00029w2ooraxy7yy	cmjae5o5l000s9w2ojeynjann	t	f	f			2025-12-17 19:23:35.722	2025-12-17 19:23:35.722
cmjaf5inf000w9w2oxcb6jy5g	SVR Xerial Fissures & Crevasses 7 Day Repairing & Protecting Cream 50 ml	svr-xerial-fissures-crevasses-7-day-repairing-protecting-cream-50-ml	Cildin aşırı kuruluktan dolayı çatladığı bölgelerde anında rahatlama ve kalıcı onarım sağlar. Formülündeki yüksek teknoloji sayesinde cildin bariyerini güçlendirerek dış etkenlere karşı bir kalkan oluşturur.\n\nÖne Çıkan Özellikler:\n\n7 Günlük Etki: Düzenli kullanımda derin çatlakları hızla onarır ve cildi eski pürüzsüzlüğüne kavuşturur.\n\nCentella Asiatica: Onarıcı etkisiyle bilinen bu içerik, cildin kendini yenileme sürecini hızlandırır.\n\n24 Saat Nem: Cildin nem dengesini gün boyu koruyarak yeni çatlak oluşumunu önlemeye yardımcı olur.\n\nYapışkan Olmayan Doku: Cilt tarafından hızla emilir, yağlı bir his bırakmadan konfor sağlar.\n\nHipoalerjenik: Parfüm içermez ve hassas ciltler için uygun bir yapıdadır.	7 günde gözle görülür onarım! Ayak, el ve dirseklerdeki derin çatlaklar (fissürler) için özel olarak geliştirilmiş, Centella Asiatica içeren yoğun nemlendirici ve koruyucu bakım kremi.	 SVR1	3662361003225	2380.00	\N	\N	3	f	10	\N	cmjabr2kz00049w2ofb24qdtd	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-17 19:43:07.947	2025-12-17 19:43:07.947
cmjaf9946000y9w2oj2kt6y6h	Eau Thermale Avène Termal Su 300 ml	eau-thermale-av-ne-termal-su-300-ml			3131	 3282779003131	1080.00	\N	\N	5	f	3	\N	cmjaf9kjj00109w2ofwx4qede	cmjae2d1c000o9w2oefb5sj18	t	f	f			2025-12-17 19:46:02.214	2025-12-17 19:48:09.221
cmjaflcrq00129w2oue3p3n97	puroBIO 13 Eyeshadow	purobio-13-eyeshadow	Özellikler:\n\nYoğun Pigmentasyon: Gözlere belirgin ve canlı bir renk kazandırır.\nİnce Doku: Pürüzsüz bir uygulama ve doğal renk geçişi sağlar.\nKolay Uygulama: Pratik ve kesintisiz uygulama için ideal.\nUzun Süre Kalıcılık: Gün boyunca etkili ve bozulmayan renk sağlar.\nDoğal İçerik: Organik ve cilt dostu bileşenler içerir, hassas göz çevresi için uygundur.	PuroBio Eyeshadow Powder 2.5 gr - 13\n\nPuroBio Eyeshadow Powder 13, göz makyajınıza zarif ve etkileyici bir renk katmak için ideal bir far tozudur. Yoğun pigmentasyonu ve hafif dokusu ile kolayca uygulanır ve uzun süre kalıcı, pürüzsüz bir görünüm sağlar.	PUROBIO1	 8051411361589	725.00	\N	\N	4	f	10	\N	cmjaflo3n00149w2ohthn32rp	cmjafn0xi00159w2oxyvtjlt5	t	f	f			2025-12-17 19:55:26.822	2025-12-17 19:57:01.469
cmjafv8l400179w2ovofpivt4	puroBIO Eyeshadow Powder 2.5 gr No 01	purobio-eyeshadow-powder-2-5-gr-no-01	Özellikler:\n\nYoğun Pigmentasyon: Gözlere derin ve belirgin bir renk kazandırır.\nİnce Doku: Pürüzsüz ve hafif uygulama sağlar, doğal bir renk geçişi sunar.\nKolay Uygulama: Pratik ve etkili uygulama için idealdir.\nUzun Süre Kalıcılık: Gün boyunca etkili ve bozulmayan renk sağlar.\nDoğal İçerik: Organik ve cilt dostu bileşenler içerir, hassas göz çevresi için uygundur.	PuroBio Eyeshadow Powder 2.5 gr - No 01\n\nPuroBio Eyeshadow Powder No 01, göz makyajınıza zarif ve etkileyici bir renk tonuyla mükemmel bir görünüm kazandırır. Yüksek pigmentasyonu ve ince dokusu ile kolayca uygulanır, gün boyu kalıcı ve pürüzsüz bir efekt sunar.	PUROBIO2		725.00	\N	\N	2	f	1	\N	cmjaflo3n00149w2ohthn32rp	cmjafn0xi00159w2oxyvtjlt5	t	f	f			2025-12-17 20:03:07.96	2025-12-17 20:03:07.96
cmjag0yv400199w2ogzzc2s9e	Avene Cicalfate+ Onarıcı ve Güçlendirici Cilt Bakım Serumu 30 ml	avene-cicalfate-onarici-ve-guclendirici-cilt-bakim-serumu-30-ml			AVENE1	3282770393620	1400.00	\N	\N	3	f	10	\N	cmjabq00v00029w2ooraxy7yy	cmjae2d1c000o9w2oefb5sj18	t	f	f			2025-12-17 20:07:35.296	2025-12-17 20:10:12.511
cmjakxs3q003h9w2ofrsw71aq	Lumiderm Perfectage Krem	lumiderm-perfectage-krem	İnce çizgi ve kırışıklık görünümünü gözle görülür ölçüde azaltır.\n\nDonuk görünümü ortadan kaldırır.\n\nCiltte hassasiyet ve irritasyon oluşturmaz.	Lumiderm Perfectage krem, gece boyunca bakım yaparak cildi nemlendirmekle birlikte dolgun, pürüzsüz ve aydınlık görünüm kazandırır.\n\nFormülasyonunda bulunan etkin madde ve bitkisel yağlar cildin nem dengesini optimum seviyede tutarak kırışıklıkların giderilmesinde ve cildin beslenmesinde aktif rol alır, ciltte oluşmuş olan ton farklılıklarını ortadan kaldırmaya yardımcı olur.	LUMİ40	8684221144457	1250.00	\N	\N	3	f	1	\N	cmjac2uh700089w2o9v8g8oia	cmjae5o5l000s9w2ojeynjann	t	f	f			2025-12-17 22:25:04.646	2025-12-17 22:25:04.646
cmjagnf74001b9w2or3bpe82z	purobıocosmetics face duo bronzer/blush 02 value limited	purobiocosmetics-face-duo-bronzer-blush-02-value-limited		02 – Value (altın kahve/kayısı) Saten kaplama\n Orta ve koyu tenlere uygundur\n Value  ,   cildi  aydınlatmak   ve yanakların doğal rengini geliştirmek için   altının   sıcak   ve  canlı   tonları .   Saten  bitişli   olup   orta ve koyu tenlilere uygundur.	PUROBIOCOSMETICS	8051411365877	1050.00	\N	\N	5	f	3	\N	cmjago0go001d9w2o9rr7pcah	cmjafn0xi00159w2oxyvtjlt5	t	f	f			2025-12-17 20:25:02.896	2025-12-17 20:35:32.077
cmjah3g1a001f9w2ohq1m525m	purobıocosmetics bronzer & allık	purobiocosmetics-bronzer-allik			PB118	8051411365860	1050.00	\N	\N	6	f	5	\N	cmjago0go001d9w2o9rr7pcah	cmjafn0xi00159w2oxyvtjlt5	t	f	f			2025-12-17 20:37:30.478	2025-12-17 20:37:30.478
cmjah6glm001k9w2otjgawzg1	PURE BY LOTUS Doğal Içerikli Güneş Kremi 50 Spf 125 ml Yüksek Koruma/leke Karşıtı/mineral Filtreli/makyaj Bazı	pure-by-lotus-dogal-icerikli-gunes-kremi-50-spf-125-ml-yuksek-koruma-leke-karsiti-mineral-filtreli-makyaj-bazi	üz bölgesi için uygun olup oluşumuna sebep olmaz\n\nTüm cilt tipleri için uygundur\n\nCildinizde beyazlık bırakmaz\n\nİçindekiler: Aqua, Cetearyl Alcohol, Glycerin, Glyceryl Acetate, prunus amygdalus dulcisoil , Ceteareth\n\n20, Isopropyl Myrstate, Octocrylene,Ethylhexyl Methoxycinnamate, Zınc Oxıde, Butyl Methoxydibenzylmethane, Phenoxyethanol, olea europaea fruit oil, Tocopheryl Acetate	İçeriğinde bulunan doğal mineral, bitkisel yağlar ve bitkisel aktifler ile cildinizi UVA ve UVB gibi güneşin zararlı ışınlarından korurken aynı zamanda cildinizi besler ve nemlendirir	TYCS0U1S0N172127646246548	8684122433292	1120.00	\N	\N	4	f	3	\N	cmjah43jh001h9w2oaiyaoya7	cmjah4mct001i9w2omxbgxyx6	t	f	f			2025-12-17 20:39:51.178	2025-12-17 20:39:51.178
cmjahdarz001m9w2oke7hjz6c	SVR Physiopure Yüz Temizleme Jeli 200ml	svr-physiopure-yuz-temizleme-jeli-200ml	Kullanım Şekli:\n\nNemli cilde nazikçe masaj yaparak uygulanır ve durulanır.\n\nÜrün İçeriği:\n\naqua/water/eau, glycerin, disodium cocoyl glutamate, decyl glucoside, xanthan gum, coco-betaine, magnesium pca, citric acid, potassium sorbate, sodium benzoate, parfum (fragrance).	Hassas ciltler dahil tüm cilt tipleri için uygundur. Kremsi köpüğü ile cildi temizlemeye yardımcı olur.	TYC65RMN2N172076776388710	3662361003792	1080.00	\N	\N	1	f	1	\N	cmjac2kl800069w2o52xest63	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-17 20:45:10.223	2025-12-17 20:45:10.223
cmjbfpnp2005w9w2oon318l3a	SVR Sun Secure Blur Spf50 50 Ml	svr-sun-secure-blur-spf50-50-ml			ZZZZ	3662361002597	850.00	\N	\N	3	f	1	\N	cmjac34fp000a9w2o20rm6wsd	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 12:46:33.782	2025-12-18 12:46:33.782
cmjahfxcb001o9w2ojdvrsots	Avene XeraCalm A.D Atopiye Eğilimli Ciltler için Nemlendirici Balsam 400 ml	avene-xeracalm-a-d-atopiye-egilimli-ciltler-icin-nemlendirici-balsam-400-ml	Atopiye eğilimli ve çok kuru ciltlerin ihtiyaç duyduğu özel bakımı sunar.\n\nSteril kozmetik teknolojisi ile formüle edilmiştir ve en hassas ciltlerde kullanılabilir\n\nAvène Termal Su içeriği sayesinde cildi yatıştırır ve rahatlatır.\n\nI-Modulia® Kompleksi ile ciltteki kuruluğa bağlı kaşıntı hissinin azalmasına yardımcı olur*. (*Cilt kuruluğundan kaynaklanan)\n\nCer-Omega içeriği ile cildi besler.\n\nBebekler, çocuklar ve yetişkinler için günlük kullanıma uygundur.\n\nYüz ve vücut bölgesinde kullanılabilir.\n\nHassas ciltlerin kullanımına uygundur.\n\nXeraCalm A.D temizleme yağı ile temizlenmiş cilde günde bir veya iki kez uygulanması önerilir.\n\nCildin konforunu geri kazandırır.\n\nNemlendirici ve yatıştırıcı etki sağlar	XeraCalm A.D atopiye eğilimli ciltler için nemlendirici balsam 400 ml, cildi derinlemesine besleyerek uzun süreli nemlendirme sağlar.	3282770154566	3282770154566	2279.92	\N	\N	1	f	1	\N	cmjac2uh700089w2o9v8g8oia	cmjae2d1c000o9w2oefb5sj18	t	f	f			2025-12-17 20:47:12.779	2025-12-17 20:48:00.317
cmjahir75001q9w2ov7jk9oui	SVR Hydraliane Creme Riche Yoğun Nemlendirici Krem 50 ml	svr-hydraliane-creme-riche-yogun-nemlendirici-krem-50-ml			SVR4	H3662361003297	1750.00	\N	\N	3	f	10	\N	cmjac2uh700089w2o9v8g8oia	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-17 20:49:24.785	2025-12-17 20:49:24.785
cmjahl05e001s9w2oovgdclzu	DEXERYL Emollient Cream Çok Kuru ve Atopiye Eğilimli Ciltler İçin Krem 500 ml	dexeryl-emollient-cream-cok-kuru-ve-atopiye-egilimli-ciltler-i-cin-krem-500-ml	Dexeryl Nemlendirici Krem, kuru ve hassas ciltler için nemlendirici gereksinimi duyan herkes için ideal bir cilt bakım kremidir. Kuru ciltleri yoğun şekilde nemlendiren, kuruluğu engelleyen ve cildi besleyen bir kremdir. Kuru ve atopiye eğilimli tüm ciltler için özel olarak geliştirilen bu nemlendirici krem, hassas cildinizin kaybettiği konforunu geri kazanmasına yardımcı olur.\n\n• Kuru ve Atopik Ciltler için Kusursuz Nemlendirme\n\nİçeriğinde bulunan Gilserol, Vazelin ve Sıvı Parafin cilt hücrelerinin tamamını derinlemesine nemlendirir. Vazelin, ciltteki kuruluğun giderilmesine yardımcı olurken Gliserol cildi nemlendirir ve doğal parlaklığına kavuşmasına destek olur. Sıvı Parafin,ise cildin nemli görünümüne katkı sunar.\n\n• Atopik Ciltler için Yatıştırıcı Çözüm\n\nDexeryl Emollient Cream\n\nAtopik Dermatit, İktiyozis ve Cilt kuruluğu (Kserozis) gibi rahatsızlıkların semptomlarında, radyoterapi nedeniyle cilt yüzeyinde oluşan kuruluk ve kızarıklık durumlarında koruyucu krem olarak kullanılır. Hassas ciltler için nemlendirici olarak tüm kuru ve atopik ciltlerin kullanımına uygundur.\n\nKuru ve atopik ciltler tarafından düzenli kullanıldığında Dexeryl’in, Atopik Dermatit Ataklarında %50 oranında azalma* sağladığı gözlemlenmiştir.\n\n*Tiplica et al., Prevention of flares in Children with atopic dermatitis with regular use of emollient containing glycerol and paraffin :\n\nA randomized controlled study. Pediatric Dermatology 2017, Vol.34\n\nN°3: 282-289.\n\n• Dexeryl Emollient Cream Nasıl Kullanılır?\n\nDexeryl Emollient Cream, günde 1-2 kez temiz ve kuru cilde uygulanır. Tüm kuru ve atopik ciltlerin yüz ve vücut bölgelerinde kullanımına uygundur. Cilt tarafından hızlı emilen hafif yapısı, ciltte hoş bir hissiyat bırakır.\n\nAnahtar Kelimeler\n\n• Hassas ciltler için nemlendirici\n\n• Nemlendirici krem\n\n• Kuru ve hassas ciltler için nemlendirici	Kuru ve atopiye eğilimli ciltler, genetik faktörler, çevresel etkenler veya yanlış cilt bakımı ürünleri kullanımı gibi nedenlerle nem kaybına uğrayabilir. Bu cilt tipine sahip kişilerin cilt bariyerini koruyacak, güçlendirecek ve nemlendirecek bir cilt bakım rutini edinmeleri cilt sağlıkları için oldukça önemlidir.	DEX500-001	3573994006923	1120.00	\N	\N	17	f	10	\N	cmjabr2kz00049w2ofb24qdtd	cmjahlezh001t9w2otvlc7hes	t	f	f			2025-12-17 20:51:09.698	2025-12-17 20:51:40.379
cmjaho421001v9w2os46mnpod	Lazartigue Volumize Güçlendirici Kalınlaştırıcı Saç Spreyi 100ml	lazartigue-volumize-guclendirici-kalinlastirici-sac-spreyi-100ml			LAZARTIGUE2	3372290000266	2520.00	\N	\N	4	f	3	\N	cmjahoj3g001x9w2or23ra7cq	cmjae0z73000n9w2oowzbbkyi	t	f	f			2025-12-17 20:53:34.729	2025-12-17 20:54:02.839
cmjahr2c0001z9w2omwzeqbf1	Topicrem Hydra+ Creme Teintee eclat Medium 40 ml	topicrem-hydra-creme-teintee-eclat-medium-40-ml		Krem formundaki yapısı sayesinde kolay uygulanır ve cilde hızla nüfuz ederek etkin bir şekilde nemlendirme sağlar	TOPICREM3	3700281704853	1680.00	\N	\N	4	f	2	\N	cmjac2uh700089w2o9v8g8oia	cmjadzk0q000k9w2orbzw4qrk	t	f	f			2025-12-17 20:55:52.464	2025-12-17 20:55:52.464
cmjahtahv00219w2oenvfr65h	SVR Hydraliane Intense Moisturising Light Cream 50ml	svr-hydraliane-intense-moisturising-light-cream-50ml	Vegan içerikli yapısıyla hayvan dostu bir güzellik rutini sunar\n\nKrem formu, cilde kolayca uygulanır ve hızlı emilim sağlar\n\nYoğun nemlendirici özelliği ile cildinizi gün boyu taze ve nemli tutar\n\nPratik tüp ambalajı sayesinde istediğiniz her yerde rahatça kullanabilirsiniz	Tüm cilt tiplerine uygun formülüyle herkesin kullanımına açık, cildin ihtiyaç duyduğu nemi sağlar	SVR6	3662361003211	1889.00	\N	\N	2	f	2	\N	cmjac2uh700089w2o9v8g8oia	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-17 20:57:36.356	2025-12-17 20:57:36.356
cmjahvfzc00239w2o7jf1w0d2	SVR Sun Secure Easy Stick Görünmez Spf50 10g	svr-sun-secure-easy-stick-gorunmez-spf50-10g	 Güneşe çıkmadan en az 15 dakika önce uygulanması önerilen bu ürün, yüz, dudaklar, kulaklar, burun ve dövmeler gibi hassas bölgelere doğrudan sürülerek maksimum koruma sağlar\n\n- Güneşe maruz kaldıktan sonra veya yüzme/silme sonrası sık sık tekrar uygulanması gerektiği için güneş korumasını sürdürmek için her 2 saatte bir yeniden uygulama yapılmalıdır\n\n- Jel formu, kolay uygulama imkanı sunarak c	Suya dayanıklı yapısı sayesinde yüzme veya terleme durumunda bile uzun süreli koruma sağlar	SVR8	3662361001330	960.00	\N	\N	3	f	1	\N	cmjac34fp000a9w2o20rm6wsd	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-17 20:59:16.776	2025-12-17 20:59:16.776
cmjahwsl400259w2otw2rk29s	Topicrem Ac Control Intensive Serum 34 ml	topicrem-ac-control-intensive-serum-34-ml			SVR10	3700281705065	1920.00	\N	\N	2	f	1	\N	cmjabq00v00029w2ooraxy7yy	cmjadzk0q000k9w2orbzw4qrk	t	f	f			2025-12-17 21:00:19.768	2025-12-17 21:00:19.768
cmjahyq6100279w2oxfyp5dgu	Bioderma Atoderm 2 in 1 Body Oil 150 ml	bioderma-atoderm-2-in-1-body-oil-150-ml	Yüz, vücut ve saç için kullanıma uygundur.\n\n•Nemlendirici etkisini artırabilmek için nemlendirici bakım sunan Atoderm Cream Ultra ile bir arada kullanılabilir.\n\n•Bebek, çocuk, yetişkin için kullanıma uygundur (prematüre bebekler hariç).\n\nÜrün Faydaları: İçeriğindeki %5 malik asit ile cildi nemlendirmeye ve pürüzsüz bir görünüm kazandırmaya yardımcı olur.\n\nSkualen, seramidler, jojoba yağı gibi biyomimetik yağlar ile cildi beslemeye destek olur.\n\nVücutta oluşabilecek çatlakları önlemeye yardımcı olur.\n\nCildi 24 saat boyunca nemlendirmeye destek olur.\n\nCilt tarafından kolayca ve hızlı emilir.\n\nYağlı his bırakmaz.\n\nÜrün kıyafetlerde leke bırakmaz, uygulandıktan sonra hemen giyinilebilir.	Bioderma Atoderm 2 in 1 Body Oil 150 ml Ürün Açıklaması: Kuru ve çok kuru ciltler için cildi nemlendirmeye ve beslemeye yardımcı yüz ve vücut kullanımına uygun kuru yağ Kullanım Şekli: •Atoderm Shower Gel veya Atoderm Shower Oil ile temizlenmiş cilde, günde 1 veya 2 kez masaj yaparak uygulanabilir	BİO1		1250.00	\N	\N	3	f	1	\N	cmjabr2kz00049w2ofb24qdtd	cmjadw4ph000j9w2ok5q6a1rg	t	f	f			2025-12-17 21:01:49.946	2025-12-17 21:01:49.946
cmjai0cim00299w2ogwoukyii	Bioderma MATRICIUM™ Tüm Ciltler için Cilt Yenileyici ve Antioksidan Etkili Bakım Kapsülü 30 x 1 ml	bioderma-matricium-tum-ciltler-icin-cilt-yenileyici-ve-antioksidan-etkili-bakim-kapsulu-30-x-1-ml			BİO2	3701129806586	1469.00	\N	\N	3	f	1	\N	cmjabq00v00029w2ooraxy7yy	cmjadw4ph000j9w2ok5q6a1rg	t	f	f			2025-12-17 21:03:05.566	2025-12-17 21:03:05.566
cmjbfqlbc005y9w2okjayfnww	Bioderma Photoderm M Spf50+ Golden 40 ml	bioderma-photoderm-m-spf50-golden-40-ml			BIO50	3701129803714	750.00	\N	\N	4	f	1	\N	cmjac34fp000a9w2o20rm6wsd	cmjadw4ph000j9w2ok5q6a1rg	t	f	f			2025-12-18 12:47:17.352	2025-12-18 12:47:17.352
cmjakayup002z9w2oy9pg500l	Avene Vitamin Activ Cg Işıltı Veren Antioksidan İçerikli Serum 30 ml	avene-vitamin-activ-cg-isilti-veren-antioksidan-i-cerikli-serum-30-ml	%1,8 Vitamin Cg, %3 Niasinamid ve %1,5 Bakuchiol bileşenleri sayesinde kırışıklıkların ve ince çizgilerin azalmasına yardımcı olurken cildin ışıltısını geri kazandırır ve koyu lekelerin görünümünü azaltmaya yardımcı olur.\n\nİlk uygulamadan itibaren eşitlenmiş bir cilt tonu sağlar.\n\n*Askorbil Glukozit, C vitamininin ultra kararlı bir formudur.\n\n**Ürün üzerinde ex-vivo testi ***Klinik skor, 44 kullanıcı, günde 2 uygulama, Pierre Fabre klinik veriler.\n\n• Işıltı Veren Etki\n\nCilt anında ışıltı kazanır.\n\n* 15. günden itibaren cilt daha pürüzsüz* ve %95 oranında daha dolgun bir görünüm kazanır.\n\n** 1. aydan itibaren, koyu lekelerin görünümü azaltmaya yardımcı olur.\n\n*Klinik skor, 44 kullanıcı, günde 2 uygulama.\n\n**Memnuniyet %si, 44 kullanıcı: Cilt, %95 oranında daha dolgun bir görünüm kazanır.\n\n***Klinik skor, 42 kullanıcı, günde 2 uygulama.	Vitamin Activ Cg Işıltı Veren Antioksidan İçerikli Serum ile Yaşlanma Karşıtı Üçlü Etki:\n\nIşıltı Kaybı, Kırışıklık, Koyu Lekeler\n\nAvène Vitamin Activ Cg Işıltı Veren Antioksidan İçerikli Serum\n\ncildinizin ışıltısını yeniden kazanmasına, ince kırışıklıklar ile ciltte koyu leke görünümünün azalmasına yardımcı olur.	AVENE4	3282770393477	2050.00	\N	\N	1	f	1	\N	cmjabq00v00029w2ooraxy7yy	cmjae2d1c000o9w2oefb5sj18	t	f	f			2025-12-17 22:07:20.305	2025-12-17 22:07:20.305
cmjakeiz600319w2oiepmfklp	Avene Vitamin Activ Cg Niasinamid ve Cg Vitamini İçerikli Işıltı Veren Antioksidan içerikli Krem 50 ml	avene-vitamin-activ-cg-niasinamid-ve-cg-vitamini-i-cerikli-isilti-veren-antioksidan-icerikli-krem-50-ml	%6 Niasinamid içeriği sayesinde hücreleri uyarır ve ömürlerini uzatır.\n\nHyaluronik Asit ile cildi derinlemesine nemlendirerek pürüzsüzleştirir ve dolgunlaştırır.\n\n15 günde dolgunlaştırıcı, yenileyici etki ve eşit bir cilt tonu sağlar**. (**65 kullanıcı üzerinde yapılan memnuniyet testi, Pierre Fabre Klinik Veriler)\n\n1 ay içerisinde koyu lekelerin ve kırışıklıkların görünümünü azaltmaya yardımcı etki sunar***. (***40 kullanıcı üzerinde enstrümantal ölçümler, Pierre Fabre Klinik Veriler)\n\nTüm cilt tipleri için uygun olup, özellikle koyu leke ve kırışıklık problemi yaşayan ciltler için uygundur.\n\nSabah ve/veya akşam yüz, boyun ve dekolte bölgesine uygulanarak günlük bakım rutininin bir parçası olarak kullanılabilir.\n\nDermatolojik olarak test edilmiş olup hassas ciltler için uygundur.	Avène Vitamin Activ Cg Işıltı Veren Antioksidan Krem, ciltte ışıltı kaybı, kırışıklık ve koyu leke görünümünü azaltmaya yardımcı olur.\n\n%1,8 Vitamin Cg içeriği ile cilde aydınlık bir görünüm kazandırır ve antioksidan etki sağlar.\n\nİlk uygulamadan itibaren eşitlenmiş bir cilt tonu sunar*.(*Klinik skor, 44 katılımcı, Pierre Fabre Klinik Veriler)\n\nC vitamininin ultra kararlı bir formu olan Askorbil Glukozit ile güçlü antioksidan etki sunar.	AVENE8	3282770393507	1960.00	\N	\N	2	f	1	\N	cmjabr2kz00049w2ofb24qdtd	cmjae2d1c000o9w2oefb5sj18	t	f	f			2025-12-17 22:10:06.354	2025-12-17 22:10:06.354
cmjakhnku00339w2o1ijptgwt	Topicrem Ultra Moisturizing Shower Gel 500 ml	topicrem-ultra-moisturizing-shower-gel-500-ml	cilt tipinden bağımsız olarak tüm bireyler için idealdir.\n\n- 500 ml hacmi ile uzun süreli kullanım imkanı sunar, böylece sık sık yeniden doldurma ihtiyacını ortadan kaldırır.\n\n- Tek beden seçeneğiyle kolay taşınabilirlik ve pratik kullanım avantajları sağlar	 Cildinizi derinlemesine nemlendiren formülüyle, gün boyu yumuşaklık ve tazelik hissi sağlar.\n\n- Unisex tasarımı sayesinde herkes tarafından rahatlıkla kullanılabilir	TOPICREM5	8682214522664	1120.00	\N	\N	1	f	1	\N	cmjac3d1z000c9w2oint4o6rg	cmjadzk0q000k9w2orbzw4qrk	t	f	f			2025-12-17 22:12:32.286	2025-12-17 22:12:32.286
cmjakl70000359w2onvznxpt5	SVR Biotic Göz Ve Dudak Çevresi Bakım Kremi 15 ml	svr-biotic-goz-ve-dudak-cevresi-bakim-kremi-15-ml	Cilt görünümünü korur ve güçlendirir.\n\nHyaluronik asit kırışıklıklara ve ince çizgilere karşı bakım sağlar.\n\nCildi nemlendirir.\n\nTaze ve yapışkan olmayan dokusu, göz ve dudak çevresindeki cildi doldurur, nemlendirir ve pürüzsüzleştirir.\n\nİçeriği %95 doğal kaynaklıdır.	Göz ve dudak çevresindeki kurumadan kaynaklanan kırışıklıklar ve ince çizgiler için kullanılır.	BİOTİC1	3662361003259	1960.00	\N	\N	3	f	1	\N	cmjac2uh700089w2o9v8g8oia	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-17 22:15:17.425	2025-12-17 22:15:17.425
cmjako0lp00379w2o9su1rcz3	Lazartigue Curl Specialist Hydrating Mask 250 ml	lazartigue-curl-specialist-hydrating-mask-250-ml		Tüm saç tiplerine uygun formülüyle, her kullanıcıya hitap eder ve saçlarınıza özel bir bakım sunar\n\nSaçlarınıza derinlemesine nüfuz eden yapısıyla, saçların daha parlak ve canlı görünmesine yardımcı olur	LAZARTIGUE3	3372290000587	2910.00	\N	\N	2	f	10	\N	cmjako9fo00399w2oj41kwm4o	cmjae0z73000n9w2oowzbbkyi	t	f	f			2025-12-17 22:17:29.102	2025-12-17 22:17:56.533
cmjakqc09003b9w2ohvyttmbm	SVR Sebiaclear Creme Lavant 400ml	svr-sebiaclear-creme-lavant-400ml	Bu temizleme kremi, zayıflamış hassas cildi nazikçe temizlemek için parfüm ve sabun içermeyen özel olarak formüle edilmiştir.\n\nSülfatlanmış yüzey aktif maddeler içermeyen temizleme bazı, cildi arındırmak için çinko ve gerginlik, tahriş hissini yatıştırmak ve cilt bariyerini güçlendirmek için niasinamid ile birleştirilmiştir.\n\nKöpürmeyen sarma dokusu, temiz bir cilt hissi için kirleri ve fazla yağı giderir.	Ürün Açıklaması SVR Sebiaclear Yatıştırıcı Nemlendirici Temizleyici Krem 400 ml, cilt kuruluğu nedeniyle tahriş olmuş, kurutma tedavileriyle zayıflamış, susuz kalmış kusurlu veya hassas ciltlere sahip cildi rahatlatan bir temizleme bakımıdır.	SVR9		1250.00	\N	\N	4	f	10	\N	cmjac2kl800069w2o52xest63	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-17 22:19:17.194	2025-12-17 22:19:17.194
cmjaksog9003d9w2o9emd809v	SVR Physiopure Gele Moussant 400 ml	svr-physiopure-gele-moussant-400-ml	Hassas ciltlerin kullanımına uygundur.\nİçeriğinin %98'i doğal kaynaklıdır.\nHer gün ıslak yüze uygulayın, masaj yapın ve durulayın. \nSabun içermez.	Yumuşak, kremsi köpüğü cildi kurutmadan temizler ve kirleri, çevresel kirliliği ve suya dayanıklı makyajın tüm kalıntılarını dahi çıkarır.\nMükemmel bir şekilde temizlenmiş olan cilt tazelenir, oksijenlenmiş ve arındırılmış olur.\nSabun içermez.	SVR11	3662361003808	1250.00	\N	\N	1	f	10	\N	cmjac2kl800069w2o52xest63	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-17 22:21:06.633	2025-12-17 22:21:06.633
cmjakvcvj003f9w2on6elwo6u	Lumiderm Tonik 200 ml	lumiderm-tonik-200-ml	Cildi makyaj, kir ve kalıntılardan arındırarak ferahlık hissi verir.\n\nLumiderm Tonik içeriğinde ne var? Lumiderm tonik içeriğinde cildi besleyen, cildin renk tonunu eşitleyen ve antioksidan özellikleriyle cildi arındıran ve ferahlık hissi veren bitkisel ekstreler vardır.	Lumiderm arındırıcı ve gözenek sıkılaştırıcı tonik cildi nazikçe temizler ve yatıştırır.\n\nCilt tonunu eşitlemeye, nemlendirmeye ve cilde ışıltılı bir görünüm kazandırmaya yardımcı olurken gözenekleri sıkılaştırır.	LUMİ30	8684221144464	950.00	\N	\N	7	f	1	\N	cmjac2kl800069w2o52xest63	cmjae5o5l000s9w2ojeynjann	t	f	f			2025-12-17 22:23:11.599	2025-12-17 22:23:11.599
cmjbfs13000609w2o5mv5gcs0	COSMED Atopia Protecting & Moisturizing Cream 400 ml	cosmed-atopia-protecting-moisturizing-cream-400-ml			COSMED99	8699292993446	950.00	\N	\N	3	f	1	\N	cmjabr2kz00049w2ofb24qdtd	cmjae3vim000r9w2od1k38oei	t	f	f			2025-12-18 12:48:24.444	2025-12-18 12:48:24.444
cmjakzdpy003j9w2o9nqqnk2a	Lumiderm Hyalo C -aydınlatıcı Ve Nemlendirici Cilt Serumu 20 ml	lumiderm-hyalo-c-aydinlatici-ve-nemlendirici-cilt-serumu-20-ml	Lumiderm Hyalo C yoğun nemlendirici ve aydınlatıcı cilt serumu içeriğinde ne var? Lumiderm Hyalo C yoğun nemlendirici ve aydınlatıcı cilt serumu iki farklı molekül boyutunda hyaluronik asit ile birlikte C vitamini içerir.\n\nKüçük molekül boyutundaki hyaluronik asit, cildin yüzeyindeki nem bariyerini korur ve ciltteki su kaybını önler.	Lumiderm Hyalo C yoğun nemlendirici ve aydınlatıcı cilt serumu nedir? Lumiderm Hyalo C yoğun nemlendirici ve aydınlatıcı cilt serumu, ciltteki lekelerin görünümünü azaltmaya yardımcı olarak aydınlatıcı etki sağlayan ve cildin elastikiyetini artırmaya yardımcı olan ayrıca cildin kolajen üretimini destekleyen bir üründür.	LUMİ50	8684221144426	1120.00	\N	\N	5	f	3	\N	cmjabq00v00029w2ooraxy7yy	cmjae5o5l000s9w2ojeynjann	t	f	f			2025-12-17 22:26:19.319	2025-12-17 22:26:19.319
cmjal106x003l9w2oic3wma5o	Lumiderm Hyalo Peptide - Yaşlanma Karşıtı Ve Nemlendirici Cilt Serumu 20 ml	lumiderm-hyalo-peptide-yaslanma-karsiti-ve-nemlendirici-cilt-serumu-20-ml	Yaşlanma belirtilerini geciktirmek ve oluşan kırışıklık, solgun, yorgun cilt görünümünü azaltmak için kullanılabilir.\n\nAyrıca göz çevresi kırışıklıklarının oluşmasını engellemek ve olanları azaltmak amacı ile kullanılabilir.\n\nLumiderm Hyalo Peptide yoğun nemlendirici ve yaşlanma karşıtı serum içeriğinde ne var? Lumiderm Hyalo Peptide yoğun nemlendirici ve yaşlanma karşıtı serum iki farklı molekül boyutunda hyaluronik asit ile birlikte 4 farklı kırışıklık karşıtı peptit içermektedir.\n\nBu peptitler yüz kaslarını gevşetir, küçük kasların kasılmasını engeller ve cildin daha pürüzsüz görünmesine yardımcı olur.\n\nBununla birlikte Lumiderm içeriğindeki peptitler ciltteki kolajen üretimini artırmaya yardımcı olarak cildin elastikiyetini artırır.	umiderm Hyalo Peptide yoğun nemlendirici ve yaşlanma karşıtı serum nedir? Lumiderm Hyalo Peptide yoğun nemlendirici ve yaşlanma karşıtı serum, ciltteki kırışıklık görünümünü azaltmaya ve cildin elastikiyetini artırmaya yardımcı olan ayrıca cildin kolajen üretimini destekleyen bir üründür.	LUMİ60	8684221144440	1250.00	\N	\N	7	f	3	\N	cmjabq00v00029w2ooraxy7yy	cmjae5o5l000s9w2ojeynjann	t	f	f			2025-12-17 22:27:35.097	2025-12-17 22:27:35.097
cmjal2rfo003n9w2o4i7jbr6z	Avene Cleanance Cilt Kusurları Karşıtı A.H.A İçeren Peeling Etkili Serum 30 ml	avene-cleanance-cilt-kusurlari-karsiti-a-h-a-i-ceren-peeling-etkili-serum-30-ml	Salisilik asitten 1,5 kat daha güçlü formülü ile etkili bir peeling etkisi sunar.\n\nGözenek görünümünde yarı yarıya azalma etkisi sunar*.\n\n(*Klinik puanlama, 41 kullanıcı, Pierre Fabre Klinik Veriler)\n\nAvène Termal Su içeriğiyle cildi yatıştırır, ferahlatır ve rahatlatır.\n\nHassas ciltler için uygundur.	Laktik Asit ve Süksinik Asit kombinasyonu, keratolitik etkisi sayesinde hücre yenilenmesini uyarır.\n\nCilt kusurlarını azaltmaya yardımcı olur.	AVENE10	3282770390469	1300.00	\N	\N	2	f	1	\N	cmjabq00v00029w2ooraxy7yy	cmjae2d1c000o9w2oefb5sj18	t	f	f			2025-12-17 22:28:57.06	2025-12-17 22:28:57.06
cmjal5eh7003p9w2o6pz8z2k0	Avene Cleanance Hassas ve Lekeye Eğilimli Ciltler için Matlaştırıcı ve Arındırıcı Kil İçerikli Maske 50 ml	avene-cleanance-hassas-ve-lekeye-egilimli-ciltler-icin-matlastirici-ve-arindirici-kil-i-cerikli-maske-50-ml	Doğal peeling etkisi sağlayan perlit içeriği ile cildi nazikçe temizleyerek pürüzsüzleştirir.\n\nYağlı ve lekeye eğilimli ciltler için geliştirilmiş olup fazla sebumu dengelemeye katkı sağlar.\n\nHassas ciltler için uygun olup dermatolojik ve oftalmolojik olarak test edilmiştir.\n\nCiltteki fazla sebum ve kiri emerek cilde nüfuz etmelerini engeller.\n\nAvène Termal Su ile cildi yatıştırır, ferahlatır ve rahatlatır.	Cleanance Detoks Maske, 5 dakikada* ciltteki fazla yağ ve kiri arındırarak daha temiz ve pürüzsüz bir görünüm kazandırmaya yardımcı olur.\n\n(*Tüketici kullanım testi, 130 kullanıcı, Pierre Fabre Klinik Veriler)\n\nİçeriğindeki yeşil ve beyaz kil sayesinde cildi arındırır ve matlaştırır.	AVENE20	3282770390445	890.05	\N	\N	1	f	1	\N	cmjac2kl800069w2o52xest63	cmjae2d1c000o9w2oefb5sj18	t	f	f			2025-12-17 22:31:00.236	2025-12-17 22:31:00.236
cmjal6shz003r9w2opi4u89d9	Lazartigue Curl Specialist Cream 250 ml	lazartigue-curl-specialist-cream-250-ml	- Saçların ihtiyaç duyduğu nemi sağlayarak onarıcı etki sunar ve saçların daha sağlıklı ve canlı görünmesine katkıda bulunur	 Kıvırcık ve dalgalı saç tipleri için özel olarak formüle edilmiş, saçların doğal dalgalarını koruyan ve besleyen Curl Specialist Cream, saçlarınıza derinlemesine bakım yapar	LAZARTIGUE4		2350.00	\N	\N	3	f	1	\N	cmjabr2kz00049w2ofb24qdtd	cmjae0z73000n9w2oowzbbkyi	t	f	f			2025-12-17 22:32:05.063	2025-12-17 22:32:05.063
cmjal8ndy003t9w2owa38tq40	Topicrem Mela Anti-Dark Spot Peeling Etkili Gece Kremi 40ml	topicrem-mela-anti-dark-spot-peeling-etkili-gece-kremi-40ml		İçerdiği aktif bileşenler geceden geceye cilt dokusunu korur\n\nHer tür koyu lekeyi düzeltmeye yardımcı olur\n\nCildi nemlendirir	TOPICREM6	3700281704730	2450.00	\N	\N	1	f	1	\N	cmjac2uh700089w2o9v8g8oia	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-17 22:33:31.748	2025-12-17 22:33:31.748
cmjala1cf003v9w2on14qdp8n	Lazartigue Nourish Besleyici Saç Kremi 150 ml	lazartigue-nourish-besleyici-sac-kremi-150-ml			LAZARTIGUE7	 3372290000150	1920.00	\N	\N	1	f	1	\N	cmjako9fo00399w2oj41kwm4o	cmjae0z73000n9w2oowzbbkyi	t	f	f			2025-12-17 22:34:36.495	2025-12-17 22:34:36.495
cmjalbcxi003x9w2o4u4f63la	SVR Collagen Biotic Regenerating Kırışıklık Karşıtı Krem 50 ml	svr-collagen-biotic-regenerating-kirisiklik-karsiti-krem-50-ml			SVR15	3662361002719	2975.00	\N	\N	1	f	1	\N	cmjac2uh700089w2o9v8g8oia	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-17 22:35:38.166	2025-12-17 22:35:38.166
cmjalcwio003z9w2onvpyb1fe	J.F Lazartigue Lazartigue Exception Serum 50 ml	j-f-lazartigue-lazartigue-exception-serum-50-ml	Tüm saç tipleri için uygun formülüyle, her kullanıcıya hitap eder ve saç bakım rutininizi kişiselleştirir\n\n50 ml boyutuyla pratik kullanım sunar ve saç bakım rutininizi kolaylaştırır	Saçları derinlemesine güçlendirir ve onarır, günlük kullanımda bile saçların daha güçlü ve canlı görünmesine yardımcı olur	LAZARTIGUE8	3372290000297	2650.00	\N	\N	3	f	1	\N	cmjabq00v00029w2ooraxy7yy	cmjae0z73000n9w2oowzbbkyi	t	f	f			2025-12-17 22:36:50.208	2025-12-17 22:36:50.208
cmjale7qp00419w2o9d21ulht	SVR Sun Secure Blur Sans Parfum SPF50 50 ml	svr-sun-secure-blur-sans-parfum-spf50-50-ml		SPF50 koruma faktörü ile güneşin zararlı UVA ve UVB ışınlarına karşı tam koruma sağlar\n\nPratik tüp tasarımı, kolay uygulama imkanı ve taşıması kolaydır	SVR16	3662361003150	850.00	\N	\N	1	f	1	\N	cmjac34fp000a9w2o20rm6wsd	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-17 22:37:51.409	2025-12-17 22:37:51.409
cmjalgma600449w2or18yb0us	Lamos PELLA LUCE akne karşıtı yüz temizleme jeli	lamos-pella-luce-akne-karsiti-yuz-temizleme-jeli	Cildinizi derinlemesine temizlemeye yardımcı olur.\n\nMakyaj ve kir kalıntılarını temizleyerek, cildin yağ görünümünü azaltır.\n\nCildinizin canlı ve sağlıklı görünmesine yardımcı olur.	Pella Luce, akne ve akne lekeli ciltler için geliştirilmiş formülünde çay ağacı içeren temizleyici jeldir.	PELLALUCE1	8680540172294	970.00	\N	\N	5	f	1	\N	cmjac2kl800069w2o52xest63	cmjalfhk500429w2ouionft3k	t	f	f			2025-12-17 22:39:43.566	2025-12-17 22:39:43.566
cmjbefuua00469w2oqqtirki1	Topicrem Calm Ar Anti-redness Daily Cream 40 ml	topicrem-calm-ar-anti-redness-daily-cream-40-ml			TOPICREM7	3700281705010	1120.00	\N	\N	23	f	10	\N	cmjac2uh700089w2o9v8g8oia	cmjadzk0q000k9w2orbzw4qrk	t	f	f			2025-12-18 12:10:56.866	2025-12-18 12:10:56.866
cmjbfkxwz005k9w2oglzbij2w	J.F Lazartigue Lazartigue Repair Onarıcı Vegan Saç Kremi 150 Ml	j-f-lazartigue-lazartigue-repair-onarici-vegan-sac-kremi-150-ml	 Krem formülü ile kolay uygulanır ve saç tellerine hızla nüfuz eder\n\n- Tüm saç tipleri için uygun yapısıyla herkesin kullanımına açık bir bakım sunar\n\n- Vegan formülüyle hayvan dostu bir seçenek olarak öne çıkar ve etik tüketim tercihlerini destekler	 Saçlarınıza derinlemesine besleyici ve onarıcı etki sağlar, sağlıklı bir görünüm kazandırır	LZT3802	3372290138020	2250.00	\N	\N	1	f	1	\N	cmjbfjnrt005i9w2ogqvnyebj	cmjae0z73000n9w2oowzbbkyi	t	f	f			2025-12-18 12:42:53.747	2025-12-18 12:42:53.747
cmjbflzjj005m9w2ouk2d847n	J.F Lazartigue Lazartigue Thicker Dökülme Karşıtı Güçlendirici Saç Serumu 50 ml	j-f-lazartigue-lazartigue-thicker-dokulme-karsiti-guclendirici-sac-serumu-50-ml			LZT4312	3372290143123	3800.00	\N	\N	3	f	1	\N	cmjbfm6nk005o9w2o9110fzog	cmjae0z73000n9w2oowzbbkyi	t	f	f			2025-12-18 12:43:42.511	2025-12-18 12:44:03.481
cmjbehz5r00489w2omtda5et0	Avene Cicalfate+ Cildin Doğal Bariyerinin Yenilenmesine Yardımcı Masaj Jeli 30 Ml	avene-cicalfate-cildin-dogal-bariyerinin-yenilenmesine-yardimci-masaj-jeli-30-ml	Cicalfate+ Cildin Doğal Bariyerinin Yenilenmesine Yardımcı Masaj Jeli, içeriğindeki Avène Termal Su, C+ Restore, Bakır – Çinko Sülfat, Hyaluronik Asit ve Silikon ile yıpranmış hassas ciltlerin yatışmasına cildin doğal bariyerinin yenilenmesine yardımcı olur.\n\nCilt pürüzlerinin azaltılmasını destekler, yumuşak ve konforlu bir cilt dokusu oluşturur.\n\n• Kolay Uygulanabilen Jel Form\n\nCicalfate+ Cildin Doğal Bariyerinin Yenilenmesine Yardımcı Masaj Jeli, hassas ciltlerin özel bir bakıma ihtiyaç duyduğu anlarda masajı kolaylaştırır, nemlendirici jel dokusu sayesinde rahatlatıcı bir etki sunar.\n\nCicalfate+ Cildin Doğal Bariyerinin Yenilenmesine Yardımcı Masaj Jeli’ni Kimler Kullanabilir?\n\nCicalfate+ Cildin Doğal Bariyerinin Yenilenmesine Yardımcı Masaj Jeli, onarıma ihtiyaç duyan ve yatıştırıcı etkiye ihtiyaç duyan tüm cilt tipleri için uygundur.	Stres, çevresel faktörler ya da genetik yapı nedeniyle cilt canlılığını ve nemini yitirebilir, cildin doğal bariyeri hasar görebilir. Cicalfate+ Cildin Doğal Bariyerinin Yenilenmesine Yardımcı Masaj Jeli, yapısı sayesinde kolay uygulanır ve cildin doğal bariyerinin güçlenmesi için canlandırıcı bir etki sunar.	AVENE80	3282779321754	800.00	\N	\N	2	f	1	\N	cmjabr2kz00049w2ofb24qdtd	cmjae2d1c000o9w2oefb5sj18	t	f	f			2025-12-18 12:12:35.775	2025-12-18 12:12:35.775
cmjbejfxx004a9w2ottz8dziy	Sun Secure Spray Pocket Spf50 20 ml	sun-secure-spray-pocket-spf50-20-ml	Aqua/Water/Eau, Dicaprlyl Ethr, Disoprpyl Adpate, Dethlamno Hydroxbenzoyl Hexl Benzate Ethlhexyl Trazone, C12-15 Alyl Benzote, Bis-Ethylhaxyloxphenol Methoxyphenl Triazne Diethlhexyl Butmido Triazone Slica Beheneth-25 Propanedol, Pentlene Glcol, Acrlates/C12-22 Alkl Methacrlate Copolmer, Hdrogenated Vegetable Oil, Niacnamide, Cetearl Alchol, Polyster-7, Coco-Glucside, Microcstalline, Cellose, Nopentyl Glcol Diheptnoate, Parfum (fragrance), 1,2-Hexanedol, Caprlyl Glcol, Glycern, Arginne, Ctric Acd, Tocphrol, Cellose Gum, Hydroxethyl Acrlate/Sodum Acryloldimethyl Tarate Copolmer, Disodum Laurl,Sulfocnate Glyine Soja (soybean) Oil, Lecithn, Polysorbte 60, Sorbitn Isostearte, Lepdum Satimm Sprut Extrct.	zellikle terledikten, yüzdükten veya havluyla kurulandıktan sonra korumayı sürdürmek için uygulamayı sık sık tekrarlayın.	SVR90	3662361002566	750.00	\N	\N	4	f	1	\N	cmjac34fp000a9w2o20rm6wsd	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 12:13:44.181	2025-12-18 12:13:44.181
cmjbekzva004c9w2o7o349ubi	 Clairial Spf50 Creme 40 ml	clairial-spf50-creme-40-ml	SPF50 koruma faktörü ile güneşin zararlı UVA ve UVB ışınlarına karşı etkin bir şekilde koruma sunar\n\nLeke karşıtı bakım özelliği sayesinde cilt tonunuzun eşitlenmesine yardımcı olur ve cilt lekelerinin görünümünü azaltmaya destek verir\n\nPratik tüp ambalajı, ürünün kolayca uygulanmasını ve taşınmasını sağlar	üm cilt tiplerine uygun formülüyle, cildinizin ihtiyacı olan özeni sağlar	SVR17	3662361003037	1450.00	\N	\N	5	f	1	\N	cmjac2uh700089w2o9v8g8oia	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 12:14:56.662	2025-12-18 12:14:56.662
cmjbemgs2004e9w2owtyv5p12	 Sebiacler Az Ampül Flash 30 ml Yatıştırıcı Leke Karşıtı Konsantre	sebiacler-az-ampul-flash-30-ml-yatistirici-leke-karsiti-konsantre	*Cildi pürüzsüzleştirir.\n\n*Salisilikasit pürüzsüzleştirmeye, çinko aşırı sebumu dengelemeye, niacin namide nemlendirici etkiye yardımcı olur.	Leke görünümüne karşı bakım sağlayan konsantre serum *Tüm cildlere uygundur *Tıkanmış gözenekleri derinlemesine temizler *Kırmızı ve kahverengi izlerin görünümünü azaltır.	SVR19	3662361002450	1450.00	\N	\N	10	f	2	\N	cmjabq00v00029w2ooraxy7yy	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 12:16:05.234	2025-12-18 12:16:05.234
cmjbenkxm004g9w2oi79ush2m	 Sun Secure Blur Rose Tinted Spf50 50ml	sun-secure-blur-rose-tinted-spf50-50ml	- Pratik tüp ambalajı sayesinde kolayca taşınabilir ve her an yanınızda bulundurabilirsiniz	 SPF50 faktörü ile güneşin zararlı UVA ve UVB ışınlarına karşı tam koruma sağlar	SVR22	3662361003174	950.00	\N	\N	1	f	10	\N	cmjac34fp000a9w2o20rm6wsd	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 12:16:57.274	2025-12-18 12:16:57.274
cmjbep1db004i9w2oempxkqjz	 KARGO BEDAVA KUPONLU ÜRÜN Sebiaclear Mat Pores 40 ml - 1 SVR Sebiaclear Mat Pores 40 ml	kargo-bedava-kuponlu-urun-sebiaclear-mat-pores-40-ml-1-svr-sebiaclear-mat-pores-40-ml	Cildinizi derinlemesine arındırır, matlaştırır ve pürüzsüzleştirir.\n\nGüçlü Formül, Etkili Sonuçlar %4 Glukonolakton ve Salisilik Asit ile zenginleştirilmiş formülü, cilt dokusunu yeniler, gözenekleri sıkılaştırır ve lekelerin görünümünü azaltır.\n\n%2 Mat SR içeriği sayesinde sebum üretimini dengeler ve cildinizin gün boyu mat kalmasını sağlar.\n\nHafif ve Kadifemsi Dokunuş Akışkan ve hafif dokusu sayesinde cilt tarafından hızla emilir, yağlı veya yapışkan bir his bırakmaz.	Ürün Adı: SVR Sebiaclear Mat+Pores 40 ml Ürün Markası: SVR Ürün Miktarı: 40 ml Gözeneksiz, Mat ve Pürüzsüz Bir Cilt İçin! SVR Sebiaclear Mat+Pores, yağlı ve karma ciltlerin en büyük sorunları olan genişlemiş gözenekler, fazla sebum ve parlamayı hedef alan, yüksek toleranslı bir bakım kremidir.	SVR55	3662361002726	750.00	\N	\N	6	f	10	\N	cmjac2uh700089w2o9v8g8oia	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 12:18:05.231	2025-12-18 12:18:05.231
cmjbeqmh2004k9w2os429n54f	SVR Eau Solaıre Sun Secure Spf50+ 200ml	svr-eau-solaire-sun-secure-spf50-200ml			SVR66	3662361001293	1450.00	\N	\N	1	f	1	\N	cmjac34fp000a9w2o20rm6wsd	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 12:19:19.237	2025-12-18 12:19:19.237
cmjberj60004m9w2otrfqps9h	purobıocosmetics Eyeshadow Powder 2.5 Gr No 22	purobiocosmetics-eyeshadow-powder-2-5-gr-no-22			PUROBIOCOSMETICS6		725.00	\N	\N	1	f	1	\N	cmjaflo3n00149w2ohthn32rp	cmjafn0xi00159w2oxyvtjlt5	t	f	f			2025-12-18 12:20:01.608	2025-12-18 12:20:01.608
cmjbespe6004o9w2otdqnt2dq	purobıocosmetics Organik Vegan Alerjik Gözler Için Doğal Içerikli Göz Farı – Mat & Işıltılı Renkler 2.5 gr	purobiocosmetics-organik-vegan-alerjik-gozler-icin-dogal-icerikli-goz-fari-mat-isiltili-renkler-2-5-gr			PUROBIO8	8051411362142	725.00	\N	\N	2	f	1	\N	cmjaflo3n00149w2ohthn32rp	cmjafn0xi00159w2oxyvtjlt5	t	f	f			2025-12-18 12:20:56.335	2025-12-18 12:20:56.335
cmjbew0sr004q9w2ofj6z3eib	SVR Xerial 10 Lait Corps Vücut Losyonu 400 ml	svr-xerial-10-lait-corps-vucut-losyonu-400-ml			SVR69	3662361002429	1450.00	\N	\N	2	f	1	\N	cmjac3d1z000c9w2oint4o6rg	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 12:23:31.084	2025-12-18 12:23:31.084
cmjbfndwf005q9w2ok277p3ei	J.F Lazartigue Lazartigue Huile Des Reves Vegan Kuru Saç Bakım Yağı 50 ml	j-f-lazartigue-lazartigue-huile-des-reves-vegan-kuru-sac-bakim-yagi-50-ml			LZT4322	3372290143222	2080.00	\N	\N	1	f	1	\N	cmjbfnjqi005s9w2olgzo62de	cmjae0z73000n9w2oowzbbkyi	t	f	f			2025-12-18 12:44:47.775	2025-12-18 12:45:04.615
cmjbft9w700629w2oc2odcata	Topicrem My 1st Gentle Ultra Rich Cleansing Bar 150g	topicrem-my-1st-gentle-ultra-rich-cleansing-bar-150g			BABE3	3700281704105	725.00	\N	\N	1	f	1	\N	cmjac43o3000e9w2oo9qjgj1k	cmjadzk0q000k9w2orbzw4qrk	t	f	f			2025-12-18 12:49:22.519	2025-12-18 12:49:22.519
cmjbhwk8x007m9w2o250zbpgq	Topicrem Misellar Temizleme Suyu 400 Ml	topicrem-misellar-temizleme-suyu-400-ml			YUYYYY	3700281703214	930.00	\N	\N	1	f	1	\N	cmjac2kl800069w2o52xest63	cmjadzk0q000k9w2orbzw4qrk	t	f	f			2025-12-18 13:47:55.137	2025-12-18 13:47:55.137
cmjbhxpl9007o9w2odsyjx9am	Topicrem Ultra Moisturizing Body Milk 500ml	topicrem-ultra-moisturizing-body-milk-500ml			UUIIOII	3700281702286	1250.00	\N	\N	2	f	1	\N	cmjac2kl800069w2o52xest63	cmjadzk0q000k9w2orbzw4qrk	t	f	f			2025-12-18 13:48:48.717	2025-12-18 13:48:48.717
cmjbey5qh004u9w2oqv8ejobp	SVR Xerial 10 Vücut Losyonu 200ml	svr-xerial-10-vucut-losyonu-200ml	Yoğun Nemlendirme ve Onarım\n\n%10 saf üre ve shea yağı içeren özel formülü sayesinde cildinizdeki kuruluğu giderir, nem bariyerini destekler ve cildinizi yumuşacık yapar. Aynı zamanda cildinizi çevresel faktörlerin zararlı etkilerine karşı korumaya yardımcı olarak daha sağlıklı ve canlı bir görünüm kazanmasına yardımcı olur.\n\nHızlı Emilen ve Yapışkan Olmayan Formül\n\nİnce ve hafif yapısı sayesinde cildiniz tarafından hızla emilir, yağlı bir his bırakmaz. Böylece gün boyu rahatlıkla kullanabilirsiniz.\n\nDoğal ve Besleyici İçerikler\n\nHindistan cevizi yağı, hodan tohumu yağı ve pantenol gibi doğal bileşenler içeren SVR Xerial 10 Lait Corps, cildinizi beslemeye ve onarmaya yardımcı olur. Cildinizin doğal yapısını destekleyerek daha dirençli hale getirir.	Cildinizin Susuzluğunu Gidermeye ve Yumuşacık Dokunuşlara Kavuşmanıza Yardımcı Olun!\n\nSVR Xerial 10 Lait Corps Vücut Losyonu, kuru ve çok kuru ciltlerin ihtiyaç duyduğu yoğun nemi sağlamak için özel olarak formüle edilmiş, zengin içerikli bir losyondur. Cildinizi derinlemesine nemlendirir, besler ve korur.	SVR53	3662361002412	1450.00	\N	\N	1	f	1	\N	cmjbeww6s004s9w2otehw426u	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 12:25:10.793	2025-12-18 12:25:10.793
cmjbf0r68004y9w2o6ceano3b	 KARGO BEDAVA KUPONLU ÜRÜN Lazartigue Exfoliate Vegan Saç Peelingi 75 Ml - 1 J.F Lazartigue Lazartigue Exfoliate Vegan Saç Peelingi 75 Ml	kargo-bedava-kuponlu-urun-lazartigue-exfoliate-vegan-sac-peelingi-75-ml-1-j-f-lazartigue-lazartigue-exfoliate-vegan-sac-peelingi-75-ml	Saçlarınıza derinlemesine nemlendirme sağlayarak, sağlıklı ve canlı bir görünüm kazandırır\n\nVegan içerikli yapısıyla hayvan dostu bir seçenek olarak öne çıkar ve etik tüketim tercihlerinize katkıda bulunur	Tüm saç tiplerine uygun formülüyle, her kullanıcıya hitap eder ve saçlarınıza özel bir bakım sunar	LAZARTIGUE30	3372290111825	2950.00	\N	\N	1	f	1	\N	cmjbezp9x004w9w2of20w4hx3	cmjae0z73000n9w2oowzbbkyi	t	f	f			2025-12-18 12:27:11.888	2025-12-18 12:27:11.888
cmjbf2a3200509w2oo59gs1e6	J.F Lazartigue Lazartigue Nourish Besleyici Vegan Şampuan 250 ml	j-f-lazartigue-lazartigue-nourish-besleyici-vegan-sampuan-250-ml	Vegan içerikli formülü ile hayvan dostu bir bakım sunar ve etik kullanımı destekler\n\n250 ml boyutuyla uzun süreli kullanım imkanı sağlar, ekonomik ve pratik bir seçenektir	Saçları derinlemesine besleyerek onarır ve güçlendirir, kuru saç tipleri için özel olarak formüle edilmiştir	LZT2042	3372290120421	1350.00	\N	\N	1	f	1	\N	cmjbf2ib100529w2o9nadwk3o	cmjae0z73000n9w2oowzbbkyi	t	f	f			2025-12-18 12:28:23.054	2025-12-18 12:28:44.699
cmjbf49lz00549w2o2gfx0c42	J.F Lazartigue Lazartigue Nourish Besleyici Saç Maskesi 250 ml	j-f-lazartigue-lazartigue-nourish-besleyici-sac-maskesi-250-ml	Vegan içerikli formülü ile hayvan dostu bir bakım sunar ve etik kullanımı destekler\n\nSaçları derinlemesine besleyerek onarır ve sağlıklı bir görünüm kazandırırVegan içerikli formülü ile hayvan dostu bir bakım sunar ve etik kullanımı destekler\n\nSaçları derinlemesine besleyerek onarır ve sağlıklı bir görünüm kazandırır	Kalın telli saçlar için özel olarak formüle edilmiş, saçların ihtiyaç duyduğu beslenmeyi sağlar	LZT1072	3372290110729	2990.00	\N	\N	3	f	1	\N	cmjako9fo00399w2oj41kwm4o	cmjae0z73000n9w2oowzbbkyi	t	f	f			2025-12-18 12:29:55.751	2025-12-18 12:29:55.751
cmjbf5iqb00569w2off5ydfvi	J.F Lazartigue Lazartigue Nourish Light Besleyici Saç Maskesi 250 ml	j-f-lazartigue-lazartigue-nourish-light-besleyici-sac-maskesi-250-ml	- Vegan içerikli yapısıyla hayvan dostu bir bakım sunar ve etik kullanımı destekler\n\n- Saçın ihtiyaç duyduğu nemi dengeler ve yumuşaklık sağlar, böylece saçlar daha kolay taranır ve şekillendirilir	İnce telli saçlara özel formülüyle, saçları derinlemesine besler ve onarır, sağlıklı bir görünüm kazandırır	LZT1192	3372290111924	3500.00	\N	\N	3	f	1	\N	cmjako9fo00399w2oj41kwm4o	cmjae0z73000n9w2oowzbbkyi	t	f	f			2025-12-18 12:30:54.227	2025-12-18 12:30:54.227
cmjbf6omp00589w2o8kbpe5j9	J.F Lazartigue Lazartigue Colour Protect Renk Koruyucu Vegan Saç Maskesi 250 Ml	j-f-lazartigue-lazartigue-colour-protect-renk-koruyucu-vegan-sac-maskesi-250-ml	Besleyici ve onarıcı etkisiyle saçlarınızın ihtiyaç duyduğu nemi ve bakımı sağlar, canlı ve parlak bir görünüm kazandırır\n\nVegan formülü sayesinde hayvan dostu bir seçenek olarak öne çıkar ve etik tüketim tercihlerinizle uyumlu bir bakım deneyimi sunar	Tüm saç tiplerine uygun formülüyle, Lazartigue colour protect renk koruyucu saç maskesi, her kullanıcıya hitap eder ve saçlarınıza özel bakım sunar	LZT1152	3372290111528	2710.00	\N	\N	2	f	1	\N	cmjako9fo00399w2oj41kwm4o	cmjae0z73000n9w2oowzbbkyi	t	f	f			2025-12-18 12:31:48.529	2025-12-18 12:31:48.529
cmjbf7v9v005a9w2odnfdgoyq	J.F Lazartigue Lazartigue Repair Onarıcı Vegan Saç Maskesi 250 Ml	j-f-lazartigue-lazartigue-repair-onarici-vegan-sac-maskesi-250-ml	 Vegan içerikli formülüyle hayvan dostu bir bakım deneyimi sağlar\n\n- 250 ml boyutuyla uzun süreli kullanım imkanı sunar ve saç bakım rutininizi pratikleştirir	İnce telli saçlar için özel olarak formüle edilmiş, saçları besleyici ve onarıcı etki sunar	LZT1802	3372290118022	3455.00	\N	\N	2	f	1	\N	cmjako9fo00399w2oj41kwm4o	cmjae0z73000n9w2oowzbbkyi	t	f	f			2025-12-18 12:32:43.795	2025-12-18 12:32:43.795
cmjbf9gxw005c9w2ovvqh1bww	J.F Lazartigue Lazartigue Colour Protect Renk Koruyucu Vegan Şampuan 250 Ml	j-f-lazartigue-lazartigue-colour-protect-renk-koruyucu-vegan-sampuan-250-ml	Vegan formülü ile hayvan dostu bir seçenek sunan bu şampuan, etik ve sorumlu bir güzellik rutini arayanlar için idealdir\n\n250 ml boyutuyla ekonomik kullanım sağlar ve sık sık alışveriş ihtiyacını azaltarak saç bakım masraflarınızı optimize eder	Saç renginizi koruyan ve boyalı veya röfleli saçlarınızın canlılığını uzun süre muhafaza etmesine yardımcı olan Lazartigue colour protect renk koruyucu şampuan, saç bakım rutininizin vazgeçilmez bir parçası haline gelir	LAZARTIGUE36	3372290121725	1450.00	\N	\N	1	f	1	\N	cmjbf2ib100529w2o9nadwk3o	cmjae0z73000n9w2oowzbbkyi	t	f	f			2025-12-18 12:33:58.532	2025-12-18 12:33:58.532
cmjbfifui005e9w2opy2i9er6	J.F Lazartigue Lazartigue Extra Gentle Sülfatsız Vegan Şampuan 250 Ml	j-f-lazartigue-lazartigue-extra-gentle-sulfatsiz-vegan-sampuan-250-ml	Ürün Açıklaması\nSaçları nazikçe temizlerken aynı zamanda nemlendirir, böylece saçlarınızın doğal dengesini korur\n\nVegan formülü ile hayvan dostu bir bakım sunar ve etik kullanımı destekler\n\nTüm saç tipleri için uygun yapısıyla herkesin kullanımına açık, evrensel bir şampuan deneyimi sağlar	Saçları nazikçe temizlerken aynı zamanda nemlendirir, böylece saçlarınızın doğal dengesini korur	LAZARTIGUE300	3372290125020	1120.00	\N	\N	1	f	1	\N	cmjbf2ib100529w2o9nadwk3o	cmjae0z73000n9w2oowzbbkyi	t	f	f			2025-12-18 12:40:57.018	2025-12-18 12:40:57.018
cmjbfjhx6005g9w2o8klfc04w	J.F Lazartigue Lazartigue Anti Dandruff Kepek Önleyici Saç Kremi 75 ml	j-f-lazartigue-lazartigue-anti-dandruff-kepek-onleyici-sac-kremi-75-ml			LZT4032	3372290140320	1350.00	\N	\N	1	f	1	\N	cmjbfjnrt005i9w2ogqvnyebj	cmjae0z73000n9w2oowzbbkyi	t	f	f			2025-12-18 12:41:46.362	2025-12-18 12:42:03.474
cmjbfon3a005u9w2or6aukda8	Babe Laboratorios Babe Super Fluid Sunscreen Mattifying Spf50 50 ml	babe-laboratorios-babe-super-fluid-sunscreen-mattifying-spf50-50-ml			631572	8436571631572	750.00	\N	\N	0	f	10	\N	cmjac2uh700089w2o9v8g8oia	cmjae05om000m9w2o54o249tt	t	f	f			2025-12-18 12:45:46.342	2025-12-18 12:45:46.342
cmjbfui3100649w2oxphc7509	SVR Topialyse Gel Lavante 400 ml	svr-topialyse-gel-lavante-400-ml	Kuruluk karşıtı yumuşak temizleme bazı ve gliserin içerir.\n\nFizyolojik PH.\n\nBiyoçözünür formül.\n\nBebek (prematüre hariç) çocuk ve yetişkinlerin saç,yüz,vücut ve intim temizliğe uygundur.\n\nGöz yakma.\n\nGünlük kullanıma uygundur.\n\nDermatolojik oftalmolojik jinekolojik ve pediatrik kontrol altında test edilmiştir.\n\nHipoalerjeniktir.	Tüm ailenin kuru ve hassas cildini nazikçe temizler ve korur.\n\nUzun süreli rahatlık hissi, sakin ve yumuşak bir cilt için kuruluk kaynaklı hissini azaltmaya yardımcı olur.	SVR77	3662361001897	850.00	\N	\N	0	f	10	\N	cmjabr2kz00049w2ofb24qdtd	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 12:50:19.789	2025-12-18 12:50:19.789
cmjbfw1ft00669w2oky63gqr5	Topicrem Ah3 Global Anti Aging Cream 40 ml	topicrem-ah3-global-anti-aging-cream-40-ml			T04037	3700281704037	1800.00	\N	\N	2	f	1	\N	cmjac2uh700089w2o9v8g8oia	cmjadzk0q000k9w2orbzw4qrk	t	f	f			2025-12-18 12:51:31.529	2025-12-18 12:51:31.529
cmjbfxlci00689w2oerfwj2pq	Topicrem Ah3 Global Anti-aging Serum 30ml	topicrem-ah3-global-anti-aging-serum-30ml			BBBB	3700281703856	2500.00	\N	\N	2	f	10	\N	cmjac2uh700089w2o9v8g8oia	cmjadzk0q000k9w2orbzw4qrk	t	f	f			2025-12-18 12:52:43.986	2025-12-18 12:52:43.986
cmjbfyfcp006a9w2onfe467x0	SVR Sun Secure Cream Spf50+ 50ml	svr-sun-secure-cream-spf50-50ml			SVR556	3662361001705	825.00	\N	\N	1	f	1	\N	cmjac34fp000a9w2o20rm6wsd	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 12:53:22.873	2025-12-18 12:53:22.873
cmjbfzeqw006c9w2oo4hmzpl4	SVR Pepti Biotic Gel Yenileyici Jel 50 ml	svr-pepti-biotic-gel-yenileyici-jel-50-ml			SVR6666	3662361001194	1500.00	\N	\N	2	f	1	\N	cmjbeww6s004s9w2otehw426u	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 12:54:08.744	2025-12-18 12:54:08.744
cmjbg06q4006e9w2oi0eapo3s	SVR C20 Biotic Creram 50ml	svr-c20-biotic-creram-50ml			TTTT44	3662361001187	1850.00	\N	\N	1	f	10	\N	cmjabr2kz00049w2ofb24qdtd	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 12:54:45.005	2025-12-18 12:54:45.005
cmjbg1t76006g9w2o1i50ovea	Babe Laboratorios BABE HealthyAging+ Multi Rejuvenating Booster Serum 50 ml	babe-laboratorios-babe-healthyaging-multi-rejuvenating-booster-serum-50-ml			SERUM2222	8436571630780	1750.00	\N	\N	2	f	1	\N	cmjabq00v00029w2ooraxy7yy	cmjae05om000m9w2o54o249tt	t	f	f			2025-12-18 12:56:00.786	2025-12-18 12:56:00.786
cmjbg2odw006i9w2o997rj6ap	Babe Laboratorios BABE HealthyAging+ Multi Action Mature Skin Cream 50 ml	babe-laboratorios-babe-healthyaging-multi-action-mature-skin-cream-50-ml			RRRR66	8436571630810	1695.00	\N	\N	1	f	1	\N	cmjabr2kz00049w2ofb24qdtd	cmjae05om000m9w2o54o249tt	t	f	f			2025-12-18 12:56:41.204	2025-12-18 12:56:41.204
cmjbg3q37006k9w2oaizbngoc	SVR B3 Essence Hydra 150 ml	svr-b3-essence-hydra-150-ml			WWWW44	3662361000944	1500.00	\N	\N	3	f	1	\N	cmjbf2ib100529w2o9nadwk3o	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 12:57:30.068	2025-12-18 12:57:30.068
cmjbhdr9s006m9w2odxr1q7fb	SVR Sensifine Aqua Jel 40 ml	svr-sensifine-aqua-jel-40-ml			TTTRRR	3662361001231	850.00	\N	\N	6	f	1	\N	cmjbeww6s004s9w2otehw426u	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 13:33:17.777	2025-12-18 13:33:17.777
cmjbhfpos006o9w2oyy2st5um	SVR Cicavit Levres Dudak Bakım Balmı 10 gr	svr-cicavit-levres-dudak-bakim-balmi-10-gr			D55375	3662361001255	650.00	\N	\N	6	f	1	\N	cmjac5wo7000i9w2ojrlq29rj	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 13:34:49.036	2025-12-18 13:34:49.036
cmjbhglwe006q9w2okfpp99kt	SVR Sebiaclear Active Renkli Bakım Kremi 40ml	svr-sebiaclear-active-renkli-bakim-kremi-40ml			D55377	3662361000890	950.00	\N	\N	0	f	10	\N	cmjabr2kz00049w2ofb24qdtd	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 13:35:30.782	2025-12-18 13:35:30.782
cmjbhhlii006s9w2ohf9pnwrr	Topicrem Hydra+ Radiance Progressive Tan 40 ml	topicrem-hydra-radiance-progressive-tan-40-ml			TOPICREM590	3700281703818	1200.00	\N	\N	1	f	10	\N	cmjac2uh700089w2o9v8g8oia	cmjadzk0q000k9w2orbzw4qrk	t	f	f			2025-12-18 13:36:16.939	2025-12-18 13:36:16.939
cmjbhihd0006u9w2on9lvwkka	SVR Sebiaclear Serum 30 ml	svr-sebiaclear-serum-30-ml			10066113	3662361000364	1100.00	\N	\N	13	f	10	\N	cmjabq00v00029w2ooraxy7yy	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 13:36:58.212	2025-12-18 13:36:58.212
cmjbhjmuy006w9w2o2veqamv9	CECEMED Kuru Yıpranmış Ve Boyalı Saçlar Için Şampuan 300 ml	cecemed-kuru-yipranmis-ve-boyali-saclar-icin-sampuan-300-ml			3100	5907506531005	950.00	\N	\N	5	f	1	\N	cmjbf2ib100529w2o9nadwk3o	cmjae2s0p000p9w2orxlzgy5f	t	f	f			2025-12-18 13:37:51.995	2025-12-18 13:37:51.995
cmjbhkly6006y9w2oaripevdq	SVR Spirial Spray Vegetal Deodorant 48h 75 ml	svr-spirial-spray-vegetal-deodorant-48h-75-ml			3662361000104	3662361000104	490.00	\N	\N	5	f	1	\N	cmjac54wz000g9w2oieomhfin	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 13:38:37.47	2025-12-18 13:38:37.47
cmjbhlh6c00709w2ormrkii1d	SVR Spirial Terleme Karşıtı Deodorant Sprey 75 Ml	svr-spirial-terleme-karsiti-deodorant-sprey-75-ml			SVR288188	3401360288188	750.00	\N	\N	7	f	5	\N	cmjac54wz000g9w2oieomhfin	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 13:39:17.94	2025-12-18 13:39:17.94
cmjbhmzxq00729w2olvmqxjka	Avene Hydrance Light SPF30+ Hassas ve Karma Ciltler için Güneş Korumalı Nemlendirici Emülsiyon 40 ml	avene-hydrance-light-spf30-hassas-ve-karma-ciltler-icin-gunes-korumali-nemlendirici-emulsiyon-40-ml			AVENE779	3282770208788	1700.00	\N	\N	1	f	1	\N	cmjac3d1z000c9w2oint4o6rg	cmjae2d1c000o9w2oefb5sj18	t	f	f			2025-12-18 13:40:28.91	2025-12-18 13:40:28.91
cmjbhnric00749w2oqxv4qffj	Genel Markalar Calm Ultra Moisturizing Soothing Cream 40 ml	genel-markalar-calm-ultra-moisturizing-soothing-cream-40-ml			DDDDD	3700281702989	989.00	\N	\N	10	f	5	\N	cmjabr2kz00049w2ofb24qdtd	cmjadzk0q000k9w2orbzw4qrk	t	f	f			2025-12-18 13:41:04.644	2025-12-18 13:41:04.644
cmjbhoui500769w2ousutiaeo	Avene Intense Eye Make-Up Remover Çift Fazlı Göz Makyaj Temizleyicisi 125 ml	avene-intense-eye-make-up-remover-cift-fazli-goz-makyaj-temizleyicisi-125-ml			3282770073126	3282770073126	950.00	\N	\N	1	f	1	\N	cmjaflo3n00149w2ohthn32rp	cmjae2d1c000o9w2oefb5sj18	t	f	f			2025-12-18 13:41:55.181	2025-12-18 13:41:55.181
cmjbhpo4200789w2ohisglkmo	Baby Moisturizing Milk 500 ml	baby-moisturizing-milk-500-ml			SSSSS	3700281703450	1900.00	\N	\N	2	f	1	\N	cmjabr2kz00049w2ofb24qdtd	cmjadzk0q000k9w2orbzw4qrk	t	f	f			2025-12-18 13:42:33.554	2025-12-18 13:42:33.554
cmjbhqzt7007a9w2ooukktxri	Topicrem My First Ultra Nemlendirici Süt 200 m	topicrem-my-first-ultra-nemlendirici-sut-200-m			TTTTT	3700281703436	1100.00	\N	\N	2	f	1	\N	cmjabr2kz00049w2ofb24qdtd	cmjadzk0q000k9w2orbzw4qrk	t	f	f			2025-12-18 13:43:35.372	2025-12-18 13:43:35.372
cmjbhsad7007c9w2o7cjbffag	SVR Claırıal Serum 30ml	svr-clairial-serum-30ml			EEEEE	3401360060753	1250.00	\N	\N	1	f	1	\N	cmjabq00v00029w2ooraxy7yy	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 13:44:35.707	2025-12-18 13:44:35.707
cmjbht3v2007e9w2ozc6z138s	SVR Physiopure Eau Micellaire 400 ml	svr-physiopure-eau-micellaire-400-ml			SSSSSS	3401381330255	950.00	\N	\N	2	f	1	\N	cmjabr2kz00049w2ofb24qdtd	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 13:45:13.934	2025-12-18 13:45:13.934
cmjbhu47t007g9w2oc3pufc1a	SVR Physiopure Make Up Remover Pure And Mild Lait 200ml	svr-physiopure-make-up-remover-pure-and-mild-lait-200ml			QQQQ	3401381331085	840.00	\N	\N	1	f	1	\N	cmjac2uh700089w2o9v8g8oia	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 13:46:01.049	2025-12-18 13:46:01.049
cmjbhuue0007i9w2o7xiv14sw	SVR Clairial CC Cream Light SPF50+ 40 ml	svr-clairial-cc-cream-light-spf50-40-ml			DSSSS	3401360315266	1450.00	\N	\N	0	f	10	\N	cmjabr2kz00049w2ofb24qdtd	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 13:46:34.968	2025-12-18 13:46:34.968
cmjbhvio9007k9w2oxlehqzvz	SVR Physiopure Tonique Tonik 200 ml	svr-physiopure-tonique-tonik-200-ml			QQQWWW	3401381331207	950.00	\N	\N	3	f	1	\N	cmjac2kl800069w2o52xest63	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 13:47:06.442	2025-12-18 13:47:06.442
cmjbhyjjg007q9w2oep7g4hn2	SVR Topialyse Barrier Cream 50 ml	svr-topialyse-barrier-cream-50-ml			SVR99	3401381381523	750.00	\N	\N	3	f	1	\N	cmjac2uh700089w2o9v8g8oia	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 13:49:27.533	2025-12-18 13:49:27.533
cmjbhzl2m007s9w2o7l53469m	SVR Sensifine AR Eau Micellaire 200ml	svr-sensifine-ar-eau-micellaire-200ml			PPPP65	3401360167896	850.00	3.00	\N	3	f	1	\N	cmjac2kl800069w2o52xest63	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 13:50:16.174	2025-12-18 13:50:16.174
cmjbi0dz2007u9w2od1vtgxfi	Topicrem Ac Purifying Cleansing Gel 200 ml	topicrem-ac-purifying-cleansing-gel-200-ml			YYYEE22	3700281702774	1050.00	\N	\N	2	f	10	\N	cmjac3d1z000c9w2oint4o6rg	cmjadzk0q000k9w2orbzw4qrk	t	f	f			2025-12-18 13:50:53.63	2025-12-18 13:50:53.63
cmjbi19b4007w9w2o1pacq3j5	SVR Sebiaclear Cicapeel Cream 15 ml	svr-sebiaclear-cicapeel-cream-15-ml			TTE55E5	3401381332037	435.00	6.00	\N	6	f	10	\N	cmjac2uh700089w2o9v8g8oia	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 13:51:34.24	2025-12-18 13:51:34.24
cmjbi28pv007y9w2ob8lwhiib	Topicrem Dermo Specific Pv-ds Cleansing Treatment Gel 200 ml	topicrem-dermo-specific-pv-ds-cleansing-treatment-gel-200-ml			REWW22	3700281702699	880.00	\N	\N	2	f	1	\N	cmjac3d1z000c9w2oint4o6rg	cmjadzk0q000k9w2orbzw4qrk	t	f	f			2025-12-18 13:52:20.131	2025-12-18 13:52:20.131
cmjbi2xvx00809w2or1np8op9	SVR Sebiaclear Micellar Solution 400ml	svr-sebiaclear-micellar-solution-400ml			WWDWDW	3401381332495	580.00	\N	\N	13	f	10	\N	cmjabq00v00029w2ooraxy7yy	cmjae3dl1000q9w2ojq0z0fdy	t	f	f			2025-12-18 13:52:52.749	2025-12-18 13:52:52.749
cmjbi3snb00829w2om4prm5u1	Topicrem Ultra Moisturizing Body Milk 200 ml	topicrem-ultra-moisturizing-body-milk-200-ml			UIYT33	3700281702361	800.00	\N	\N	1	f	1	\N	cmjac3d1z000c9w2oint4o6rg	cmjadzk0q000k9w2orbzw4qrk	t	f	f			2025-12-18 13:53:32.615	2025-12-18 13:53:32.615
cmjbi4x9f00849w2o1bd29bz1	Bioderma Atoderm Intensive Balm 500 ml	bioderma-atoderm-intensive-balm-500-ml			BIO-ATODERM-500ML	3701129802076	1450.00	\N	\N	10	f	3	\N	cmjabr2kz00049w2ofb24qdtd	cmjadw4ph000j9w2ok5q6a1rg	t	f	f			2025-12-18 13:54:25.252	2025-12-18 13:54:25.252
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.reviews (id, "userId", "productId", rating, title, comment, "isApproved", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.settings (id, key, value, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: shipping_methods; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.shipping_methods (id, name, description, logo, price, "freeShippingThreshold", "estimatedDays", "isActive", "sortOrder", "createdAt", "updatedAt") FROM stdin;
cmj94iaxm00009w2obh7pov56	Trendyol Express			67.75	\N	1-3 iş günü	t	0	2025-12-16 21:57:22.521	2025-12-16 21:57:22.521
cmjajip65002x9w2odv4hrtkv	Yurtiçi Kargo			90.00	\N	1-3 iş gnü	t	0	2025-12-17 21:45:21.388	2025-12-17 21:45:21.388
\.


--
-- Data for Name: sliders; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.sliders (id, title, description, "imageUrl", "mobileImageUrl", "linkUrl", "linkTarget", "isActive", "sortOrder", "startDate", "endDate", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.users (id, email, password, "firstName", "lastName", phone, "tcNumber", role, "emailVerified", "createdAt", "updatedAt") FROM stdin;
ca718022-f19c-4d3f-966e-8c038cc9740f	atalaydurmaz@gamzelieczanem.com	$2b$10$vHC6Y9nrUcOqHjb7qIZMeO2j4KIsBNvG.dzaMrOrvKG7k.pa7f09W	Atalay	Durmaz	\N	\N	SUPER_ADMIN	t	2025-12-16 23:42:58.767	2025-12-16 23:42:58.767
\.


--
-- Data for Name: variant_options; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.variant_options (id, "variantTypeId", value, "sortOrder") FROM stdin;
\.


--
-- Data for Name: variant_types; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.variant_types (id, name, "createdAt") FROM stdin;
\.


--
-- Data for Name: wishlist_items; Type: TABLE DATA; Schema: public; Owner: gamzelieczanem_user
--

COPY public.wishlist_items (id, "userId", "productId", "createdAt") FROM stdin;
\.


--
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- Name: banners banners_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_pkey PRIMARY KEY (id);


--
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- Name: cart_items cart_items_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: contact_messages contact_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.contact_messages
    ADD CONSTRAINT contact_messages_pkey PRIMARY KEY (id);


--
-- Name: coupon_categories coupon_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.coupon_categories
    ADD CONSTRAINT coupon_categories_pkey PRIMARY KEY (id);


--
-- Name: coupon_products coupon_products_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.coupon_products
    ADD CONSTRAINT coupon_products_pkey PRIMARY KEY (id);


--
-- Name: coupon_usages coupon_usages_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.coupon_usages
    ADD CONSTRAINT coupon_usages_pkey PRIMARY KEY (id);


--
-- Name: coupons coupons_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.coupons
    ADD CONSTRAINT coupons_pkey PRIMARY KEY (id);


--
-- Name: faqs faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);


--
-- Name: image_folders image_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.image_folders
    ADD CONSTRAINT image_folders_pkey PRIMARY KEY (id);


--
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: invoices invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_pkey PRIMARY KEY (id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: product_images product_images_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_pkey PRIMARY KEY (id);


--
-- Name: product_variant_images product_variant_images_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.product_variant_images
    ADD CONSTRAINT product_variant_images_pkey PRIMARY KEY (id);


--
-- Name: product_variant_options product_variant_options_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.product_variant_options
    ADD CONSTRAINT product_variant_options_pkey PRIMARY KEY (id);


--
-- Name: product_variant_types product_variant_types_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.product_variant_types
    ADD CONSTRAINT product_variant_types_pkey PRIMARY KEY (id);


--
-- Name: product_variants product_variants_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.product_variants
    ADD CONSTRAINT product_variants_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: shipping_methods shipping_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.shipping_methods
    ADD CONSTRAINT shipping_methods_pkey PRIMARY KEY (id);


--
-- Name: sliders sliders_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.sliders
    ADD CONSTRAINT sliders_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: variant_options variant_options_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.variant_options
    ADD CONSTRAINT variant_options_pkey PRIMARY KEY (id);


--
-- Name: variant_types variant_types_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.variant_types
    ADD CONSTRAINT variant_types_pkey PRIMARY KEY (id);


--
-- Name: wishlist_items wishlist_items_pkey; Type: CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.wishlist_items
    ADD CONSTRAINT wishlist_items_pkey PRIMARY KEY (id);


--
-- Name: banners_position_idx; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE INDEX banners_position_idx ON public.banners USING btree ("position");


--
-- Name: brands_slug_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX brands_slug_key ON public.brands USING btree (slug);


--
-- Name: cart_items_sessionId_idx; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE INDEX "cart_items_sessionId_idx" ON public.cart_items USING btree ("sessionId");


--
-- Name: cart_items_sessionId_productId_productVariantId_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX "cart_items_sessionId_productId_productVariantId_key" ON public.cart_items USING btree ("sessionId", "productId", "productVariantId");


--
-- Name: cart_items_userId_productId_productVariantId_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX "cart_items_userId_productId_productVariantId_key" ON public.cart_items USING btree ("userId", "productId", "productVariantId");


--
-- Name: categories_slug_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX categories_slug_key ON public.categories USING btree (slug);


--
-- Name: contact_messages_isRead_idx; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE INDEX "contact_messages_isRead_idx" ON public.contact_messages USING btree ("isRead");


--
-- Name: coupon_categories_couponId_categoryId_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX "coupon_categories_couponId_categoryId_key" ON public.coupon_categories USING btree ("couponId", "categoryId");


--
-- Name: coupon_products_couponId_productId_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX "coupon_products_couponId_productId_key" ON public.coupon_products USING btree ("couponId", "productId");


--
-- Name: coupon_usages_couponId_idx; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE INDEX "coupon_usages_couponId_idx" ON public.coupon_usages USING btree ("couponId");


--
-- Name: coupon_usages_userId_idx; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE INDEX "coupon_usages_userId_idx" ON public.coupon_usages USING btree ("userId");


--
-- Name: coupons_code_idx; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE INDEX coupons_code_idx ON public.coupons USING btree (code);


--
-- Name: coupons_code_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX coupons_code_key ON public.coupons USING btree (code);


--
-- Name: image_folders_name_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX image_folders_name_key ON public.image_folders USING btree (name);


--
-- Name: images_createdAt_idx; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE INDEX "images_createdAt_idx" ON public.images USING btree ("createdAt");


--
-- Name: images_filename_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX images_filename_key ON public.images USING btree (filename);


--
-- Name: images_folder_idx; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE INDEX images_folder_idx ON public.images USING btree (folder);


--
-- Name: images_usedIn_entityId_idx; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE INDEX "images_usedIn_entityId_idx" ON public.images USING btree ("usedIn", "entityId");


--
-- Name: invoices_invoiceNumber_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX "invoices_invoiceNumber_key" ON public.invoices USING btree ("invoiceNumber");


--
-- Name: notifications_userId_isRead_idx; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE INDEX "notifications_userId_isRead_idx" ON public.notifications USING btree ("userId", "isRead");


--
-- Name: orders_guestEmail_idx; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE INDEX "orders_guestEmail_idx" ON public.orders USING btree ("guestEmail");


--
-- Name: orders_orderNumber_idx; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE INDEX "orders_orderNumber_idx" ON public.orders USING btree ("orderNumber");


--
-- Name: orders_orderNumber_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX "orders_orderNumber_key" ON public.orders USING btree ("orderNumber");


--
-- Name: orders_userId_idx; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE INDEX "orders_userId_idx" ON public.orders USING btree ("userId");


--
-- Name: pages_slug_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX pages_slug_key ON public.pages USING btree (slug);


--
-- Name: product_variant_options_productVariantId_variantOptionId_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX "product_variant_options_productVariantId_variantOptionId_key" ON public.product_variant_options USING btree ("productVariantId", "variantOptionId");


--
-- Name: product_variant_types_productId_variantTypeId_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX "product_variant_types_productId_variantTypeId_key" ON public.product_variant_types USING btree ("productId", "variantTypeId");


--
-- Name: product_variants_sku_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX product_variants_sku_key ON public.product_variants USING btree (sku);


--
-- Name: products_sku_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX products_sku_key ON public.products USING btree (sku);


--
-- Name: products_slug_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX products_slug_key ON public.products USING btree (slug);


--
-- Name: reviews_userId_productId_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX "reviews_userId_productId_key" ON public.reviews USING btree ("userId", "productId");


--
-- Name: settings_key_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX settings_key_key ON public.settings USING btree (key);


--
-- Name: users_email_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX users_email_key ON public.users USING btree (email);


--
-- Name: variant_options_variantTypeId_value_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX "variant_options_variantTypeId_value_key" ON public.variant_options USING btree ("variantTypeId", value);


--
-- Name: variant_types_name_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX variant_types_name_key ON public.variant_types USING btree (name);


--
-- Name: wishlist_items_userId_productId_key; Type: INDEX; Schema: public; Owner: gamzelieczanem_user
--

CREATE UNIQUE INDEX "wishlist_items_userId_productId_key" ON public.wishlist_items USING btree ("userId", "productId");


--
-- Name: addresses addresses_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT "addresses_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cart_items cart_items_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT "cart_items_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cart_items cart_items_productVariantId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT "cart_items_productVariantId_fkey" FOREIGN KEY ("productVariantId") REFERENCES public.product_variants(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cart_items cart_items_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT "cart_items_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: categories categories_parentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT "categories_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: coupon_categories coupon_categories_categoryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.coupon_categories
    ADD CONSTRAINT "coupon_categories_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: coupon_categories coupon_categories_couponId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.coupon_categories
    ADD CONSTRAINT "coupon_categories_couponId_fkey" FOREIGN KEY ("couponId") REFERENCES public.coupons(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: coupon_products coupon_products_couponId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.coupon_products
    ADD CONSTRAINT "coupon_products_couponId_fkey" FOREIGN KEY ("couponId") REFERENCES public.coupons(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: coupon_products coupon_products_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.coupon_products
    ADD CONSTRAINT "coupon_products_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: coupon_usages coupon_usages_couponId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.coupon_usages
    ADD CONSTRAINT "coupon_usages_couponId_fkey" FOREIGN KEY ("couponId") REFERENCES public.coupons(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: coupon_usages coupon_usages_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.coupon_usages
    ADD CONSTRAINT "coupon_usages_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: invoices invoices_orderId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT "invoices_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public.orders(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: notifications notifications_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT "notifications_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_items order_items_orderId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT "order_items_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public.orders(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_items order_items_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT "order_items_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: order_items order_items_productVariantId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT "order_items_productVariantId_fkey" FOREIGN KEY ("productVariantId") REFERENCES public.product_variants(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: orders orders_addressId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "orders_addressId_fkey" FOREIGN KEY ("addressId") REFERENCES public.addresses(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: orders orders_couponId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "orders_couponId_fkey" FOREIGN KEY ("couponId") REFERENCES public.coupons(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: orders orders_shippingMethodId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "orders_shippingMethodId_fkey" FOREIGN KEY ("shippingMethodId") REFERENCES public.shipping_methods(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: orders orders_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "orders_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: product_images product_images_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT "product_images_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_variant_images product_variant_images_productVariantId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.product_variant_images
    ADD CONSTRAINT "product_variant_images_productVariantId_fkey" FOREIGN KEY ("productVariantId") REFERENCES public.product_variants(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_variant_options product_variant_options_productVariantId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.product_variant_options
    ADD CONSTRAINT "product_variant_options_productVariantId_fkey" FOREIGN KEY ("productVariantId") REFERENCES public.product_variants(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_variant_options product_variant_options_variantOptionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.product_variant_options
    ADD CONSTRAINT "product_variant_options_variantOptionId_fkey" FOREIGN KEY ("variantOptionId") REFERENCES public.variant_options(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: product_variant_types product_variant_types_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.product_variant_types
    ADD CONSTRAINT "product_variant_types_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product_variant_types product_variant_types_variantTypeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.product_variant_types
    ADD CONSTRAINT "product_variant_types_variantTypeId_fkey" FOREIGN KEY ("variantTypeId") REFERENCES public.variant_types(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: product_variants product_variants_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.product_variants
    ADD CONSTRAINT "product_variants_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: products products_brandId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: products products_categoryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: reviews reviews_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT "reviews_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: reviews reviews_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT "reviews_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: variant_options variant_options_variantTypeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.variant_options
    ADD CONSTRAINT "variant_options_variantTypeId_fkey" FOREIGN KEY ("variantTypeId") REFERENCES public.variant_types(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: wishlist_items wishlist_items_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.wishlist_items
    ADD CONSTRAINT "wishlist_items_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: wishlist_items wishlist_items_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gamzelieczanem_user
--

ALTER TABLE ONLY public.wishlist_items
    ADD CONSTRAINT "wishlist_items_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict p1gG8a7spI8FfdIIxNVDcXzB1g58qOuAZy72R0QVuwc60gg1axPce88R0M9A1dP

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

\restrict jTWaqrYmMTacG7JOEYx66YtY3A75LZIZIsM3Z1MB8wQ14a21JcWsJFkW6Zhmfw8

-- Dumped from database version 14.20 (Ubuntu 14.20-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.20 (Ubuntu 14.20-0ubuntu0.22.04.1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE postgres OWNER TO postgres;

\unrestrict jTWaqrYmMTacG7JOEYx66YtY3A75LZIZIsM3Z1MB8wQ14a21JcWsJFkW6Zhmfw8
\connect postgres
\restrict jTWaqrYmMTacG7JOEYx66YtY3A75LZIZIsM3Z1MB8wQ14a21JcWsJFkW6Zhmfw8

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

\unrestrict jTWaqrYmMTacG7JOEYx66YtY3A75LZIZIsM3Z1MB8wQ14a21JcWsJFkW6Zhmfw8

--
-- Database "znlqr" dump
--

--
-- PostgreSQL database dump
--

\restrict 0J9MWtuTzLN3IFPL0xLZ3xgoB37dAhPsZ45T1C10KOyMKr7AdtbxEha13E8g6x3

-- Dumped from database version 14.20 (Ubuntu 14.20-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.20 (Ubuntu 14.20-0ubuntu0.22.04.1)

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

--
-- Name: znlqr; Type: DATABASE; Schema: -; Owner: znlqr_user
--

CREATE DATABASE znlqr WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE znlqr OWNER TO znlqr_user;

\unrestrict 0J9MWtuTzLN3IFPL0xLZ3xgoB37dAhPsZ45T1C10KOyMKr7AdtbxEha13E8g6x3
\connect znlqr
\restrict 0J9MWtuTzLN3IFPL0xLZ3xgoB37dAhPsZ45T1C10KOyMKr7AdtbxEha13E8g6x3

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

--
-- Name: business; Type: SCHEMA; Schema: -; Owner: znlqr_user
--

CREATE SCHEMA business;


ALTER SCHEMA business OWNER TO znlqr_user;

--
-- Name: identity; Type: SCHEMA; Schema: -; Owner: znlqr_user
--

CREATE SCHEMA identity;


ALTER SCHEMA identity OWNER TO znlqr_user;

--
-- Name: table; Type: SCHEMA; Schema: -; Owner: znlqr_user
--

CREATE SCHEMA "table";


ALTER SCHEMA "table" OWNER TO znlqr_user;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Businesses; Type: TABLE; Schema: business; Owner: znlqr_user
--

CREATE TABLE business."Businesses" (
    "Id" uuid NOT NULL,
    "Name" character varying(200) NOT NULL,
    "Slug" character varying(100) NOT NULL,
    "LogoUrl" character varying(500),
    "Address" character varying(500),
    "Phone" character varying(20),
    "Email" character varying(100),
    "IsActive" boolean DEFAULT true NOT NULL,
    "Currency" character varying(3) NOT NULL,
    "DefaultLanguage" character varying(5) NOT NULL,
    "TimeZoneId" character varying(50) NOT NULL,
    "OpeningTime" interval NOT NULL,
    "ClosingTime" interval NOT NULL,
    "RequireOrderApproval" boolean DEFAULT true NOT NULL,
    "TableCount" integer DEFAULT 0 NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "CreatedBy" character varying(100),
    "UpdatedBy" character varying(100)
);


ALTER TABLE business."Businesses" OWNER TO znlqr_user;

--
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: business; Owner: znlqr_user
--

CREATE TABLE business."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE business."__EFMigrationsHistory" OWNER TO znlqr_user;

--
-- Name: PasswordResetTokens; Type: TABLE; Schema: identity; Owner: znlqr_user
--

CREATE TABLE identity."PasswordResetTokens" (
    "Id" uuid NOT NULL,
    "UserId" uuid NOT NULL,
    "Token" character varying(10) NOT NULL,
    "ExpiresAt" timestamp with time zone NOT NULL,
    "UsedAt" timestamp with time zone,
    "CreatedAt" timestamp with time zone NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "CreatedBy" character varying(100),
    "UpdatedBy" text
);


ALTER TABLE identity."PasswordResetTokens" OWNER TO znlqr_user;

--
-- Name: RefreshTokens; Type: TABLE; Schema: identity; Owner: znlqr_user
--

CREATE TABLE identity."RefreshTokens" (
    "Id" uuid NOT NULL,
    "UserId" uuid NOT NULL,
    "Token" character varying(500) NOT NULL,
    "ExpiresAt" timestamp with time zone NOT NULL,
    "RevokedAt" timestamp with time zone,
    "ReplacedByToken" character varying(500),
    "CreatedAt" timestamp with time zone NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "CreatedBy" character varying(100),
    "UpdatedBy" character varying(100)
);


ALTER TABLE identity."RefreshTokens" OWNER TO znlqr_user;

--
-- Name: Users; Type: TABLE; Schema: identity; Owner: znlqr_user
--

CREATE TABLE identity."Users" (
    "Id" uuid NOT NULL,
    "Email" character varying(256) NOT NULL,
    "PasswordHash" character varying(500) NOT NULL,
    "FirstName" character varying(100) NOT NULL,
    "LastName" character varying(100) NOT NULL,
    "Role" character varying(50) NOT NULL,
    "BusinessId" uuid,
    "IsActive" boolean DEFAULT true NOT NULL,
    "LastLoginAt" timestamp with time zone,
    "CreatedAt" timestamp with time zone NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "CreatedBy" character varying(100),
    "UpdatedBy" character varying(100),
    "Username" character varying(50) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE identity."Users" OWNER TO znlqr_user;

--
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: identity; Owner: znlqr_user
--

CREATE TABLE identity."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE identity."__EFMigrationsHistory" OWNER TO znlqr_user;

--
-- Name: TableEntities; Type: TABLE; Schema: table; Owner: znlqr_user
--

CREATE TABLE "table"."TableEntities" (
    "Id" uuid NOT NULL,
    "Name" character varying(200) NOT NULL,
    "QrCode" character varying(200) NOT NULL,
    "TableGroupId" uuid NOT NULL,
    "HasActiveSession" boolean NOT NULL,
    "TableRequest" integer NOT NULL,
    "Shape" integer,
    "CreatedAt" timestamp with time zone NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "CreatedBy" character varying(100),
    "UpdatedBy" character varying(100),
    "Position" jsonb
);


ALTER TABLE "table"."TableEntities" OWNER TO znlqr_user;

--
-- Name: TableGroups; Type: TABLE; Schema: table; Owner: znlqr_user
--

CREATE TABLE "table"."TableGroups" (
    "Id" uuid NOT NULL,
    "BusinessId" uuid NOT NULL,
    "Name" character varying(200) NOT NULL,
    "Color" character varying(200),
    "LayoutData" text,
    "Width" integer,
    "Height" integer,
    "CreatedAt" timestamp with time zone NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "CreatedBy" character varying(100),
    "UpdatedBy" character varying(100)
);


ALTER TABLE "table"."TableGroups" OWNER TO znlqr_user;

--
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: table; Owner: znlqr_user
--

CREATE TABLE "table"."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE "table"."__EFMigrationsHistory" OWNER TO znlqr_user;

--
-- Data for Name: Businesses; Type: TABLE DATA; Schema: business; Owner: znlqr_user
--

COPY business."Businesses" ("Id", "Name", "Slug", "LogoUrl", "Address", "Phone", "Email", "IsActive", "Currency", "DefaultLanguage", "TimeZoneId", "OpeningTime", "ClosingTime", "RequireOrderApproval", "TableCount", "CreatedAt", "UpdatedAt", "CreatedBy", "UpdatedBy") FROM stdin;
6298b4f1-33a7-475b-b7b6-28250ed3eaa0	Mert Müdür	mert-mdr	https://picsum.photos/200	dsajlkdhask	555555555	mert@mudurr.com	t	TRY	tr	Europe/Istanbul	09:00:00	22:00:00	f	0	2025-12-17 18:22:39.488546+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
765ceefc-af36-420d-9731-0e9d1cc9dcda	Test Cafe	test-cafe	https://example.com/logo.png	Kadıköy, İstanbul, Türkiye	+90 216 123 4567	info@testcafe.com	t	TRY	tr	Europe/Istanbul	09:00:00	23:00:00	t	0	2025-12-25 08:58:55.596193+03	\N	29c5feb0-f793-4543-b50b-be2bea5bb31d	\N
58b275f7-b379-435c-b6ca-dad973a48dd3	Test Business by Admin 051590e2	test-business-flow-051590e2	https://example.com/logo.png	123 Admin Street	5550000000	biz_051590e2@example.com	t	TRY	tr	Europe/Istanbul	09:00:00	18:00:00	f	0	2025-12-26 15:17:57.865537+03	\N	674936a1-dd7d-4f9e-99be-1449c26a1997	\N
e52e60eb-38c5-42fe-9d07-dec5b1a55604	Test Business by Admin 63a15f1a	test-business-flow-63a15f1a	https://example.com/logo.png	123 Admin Street	5550000000	biz_63a15f1a@example.com	t	TRY	tr	Europe/Istanbul	09:00:00	18:00:00	f	0	2025-12-26 15:21:53.241512+03	\N	07364542-00eb-4806-8ac5-d6698ef6c4b6	\N
16aa349a-ef87-4a8a-8f49-ad9f05eb7eec	Test Business by Admin 777e1f04	test-business-flow-777e1f04	https://example.com/logo.png	123 Admin Street	5550000000	biz_777e1f04@example.com	t	TRY	tr	Europe/Istanbul	09:00:00	18:00:00	f	0	2025-12-26 15:22:02.360019+03	\N	c67e4fee-1fe7-49d4-b54c-7c45bb6bbd03	\N
82ab5da3-0588-4a01-9a21-762407c35d03	Test Business by Admin f70dcf84	test-business-flow-f70dcf84	https://example.com/logo.png	123 Admin Street	5550000000	biz_f70dcf84@example.com	t	TRY	tr	Europe/Istanbul	09:00:00	18:00:00	f	0	2025-12-26 15:22:31.955162+03	\N	216d602a-4bcf-431a-9f94-78c136d40ba2	\N
502087d3-95cd-47a0-a85d-dca5bd95036b	Test Business by Admin 02be4205	test-business-flow-02be4205	https://example.com/logo.png	123 Admin Street	5550000000	biz_02be4205@example.com	t	TRY	tr	Europe/Istanbul	09:00:00	18:00:00	f	0	2025-12-26 15:31:44.893761+03	\N	92bd564e-8a8d-46cd-9fba-1bf4aedc5b96	\N
1edd05cb-2088-4b2d-a868-daf6da777e76	Test Restaurant 1	bulk-restaurant-1	https://picsum.photos/200?random=1	123 Main St, Test City 1	+90555123451	test1@restaurant.com	t	EUR	nl	America/New_York	03:38:00	21:34:00	f	0	2025-12-17 18:24:55.615217+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
e78c4a0a-c4bc-4999-89c4-1a9ad5671667	Test Restaurant 2	bulk-restaurant-2	https://picsum.photos/200?random=2	123 Main St, Test City 2	+90555123452	test2@restaurant.com	t	TRY	tr	Europe/London	05:11:00	10:27:00	f	0	2025-12-17 18:24:56.797208+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
c6cee36f-6860-4c27-8fca-ba1d0673aaf8	Test Restaurant 4	bulk-restaurant-4	https://picsum.photos/200?random=4	123 Main St, Test City 4	+90555123454	test4@restaurant.com	t	TRY	nl	Europe/Istanbul	01:53:00	23:09:00	f	0	2025-12-17 18:24:59.110057+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
c0292cc2-836c-490a-966d-9eb77b38f6f6	Test Restaurant 9	bulk-restaurant-9	https://picsum.photos/200?random=9	123 Main St, Test City 9	+90555123459	test9@restaurant.com	t	USD	nl	Europe/Istanbul	03:41:00	15:54:00	f	0	2025-12-17 18:25:05.030448+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
ff2f149e-cc16-4a29-b691-0346d167ee08	Test Restaurant 10	bulk-restaurant-10	https://picsum.photos/200?random=10	123 Main St, Test City 10	+905551234510	test10@restaurant.com	t	USD	en	Europe/Istanbul	02:56:00	19:44:00	f	0	2025-12-17 18:25:06.166687+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
c5c8e2fa-c5d1-4538-bf58-114973fb3edc	mertmudurtesttable	mertmudurtesttable	https://picsum.photos/200	test table	055555555555555	mertmudurtable@example.com	t	TRY	tr	Europe/Istanbul	09:00:00	22:00:00	f	0	2025-12-26 13:10:10.538798+03	\N	b08d2156-6c06-468a-9972-2f9a093752ac	\N
17daa243-6bfa-4236-b795-02400731a654	Test Business by Admin f39555d0	test-business-flow-f39555d0	https://example.com/logo.png	123 Admin Street	5550000000	biz_f39555d0@example.com	t	TRY	tr	Europe/Istanbul	09:00:00	18:00:00	f	0	2025-12-26 15:17:27.079926+03	\N	5f4dd627-7f94-4044-9a5b-3e3473fab05a	\N
f6e03bfc-ccac-4304-bccd-8d2889365bbb	Test Business by Admin 9d6985f5	test-business-flow-9d6985f5	https://example.com/logo.png	123 Admin Street	5550000000	biz_9d6985f5@example.com	t	TRY	tr	Europe/Istanbul	09:00:00	18:00:00	f	0	2025-12-26 15:23:22.782156+03	\N	e203a4ed-18f8-4e74-8eb9-6c22338977d4	\N
7fd9bb8d-d084-4634-b16f-9f266122959c	Test Business by Admin dbe7c1dd	test-business-flow-dbe7c1dd	https://example.com/logo.png	123 Admin Street	5550000000	biz_dbe7c1dd@example.com	t	TRY	tr	Europe/Istanbul	09:00:00	18:00:00	f	0	2025-12-26 15:23:25.613282+03	\N	4e1dfec9-755a-43db-80a7-46182cb73c43	\N
08857408-3a29-4e9b-830b-c274e611327e	Test Business by Admin 60517580	test-business-flow-60517580	https://example.com/logo.png	123 Admin Street	5550000000	biz_60517580@example.com	t	TRY	tr	Europe/Istanbul	09:00:00	18:00:00	f	0	2025-12-26 15:23:27.950712+03	\N	e375e146-143f-427d-9af9-e93d68caba83	\N
789e8f2e-7015-4c7b-9699-de96f5e1094d	Test Business by Admin d0b93b82	test-business-flow-d0b93b82	https://example.com/logo.png	123 Admin Street	5550000000	biz_d0b93b82@example.com	t	TRY	tr	Europe/Istanbul	09:00:00	18:00:00	f	0	2025-12-26 15:23:31.277653+03	\N	03ccfa50-da08-41c3-a6f3-b643d63f74a9	\N
c4f92da2-e36d-48b0-95c2-25eee2eb50a6	Test Business by Admin ff4ac641	test-business-flow-ff4ac641	https://example.com/logo.png	123 Admin Street	5550000000	biz_ff4ac641@example.com	t	TRY	tr	Europe/Istanbul	09:00:00	18:00:00	f	0	2025-12-26 15:25:01.541406+03	\N	680a3d3c-bf37-44a1-b39a-9ef5c1fe1da7	\N
\.


--
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: business; Owner: znlqr_user
--

COPY business."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
20251210231633_InitialBusiness	8.0.11
20251211001045_InitialBusiness	8.0.11
20251211004341_AddRowVersion	8.0.11
20251211005342_UpdateExistingRowVersionValues	8.0.11
20251211011424_BusinessUpdate	8.0.11
20251211013131_RemoveConcurrencySettings	8.0.11
\.


--
-- Data for Name: PasswordResetTokens; Type: TABLE DATA; Schema: identity; Owner: znlqr_user
--

COPY identity."PasswordResetTokens" ("Id", "UserId", "Token", "ExpiresAt", "UsedAt", "CreatedAt", "UpdatedAt", "CreatedBy", "UpdatedBy") FROM stdin;
9f09398d-b142-424a-94da-bbe066e680c1	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	891109	2025-12-16 10:34:50.063393+03	2025-12-16 10:05:55.568676+03	2025-12-16 10:04:50.095468+03	2025-12-16 10:05:55.568946+03	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	d32582cd-f25c-4ea5-bb24-e8eedf2992c6
3a6c7f14-03d5-4e6e-8957-f5e9ee15d6b2	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	314461	2025-12-16 10:35:55.568774+03	2025-12-16 10:08:27.708006+03	2025-12-16 10:05:55.568946+03	2025-12-16 10:08:27.708126+03	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	d32582cd-f25c-4ea5-bb24-e8eedf2992c6
da272917-99a2-4e5f-b480-eba906a307cf	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	153201	2025-12-16 10:38:27.708025+03	2025-12-16 10:08:52.754606+03	2025-12-16 10:08:27.708126+03	2025-12-16 10:08:52.754705+03	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	System
76a2e16f-a234-4ba9-a486-67ef2eeae232	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	255735	2025-12-16 10:38:52.754621+03	2025-12-16 10:09:24.216285+03	2025-12-16 10:08:52.754705+03	2025-12-16 10:09:24.216431+03	System	System
9917264f-3f0e-425a-bbd4-8026c88eeee6	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	586571	2025-12-16 10:39:24.216303+03	2025-12-16 10:09:25.735696+03	2025-12-16 10:09:24.216431+03	2025-12-16 10:09:25.735814+03	System	System
91bf4912-bf39-4c70-ac1c-701d1206ac78	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	727499	2025-12-16 10:39:25.735713+03	2025-12-16 10:09:28.599833+03	2025-12-16 10:09:25.735814+03	2025-12-16 10:09:28.599936+03	System	System
5d754a0c-869d-4b73-8ff6-23fd3e418793	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	133321	2025-12-16 10:39:28.59985+03	\N	2025-12-16 10:09:28.599936+03	\N	System	\N
\.


--
-- Data for Name: RefreshTokens; Type: TABLE DATA; Schema: identity; Owner: znlqr_user
--

COPY identity."RefreshTokens" ("Id", "UserId", "Token", "ExpiresAt", "RevokedAt", "ReplacedByToken", "CreatedAt", "UpdatedAt", "CreatedBy", "UpdatedBy") FROM stdin;
8dc29f6b-390d-42a0-a0ff-7fd8b3cd4561	84171ca7-5ea0-4552-b266-012e4f27ec07	gJw8hiDu0m/pC6eRrBJJknoveJZyYbSNXfCnAPGqSAAlWg52EY6JZDjJVERKU25p2uPiZlJbj1yW0vdfGuIuJA==	2025-12-17 20:42:04.447607+03	\N	\N	2025-12-10 20:42:04.671507+03	\N	System	\N
2c2fc64c-8587-4812-a2af-ca69defd1a53	40c9e951-3498-4a95-a78e-1e086a3cd77e	HcmSwdr4CPFb9XnJcA2uKoWM5oeSfrYEK/PnA9sR1ldJF8C1aZXaNThE05xCOoGkHUbL8iOO9lRTpSHFWC9tcQ==	2025-12-17 21:25:58.323823+03	\N	\N	2025-12-10 21:25:58.330033+03	\N	System	\N
40692e94-247b-4a97-879e-27115add8a8f	c16f4711-b86e-4442-8bf2-ffdf6b9ca56e	Bkp2XBGFWsplCuWA94BgPlJSObMWWGEvKb3ht3fdIMxU5vD0sH5X8RH7qHEQjyQl3LSzSrP65L81wDZDTz10gw==	2025-12-18 07:52:53.226989+03	\N	\N	2025-12-11 07:52:53.429032+03	\N	System	\N
07ae6416-2a82-45ee-99fa-4c78db075266	c16f4711-b86e-4442-8bf2-ffdf6b9ca56e	3egjepQK7lJ6aT+PnOJ12QMZsgQ18rOWiuCEr8J/LUYxysZr8cvtfUEn3+DFdlTiWVLUyqxvm5u56R7sc4xgCw==	2025-12-18 07:53:32.613221+03	\N	\N	2025-12-11 07:53:32.615154+03	\N	System	\N
7f56fed0-09a8-476b-a101-a19766d725e8	7cb55a91-b116-4f16-97f4-0a40cd99340e	l+nUClQMS3ZNCW7et2CeNCR+HJZ2Yql+rCfNnzg3uT76wD6vEqv1SoW/ll1uaC/NiAK3DKKoVInkyKWj/7oXIQ==	2025-12-18 12:29:46.763031+03	\N	\N	2025-12-11 12:29:46.763941+03	\N	System	\N
ed7404db-5597-4d85-8a43-aae608988099	b2cef333-e6e6-43f6-bf4d-79ecb111ad86	SDR8NRCSByJeFRrx4q/cwriSCq8vFoTZQ2eZCz/6ZUxOr5VvdIF2/4NP5Cg+B2stHQHTH41OLuZ7t0HpxLPeuA==	2025-12-18 12:32:43.050492+03	\N	\N	2025-12-11 12:32:43.051504+03	\N	System	\N
a83b8395-7a16-4b2f-bb73-c17dd0f02796	df3a87ef-5f0a-4094-9b59-c76235237b53	YGjJD/sYCGvMHZKqz3N4foPvWw/NOUqYpjTVKiFpv6pn0WQXmutKih1Bf3iMt6z4Bui1Mr8WnLePXeCamOy5jg==	2025-12-18 12:32:49.315431+03	\N	\N	2025-12-11 12:32:49.315975+03	\N	System	\N
2b77d79e-bffd-4144-a72a-3b552ac129a8	df3a87ef-5f0a-4094-9b59-c76235237b53	aAlBcR7xkBYUIChF4zLvY5qQhIP0JdQvSaqPHWoyp9np05X9lB2nQbqe9ftnzeqYLdxAlEBtPOYaTSZ84cuV2A==	2025-12-18 12:43:20.949083+03	\N	\N	2025-12-11 12:43:20.949593+03	\N	System	\N
10c248ae-9e9f-44fc-bbb3-48bb84566eac	df3a87ef-5f0a-4094-9b59-c76235237b53	JxllpsRpIxkFo/3ZqUWUJwR6NS5hxWvBxppTddL4+0mtWpgpaeJ3aGnQ7q7vPcpffe2gkGKA1+eIDzhKi6mDpw==	2025-12-18 12:43:23.547745+03	\N	\N	2025-12-11 12:43:23.548203+03	\N	System	\N
8fb75a41-afbd-4330-86fb-c6ce3263e10a	b44b2423-6845-412f-a9c6-f7919e86e478	GgyfGnha8mZZ8vlVjccbeS3toLmclrvwwYPvEcl0VPMvBpfH6pM8hvTwpNTXvgOdcXH1W8kfRjOebicMG19K3A==	2025-12-18 12:44:28.043947+03	\N	\N	2025-12-11 12:44:28.044601+03	\N	System	\N
183f3920-7b00-419f-ad61-bf4ee216a32b	3974f625-7327-454e-87ba-f1b48541d067	YsSLr0dcEqm2MmKC1+gWdDALtj45WLFSjWniuncRCzZe2NI2oIe6ZO3SZqeu4NuvB0Mxu28IqCD6mNAAeSSBpw==	2025-12-18 12:45:34.601404+03	\N	\N	2025-12-11 12:45:34.601825+03	\N	System	\N
80cb9924-216e-4a1a-9693-cc8156733f29	3974f625-7327-454e-87ba-f1b48541d067	YrldtfxaV6raRmBEdHAAUAb6dYDHRTSdCkf3O/WlLnrbLDGHQZ26AvCvxUfg9L+etyOdqXuxU8j3Vm4ooZfuIg==	2025-12-18 12:46:12.00604+03	\N	\N	2025-12-11 12:46:12.006465+03	\N	System	\N
67fc79bf-5b99-4135-a37b-8b3a1debcf5e	bce3db22-f232-4bc9-b6c6-8f8bd85fcad4	wvDJs0s+Ly2s8Gms9LoQ6GWyMh3DFswKIjIuYnY6XzMQh7wyN/AXzF2a2nKGSnACImNCoCKJQmmgDuoDtK713Q==	2025-12-18 12:46:30.906239+03	\N	\N	2025-12-11 12:46:30.90675+03	\N	System	\N
2a6b5c0a-4c8f-47b7-889a-8efd3a3308cf	660b705a-6f24-4ec3-98c7-7a3950821ec3	NtudyJKdl8/Fkgz3lEHYmZTk4brbqR671HYeyw64i5lULm38Icxvh0dDjO+OBwBeSzr8NxnehYCK64LEDuEb6w==	2025-12-18 12:47:06.901005+03	\N	\N	2025-12-11 12:47:06.901493+03	\N	System	\N
765b45fd-caed-46b1-934d-6b4e2596b0fd	70b4975c-dbe1-4bdf-ac15-5ea465007789	1kckxyEezjhMDz+OnDKqbap/Bvav6pX+DYhxJvONtt2SuP1YM4Zdb5sXeSZOlwyVmqPfmpKB1YXOYVsGGWpSBw==	2025-12-18 12:48:47.659146+03	\N	\N	2025-12-11 12:48:47.66228+03	\N	System	\N
955bfee7-c5d8-40f1-857a-5e6f1d03180f	7b6ed699-398d-4ab2-b661-1a87458c3e8d	q9daqMnRU6B10E8YGb4WRl92dXIhdxgDxWgBdY8M3exz+CkAO4x+1CplykxxMncbT+m/R0Hh8AtjF0t52ghlhQ==	2025-12-18 12:49:05.827034+03	\N	\N	2025-12-11 12:49:05.829696+03	\N	System	\N
70b68a0c-e8b8-4e22-806f-4ce3c5f4a9e7	1b79b865-dbee-4c03-97d8-a0ae0df3cb75	zT9Zs86RLq97JonlnQwWkWzXdJrZzgt1HZ48VDglVEOdXbalLWca3sVV2poWY8iIf1z9aF1BvhownrxDbxLvfw==	2025-12-18 12:49:50.947201+03	\N	\N	2025-12-11 12:49:50.947696+03	\N	System	\N
9d95d8d4-e8d3-4476-a5ce-db8f05df9746	9b5e0e08-9324-4095-9236-d3b7391742c3	TaBTn6VGUdWnFKynVZGjhc7ASTeTcUK0hhvdRByrP8hOGWBGEqmE/UbGRaoxVgQxj+/zf/C8V4CFUmqxYdaehQ==	2025-12-18 12:49:56.165819+03	\N	\N	2025-12-11 12:49:56.166147+03	\N	System	\N
36ca0897-ea9d-4754-ac07-2cf91e39d4e1	e7fc8bc1-7304-48d7-ac8e-bee4ab1835e4	Kypcjc673jXUhP0cu7x/7K5xlU9+O8yjM07MQpxLyqYSjp/qNGeKX3RuQDFmT+Dtv9r8U6GBzz7vO4AKc0grDQ==	2025-12-18 12:50:19.346996+03	\N	\N	2025-12-11 12:50:19.347325+03	\N	System	\N
3406edad-a9aa-4ada-af14-b819fd0ad6d7	c9c557bf-4160-4bf7-a161-e73fb93bbf18	cZNTMI0rhNJVMcTpSJsGFpbYzKi1ZAR/rwo3hGAri3wrCrzHYAQC/+i4W/B7lY+yVTkG6rWjAuMnk7LOTaD93A==	2025-12-18 12:51:25.322652+03	\N	\N	2025-12-11 12:51:25.323299+03	\N	System	\N
721b6c91-2af2-4ac8-adec-7710779c81b6	194b519f-9221-4ff1-b95f-6d566f253c40	PeKuj9tyhv4A3n5rJowGsjGrnAKw1UoDwn/TeaDOmy45OF/X2rY0e/Br0XSZ4VHTVaviavB5Y4/+pClgwT1SEw==	2025-12-18 12:51:49.766554+03	\N	\N	2025-12-11 12:51:49.767085+03	\N	System	\N
882fd1fa-aed2-464d-a0cf-6415c87d38f8	c9c557bf-4160-4bf7-a161-e73fb93bbf18	MQ+6g9UOT5svSFnchICln998FM+czQGPvJtH5ZjXY3ibyST+nx/VOrL76SFASX9uSdX1qlU3LEGdCiwXe21QiQ==	2025-12-18 12:53:30.324284+03	\N	\N	2025-12-11 12:53:30.324669+03	\N	System	\N
1a263a76-3c7e-452f-a5a6-13a7881fd006	d9cb4e69-207d-48b6-a163-c356f30948b4	EgmUTf3tcznhN9BBdEPYrPehujZsCHGUW2/FPADCBYKC+ZJXNF3TmS//NajTo1ke71BPNp73KLGXPG6qqaiUxg==	2025-12-18 12:57:42.541142+03	\N	\N	2025-12-11 12:57:42.541678+03	\N	System	\N
e2ca8071-966c-469f-b8b2-1fc927aa27ed	5cf17bcb-df19-41fb-82b6-5ea34b64b376	j55aFFmTIznKso7RN3fP88Hrm7bkfh/lr/4AGAcrHJX4r4ZtzYRe5qK2YD8YrdxxTqsUqK40wXeogYcaJ4F0Yg==	2025-12-18 12:58:04.986007+03	2025-12-11 12:58:07.076302+03	\N	2025-12-11 12:58:04.989355+03	\N	System	\N
f03ffef9-9e1e-484e-80fe-67380b17e21d	5cf17bcb-df19-41fb-82b6-5ea34b64b376	E0f6Yyi4KALBHnn/Z3aZCej7DgUGtVd7yA4aLVsTjgO00bblGQ+6ls9TeBL2tqe/5PLSr2o7Yea35Z+JcW8sXg==	2025-12-18 12:58:07.617752+03	\N	\N	2025-12-11 12:58:07.618155+03	\N	System	\N
9f0c85ce-b29f-4bfb-8f2e-5d8e7450f602	80530e20-28b4-45e2-8a6c-bee8f1b3939b	qF+5lwBrG+VdsJXcmiG86YpxcC5zb2+06bDrB4CG9qeQ9QYER35LGPUghwbkCdwPgieaoCtcclspo5L5fBaE2w==	2025-12-18 13:03:13.577154+03	2025-12-11 13:03:15.309343+03	\N	2025-12-11 13:03:13.57786+03	\N	System	\N
eb99f5c3-c457-4d96-8319-3f2711a25788	80530e20-28b4-45e2-8a6c-bee8f1b3939b	DcMppig2JY+5QcvTXIuzREea2lEf2a8RHtv7LfwYgHVa0OlR+QD67HghhjnySokcJ+3XZSOwFg/neWrKkbf+sg==	2025-12-18 13:03:15.848423+03	2025-12-11 13:03:15.978454+03	\N	2025-12-11 13:03:15.848669+03	\N	System	\N
16d6b348-dcca-4eda-a52b-f0fa48a771f4	d19c73a5-0e37-4cfc-bb76-456eacc7997a	zHT6ZEVr7JNECKOXQOCTh41U1qtEY7GO6dVNVYNYYXexcLS6k6et06QzZQxLa6sY8fIvBn8E3jn6bRqp3xmfgg==	2025-12-18 13:09:45.556115+03	\N	\N	2025-12-11 13:09:45.556565+03	\N	System	\N
b50433a5-fd22-40f5-8fda-4b4c6a52afd6	bb3da228-9284-4ce0-91ee-f1bd5e9e62d2	Dlsv8ww2rkN/AL3l88qtBlR8oXZfMqi4hmQT7sMw3KXdXmlhBvyhbidRutavSwPB1CH6GDc/WQ9z4batmGZvAg==	2025-12-18 13:16:24.775592+03	2025-12-11 13:16:26.554924+03	\N	2025-12-11 13:16:24.776488+03	\N	System	\N
d33f9d92-b973-4864-8b30-6c1101ec2b91	bb3da228-9284-4ce0-91ee-f1bd5e9e62d2	C4nz9zTni4IvV3woeIdMeoz42c/D4m8PNOQG3fUTfmicaTJZyoeQD3YVUxeFfXMrJRV5sYfVDYsiccst+7xKog==	2025-12-18 13:16:27.057054+03	2025-12-11 13:16:27.183243+03	\N	2025-12-11 13:16:27.057379+03	\N	System	\N
db0d776a-657f-4f4d-9c6e-beb5acbc2c0f	c5ae9f21-0048-43a0-b4bd-326ac6eeb8ab	QKjVvFkKTTO69mwRz3fKYiUzvPCdI+BRjnD0/oKBn+YbspWy6UwcJIMH2nXKTSOKWx1IdE1DgGXA9mXxyIZ33Q==	2025-12-18 13:17:37.113318+03	2025-12-11 13:17:39.023253+03	\N	2025-12-11 13:17:37.113863+03	\N	System	\N
692ccc7b-7e15-45da-a189-194f46b18b55	c5ae9f21-0048-43a0-b4bd-326ac6eeb8ab	GrDjLh/gUR6oohWRBrySwMLKsZ3w5mRtwTTpDBnfW7QKdd33E6+te/kn4viYQVxQqbwimlGR02zsh9F08LYugw==	2025-12-18 13:17:39.613593+03	2025-12-11 13:17:39.748223+03	\N	2025-12-11 13:17:39.616544+03	\N	System	\N
271aef0e-09d1-4d5e-9d6a-45010d514fea	1562b4d5-eb58-418e-9934-d2ec79ce0711	c0uNkdzv3JcK3zoiaxeMe12sGL+ERMrJJHybAk6rCY2ZcWf2j56kB+d6ihFz3jSwB6ZJIMAs+vx/iz3nwt4eAQ==	2025-12-18 13:23:45.717278+03	2025-12-11 13:23:47.600285+03	\N	2025-12-11 13:23:45.718253+03	\N	System	\N
fb5ca9e5-1872-4a65-a06e-329027c5b88a	1562b4d5-eb58-418e-9934-d2ec79ce0711	Z7unL1oMbbeQ0rMWoMkmwoP/+3xpjFfxUayXKh9sN+qs5ZhQFrFwgy2GRN2nw1mb1xUEQMBUvEuVwwo8u3pEBg==	2025-12-18 13:23:48.181152+03	2025-12-11 13:23:48.312054+03	\N	2025-12-11 13:23:48.181527+03	\N	System	\N
833f66f9-b1a7-49a2-ad35-797874ea183a	87e44767-c7fe-4374-9425-4285eddc5cf8	c7RdQPZf/qvIt/joPlna4dZ9EVnX7JNLOKBSdNYpDjvjuDC2DCtzW9mg194D5XsmNLRx51wdPNM13THygOGBdQ==	2025-12-18 13:24:06.795855+03	2025-12-11 13:24:08.548765+03	\N	2025-12-11 13:24:06.796129+03	\N	System	\N
3f654163-2816-413a-abf5-32254268d4da	87e44767-c7fe-4374-9425-4285eddc5cf8	jre6ul8t/VBL3t78tiJ7ZFK35bvIwhtNS+EZpCDuZhar11eZ01W28SG2xcxj1upt7IEIOS+vqha/AKjk71GiIw==	2025-12-18 13:24:09.062501+03	2025-12-11 13:24:09.189656+03	\N	2025-12-11 13:24:09.062706+03	\N	System	\N
ae086067-a192-483d-a733-2038f19715ee	6b029db2-012c-4013-904c-ab445142f0bd	LlqYmBEl3rHkp51STZwr62KspzjHHyrqsYEyxSdcFhqk8mns0pWijW7ETH6+xHjeM1viDXBTn0MjZ27qC7XaTg==	2025-12-18 13:26:11.746297+03	2025-12-11 13:26:13.616055+03	\N	2025-12-11 13:26:11.746651+03	\N	System	\N
3d9fcf99-b6e5-4cc5-83c3-e0deb86de401	6b029db2-012c-4013-904c-ab445142f0bd	72LWgCVG2QNonG+HrAP7CbnmBlvcgHIkHbZgNBERntR8D2I3kZSncZjMwf3KEC3L5NF2ivdeTZH9QA6bmcgftg==	2025-12-18 13:26:14.18648+03	2025-12-11 13:26:14.309754+03	\N	2025-12-11 13:26:14.18677+03	\N	System	\N
b8b2fed6-591e-4831-a688-712676a870eb	06d548e9-ea3c-4657-94f8-7715c38b847c	JeWBCHmXj/PqpCTEfM8U1GAPt8r3stPUoeTIqhZp2lDUNmNx9ouLu5NSNDQPPii8gQ7oJsnFiGwAWJtaX7ZDuQ==	2025-12-18 13:26:28.862024+03	2025-12-11 13:26:30.943741+03	\N	2025-12-11 13:26:28.863167+03	\N	System	\N
c51f3cc7-9132-403d-8295-0a492458590b	06d548e9-ea3c-4657-94f8-7715c38b847c	JmYofm3fCVou7y4VvKMDVIW7bKeyJ/XkhhQhnYL0fVyWhUY+QC522zLGIELkDz3NpuMT5bg5hle1gpuw61cFdw==	2025-12-18 13:26:31.471285+03	2025-12-11 13:26:31.593802+03	\N	2025-12-11 13:26:31.471582+03	\N	System	\N
d637ade4-52ad-4179-b4aa-c6de4e7f457b	eb46ba71-a0ea-4fb0-9eac-cc4ce8d6c4da	VSPK0atQC1eb+nKFSabGgGe2GBQEQJcnjs3PAKHisgI5v8LxQqNBjv05NhpE1UC0zON/UxfQ9ydQe3zmZ7/4jw==	2025-12-18 13:34:04.299398+03	\N	\N	2025-12-11 13:34:04.301804+03	\N	System	\N
b6b87cd5-998f-4732-970d-570da26da39f	14a01dc9-2a16-4d38-a33d-18dc5ff8f73a	ldC3esaa67l3DS1FJ6tbHJtYDMApiDM3N4nTI3lqIiXmAk86p8CyD46iLNZs7bzTSk8u0vdRbHjXSPEAVYbsiw==	2025-12-18 13:34:05.144585+03	\N	\N	2025-12-11 13:34:05.147415+03	\N	System	\N
52d8f0fb-37e2-4b3f-8436-9d40b8a5dc1b	53df461c-7a30-4518-b676-e784f70c430e	947mEsB+p82IpDHWLqvEDBlMQlYUv7iGxG+p6/dC3+CexlTwXo2ipHU+K6rIELIQpmxiTiD24IcLxyeHwn+AMg==	2025-12-18 13:34:05.987974+03	\N	\N	2025-12-11 13:34:05.98828+03	\N	System	\N
361a84a6-3795-46ff-96a7-6e227105c502	ce8b1ff5-df95-44c2-ab79-72904ca9e14f	BAButHUV5BlE4qQ49HQ/hgpNXAfznxTUcpQIWmizrfAx+Ms4TK9uKr16LpTLCnesJlbuTB08NtfBAia7xvCtUQ==	2025-12-18 13:34:09.680041+03	\N	\N	2025-12-11 13:34:09.680303+03	\N	System	\N
1995ee37-f008-453f-91b2-480329fd681a	47c73193-b7b4-4fd4-b3c0-4bf0d774d435	/FF2fcTnzdrE35TrmiynGhdhSgAOcMy4cRRTLVCkqh72pRQHtE+A0FE/ukr11DV5etaWQTIsYSt66EgdY3bikg==	2025-12-18 13:34:10.537029+03	\N	\N	2025-12-11 13:34:10.537306+03	\N	System	\N
fb1de2a9-c1be-4f85-82b2-c1fec6200fb9	68d95f2d-30f5-446c-ae28-50d59769a5b8	3AefAeeVxY1rhPVhF3UDqTdPpvERP9RQvtJQF6kgRyYIESXuiimGzV8UJHMbAY55A16938lyXwuWyAolXGtQvA==	2025-12-18 13:34:11.31267+03	\N	\N	2025-12-11 13:34:11.312975+03	\N	System	\N
0d0be6b7-0a8d-43b8-81d4-6819f12eac22	844fff5c-6e9b-40f2-a5cd-eff4e482de07	grV+Kr8Tude0ubTefMSdSGwFNGEYcg2Ti0dFNs6rxyF5MhCfc/G+hoLQQEucixnSWYSn3Z0EIlHLfTtrCAsdiw==	2025-12-18 13:34:35.755707+03	\N	\N	2025-12-11 13:34:35.755994+03	\N	System	\N
07ad69fe-f7e7-4ed1-843b-93b77ed57533	469da776-7697-414c-8f4a-71c44df92914	0+05OjVFRIisvDy72uhD1d/P4RLkAN413+Jc2aTNWCK7aUhaguuAbuuxng/5iotGvZICmGkcZbLU5v9KIUK1Uw==	2025-12-18 13:34:36.519588+03	\N	\N	2025-12-11 13:34:36.5199+03	\N	System	\N
c4de5f1b-933a-4dcc-90d2-a329cf58e38a	5d6c2b3e-44d3-49b9-9064-2ef1fa10cac6	WI7Aj0wsqibSlw4CaHWG8QHU047W9XbcprNI2x7jiDOajWQctMU59ZKc4agEVhUawRHXpnVIGlLwiJxN9aCRNw==	2025-12-18 13:34:37.327022+03	\N	\N	2025-12-11 13:34:37.327265+03	\N	System	\N
85338323-9aee-465d-8823-90c79e890c10	904505ec-cac2-4795-949e-cde0966487af	Nk+4rKZq9IZgZsXaXH8ba6oQsZteNe75rt5AuHZJZ6mH2Xma4Ec20/vQjJjMkEZRTCI/H8N2jd/Rl1ACZ3XA+w==	2025-12-18 13:34:38.08449+03	\N	\N	2025-12-11 13:34:38.084761+03	\N	System	\N
84ece885-9780-4ba2-b753-30d33680c9b5	93364d27-2956-456f-b646-99180e2f9b13	14V8CzOW4NbHsSgNp8b19w9Ih0j5tvvAF/goPI3Iv0ZgbgSxImq1hYSVzWbGWH1ugmIycX0mn4OOLDV1eq408Q==	2025-12-18 13:34:38.776362+03	\N	\N	2025-12-11 13:34:38.776592+03	\N	System	\N
6d395df9-916c-4fb2-88e9-6bc3e0f85e51	548e04de-2edd-42e2-95ed-82783c494789	O/i8jGNDaX27yoSqoDXsVsEVA6fSQykkMSynkl4hnTF/xygPvlATRFsbam6Qz+GgocU2HovCmYCiAMR/niu9hA==	2025-12-18 13:34:39.515438+03	\N	\N	2025-12-11 13:34:39.515701+03	\N	System	\N
953437d3-2a60-4f11-a36d-eca998fc78ee	0685b07c-7ba2-4a42-a746-ffdb27732311	tP0ZZ0N3Oc4lig1QNR6r6A4QonpB1pIbe+po0Ak1+IkuXbZCUEYPZ/3N3b+2FqQ0Xm4CqR2dX5AEZzHvWLssbQ==	2025-12-18 13:34:40.189651+03	\N	\N	2025-12-11 13:34:40.189895+03	\N	System	\N
560c9cda-66a7-45b8-ac05-71392f245832	8d978522-ef5d-4cf6-a700-b90cb3abe392	8QGe2leMyNLf5iR/7twK4pCFxpTXkP2ALUsCHexu/ZK2DCrwt7bdkcbY/4WNxuDwJaga1QpTUDDtPVX/eTWbUA==	2025-12-18 13:34:40.845796+03	\N	\N	2025-12-11 13:34:40.84602+03	\N	System	\N
d4d4d7f0-c10d-40a8-bf24-0e7af64b3664	a9652990-ff0e-44e9-9ef6-ff9a42d8eef2	796A3CoPQdZHby4Vunicvmb8l2/ph3w5gf/vuaRrHsJjobw/yLSkGSN8E90fwoyRHf7pH/RYSsgz+gLKUwr0pQ==	2025-12-18 13:34:41.520106+03	\N	\N	2025-12-11 13:34:41.520347+03	\N	System	\N
75f8aa84-7082-4454-b3a9-1e04e300d1ff	aebafbe8-48cc-49e0-ba1b-3ce7f9f012ff	ZO8rYuyW6a18jubBTUwliW6RHtreuqvSNNCvOQN85sH2QTWMzYoOV1OJurjrSiNQKewmfj2YVSrPYDS1sjaYDw==	2025-12-18 13:34:42.178134+03	\N	\N	2025-12-11 13:34:42.178451+03	\N	System	\N
65608b6c-e606-4fe0-9b20-c3bb15950bdf	198aca9e-92f6-49dd-ad72-61408bb707f3	CSpiv+DnkYpsptT3Nn8dpiIZfbqCtG9tEfE0dD785A4ZNf2Cx0v47+pNPjtl/NbylKV+jq01ml8IVP30rsaF+A==	2025-12-18 13:35:40.971409+03	\N	\N	2025-12-11 13:35:40.971686+03	\N	System	\N
36f26580-bbc8-4aa2-8c2d-5c3c2e862b6e	d9004894-a0e6-4843-b280-35811925367c	ImhBLGX8+IQJTJnxMt+G//8Ga0kJoyldQhri7iO1w8DPPAZJtYOTPuhjIGVJYrg8WC7I1Kl4mweXxXtZphjBLA==	2025-12-18 17:49:56.324844+03	\N	\N	2025-12-11 17:49:56.325918+03	\N	System	\N
914fdd7a-c67e-4bfb-9208-a47a294a35c2	c1868406-4998-46bc-beaf-7d594f6f759e	qUbbpwd8FNiC4DuYGkbztmEI/zgp15xO2vx7ZtjHwQscAuTpjyQlV9ox8wPV0aATOirglH2IV+RvfJdnsIF4Jw==	2025-12-18 18:19:43.99458+03	\N	\N	2025-12-11 18:19:43.994847+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
f52ebad8-0af6-4166-94aa-999e04bef2d6	5f7f9faf-001f-4a68-970e-09c860a65d8a	mfOeIzkv6EcSMn4YxYikMkwtVpM5OFtmH2GP8X4MGeOPpNaiSgqoJg/sPX3LMkRFwkyYwvQwFWDcW/0VaCMFWw==	2025-12-18 18:24:22.198298+03	\N	\N	2025-12-11 18:24:22.198627+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
7f7922e5-6903-4c07-96be-e3ef9359bb27	407c7efd-2956-4797-8c7f-9f43bd552bf7	IuaJAl1iWjRMB7Q1GWKSzfWz/WhvCXp38Q41JsTzVgWGPTfza4WZE5qp/RRpGu4ngG7rTB2TVXLx8EvExofpAA==	2025-12-18 18:31:06.98246+03	\N	\N	2025-12-11 18:31:06.983316+03	\N	System	\N
3d67b475-9ca7-45a9-aaa9-b2a652ac657f	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	pOHji1inHmAkNDoVFLzfEGfsjoLADZx3GsRRdSxKD0O/3TmR/D7as7Lu+RvGhmTAUGItMtWJZ1bSV2PhrYItHg==	2025-12-18 18:09:45.132581+03	2025-12-11 18:42:27.492463+03	\N	2025-12-11 18:09:45.133025+03	\N	System	\N
0f6b900a-6349-47c3-b4ec-6203b1a438dd	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	wl5YacsVq88u2mDvGO0keZwfG8ADOks7+Wmp58nJiVE/J/cX4r/zHMsITcLP/r0bGhEFdvDK/8XRahgmP7z9bQ==	2025-12-18 18:15:46.438162+03	2025-12-12 10:19:59.45986+03	\N	2025-12-11 18:15:46.43837+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
7b3f48ba-f099-4e61-b094-ce6489021ddb	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	SLVJwHis+csvs2w2hLwfrvw/qCb/Pl4Ecq93VQmpWglFniqkOmDYcLw5BwL1CFzdsbjSKqP9nfTk3t0B5SdjbQ==	2025-12-18 18:16:39.037399+03	2025-12-12 10:45:09.289963+03	\N	2025-12-11 18:16:39.037596+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
364b741a-a80f-410d-b399-e1772e247361	a1ff5501-d315-4b38-a8a4-27b3eed3c4fd	sk2tr0dlVOb3T3vyfGQ+JupR9Ea8PUJoKwB1tYozZR5wTHYJcuxP+YM2jJDxu+VraYSEbV49qTTkjSuewfyUEQ==	2025-12-19 10:45:30.50306+03	\N	\N	2025-12-12 10:45:30.503314+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
046fc3b8-0908-4970-aa21-306d1725b21b	a1ff5501-d315-4b38-a8a4-27b3eed3c4fd	dS9htCgZCAav0ZJiiFEbTTEHXJe48ZfD2Bsj/0SxdkfF7ox+59DAp/97/hMtGTN8kjFeyabi2rgHoLAVWY/Tng==	2025-12-19 10:45:44.681993+03	\N	\N	2025-12-12 10:45:44.68219+03	\N	System	\N
89f6eec6-9546-49bf-8410-c756e1a49fc2	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	SLYhNgldbdMfj7tQ73bPJnjoHPSkynmgXWp72NWag1g34psl4SZt+jNrbC3abmZbLTuS2FSmhUgCcdPbmoRUYA==	2025-12-18 18:33:46.044108+03	2025-12-12 10:45:54.640026+03	\N	2025-12-11 18:33:46.04432+03	\N	System	\N
1c90830b-6942-44e7-8bd7-eb9b2353bd28	2eecff13-7902-4180-9b4c-2402c999bf4d	vOFzpbwsnIaFFqhpMvGT+Qn1lQ1ChtrwAyJdNSbqCX6n5xqu4Nv0Wa1VPPY5vxEeEP49jrztpcuBlXyFobeDVQ==	2025-12-19 10:53:52.307935+03	\N	\N	2025-12-12 10:53:52.31594+03	\N	System	\N
4aad370f-0edf-4753-b65a-8a771f75fb6d	c04661e3-3e64-454e-a24a-af85a9421c41	/8VVMiB7G0A6Gfo/e3rQJlf06c59g/0qtHxprZjQQdlG0f38IIjdN/RImCER9+7Fbg9IVf+RwWqnauJYpGIzYQ==	2025-12-19 10:54:26.983837+03	\N	\N	2025-12-12 10:54:26.984089+03	\N	System	\N
3635b4b1-35b2-4000-8649-03605fdb8372	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	IgbioZjSZVFBuepPZCEFFyizDV7nifvk+n3UxzX6eq78cBjEtN2QdYlGTzzAJx5mTMxlzqiUDMrUNbBAZqQGkg==	2025-12-18 18:42:27.497652+03	2025-12-12 11:44:44.098732+03	\N	2025-12-11 18:42:27.497949+03	\N	System	\N
a0c57ccb-c778-4ce9-b23b-3fe6357b4256	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	KkPYbP+ISpqrLZHhnvvMk28uSa94qysnX1LlYWM4LJ8ynLZuguebY8JJpegxfwS/LBewPqPL6pF4FQCv8l0H0w==	2025-12-19 10:19:59.466933+03	2025-12-12 11:59:02.586744+03	\N	2025-12-12 10:19:59.467813+03	\N	System	\N
912d5ccb-073a-47a0-8601-29e8e239cd35	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	z7W5dbJ9K7JYrXETzt8ZOYsHoNFhg1q6AUp9z8m3l2UoO5LBYj+3Gcs9YmPfbWzfh3XBGQ9v3a+x2NrKTuwpKQ==	2025-12-19 10:45:09.295128+03	2025-12-12 12:06:19.168824+03	\N	2025-12-12 10:45:09.295367+03	\N	System	\N
53b7a630-09f0-4546-949e-c0335617b62d	3dc40293-fdc9-46ff-92a3-8af8eae3ecfe	3IEELbGpIv9HT0RkrwVEX/la6Gbx69XViXN+ZupctbDnT4mkFy7z878D9sdtSiIXPK+yvXdXF5jk+DCFOA1Jig==	2025-12-19 12:10:39.772638+03	2025-12-12 12:10:41.592694+03	\N	2025-12-12 12:10:39.772899+03	\N	System	\N
ce4162ca-0703-4eb3-b5ca-782a332f0fd6	3dc40293-fdc9-46ff-92a3-8af8eae3ecfe	XIPWfXTxmUeB1guHEswpFLA2OJmRye/1HSFOcqMXOnJlom/mPHECvhxRNEOE0I/GEwdoORV8FqobTWR1WvgOEw==	2025-12-19 12:10:42.100918+03	2025-12-12 12:10:42.235969+03	\N	2025-12-12 12:10:42.101122+03	\N	System	\N
ee4b995b-f8d4-4115-ad24-ef651d6ff883	13791700-1d9c-401b-8f66-946c0767e367	czVqHy68WH9XzojKb5gLQTnz9IiCY99ZlwAyXSiIbFHNXEuMOJXY43fkl3KRfWUWcG5z5QCz6GPHcf1nc7lRMw==	2025-12-19 12:16:29.417994+03	2025-12-12 12:16:31.010752+03	\N	2025-12-12 12:16:29.418391+03	\N	System	\N
4d49b2d4-cf5b-4237-b2fc-70586becc974	13791700-1d9c-401b-8f66-946c0767e367	zyAQXvF4INm8OLNu7kzsoAPzfRpZ0jnVQGGNX7IRQbOmfAMorLMj/8w7/O9ymAlVdESeUZ7tOhNhhdwjVFvjxA==	2025-12-19 12:16:31.564863+03	2025-12-12 12:16:31.687561+03	\N	2025-12-12 12:16:31.56506+03	\N	System	\N
74faeafc-1924-44b1-a8b4-452f7584decd	7833b246-54f1-4dde-a7bd-cdacfc0071b4	YQtZzZFfgehRzTKVf/DzroUfK03NUr2KIwE+/vaBsD9NKYJu9gHM92xzfxvHjXCbhIAH7j85V7cdPYaCQyRMMw==	2025-12-19 12:17:13.926078+03	2025-12-12 12:17:15.668914+03	\N	2025-12-12 12:17:13.926323+03	\N	System	\N
8f24318e-0918-4dbb-ae46-e1e45296ab95	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	+8LkZ2I0wRXj2clCcWfqMSXPD/Nqr/bzbjMdnFaWl36mnthqTfGpZDiXamYcN7KuuO557zyX7QQoTsAOpzg4Zg==	2025-12-19 10:45:54.643492+03	2025-12-12 14:35:17.696504+03	\N	2025-12-12 10:45:54.643665+03	\N	System	\N
52ce2d36-36b9-4d20-98d8-257beb4b8c64	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	sqHwRm7VfJuoowaLHzHNXtCBBqw869ThErwYQpDJHV3kWKSCVKijc4s0ZMFlqT3EaMct65m9III6CUgLhWSHOA==	2025-12-19 11:44:44.103867+03	2025-12-12 14:49:40.710835+03	\N	2025-12-12 11:44:44.104436+03	\N	System	\N
ae2575a7-9538-49de-aa2a-6feb79f0ef7f	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	z5Jy2DqLZ/KLIkGtX7TOxzyXHvqM9Pe6UAdKvwYzJX33xD+I4GQgipMNRReoH+/Cf33WZq9opnVBDVQJUSnRcg==	2025-12-19 11:59:02.592063+03	2025-12-12 14:50:58.470337+03	\N	2025-12-12 11:59:02.592351+03	\N	System	\N
d4b732b2-b7b1-4b6a-9081-ce5c6d4644da	7833b246-54f1-4dde-a7bd-cdacfc0071b4	HO9eVcOQXD9zST3N7gB54FP1S149etAZnFp1Msnt3srpf+6T67coJ+Q7erPVNz5ncoKx1tGXGuZfa/YM19xcxQ==	2025-12-19 12:17:16.379871+03	2025-12-12 12:17:16.506766+03	\N	2025-12-12 12:17:16.380038+03	\N	System	\N
b37ad644-3c72-4bfc-8405-7a46d7891f0d	ecd743d4-3b9e-420d-94d8-884738833749	jtJViOp0p6U50ECX3EiSVXepx5ZeSzfvsNcBJOBg53FHHQ7oML0w6wV2FeNtqjZqxguucF0rAjPPeb4CcG7cNQ==	2025-12-19 12:17:48.136551+03	2025-12-12 12:17:49.690227+03	\N	2025-12-12 12:17:48.13678+03	\N	System	\N
2f47a2b4-4a07-4a9c-9f1a-0f9cf7302ce0	ecd743d4-3b9e-420d-94d8-884738833749	I29pKesl2en9dEM53T5uKtMrxwBSC4ZTqKjdL67Yx1V6NoPFugBSng0u3SuJWxBNwOY8JCudV5VJaLqqJY1a/Q==	2025-12-19 12:17:50.200903+03	2025-12-12 12:17:50.338817+03	\N	2025-12-12 12:17:50.201108+03	\N	System	\N
8129b115-2cb9-4e7d-b87f-f3bb044da547	a6a0f0ef-2bc0-403d-887e-2ac8671ed11b	d9Dtxoi4vODJ43c3PGVnifHU+sjmjAwute7bwl12wL0BKTaaQW8ZzuMTSBEMe77C1/CQrqQAKhUQH1WwLJ4rrg==	2025-12-19 12:19:10.481574+03	2025-12-12 12:19:12.339768+03	\N	2025-12-12 12:19:10.481806+03	\N	System	\N
fcd272af-f4fc-4a86-901d-75a2edea10e4	a6a0f0ef-2bc0-403d-887e-2ac8671ed11b	EmYJtdGAtN1qvch5ektmCci9dCmalPdP7uh9BghjdYpC4cVJT9Fe6TCT0yfuF+cOVfcKMJgGgzWlU16Ycrgh6w==	2025-12-19 12:19:12.838259+03	2025-12-12 12:19:12.967755+03	\N	2025-12-12 12:19:12.838443+03	\N	System	\N
36bdd123-a6da-43a2-8544-1900d9f2cef8	f9540b6d-f57c-48f3-b146-912701b29d4c	ipUdbx+HmmNPmRiEcyY8yMo9t+fThoAzvWfjtNoxqI02dtyiRp2G1/fxlpH2w19VGzJYVPi1NVAUuAbD3w/hLA==	2025-12-19 12:19:21.350588+03	2025-12-12 12:19:23.217064+03	\N	2025-12-12 12:19:21.350788+03	\N	System	\N
fb923bda-fd24-4815-8d4e-fbac76564409	f9540b6d-f57c-48f3-b146-912701b29d4c	9Yp2ZCwTRBNU7p4HNTyZLbDr982JUJnSNtr6zMenqzI68jdSw5VY1LIMc94TicS7kml96AaCiaxPnn3mM1xc3w==	2025-12-19 12:19:23.741572+03	2025-12-12 12:19:23.867653+03	\N	2025-12-12 12:19:23.741761+03	\N	System	\N
847c7c12-48be-4f16-8491-c177a90861fe	b54645cd-488d-485e-8e17-5e6711b2f684	Q/C2OVBC1h4QoeqcBr4gkNePlCTb0hmzvviVM/RHpeVHSzmWx/RDHKDZfmIgCNvsGIpOi87dM8hPL+kHh49HfA==	2025-12-19 12:20:21.833021+03	2025-12-12 12:20:23.364798+03	\N	2025-12-12 12:20:21.833256+03	\N	System	\N
dfaa8d14-d656-4393-b8c3-0d30610be0c0	b54645cd-488d-485e-8e17-5e6711b2f684	w/MbGkLuDp4zoZCTX5hdlHvoK8oAj/w6Sad539U1lCW4WNgw6uWzNj9GwRVEr+02j+GLUjTpBLDI+nvGZMCeww==	2025-12-19 12:20:23.857075+03	2025-12-12 12:20:23.985867+03	\N	2025-12-12 12:20:23.857232+03	\N	System	\N
33b5fac1-36dd-4edb-98b2-a0f5c3ebf1c3	572710c2-bbf8-4c7c-b43c-205e0d58a94b	wY05HJGN/BesBN3pyZU6VRTJc4JncyOS8sYqNpVghA1FsLCL9sqTuiS58VcfLfFjcWsAyo5SkPwAL5RThvpIDA==	2025-12-19 12:20:31.024736+03	2025-12-12 12:20:33.07374+03	\N	2025-12-12 12:20:31.02496+03	\N	System	\N
470067db-3662-4342-8e7c-22727610e496	572710c2-bbf8-4c7c-b43c-205e0d58a94b	18TdD58HPcnNacweNu7kDKtGjzVRUK/MNOjvo9n9vHy46jsQzhzgbgQjUjpkJBzS39JdxZbQdLGlnN/s4oKX3w==	2025-12-19 12:20:33.578873+03	2025-12-12 12:20:33.701409+03	\N	2025-12-12 12:20:33.579068+03	\N	System	\N
92808eb7-883e-4df1-accf-27271c88d639	a4d49c5f-fb18-41ae-900c-3a39668bef7c	JNgG0HETIkkS7BFxf12Zk7AqYqFRDcZEaGCPFB5d8NmmQCqb5VFure85SQYff/ssFnvZnMKVJWg2BgOMnnY0bA==	2025-12-19 12:21:51.931202+03	2025-12-12 12:21:53.936895+03	\N	2025-12-12 12:21:51.931567+03	\N	System	\N
9007bfb4-6f5f-4679-899d-630d388570ba	a4d49c5f-fb18-41ae-900c-3a39668bef7c	MirdYaapas36392l3HdBCuii52Xn4ypRzGz4jfCfmXAz7UeRaqYm0sGYzHtUlUm7AIWYXZ1qaqt67WGYp3sm3w==	2025-12-19 12:21:54.486844+03	\N	\N	2025-12-12 12:21:54.487023+03	\N	System	\N
28555409-8e33-44bb-b8e9-4d7e9364ddca	9b923001-9d02-4039-9393-0f7c5f5aaabc	Scqw565glmVQXyuRLotHg5U4zFeynAK5NWq/yL9gfStR3R5l7g8wMSv9CzTCp2Cuvr8sGRnR7xQjPbWPb0NUWA==	2025-12-19 12:22:22.182917+03	2025-12-12 12:22:24.20849+03	\N	2025-12-12 12:22:22.183185+03	\N	System	\N
8d115a68-1764-460e-ae54-c9b7edfe6e2a	9b923001-9d02-4039-9393-0f7c5f5aaabc	nBwS1nZ9CPbTWYv4DTJni/U9p0xx0vUbhHI2+3ewRIHwJdj0Bmj7Kn+G9nfg50PF/tRWjP2DNnIOfQHVs5D5zw==	2025-12-19 12:22:24.766636+03	\N	\N	2025-12-12 12:22:24.766892+03	\N	System	\N
e8d4186a-93ed-4170-b858-c92b12cc7ead	0a024bd7-2704-4e93-b71c-2b646f9083ab	hNqMTvN+/y+PMmUAh3UAFPTjxleUF51o7Zg8rxvzyOrdmQSptOE5VMhTzwwA25cFx/7M6Tblyj5yGVtwD+FT4w==	2025-12-19 12:28:24.167674+03	2025-12-12 12:28:26.651723+03	\N	2025-12-12 12:28:24.167927+03	\N	System	\N
ac03809f-c84b-4bce-8a30-89d83904deb6	0a024bd7-2704-4e93-b71c-2b646f9083ab	dCcvNBfJWRlrj06S9eWSo0yOTlBxom3ZbBnCWo5cLedwBB8qOUYwkGS4xxk7hZE5rBeXpvUsjrmoMUuz3weU0g==	2025-12-19 12:28:27.178913+03	\N	\N	2025-12-12 12:28:27.179132+03	\N	System	\N
2da55acf-f787-440c-8021-78305bae790d	557c9c1c-a39c-4076-8097-5a4b541f80fc	nlMU2fEi1bKjsMJLQqzkjxcVguTvWeOz0oQdwGehhzjYtfWq4/AoQiclnuPcZISEso5X+2MYDo7noDOE8hzt9g==	2025-12-19 12:29:54.470055+03	2025-12-12 12:29:56.755682+03	\N	2025-12-12 12:29:54.470271+03	\N	System	\N
a771d9f7-b4fa-412f-9b65-d3842a668c7d	557c9c1c-a39c-4076-8097-5a4b541f80fc	/agn8CcNix0yxdFGYeWkW1PPnnYR11BPJdNUi+EPxGhSl7b8C0yE2Dd3S4kFqvj5hN6nH+A5mEXkdGF6rNbpmA==	2025-12-19 12:29:57.280724+03	2025-12-12 12:29:57.413087+03	\N	2025-12-12 12:29:57.280895+03	\N	System	\N
77d23771-ce18-4349-b24c-b6d95c228656	bcd5ba45-8ccf-4672-9bc3-90b65645f95a	wlpjxH1/M99U+CvxXxq3L7Q0/Urh96UZ1JQe1o9il6k1fwUx+vv4APTlf1gb06Hrm9M+JihjKZ15h2k/k+s+vg==	2025-12-19 12:30:55.277393+03	2025-12-12 12:30:57.284804+03	\N	2025-12-12 12:30:55.277671+03	\N	System	\N
ffdd2960-944a-468a-8bd8-00ea5c6a07f2	bcd5ba45-8ccf-4672-9bc3-90b65645f95a	5JVRxsmxpRW/Ujv+yHi8H4W/DhVF8RjaHfBfT7hcs1P5hqq8rX+p8QI2ls5NVRiAtfNoiKYtJvxSmlxSMA66vw==	2025-12-19 12:30:57.82631+03	2025-12-12 12:30:57.89609+03	\N	2025-12-12 12:30:57.826467+03	\N	System	\N
0b0a44d5-0178-40da-a032-61713437bebb	7246b710-2223-4712-bc4d-202e16205fa8	aNolMa/2xNFDm4lQ9edMumRn/WoRKg3sbXe0W5UMTomEGC60KoiSbqJFvErfWe9shXl32miqlV6IylxBPiRoeg==	2025-12-19 12:32:29.90536+03	2025-12-12 12:32:31.616526+03	\N	2025-12-12 12:32:29.905701+03	\N	System	\N
108a3f87-f2b6-4985-8be0-5589aa7def94	7246b710-2223-4712-bc4d-202e16205fa8	B3lpFgH+p82eQAatqIkfzIo5Bpx0Th6wvv3ElPmOWGxDYVc9oJ5LOvOC2rNnL9sM+hXPs3cDbAvcbUqHui2O9g==	2025-12-19 12:32:32.117653+03	2025-12-12 12:32:32.251174+03	\N	2025-12-12 12:32:32.117833+03	\N	System	\N
318c1fa4-619a-4f96-b343-2ee28a1d56b0	c943ac90-a729-4110-8f0c-e38147669272	abZeKYju2haJeFbKcNqik6e6vjdOpXrZXDi6oVFmFnnJX66YQOJ0DiTNoupPSw3ftPeUm+zyktH8asZKdfd17Q==	2025-12-19 12:33:05.993372+03	2025-12-12 12:33:08.054893+03	\N	2025-12-12 12:33:05.993622+03	\N	System	\N
90a83cc0-ee8e-4644-af18-34e2f5515d55	c943ac90-a729-4110-8f0c-e38147669272	QazvosgYn6/V1+agt2Juli3YMdqJUpBWJv5ZjuIs16NC+aSd5yxNJZ6T6/QB+lcluHmF2HMSVlBjLhpy0y5mzQ==	2025-12-19 12:33:08.61035+03	2025-12-12 12:33:08.697235+03	\N	2025-12-12 12:33:08.610618+03	\N	System	\N
19ccb710-afdd-44d4-bb8d-181d6687ac03	f9703044-e0cc-40df-a9b2-a7dcb7899920	GntR4/ADIdwzxghw4VI5aEnngLXpCuC0JnSPOO8jCxz6Od2Xr8+kIpVQ9mKjfJ0LVWqPHQrFKPv4YZ5yNt9p5Q==	2025-12-19 12:35:37.909734+03	2025-12-12 12:35:39.940257+03	\N	2025-12-12 12:35:37.909981+03	\N	System	\N
cd937f58-3d60-4eca-88c5-c7463bb65cdc	f9703044-e0cc-40df-a9b2-a7dcb7899920	qoi7EDubUAkfHrycaSkz4HdADl/X58O2YCTVTvjDOkpbB7Rzgdp99PfRkAxxSu7W2q9eXvLMGmi7UuIFdPsxPQ==	2025-12-19 12:35:40.431997+03	2025-12-12 12:35:40.516648+03	\N	2025-12-12 12:35:40.432193+03	\N	System	\N
902cb8da-4376-4b03-a95c-44493e7f12e8	7fb88752-25e3-48ed-9ab1-e569c2019de8	AFYQzggk49qzWtDZ7c5OnosKIjBFt+5QZ+RhLCOcRuJ4+kGuf+uP5Fss68skHJlQNHwL1aaaFpPHURgUBW6WBg==	2025-12-19 12:35:47.793295+03	2025-12-12 12:35:49.718533+03	\N	2025-12-12 12:35:47.793502+03	\N	System	\N
e85d4218-1aaa-4b44-8869-5077545120c2	7fb88752-25e3-48ed-9ab1-e569c2019de8	0oaukv7Qqh7U2Ao22mNOk43rtgE0ZzEytRAa+Tq9p/+/Bx9X1GmPOVl5F3qQIVYV0Y7ZbzSyztmMsIDpJtjszw==	2025-12-19 12:35:50.373402+03	2025-12-12 12:35:50.719462+03	\N	2025-12-12 12:35:50.373561+03	\N	System	\N
1d94625b-7362-419e-bfd1-5faeac40e98f	0369c1c8-96e2-413e-be23-376fb5a7e86b	4pHml60dC3DztwIGGkDVIizwGojXANyr0K8Nrlce5UgF8jz51hQ0CanFiqyXH0cEmSn8vJab2mcm0W1EjWrk3Q==	2025-12-19 12:39:14.87963+03	\N	\N	2025-12-12 12:39:14.879884+03	\N	System	\N
cddc5802-f360-4de9-9321-beb1544e7bf7	f94f7bad-417f-4bf8-88fe-2c6a902faa2d	4FZ3vaTXFPdJkkkvNEDLlFeepQ3CWqyVF+XqsOBFkCfUIXW33sNnAKpicNDKIJvW/aSIT3O6vAxNfcQbTlhRag==	2025-12-19 12:41:17.082149+03	\N	\N	2025-12-12 12:41:17.082452+03	\N	System	\N
d4c2dbe6-66d2-45d9-b765-57a9261e9e15	7f930590-40fa-4568-a060-962265be8b59	SK/R9tGJuPNc/wO/HJyTu3k/HN/iD0Fw9Q64JS+yGQ/tDknNgLiDfHGY4fq/IJ2ftxsQfUM6t2VoEFev42VOhA==	2025-12-19 12:41:44.44769+03	\N	\N	2025-12-12 12:41:44.447894+03	\N	System	\N
27a3e5c5-ea37-4495-b789-d3b6acdddb7d	eea72642-5eac-4b86-9931-a060c582796e	pEUic2YXNmdXskPBH46eMMmiZai6EdO0XWKcxlJ23Y9PoNgx34Nzv3t+hojD7Siw6O+KE1DBS5ECnflEGD1X8w==	2025-12-19 14:50:22.191047+03	\N	\N	2025-12-12 14:50:22.191283+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
983d1918-8b14-4a4c-93d7-d97ceda943f1	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	hY7z1YiQiifgHInAfWl6JuZlWcK1xKh6E/Ya5b0DGxAWu+Q9INdXkqP5EiM9OyHBM587QftxsoH5nyb5iTwPrw==	2025-12-19 12:06:19.173+03	2025-12-12 14:50:58.470337+03	\N	2025-12-12 12:06:19.173225+03	\N	System	\N
8476fe39-6f17-4ec6-aad6-e397567de242	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	5bXXpTw1AlcTk0zBoyPItbt6hE/WauAVFPW+asfGMicSPQ4qunz54c174qPlBX3/LBl2il7W62ZIO2lV2RBqfQ==	2025-12-19 14:35:17.724125+03	2025-12-12 14:50:58.470337+03	\N	2025-12-12 14:35:17.740977+03	\N	System	\N
4a98e22e-b269-4860-af34-b712850610be	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	X61cNAqBkIzEeflcSz0mxJNTZ4CMUogLLfkyJDACXGNDCyhZ5RtV0cR9swNTRo35RZho+Q8sOFqEFkW8rbd3UQ==	2025-12-19 14:49:40.714294+03	2025-12-12 14:50:58.470337+03	\N	2025-12-12 14:49:40.714623+03	\N	System	\N
42aefb4f-e37f-4b33-9cc4-1babda22e61d	4fa1a256-a774-42eb-a91e-ad37f677aac1	EonN9BbfFql5SPz6EJfk4O+OK7QB/maH713Z6F9Sl092VwtAj8vtUUv5PWczWdlQfxyhJA2bM7TaRDiXzXyzPw==	2025-12-19 14:50:54.928848+03	2025-12-12 14:51:06.167184+03	\N	2025-12-12 14:50:54.929048+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
6bfc9e5f-32b6-4ff3-83c0-baab2fba7574	4fa1a256-a774-42eb-a91e-ad37f677aac1	/DPo+yuZa3an6hVQXx4pprwsjys70aFOwofNn3s8kU888/Q2HrAz0d/mQdl+sTgVSUzh5TBVKND7WgzHewvtEw==	2025-12-19 14:51:01.99904+03	2025-12-12 14:51:06.167184+03	\N	2025-12-12 14:51:01.999271+03	\N	System	\N
3acce8b6-b8ed-4254-8c7d-488bf34a071a	c9e74762-9c89-40cf-8d36-75ef107003af	+Su9JCPiyzo/Q7K668a+SEzk8QFTNPcR0GN9K1QOQ46A3ealwf/+xtInde1USRPNGjLcvUq+N3AmnuOwl3GIhQ==	2025-12-19 14:52:12.094513+03	\N	\N	2025-12-12 14:52:12.094792+03	\N	System	\N
5843458c-4ba0-482a-a493-464848ea25db	dfe58f84-38ab-47e7-a175-1178f6b67890	8R2+o3bb8kmdCVYP+9BON/mc5hr6M2wGDXXOWaPjZH6AhHsAbiJo2m0iNfrZcuB3t2WTQzzfKn4QtMrwQfo68Q==	2025-12-19 14:54:32.862551+03	\N	\N	2025-12-12 14:54:32.862805+03	\N	System	\N
a5ef89e5-56db-4e57-ba26-c13bd709826b	a24ae186-e64b-4810-a549-19291c016bf1	6kRA3WEGI5987wWbM7+ZkwdQNuwnU7tkpAlkbhHSWwaqjLErKA4OIJ3/j+MC5+POq64w06J3aTix6Ab53cuQ0A==	2025-12-19 14:54:34.436433+03	\N	\N	2025-12-12 14:54:34.436638+03	\N	System	\N
2a1b5179-a4ff-4b03-b3a6-c099327ec799	a1ff5501-d315-4b38-a8a4-27b3eed3c4fd	NT9X48mtp7NzNAAHW5n7Cu72tN6fwQ58JLWT/pamdS6rGqTdRyPc/7iUcROm5ldt1hYVf7p3aRM3hhqUVuGVcw==	2025-12-19 15:03:24.17394+03	\N	\N	2025-12-12 15:03:24.174225+03	\N	System	\N
614ec824-59ff-4c7d-be51-dc68e28ef656	c943ac90-a729-4110-8f0c-e38147669272	SHAtmOXCR4VFBystS03russwpo+Vt22mPIzq082RK53zbocLwIWNn1p7WqQuiscDH0mgUOqJX4A/Gnl0AewGsw==	2025-12-19 15:38:52.368084+03	\N	\N	2025-12-12 15:38:52.36883+03	\N	System	\N
89b5e7db-dcb2-42d9-8f4b-2edfcf07627f	c943ac90-a729-4110-8f0c-e38147669272	5CehzxiCTM2AZKjwQQLS2WeOuDrC2qIW+oyM/uV065441s/ez2jYaXZFVKxd9k/e8gjP6gxZdUNd3XHlaE5DBQ==	2025-12-19 15:39:35.28967+03	\N	\N	2025-12-12 15:39:35.289851+03	\N	System	\N
595e7282-f650-4c45-ad21-0054badf35fa	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	fBMPsu0iB3dLay7GXyZXQWmHJHdrgjJPBjhJ7NOSJhM9JHkb8jfpedcY6mKWcwK9ZLpdkcgyE6kv3zIrn5YW/w==	2025-12-19 14:51:10.327182+03	2025-12-15 08:37:30.008434+03	\N	2025-12-12 14:51:10.327644+03	\N	System	\N
37fb0c82-c076-45fb-a0d3-75b61349e9c1	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	HmzSW/+Kd0z+rMH6qt1G1ufKxg4uLblH+YhhAbMCJ0ENfFqF7JL/bdCuAtiNXkzzUYJUSAL9fX/j1K4tcNo0Hg==	2025-12-19 15:03:29.119308+03	2025-12-15 09:30:52.423403+03	\N	2025-12-12 15:03:29.119499+03	\N	System	\N
3b28fca7-ff67-4fc4-9e0b-766ade52be74	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	aOpJU1L+hE7CbJGoDkHwBR0pvO3b5PnvahAvviRKTbldwd9I5cUQxMaiSf+IPGBP7UXPbNtQ+kDiRNjFN7g4eQ==	2025-12-19 16:22:35.812725+03	2025-12-15 09:46:43.594972+03	\N	2025-12-12 16:22:35.813199+03	\N	System	\N
426f866d-af12-4df8-960f-8a6cf825fddf	ec70242c-9a31-42b4-a219-6fb508164cc4	SDOclDq38PwoYPI1RrwR1xxUSmB7THtWnpEeAoJg84jy+57P7AEo2QBGgWd9Xb4k7zf7GOOB4D2Ddzen7RfNsQ==	2025-12-22 09:59:23.555591+03	\N	\N	2025-12-15 09:59:23.557962+03	\N	System	\N
6b7d768d-cb6c-482a-91f5-204d1392074f	106dc20b-403e-4195-b4fb-bb669c92c1ec	FIcehIy8orOgpWSeRrkKUxZhej9UJzrWyq8g9S1TrTIPVQPIyMX2omD8ies2EGZ4Fib36FeO7RA4H52dTL5P5g==	2025-12-22 09:59:41.83362+03	\N	\N	2025-12-15 09:59:41.833813+03	\N	System	\N
cb1213ec-f916-469b-9960-1b7bbfbc35d4	a263a58c-73af-44cb-b8f3-7fe17eb565a4	/qRp9Uv8fomJkJlbo/aaroY2qp+xVkV+6lkFz1OzGvJiddUMN0fPV2LwNl89omxlevgue4NRmb5UcMFHloslDA==	2025-12-22 09:59:42.711992+03	\N	\N	2025-12-15 09:59:42.712179+03	\N	System	\N
58c42dbc-8274-4901-937d-99fedc14a2bc	15215090-997e-4f9d-bab0-23c3a503fa2b	vND+s3lVpaEQB+RbPTOFjmwgqvyMDyuVe824/DOli437sR6mKRcAwl0N/HcWG4aa2U7GYB3w8UMXB9s4eOoA3w==	2025-12-22 09:59:43.445492+03	\N	\N	2025-12-15 09:59:43.445715+03	\N	System	\N
c4febe6a-5f97-41b6-8b60-43cd164434ef	2c51d349-de30-4737-b5be-adcbfc859d93	J6yBeOfISNaS4Mjchnb1dnbm9fmc3k3z1yH31hkZCIYsHeOt2F7HEqef1GTWaUZ8oe7/7BoSXS9wfm0GMn4g/g==	2025-12-22 09:59:44.203513+03	\N	\N	2025-12-15 09:59:44.203704+03	\N	System	\N
4eb9def3-600e-4600-bdc7-554c2f4a351e	105c1bd3-f7f3-434c-8071-831e4a9b3a54	UnINI7D4XRwWQUb6rsV1R9VxdAIErjMtxQspp2NnxF9ndqNCaXasONz7YcR2LpX96Vnw3qIr8qYgvBRj7VQP/w==	2025-12-22 09:59:44.748076+03	\N	\N	2025-12-15 09:59:44.748298+03	\N	System	\N
c1edb5ed-25a9-4908-9217-f8ca1cca3627	432c4ac4-cf0c-44a7-88bb-9ac7317428dc	RRs3Keyu39oyCZwS9a7VdQxqt8H7whnuA3I1oFcslTLCkRttemA2cKDldR2kzJerYJWxIEITmAbGEKU2ODmnxw==	2025-12-22 09:59:45.521369+03	\N	\N	2025-12-15 09:59:45.521584+03	\N	System	\N
7f54d93b-9b26-4d6b-9385-e66db7aba841	0549e4d5-85f5-44b5-87e9-5fca9c30cf41	8IPISUhuIIiEYx1XUIY2zS4Nw1DBHFKP1C0P68j9vbPRz3uGmuoTH5OnanvLMltm9e7q+H17+MflzUTpn6Mk/g==	2025-12-22 09:59:46.26616+03	\N	\N	2025-12-15 09:59:46.26639+03	\N	System	\N
31bceaac-e3b8-42ff-a26f-6842ee0e5577	7ede245f-ce47-4250-98f7-f5b38e925a03	hKifGftH6CkAdgeHM6JYg8aKk30eFP75ybfwFyoTGd1rDL6PKkCIi2C/54w9sjFaVVRI/F1gZ/DgCZ0GD7kK9A==	2025-12-22 09:59:46.961672+03	\N	\N	2025-12-15 09:59:46.96189+03	\N	System	\N
2bea3154-3504-4de0-94b6-29692f756b47	ff54c8e3-1939-43fe-b329-0986badc9c1d	kaCLwVRlcnQEwm+PBkdG+lp6an3oIY9f34ypxO+9qk9pv4tFXHFhPG6123/UnIwr4oqH4yzsJcqycWrreV+9Xg==	2025-12-22 09:59:47.689624+03	\N	\N	2025-12-15 09:59:47.689806+03	\N	System	\N
529819e0-f4cf-48bb-9751-0a7e5dd8b3a2	51e1fad7-dfdd-4dbe-bc05-7bf69d331cf8	YDVrlh7pTkNAnrlZuMeHZUbTQ3yGgZSYY3nZLxTzNU8OWBXUTfU8lr8BJQ24IhSsDOrSNfbBvEi++zANx+DUXw==	2025-12-22 09:59:48.38448+03	\N	\N	2025-12-15 09:59:48.384668+03	\N	System	\N
a442ed81-940c-4fda-82b5-06b1570d624b	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	YTtvLofeJKeljLDczYvIkE1qqCmkgVOmzxAsKlg28OnInrTilHsPU5SxiBWwqoVjknzgu0TSU5Em6v3p7Nfmew==	2025-12-19 16:31:44.975144+03	2025-12-15 10:04:26.175765+03	\N	2025-12-12 16:31:44.975372+03	\N	System	\N
68e20283-3b41-467e-a693-54d3c5686b09	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	bF6k+exjHrQa1jAgVcAOgt5gmNfSbNi7IxxP+DsSGFILge6YdNTzc1ue8nRoHqt5YD4oJJVgIrFStm66JXrvnw==	2025-12-22 08:37:30.02362+03	2025-12-15 10:07:25.539614+03	\N	2025-12-15 08:37:30.026485+03	\N	System	\N
d07b98e5-63f2-4a8b-911b-41c0f36ce4dd	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	KxsPES+HywDcO5oHZFJP7HXUFavwM9LHDdPcvtHuVY+hHqQEjVe1ScJYe/A8dArKP75L9Hxcpdgg3mklh91MIA==	2025-12-22 09:30:52.451053+03	2025-12-15 10:22:42.369771+03	\N	2025-12-15 09:30:52.468657+03	\N	System	\N
c14da3f2-afdb-4a9d-ba69-3a910227d851	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	piJ7OzrGGlrsqHzCNmYtsmQ/2nIoV0rIEGxbn7qVl873m7FC/rR5DjykzwmVkCGmaszo409aO12Dj/KVtl5fgw==	2025-12-22 09:46:43.599986+03	2025-12-15 11:21:52.373163+03	\N	2025-12-15 09:46:43.600372+03	\N	System	\N
01ff8303-1f9c-4d84-9568-0cc14938ac05	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	UcE11DJ9adbV8lJumqDh3V4CXggIBvBsHw3adp+gsrndoYY2dsBvP/4h5ag0L4ki4F4xTpwtRxGvunQBIkHtkw==	2025-12-22 10:04:26.181052+03	2025-12-15 11:36:56.594464+03	\N	2025-12-15 10:04:26.181452+03	\N	System	\N
4d2ceb40-df84-4c69-b520-4732d20271a3	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	MKAIBLGztTjN4XfqS3gErL7/VzSzKkOVZysZZ8MWYu/jRTFcOZ5QfPvTpyZC6OWhiok1kwXSoe3HiaXjbghqAA==	2025-12-22 10:07:25.544282+03	2025-12-15 12:35:40.841935+03	\N	2025-12-15 10:07:25.544519+03	\N	System	\N
7fb9aca4-2027-4256-b258-74c22530dd4e	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	4cLLvVuIbmrZRbG3Grypx4YBj7nSGp/eKYP5ABEL6rHqmvz8wOsYhKmq53LaZQRa5H5sT+DB18SsB5mNJh62zQ==	2025-12-22 10:22:42.373452+03	2025-12-15 12:36:24.377878+03	\N	2025-12-15 10:22:42.373754+03	\N	System	\N
31ea1b03-5c08-4338-b158-2e7a06ef751f	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	agsg+Q0rAKOk8ZKme3X7jaWec3OLanRtTABeCh3KMKY/QCqGaf2yP5V5jxsmtaGoCLfEtr97cJAq5HTjKNQquA==	2025-12-22 11:21:52.386424+03	2025-12-15 12:36:45.98875+03	\N	2025-12-15 11:21:52.396159+03	\N	System	\N
d406aa7c-1c50-4ce8-be18-d441e04340d9	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	QAdoq10AiF8ZYjS8Wr6ssmZjGjn2dJeBpToBHRM9Ak7UTUKHkiP+Fse+TWaS4ZCDmgOI2vN7EpMeOD8+r+NwjQ==	2025-12-22 11:36:56.599371+03	2025-12-15 13:17:47.43392+03	\N	2025-12-15 11:36:56.599728+03	\N	System	\N
594e92df-3436-4452-a712-a6905e68baac	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	FkbCT1xBi2ijmVkfKmzl1ZWAo7vBonKiOD5IEN30MEHBnDTTVxqh9/OkCVUc2lwudXoUraeD6yDPkmNzKXwlog==	2025-12-22 12:35:40.942431+03	2025-12-15 13:20:39.565526+03	\N	2025-12-15 12:35:40.990655+03	\N	System	\N
023db37b-b15f-405f-88ad-7f745e6461f8	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	K8dcr2eYMpS5A17KbwJY7iq1xXhyOEdKMJgzzc2mM/ZvswV1X8O9PXF5EFkmrAoi9yI67KALiuBBKm+5qAlJhg==	2025-12-22 12:36:24.395114+03	2025-12-15 13:33:18.524971+03	\N	2025-12-15 12:36:24.395324+03	\N	System	\N
46a5c4e2-a7fc-4079-9c41-0362e139dd17	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	pJzGatoBtnVQHSVM5u8ZsO2UluakTvA6O1sgpTtu6WlIboojnVt0+M3cq11aS/XUr2CLWJNuUr9Hw+KWKEcG8g==	2025-12-22 12:36:45.993363+03	2025-12-15 14:53:12.524441+03	\N	2025-12-15 12:36:45.993558+03	\N	System	\N
88f832f1-df1e-462f-ac03-f5f528224d94	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	+yQklm0f9QT/yghmo6G4gU11cOOfMDV/N4nZZxzbc2hXCY1yc58lV/nRVgB4seC0D5h9Oo4SZIB5D50Grha6hQ==	2025-12-22 13:17:47.440825+03	2025-12-15 15:38:05.425852+03	\N	2025-12-15 13:17:47.443146+03	\N	System	\N
ea44c513-b206-4c15-a57a-e57ee65fbb42	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	owmioy1ysFXO6VsHVKQ0p7l3Hg6uF3JezlrQWR3+RKdMuInjq4z+AGsfZbHbi/ke7UuT4lxrjIDWRO/FxC/4hA==	2025-12-22 13:20:39.570439+03	2025-12-15 15:38:23.581882+03	\N	2025-12-15 13:20:39.570712+03	\N	System	\N
b21a8fa9-68b3-4609-b003-52cfe2929a4c	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	X6/YuRHQQ0skiPMwCsfNy1E6mbQdh7+vgHSciCNLNfh9NPg5/8Nvh6OSWMfo4Md48/eMimexjxJYJ4krita2Qg==	2025-12-22 13:33:18.602661+03	2025-12-15 15:58:26.067078+03	\N	2025-12-15 13:33:18.642146+03	\N	System	\N
e70534db-e6be-4b39-ab33-3e6cfb04c44e	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	r9zOUMiDpdmDNN9U0yUiDoo5oLU0ONbXzmPgYeF7cq7Y1GyMmuvXg4GgVBYoaXPJVzf3Z6wm7rgNlK314nITZw==	2025-12-22 14:53:12.534611+03	2025-12-15 16:08:05.292745+03	\N	2025-12-15 14:53:12.536791+03	\N	System	\N
12bb63cc-edec-4ccc-897b-f2ccbad618f3	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	rwJSsLr65oXzjQubFb1YeBsPDC89BsDJ5kKYr2a1Sq85+zzWGHJrTaG4cM1xrazvsudQALCd1ENme+vsihFqlg==	2025-12-22 15:38:05.435519+03	2025-12-15 16:13:54.935556+03	\N	2025-12-15 15:38:05.437999+03	\N	System	\N
9f4b91d2-5e6e-4d6a-82b1-447041276923	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	3hcslOByjPGEK3yXnrjxUnR85roZgJ4XT7F0XHrNrzCBiJVW4TGQplw3Y4jnz8P9NqkIPJIfgbYvsDMzP0NuJw==	2025-12-22 15:38:23.584814+03	2025-12-15 16:29:06.040335+03	\N	2025-12-15 15:38:23.584978+03	\N	System	\N
ed61ceff-3085-45ac-bbbe-20cd0dce808f	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	u5efd5nMFWIwVSPoZh6hRJKQBh66ywZH2xZyNSJYeaKUJZzBGzUmVCWheS1rcauPzFOrIHR8ePszaEb204JPDA==	2025-12-22 15:58:26.070724+03	2025-12-16 08:52:46.239839+03	\N	2025-12-15 15:58:26.070929+03	\N	System	\N
ee0c0f13-34a0-4028-9801-31b7e91e728b	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	NtTZFBhOPsj+/lORAZp64SwhZPg2CypBN05GCGsQAd2Rw2ABo1A0xs/V6TvhsQQco7hlPaRgXiMhD2M0HofuUA==	2025-12-22 16:08:05.296676+03	2025-12-16 09:08:36.710491+03	\N	2025-12-15 16:08:05.296919+03	\N	System	\N
fe2a5e63-248c-4e41-b8fe-0a5616d3097e	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	I3hj/qs6xZLSPDX4zKzUfS2QLVu88Oe8hAsbxLw0RK8RMykWdCom0LQ2oCOtj0S0IoupQoK+mws+HeVSdlbovw==	2025-12-22 16:29:06.044754+03	2025-12-16 10:06:48.268806+03	\N	2025-12-15 16:29:06.045009+03	\N	System	\N
05abf368-4f48-4ff7-8718-3f2f8af87c2f	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	dxsBzXJGSmrKtkvZ2SIwL7KBBSR8ZCDosoWDNCiLbscCSpGa/suUwS4oA4Se7FrTQXZgZzIm7dAr9GKwR3v2eA==	2025-12-23 08:52:46.245059+03	2025-12-17 16:52:01.157197+03	\N	2025-12-16 08:52:46.245389+03	\N	System	\N
a441f7e2-54cd-4322-b961-2a1cd8daf492	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	KEyiCPcb/WdRPCztXQ95rbQ29oq3KE/HWSzORkv+TTw+sj8XlpVtC5U357hSqfzRw4OCHaBXunaZBSfdWZVc2g==	2025-12-22 16:13:54.938932+03	2025-12-16 09:51:41.410022+03	\N	2025-12-15 16:13:54.939126+03	\N	System	\N
eabc394e-c993-4881-bd1d-5185419e7611	a9d084a1-8905-4808-89a5-9e6d7a4abb0f	vN68FSjnAM1oL2F2uK6JjxsG0KNKO3DOVzx24VfVL9NNCZRPV0XeUtphbuR2InyqNvo01KmK6CyZGz9CZab32g==	2025-12-23 10:13:38.728345+03	\N	\N	2025-12-16 10:13:38.728636+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
258c9a10-1f16-4dc9-b9f8-ae7f96b630b9	a9d084a1-8905-4808-89a5-9e6d7a4abb0f	KrXjMZ6isNKgTQEYE5ktjRlKTlSLJGKM+BtlprVw6l541MDEx+K6yoHGTmxd8E54qyDFDx4ELxb2YGwJ4mu/YA==	2025-12-23 10:13:55.193833+03	\N	\N	2025-12-16 10:13:55.19402+03	\N	System	\N
fed18dbe-d6d3-44d3-af9a-85d812c19644	a9d084a1-8905-4808-89a5-9e6d7a4abb0f	CBH0uQ/hpgCIkjBLxDNyHPPcuPwqForcDu8OeYeGyNYQ5ULDryuDW0AqyGk5UC93RoNtO/ys6AOeDgabK/PXBQ==	2025-12-23 10:29:21.084664+03	\N	\N	2025-12-16 10:29:21.084894+03	\N	System	\N
bb66f88a-ad84-410c-b010-ad060a167a13	f4c2592b-bac7-4b20-bcf5-840d84d5f22c	Gvwgbm4VS7aK3eyiXjJWKaACVKewdjxKU1T6N4PQ/r1l2dPSSlZvKe3m5hILY+EsFcIVwIrLmqy1YNFAYMboOQ==	2025-12-23 20:30:02.31575+03	\N	\N	2025-12-16 20:30:02.316125+03	\N	System	\N
25f1e748-1836-4050-a19d-185ab9419cc9	f4c2592b-bac7-4b20-bcf5-840d84d5f22c	4NJ15HeiNzbUUHZKi7BjWy3mzc3OjfoifhqIP8zc5fsJIBRwB5M9pK7TB+rh3CwaJBRBngR3EBWIZUrI6PzGSw==	2025-12-23 20:30:12.134154+03	\N	\N	2025-12-16 20:30:12.134393+03	\N	System	\N
164f6afb-0cd0-4973-96a4-db52463394bf	f4c2592b-bac7-4b20-bcf5-840d84d5f22c	Pl1e0o7GuB6dUAku6y8Yyh07yUifpuvU3SPM8KvD9Uezp2fUpiO33fXko/FaZe0sQU0JPcTjwVJJEYMoitfeGQ==	2025-12-23 20:30:17.946964+03	\N	\N	2025-12-16 20:30:17.947145+03	\N	System	\N
958fe1d0-91a5-44fd-8182-7aa1f75d7102	a9d084a1-8905-4808-89a5-9e6d7a4abb0f	FtVfxd/YRoyFt+MtPUODdVqd+umrRFt9SWJfXA8HEKa7MKT+co3jMxcgX2SOjj7Y0CCmIqeEL86+P7HtUm+K5A==	2025-12-24 16:36:34.675676+03	\N	\N	2025-12-17 16:36:34.681625+03	\N	System	\N
b15ca286-bd3c-4077-9651-2491c6d5f30f	e8a604a1-10a0-4ba6-a0f3-17eaacddce0c	+xT7bhrqx1SdOTMt85qiFb+boTJ4Xr3+OvdaCDROu9xDrnC92scff858ggR3Q8nu7RYywNMV7fXNe5c33EFwrw==	2025-12-24 17:01:26.737349+03	\N	\N	2025-12-17 17:01:26.737612+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
ca13c41c-95b7-4491-a9c0-856d7e1f9194	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	0Mg4Umc/ri/k0G/y4noYQcF1f+2jrWItNshEyAznRC+2uPjI6vY7g0gLgI8yI8pAGS3/hRallrYfYjtRK/7ndw==	2025-12-23 09:08:36.715184+03	2025-12-17 17:02:15.681649+03	\N	2025-12-16 09:08:36.715644+03	\N	System	\N
1accf9a7-1af5-4511-8d8c-4f0cf17ee015	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	7/jxHktbJXhKNkhafcXIEh6yUsd4Eu5pL8+1VDhGEoNZ8ct9iw015yz9AuDgd6fBPEKO8DNOzDFC7YLGxqu0JQ==	2025-12-23 09:51:41.414813+03	2025-12-17 17:06:03.020829+03	\N	2025-12-16 09:51:41.419772+03	\N	System	\N
e1b8624f-4a75-4b65-a467-33347be011cb	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	xm4lGFrwpxh9u0eoe6TGapnc/cKVJWJKa+re6LW/MmE+wi0SzY8irdYRVOUKNXSPnI6QKbrJmvYorqV9V4RVEw==	2025-12-23 10:06:48.272173+03	2025-12-17 17:24:57.645647+03	\N	2025-12-16 10:06:48.27235+03	\N	System	\N
f8b563eb-d522-49f7-aede-9725711d922d	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	BsZ/bKzDLxvvkLKHCzEg4MNHSe1673ZF2LvdsHw+Kh4miIYZCS1JSqOsL7EipSci3i2IgGa/bGCWrPVVD2wLvw==	2025-12-24 16:52:01.164672+03	2025-12-17 17:25:59.386813+03	\N	2025-12-17 16:52:01.165163+03	\N	System	\N
27a58587-578b-4e7c-849d-13377fe73a36	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	rmUUqjcEHMYXpUUucuMCKKHSGF9+CxbE01cmrhpPvawpBSitTfIQMA+4dcIUrWtwsNF2d30UAOcrdDLH7PN78g==	2025-12-24 17:02:15.691797+03	2025-12-17 17:49:01.01461+03	\N	2025-12-17 17:02:15.691991+03	\N	System	\N
0fb00bed-1e8f-4d0c-86e0-0b0a46252c55	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	Q20e8RapwBWrYPBUyTTn9X4O6kXqtOfkd4NAx38OuZsK0Mh9J/665VC0asGcq8F0CxdCm8KXmqMG8jkImeicsg==	2025-12-24 17:06:03.028822+03	2025-12-17 17:51:16.441491+03	\N	2025-12-17 17:06:03.029208+03	\N	System	\N
83f3653f-9f71-4ef4-8eed-24540e10e04a	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	3pJPHh49kjavyp2LUC5rbuqLUYiQ2gUKUytoKewjdVUjo3lEVO/6R53GRdjBkCyEe39HlhDXU/vKn6cWCwyAbA==	2025-12-24 17:24:57.650995+03	2025-12-17 18:09:41.303412+03	\N	2025-12-17 17:24:57.651269+03	\N	System	\N
8ed2ba95-d013-4e4e-9647-7d98ddc8dabe	056c6c95-98c5-41e8-87d8-4fc7079fefec	TEym+1zHTysn+OdsCwmfgVJZMveEHGZ1c7LFZUEBNvGD3o4aJ1dLuVLujE3Ny/zOwsxNLMFJaM/8IDY1OH7r3Q==	2025-12-24 18:17:42.890258+03	\N	\N	2025-12-17 18:17:42.892511+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
9d45a26f-024c-4ebf-9ead-0d21ea567c8a	a1ff5501-d315-4b38-a8a4-27b3eed3c4fd	moxe1pwZVrMCxpPotjnuNomoaf+CAHBnF1lerS5MBv2HsebACQGqFZtJ4VFP/nswyyxjP5KR+QM4bVC5ARVzBg==	2025-12-24 18:21:24.228481+03	\N	\N	2025-12-17 18:21:24.22866+03	\N	System	\N
c71bc01b-0583-4b42-8e8c-af42e96c6201	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	lP8cM8dfkh0yN17yv9yrYTQzlccYChqkwvczL0HUTIDx10OKEGqzvkqrMUoZ+7+RtS8DKqBlPzxnzYnZPMXr3g==	2025-12-24 17:25:59.390668+03	2025-12-17 18:21:32.248289+03	\N	2025-12-17 17:25:59.390848+03	\N	System	\N
dc7504ab-3496-4246-b068-9714cd23bcff	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	8iT5Zf/ypXjtfi6aKz4KNc+xPJzXbm24q4F2pF1O5wFKxgP72JAErKeaWcrsyxWnJ2tmgOHlUsknYhP+IbUCCg==	2025-12-24 17:49:01.01917+03	2025-12-17 18:22:01.001599+03	\N	2025-12-17 17:49:01.019552+03	\N	System	\N
4d827546-bb53-4f48-9f14-990f99e9bf1b	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	BaFCIaqLwbPTzWc45SXpOI30xDu4XXPbUvosKsxguR8fIrCiff9qbscai3PRu4PltVFywa8Ek5qTAqausvzPwg==	2025-12-24 17:51:16.44742+03	2025-12-17 18:22:16.193128+03	\N	2025-12-17 17:51:16.447703+03	\N	System	\N
b49ccd84-b728-4973-91c9-34d3896ff045	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	DvNXEU9HWDjxQwuJ5z6ltJsxERe2FcMDxjG0b36gQQmALPb0bLgaTBLBcMEEGwGrM/1MHC2nbYcrQe+1c1eH7w==	2025-12-24 18:09:41.313956+03	2025-12-17 18:24:37.447971+03	\N	2025-12-17 18:09:41.316495+03	\N	System	\N
e2431b17-2a5e-42bc-bf7f-1613a28615e3	bd462227-6b1c-4cd3-baa8-421cf3385fe0	CcD9q02WgYFyOsI+aKQJsKak3wPldx6BLloB35AU8Ylf0ifTScQ/rBZnM6l5GotU6ecZD2d8/BoIjyB7CP6Brw==	2025-12-24 18:20:19.374388+03	2025-12-17 18:30:29.442655+03	\N	2025-12-17 18:20:19.37466+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
09c1f5b7-834b-47c3-899c-7bbf5e91e5f3	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	PiNFw1PfNpy4LLa4Hhgn6wEA1XO0J2ROEJ7u4CNxAQ3Frsh28OHFkBrltGxvMsQNS3cI+lKCzDvOGoM2k/1Deg==	2025-12-24 18:21:32.25151+03	2025-12-17 18:36:57.681856+03	\N	2025-12-17 18:21:32.25167+03	\N	System	\N
d19f6d2d-5916-419f-98a7-da844e428fc0	27c827f8-4681-4f26-b393-53c51c09fe4e	IyJ5ROwmzC2bk0oA24lmCkl0JTkMoRe785CtOXpzdA/T3LFKiVUA8o3ihmz19fTHIRtwyDJYvGiygx36jiRmmQ==	2025-12-24 18:23:03.766034+03	2025-12-17 18:37:22.322954+03	\N	2025-12-17 18:23:03.766267+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
e250afd9-2c57-46c9-8b5f-0d2609c4febe	bd462227-6b1c-4cd3-baa8-421cf3385fe0	zAuee7SxEJbDu3RAaDwrXSKUrnFCFAJO4KPO0cf1uFlUdp0S+s9vbYeC3fk6WKyfQ3OdMkh1vK1tkDFLOMYdxQ==	2025-12-24 18:20:34.214589+03	2025-12-17 18:38:56.079586+03	\N	2025-12-17 18:20:34.214746+03	\N	System	\N
b1689c39-d977-45f3-aef8-86a8f5ff87c5	27c827f8-4681-4f26-b393-53c51c09fe4e	6kcT2TAG1Z8UI0GphxtlS89+hCTARY5D+cnIn8CN4thAa1yyyXrxWO9VujmkAV7lVM4Q6f8WRSYXktw11OeOxA==	2025-12-24 18:23:11.343848+03	2025-12-17 18:39:04.235732+03	\N	2025-12-17 18:23:11.344092+03	\N	System	\N
d7d0363a-504f-4aec-89cf-8c5f5f3804b8	27c827f8-4681-4f26-b393-53c51c09fe4e	BtgZ8y+YYF+ask4HYAnKUJOkV1SRcgLZxc6Mo1aNlIxmg7Q3ESfpsL51UWZOKQvs9s+lwdAE9khwc791YKAt0g==	2025-12-24 18:23:42.686641+03	2025-12-17 18:40:27.711225+03	\N	2025-12-17 18:23:42.686816+03	\N	System	\N
839927ae-ac73-48e3-b784-278479522210	27c827f8-4681-4f26-b393-53c51c09fe4e	xTcJ3wAL+hGLECgPv1dS4EePc0kcS9r+hiz701fuGGsFeG07hFOiGXcYev1wel9eBt6dFfEqTH7Ows6dA6ICNQ==	2025-12-24 18:25:19.417631+03	2025-12-17 18:41:05.244501+03	\N	2025-12-17 18:25:19.417901+03	\N	System	\N
4ae7af89-619a-48e7-97a4-3cb5e9e6b26c	27c827f8-4681-4f26-b393-53c51c09fe4e	2ms1iT4zWWovDq02Si3/hqXtFJLHhcKo6pxkFIjaPJn32EsYtEVpQdrfjz9xweUAFWZobS/g/nvMMDiRh6Z0CQ==	2025-12-24 18:37:22.326911+03	2025-12-17 18:42:14.173407+03	\N	2025-12-17 18:37:22.327073+03	\N	System	\N
256ff67c-b659-4f54-9fca-601ff38b2630	bd462227-6b1c-4cd3-baa8-421cf3385fe0	HuL9bvc2UwZ+uq4xsD0V4UhQykvzkEm+JAxjgUsRRMH+IMLk1Kwz/jDHZ9o0bfVIPfVdhPfqXDe9v0bxy8DR7A==	2025-12-24 18:21:53.32396+03	2025-12-17 18:42:23.149253+03	\N	2025-12-17 18:21:53.324179+03	\N	System	\N
6098fca1-be58-4de5-8630-e917a3554757	27c827f8-4681-4f26-b393-53c51c09fe4e	us627EgdzjWIf3fccrGqvL+csUcjnP0SiGuxo0MdGt2Yn0qmV9zPfTivdXOd3vpeKR9iyonMdRWnyCYWW5pJrA==	2025-12-24 18:39:04.241852+03	2025-12-17 18:42:29.716514+03	\N	2025-12-17 18:39:04.242063+03	\N	System	\N
382c0faf-58fb-4383-83d3-e383cb78358d	27c827f8-4681-4f26-b393-53c51c09fe4e	X8nNq9NUwzdg+4hIiL/VBrCyoD7I0qXJ/eyqZJEX6TQurwBdBWgx7TaMYkThAr0TyetNfuLZxhI/yTpFiifKqQ==	2025-12-24 18:40:27.719827+03	2025-12-17 18:43:31.71628+03	\N	2025-12-17 18:40:27.720052+03	\N	System	\N
ac115594-0b31-4c93-9752-f979ddabb54f	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	Vv3nxrENPlTJ9IOa9ds8jMWLx03cLQgLEjjrYtEQZUWI4Rhzo2dVZWH1+rG2H0JBmL/PnXngeIa5I7X8NcH0OQ==	2025-12-24 18:22:16.196569+03	2025-12-18 09:59:14.205725+03	\N	2025-12-17 18:22:16.196788+03	\N	System	\N
c9d3d9bd-1122-49e7-b5a8-5a1103cd0528	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	MS1BItTEXm/3lcFMIU7pLq93oMjkQfIIytpr4I0mkWs+iwY0NFs2WermJb8KBcdk54KIRmuWqLkVFXaI1IEs3A==	2025-12-24 18:24:37.451449+03	2025-12-18 10:46:22.531705+03	\N	2025-12-17 18:24:37.451631+03	\N	System	\N
6f07c6c0-17f9-4efe-9cec-cff5218d9db8	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	4jVvFVHdOQ84tjoPInWvEJnjYcJyAkKuB3P9oU/0N/o/hP1FDhiuJvnexpI8N5YybQk2LA7w+V5Mwxn4TE0xTg==	2025-12-24 18:36:57.687413+03	2025-12-18 11:46:33.478723+03	\N	2025-12-17 18:36:57.68765+03	\N	System	\N
5ffd511a-f43e-41cc-8b47-a5576e78289a	bd462227-6b1c-4cd3-baa8-421cf3385fe0	orru8Ybq7Ey+yun73ikN7UY4KWG+o8m9NPFbzKE0OsKLJRJNAx4dGPjx0j2jazUaZo00tgrRcPT93SGq1FtBaQ==	2025-12-24 18:22:07.038694+03	2025-12-19 10:44:07.502037+03	\N	2025-12-17 18:22:07.038859+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N
1a9bc543-b4c1-4536-98e2-d266c21a1346	bd462227-6b1c-4cd3-baa8-421cf3385fe0	5Oqrw3fQdquvdSVwcEhazwKHOrx1JjRTfE+Dz8JJzM930Pt9Exy1FDQrVsTm0tuQ3ocfOxALMXv22PRNnSU3kA==	2025-12-24 18:30:29.448249+03	2025-12-19 12:25:21.445963+03	\N	2025-12-17 18:30:29.450799+03	\N	System	\N
6e343174-11fd-4193-91d5-f9aebcee6f47	bd462227-6b1c-4cd3-baa8-421cf3385fe0	UxE2QKeCre2g7gqlQypPG2TNWfBVGjjjY/g9ZthZrMuABW2izT4BTsadvzvFcZq7wmq7F9Y1ymfTdbM1YW9qdQ==	2025-12-24 18:38:56.089688+03	2025-12-19 12:43:52.314494+03	\N	2025-12-17 18:38:56.089966+03	\N	System	\N
ac694880-b9ab-4b69-b598-f39c5c42bdab	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	4C15JzVKHgU+uwBDkIC6lAssMFt79ZVUF5f0eolYYavVDwtPBqRuIs+67t8Lj4mFvLVxwO3g3APPM7IKoUWHXQ==	2025-12-24 18:22:01.005458+03	2025-12-17 18:45:37.6557+03	\N	2025-12-17 18:22:01.005753+03	\N	System	\N
e71b2db7-bd2b-4dc0-b93e-609417414f6c	27c827f8-4681-4f26-b393-53c51c09fe4e	s75efAA8JGOpVhs+SddovD6/rSVHj0w0hb9qla8BE/1+vvq9LuwUWo6ttOxdrZAftd9W2f9Ns5JeY1GkePPOwQ==	2025-12-24 18:41:05.249761+03	2025-12-18 11:57:16.04595+03	\N	2025-12-17 18:41:05.249971+03	\N	System	\N
3ac26d87-69f2-4b73-a787-a2bb13156653	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	vrRZQ1TJFP6y1F/RMAI5eqQgLCrJuUmyTuvZVDUHtElZLJAP5EHqN11yZMs+exuYtYZ81t+3/ZGkXywY9NSGog==	2025-12-24 18:45:37.661409+03	2025-12-18 12:14:43.568097+03	\N	2025-12-17 18:45:37.661618+03	\N	System	\N
e14448f1-c614-4533-9cca-e3c9fb78ac83	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	O4h8ZP+RcPFwr6UKBCDAYpmyyn+usBVpViOPE2s+0moBgVQ+NOXDeRThOWAQPXYbnx3kIuqUDRuiPHzPIF0VDg==	2025-12-25 09:59:14.21226+03	2025-12-18 12:30:12.522619+03	\N	2025-12-18 09:59:14.212828+03	\N	System	\N
4ea6c907-50e8-4e2e-8ea4-5ce7800a2bad	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	LaH63g6xiayDpY4tFeVlHgWime8u+pK4gWUFJlKoL2sWltideOJa50Z9tmM5Aaz/XVNErtcHzXw13J6HyN1WHg==	2025-12-25 10:46:22.536558+03	2025-12-18 12:45:05.891683+03	\N	2025-12-18 10:46:22.536873+03	\N	System	\N
d1c72b65-cc2b-4c76-bd0b-3100d338bd35	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	MxLiyfqW+G+cTs8rdNpoibiJIztIYuD7EuAdTlkdYaiAjAFqF14MgvY8E/Jj+pfVp5basdd76Ib0tPoIoc/u3A==	2025-12-25 11:46:33.483044+03	2025-12-18 13:02:07.562178+03	\N	2025-12-18 11:46:33.483288+03	\N	System	\N
b0324aee-a5e5-4f0e-af22-06b198b7b081	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	3RvPRRKqhNkmLpzV6HOEvJBkmGyojZmqUKyIyf6lKUpexU14n1W+xOKHhSAGNPnwOSZAmhNodPNdVolC38ezrw==	2025-12-25 12:14:43.5941+03	2025-12-19 10:19:53.707431+03	\N	2025-12-18 12:14:43.603217+03	\N	System	\N
3d36fae7-aa06-41c0-9e56-1d9a57fefd4e	27c827f8-4681-4f26-b393-53c51c09fe4e	5MpAnZZna1s2PwS9XMOdBOgn3G0P//yiedFQKmemAEx1uqsWCIiTnVvvyqCpiC61v9F87Af0+aq5tmIF9YuEDA==	2025-12-24 18:42:14.178923+03	2025-12-19 12:26:01.539525+03	\N	2025-12-17 18:42:14.17917+03	\N	System	\N
0bdb857f-2be3-45e6-879d-8cdffd9a43a4	27c827f8-4681-4f26-b393-53c51c09fe4e	sFoyYDuFcByc6/BwgxT4KqeJqJO6L0izpPvkwQv3jPYBGwEfrGj3Lq98kZBiI+xs0se2EjkUpbfOeG96KJLGVg==	2025-12-24 18:42:29.72031+03	2025-12-19 12:26:21.744067+03	\N	2025-12-17 18:42:29.720624+03	\N	System	\N
7125cb9c-6365-4ede-9fa0-ae82879b8592	27c827f8-4681-4f26-b393-53c51c09fe4e	Vgv1PUBshPlFfrvG2e+w34iZa6N8P5DxgDbE1EakWiJTwnI8X3pfy5iW6355sPU0RWpHY7lxFg6PtiQYYDzIdg==	2025-12-26 12:26:21.750001+03	\N	\N	2025-12-19 12:26:21.750259+03	\N	System	\N
ee7492dd-8b32-48c4-896c-1eb8c4a3fc6f	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	fwZ/0co92npMtAyFEuAfpsvlUfjvHSZ87Pq7vmVHLwZfr6+Lb18Z4BzCXVAOoerWy902r10OhTbVgbUUN1ymug==	2025-12-25 12:30:12.52814+03	2025-12-19 12:27:35.638385+03	\N	2025-12-18 12:30:12.52865+03	\N	System	\N
a121f32c-115b-44a3-b6ed-cf8194accc0a	27c827f8-4681-4f26-b393-53c51c09fe4e	+H8K60SO1rmNGXusGGpUJYBMRuz9ufRPuI8KOqT1NIpjfa3BlLcdqGiQrtVKgLqlaqrCaOTVme7OuIlTYOj/Ww==	2025-12-24 18:43:31.72218+03	2025-12-19 12:27:41.869334+03	\N	2025-12-17 18:43:31.722502+03	\N	System	\N
89f1c4d8-b35a-4600-b0ea-3729b7c2fc2f	27c827f8-4681-4f26-b393-53c51c09fe4e	LI3IBVpM4j1jd7p/xiMH86MrnC4q8QAYNvXevO3h45vmO9uvJKZ3nxYEGwwMabFYoNaoxthuyOcuN7o21gcsOA==	2025-12-26 12:27:41.874241+03	\N	\N	2025-12-19 12:27:41.87444+03	\N	System	\N
65bf8f6d-812b-472a-a470-6efd2d793ad9	27c827f8-4681-4f26-b393-53c51c09fe4e	aM+8qXQBzZedTKudwLI7mZr83rfQyIzwBquCeVJ4Vb2mqO255mC5OHP3diZsAyeIFp3TLaXRyuQHgbBpYf/r2w==	2025-12-25 11:57:16.051477+03	2025-12-19 12:31:58.952948+03	\N	2025-12-18 11:57:16.051859+03	\N	System	\N
8a492c91-895d-401c-8473-3ee378b313d7	27c827f8-4681-4f26-b393-53c51c09fe4e	9EzYBzQScVKpA0S4l29S06SmsMszTOBOHpdDCG/hyrxbzME6frHVt59g/HQngtzgWbeKHbRCavtAdTTCpMU+Bw==	2025-12-26 12:31:58.961517+03	\N	\N	2025-12-19 12:31:58.961833+03	\N	System	\N
11bc35a3-2fd9-4483-bcc9-1027c847f142	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	vU3n7ok87dldhIwFAoASan1Nlz0QLCs47WQsrTG5S8i8JhNATnEkz49FVz8RMTmqOctZaWqre0/GYeUwPA1lRA==	2025-12-25 12:45:05.898941+03	2025-12-19 12:46:25.460228+03	\N	2025-12-18 12:45:05.899229+03	\N	System	\N
95c1e942-4bb4-4b5c-bfa2-a79b3dab682b	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	6qgRjc6J5syK4d9QkvvVqoXr8LR8Np6UeH0n/tQijIkweQiz2fK1CxlZndG/TbKR/YMLYU51XSDmMsVy5AGx+A==	2025-12-25 13:02:07.566737+03	2025-12-19 12:46:56.884842+03	\N	2025-12-18 13:02:07.567017+03	\N	System	\N
ab4a5ad2-17a9-43c7-9667-13fa19f92f50	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	BNCd1/HzzLRDgnH38SRxAUEZIG+uZZpOrL4uCkWupsLHzZ+MNOyxeD+eUGCvenuVvDvU1Dovfrm4HZr+PFHBkg==	2025-12-26 12:46:56.888508+03	\N	\N	2025-12-19 12:46:56.888687+03	\N	System	\N
a7d85535-0715-4de6-bfa2-cffc215a02c4	bd462227-6b1c-4cd3-baa8-421cf3385fe0	Ueel3yVriopb1dxaWh9tcQ5pi1D3kTBdUeCs/qvSWJSqAyJ9DMkXqS5OFEFBwo5gi8Hc6GkjbGxnvtnHIeA4oQ==	2025-12-24 18:42:23.152792+03	2025-12-19 12:50:15.400111+03	\N	2025-12-17 18:42:23.152961+03	\N	27c827f8-4681-4f26-b393-53c51c09fe4e	\N
e92a68f2-5317-47dd-af40-08b3016bf09f	bd462227-6b1c-4cd3-baa8-421cf3385fe0	K/0mI/PWWnw1upjgEEAs5jx2s4D2Y3FFEQRmT2yNQqWxdVnuqxc8Cz1Vl1Bkm43itwQ6Fdpp+DwTHJz7zXHatw==	2025-12-26 10:44:07.50864+03	2025-12-19 12:52:05.397706+03	\N	2025-12-19 10:44:07.509155+03	\N	System	\N
2a664efd-6bd9-4146-84d1-c10020cd5de4	bd462227-6b1c-4cd3-baa8-421cf3385fe0	p326vL8wZemc7J4ck2gJEBcdiHG3nCrzct5ATcRpuqLsfBouj3D2CfFYQiVbHDTJ5ylyPr8OxDInQhjkrJBtSQ==	2025-12-26 12:52:05.423724+03	\N	\N	2025-12-19 12:52:05.423944+03	\N	System	\N
37d21764-469f-47c1-bdd1-aebf2484cb8a	bd462227-6b1c-4cd3-baa8-421cf3385fe0	Ruui+MgdNA21NtOy3ezGr5F+gztAlKgrpAcWe04VOIRw3bH32nci5x86Y5s5lvTh7Q+CfO7ImY9VmyWezR+4iQ==	2025-12-26 12:25:21.480603+03	2025-12-19 12:55:12.389451+03	\N	2025-12-19 12:25:21.492646+03	\N	System	\N
1e09766e-a34b-4d28-aec8-6e7b116970fa	bd462227-6b1c-4cd3-baa8-421cf3385fe0	ojvFHJr0f55ltrG8TrBfnJ8VBRcBmvTIbbbgdFDdSQAfmOovzRiiRM54webSf6ls1lsKtXRYVREqIlwICud4Rg==	2025-12-26 12:55:12.393679+03	\N	\N	2025-12-19 12:55:12.393905+03	\N	System	\N
b106f658-280b-44c1-a85b-eaf6b99ebe1b	bd462227-6b1c-4cd3-baa8-421cf3385fe0	cLvCJNJW8bvfTxQiwhaH4GnOSpiXgGAGymcoEC+KDGCBwmvIWs9YQpmr8jdadKua7oJLAk8+JR+XlrPSWqv9eg==	2025-12-26 12:43:52.331964+03	2025-12-19 13:38:50.632849+03	\N	2025-12-19 12:43:52.332212+03	\N	System	\N
b0edb545-c963-4546-acae-5c0c3b70fe43	bd462227-6b1c-4cd3-baa8-421cf3385fe0	vnov5eHQtqPKVKd+EN4sVfIUV4O+6Mhmci7YUOV/iIy8ksQG77zJewXVpm8vQdYkYqPvatCAUBqgftQi1tyLRg==	2025-12-26 13:38:50.64674+03	\N	\N	2025-12-19 13:38:50.652951+03	\N	System	\N
1d5a2eb1-8153-4fd7-bfed-462eaf931289	bd462227-6b1c-4cd3-baa8-421cf3385fe0	93js0p4DfKJ3PjGBvfs58noosV4oLzMridL9AgWabpFIdKkVzySeMyPytr1pyDe96R/unSzKtG/JSm9l40h+BA==	2025-12-26 12:50:15.404599+03	2025-12-19 13:38:57.299442+03	\N	2025-12-19 12:50:15.404829+03	\N	System	\N
f6f54f38-dfd1-4ebb-966e-f1f803cf0024	bd462227-6b1c-4cd3-baa8-421cf3385fe0	fSCUrZEPLn14i5wWXA7Vhkpn/8tKQIc6u5IzIaO/TW7D2FQrqltocNEAvHGm0gX+dAe1oP+L8iP16+M0Ye1XvA==	2025-12-26 13:38:57.302786+03	\N	\N	2025-12-19 13:38:57.302968+03	\N	System	\N
812e6a49-c783-417b-b3b5-1344226bf9a2	27c827f8-4681-4f26-b393-53c51c09fe4e	8VCijplj2wI1tpJ7C5rUqRNCkuJw5D8FQHEIpKiLDq8UeQl8Ijl7frJkcZoUiP+XbwCmkLUAKv40WS15BcABLw==	2025-12-26 12:26:01.555926+03	2025-12-19 13:39:04.108983+03	\N	2025-12-19 12:26:01.556148+03	\N	System	\N
3f3eafcd-855a-4ea9-bda0-2c6d58d81f60	27c827f8-4681-4f26-b393-53c51c09fe4e	CaP++aAt0MSp3S2YuJnYPHZcWbzF3FO7UadZOIlg8ebjdLVGZq0+SIUiKbPi80HnNQ+exUMBfp90DGuhJlcCng==	2025-12-26 13:39:04.120151+03	\N	\N	2025-12-19 13:39:04.12037+03	\N	bd462227-6b1c-4cd3-baa8-421cf3385fe0	\N
1e70bd72-6bda-4454-bd15-916143cdfc11	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	f65hxG5NAitMxfC+LXMdVpM9FiCd2jFJRcRsOiHkLpca2qYLFeMqJOwA1TPrLkUwiMhni8V36BudCXJjkmMnIg==	2025-12-26 10:19:53.723828+03	2025-12-19 13:39:11.994953+03	\N	2025-12-19 10:19:53.737899+03	\N	System	\N
dc631829-dd7b-4487-8fda-4027be4f9a30	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	k4Q4Ifi+DOXOWQxHIqngkR/6dA3QZDcu832WZxZ7fUSmwx4+uFF4+maOD6lUcF5hH2ePl2PKjNCi3oBo6ghEcg==	2025-12-26 13:39:11.998761+03	\N	\N	2025-12-19 13:39:11.998964+03	\N	System	\N
d22b7ebc-4c0f-4d25-bc5c-21f983e6247d	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	4qvZGVsSsqJ42KuQhq7kIdN4G6nhLFn9+hgzfWB+gGI4DCTMLo4pYCafrvJsG73zvXcZfNDQPlexJTbKZ3LWwQ==	2025-12-26 12:27:35.64162+03	2025-12-22 09:22:45.82842+03	\N	2025-12-19 12:27:35.641835+03	\N	System	\N
7f85a048-dc01-4c49-a862-7ce5941b7fa0	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	zbCoJOxgxrOhCZY0falJ6vgLZfbWuvHT/mwFw5AQFsznZKzPbpDJhAoNBheZCApjexOAMujDD7hw8xuoEk2Wjg==	2025-12-29 09:22:45.835387+03	\N	\N	2025-12-22 09:22:45.835675+03	\N	System	\N
e851c62d-1f7d-42fe-b98a-0b2654d2eeb4	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	vYVaBu7RIMcjyRmRx+d984jrjJhjXwFkzUsTe8dejY97IY35JDHiJTvUc5W1GdePT0RS15oc2WW9xTxop1iBMQ==	2025-12-26 12:46:25.466047+03	2025-12-22 10:15:36.164749+03	\N	2025-12-19 12:46:25.466279+03	\N	System	\N
3b93286b-6da6-472b-a296-d2c2e96945cb	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	d++ogQQ/1h18/OGJoKz9t6Ao2JoEh/TutaXfUFOb4Yk9Rxwbzmvn0C59tBuTk2IGmgLbKy4CtqKgIe/a/s5Zfg==	2025-12-29 10:15:36.172273+03	\N	\N	2025-12-22 10:15:36.172717+03	\N	System	\N
4b6f6e82-0ae7-403d-a468-ba2444a633b4	9f7ebb62-fad5-4ebe-9bbb-2abf077c5d8c	9Z5OUr3stv1vZfFK9hD2C60Z02SsMmJKp0tpVJSdFs6cQLk848agbQRxCytYYr+uuO8BNCtFDvk/xg8g9VB2jw==	2025-12-29 10:23:51.181607+03	2025-12-22 10:42:38.668193+03	\N	2025-12-22 10:23:51.181884+03	\N	System	\N
7e59928a-f73d-42db-b45f-b02ca189708d	9f7ebb62-fad5-4ebe-9bbb-2abf077c5d8c	m+bWsSxj8m2kGGP6V/PZogxeQ2nGOB4x8qEQndpBVflyupymwslk7i3r1pvGX5wSsoRFK0E5wliS32ZffOZ7wQ==	2025-12-29 10:24:59.665517+03	2025-12-22 10:50:36.226141+03	\N	2025-12-22 10:24:59.665801+03	\N	System	\N
50366964-4d4f-45f3-8e30-7194c9e6ba81	9f7ebb62-fad5-4ebe-9bbb-2abf077c5d8c	BynKkfxfNgJYx8A0YLgOJ00oWTw+EBBaRuybRYE4xK3FU5wh42sSnaDZrPOwgZOVaA3AeJ0qKkAF/3c/mQVOFA==	2025-12-29 10:31:37.118562+03	2025-12-22 10:57:57.87166+03	\N	2025-12-22 10:31:37.118817+03	\N	System	\N
fd6c1c26-f102-4f3e-9627-d9d688f800f7	9f7ebb62-fad5-4ebe-9bbb-2abf077c5d8c	9zo50FCFK2Jx7Z+e3/04LW1HACVuvSV0vwBo5nS5oHsABOuKV+lARDlCRmSBcxnCyr5xAELH2BP7jywmPjUsjg==	2025-12-29 10:33:20.692744+03	2025-12-22 12:05:05.609162+03	\N	2025-12-22 10:33:20.692939+03	\N	System	\N
b7a2dcfa-48e4-4f8b-b563-40d0a41fc970	9f7ebb62-fad5-4ebe-9bbb-2abf077c5d8c	ZO0a1VjvXgB/BN/Ji34JlIB2+2Yp14ChCHAlmFkXnKX8NyctZNeQGCvaa5Bu4FbcUMe3roVDWreeOqF1S3wm3g==	2025-12-29 10:42:38.672128+03	2025-12-25 15:35:14.139333+03	\N	2025-12-22 10:42:38.672343+03	\N	System	\N
d7d04417-d572-4910-9f1a-3c50698474d0	9f7ebb62-fad5-4ebe-9bbb-2abf077c5d8c	+mLM0XU03xq5ordUx1sRAciizAvc6mLYX4FwXuaQKfmaJTAY2dxFunnHs5f28X2YhpESRxcnAHnkjqpktDZj/w==	2025-12-29 10:50:36.232089+03	\N	\N	2025-12-22 10:50:36.232375+03	\N	System	\N
69fee712-878a-4da0-8d3d-07637cc29eaf	9f7ebb62-fad5-4ebe-9bbb-2abf077c5d8c	hNu6o86n645mSEJlCZCNaQYvhSYxk0XVOGXQTCS8OekKqi/RY/XCRnCHSZ8mfB7gPCAuN83Uej7NrGcOs196NQ==	2025-12-29 10:57:57.87539+03	\N	\N	2025-12-22 10:57:57.875599+03	\N	System	\N
d5631c80-d663-4d4a-a333-790e79a493c9	a1ff5501-d315-4b38-a8a4-27b3eed3c4fd	gnwAh9O/v6rOua/eb6EjLktbkCIGCDQNDrO8iwsfPcked8YAA5LXK2Ti0/s/pJft6Y/wq9MloOubohKV7yfgMg==	2025-12-29 11:17:47.188178+03	\N	\N	2025-12-22 11:17:47.18859+03	\N	System	\N
753de1c7-2313-4130-a44b-5916dff92796	a1ff5501-d315-4b38-a8a4-27b3eed3c4fd	aSQ2WdEOLpb6YLfd1WKC+3X4kZVTiceGJbe2+rWaR4HFoxycncsBfMmspgP0iQMyDxrj9iiErOFihvA6EA+HxQ==	2025-12-29 11:41:12.046254+03	\N	\N	2025-12-22 11:41:12.046719+03	\N	System	\N
a1ac91ed-51e4-496f-8be9-ef7155796074	9f7ebb62-fad5-4ebe-9bbb-2abf077c5d8c	9G8bZSpaEBKBdQGctmN+S4nCdg4mD4ekHzPxfOhqP2k+2Zc4T15wfU2mSpQOS/vV8DRQNuAroPVHJRdTWxpeGA==	2025-12-29 12:05:05.616249+03	\N	\N	2025-12-22 12:05:05.616535+03	\N	System	\N
705fa852-439b-495b-83e2-2abebe63a2a6	29c5feb0-f793-4543-b50b-be2bea5bb31d	aEVvqw0Fpa7BXZB941sSbwlj/WyhavH34ERGcK7duyvgLxsj0JRWaNk9fnETaGCC/+t/2ahWpp4SxO7sJZOe5g==	2026-01-01 08:58:01.923637+03	\N	\N	2025-12-25 08:58:02.215049+03	\N	System	\N
2f4eb669-3a8e-4522-bad6-9648edbe5538	c482cdbf-d3d3-49d5-a562-48dd3f9646c1	L3XivYToEGilWswuNm9q3oZltUMOAeCGis+9ZFCgbJkZRLsPI0CNTV8X+dKBMLsw2Gq3144agAkqk0OIF1g62A==	2026-01-01 09:00:46.795023+03	\N	\N	2025-12-25 09:00:46.79592+03	\N	System	\N
996ae737-9aa2-4309-bd05-597de85989df	9f7ebb62-fad5-4ebe-9bbb-2abf077c5d8c	4BMy6cNHBzoGII5ibG449NX1zYXE35jMk2ADnsDPf9i1InPEAxYtbZKYf7qQ6YDcm7f6L4tF6q0ByJ1uqiQ/QQ==	2026-01-01 15:35:14.351922+03	\N	\N	2025-12-25 15:35:14.472892+03	\N	System	\N
b316f0bd-d6a2-41d5-a6d3-41314e8828e8	b08d2156-6c06-468a-9972-2f9a093752ac	JdERX+HgdIhf948LJWRYOqFY1+SkAILsl1bcDUEbVxi4elK9m3VC6Y5//VeIU2KVvbt91OJJL/AwhEDPp+ZxYw==	2026-01-01 17:04:42.855415+03	2025-12-26 12:42:29.996842+03	\N	2025-12-25 17:04:42.858611+03	\N	System	\N
c1db54dc-1409-42e7-aea8-e77df2d716a8	b08d2156-6c06-468a-9972-2f9a093752ac	StLh6KXtPLYFt2UA9dyz5t38NMXAghUdcOzhwhvBfm9XYtGwmO4YQmr/jQDej0XtWL1jx8XbZYdfYIuLhcpjYQ==	2026-01-01 17:04:47.15082+03	2025-12-26 13:05:59.434396+03	\N	2025-12-25 17:04:47.15131+03	\N	System	\N
2f8984cb-dffe-4c3f-8278-ac8b95316690	b08d2156-6c06-468a-9972-2f9a093752ac	TOXap8bTQt5AY5kGH3AhUhvg0AUJpeojOlZ0MB31aJRpaAzG6hDYaSESTngazrMr5jk5sPS6lCNyYGgx25PYLg==	2026-01-02 11:59:51.602946+03	2025-12-26 13:06:09.91816+03	\N	2025-12-26 11:59:51.603551+03	\N	System	\N
f609c892-be28-467c-a0e1-dab193720a84	b08d2156-6c06-468a-9972-2f9a093752ac	/+Izj/6WiBtPdirjbbb0Jmmg7WuDfaPIocVnj89CDwwwmYARxrwfsMsqDlN8nNXbXAva4X72IZOpuaCDO8svjw==	2026-01-02 12:18:15.29209+03	2025-12-26 13:06:17.136381+03	\N	2025-12-26 12:18:15.292386+03	\N	System	\N
0334ec53-941c-4b53-a4a4-b09392014444	b08d2156-6c06-468a-9972-2f9a093752ac	KRBY4KdfYj8sYcY0AH81fznKggZ5B505M0BGsNLq1vtvz8uSy9zJhGRIjZZmHXNn+rYb2bJr2iD1aRid/Ojghg==	2026-01-02 12:42:30.001776+03	2025-12-26 13:06:24.041868+03	\N	2025-12-26 12:42:30.002223+03	\N	System	\N
d6a4675b-f669-4e64-b8f0-07d462b5ce0d	b08d2156-6c06-468a-9972-2f9a093752ac	u+k1cLT5blfQa0NLjQPK/b9vAqO2QtM2yKcNB80QcywqjUslWgRs5sL/E5y4tLvQ3C1BmAHgobk9sWGA5a6WKQ==	2026-01-02 13:05:59.50542+03	2025-12-26 13:06:45.86888+03	\N	2025-12-26 13:05:59.542828+03	\N	System	\N
43f5be9c-3324-4a1c-b0da-22be3da8de12	b08d2156-6c06-468a-9972-2f9a093752ac	jUtQSv3hmsf6vI/vu6sHaqLMj/1VqTz1w/XvjqouUDty4SLm7e+cgsMHsirfkRi+CHy1W2AhBcQ8XHK77ZHdzg==	2026-01-02 13:06:09.92959+03	2025-12-26 13:07:14.344473+03	\N	2025-12-26 13:06:09.929868+03	\N	System	\N
d827c946-f99d-4ea8-b152-affc6f9920f1	b08d2156-6c06-468a-9972-2f9a093752ac	WpjhNP7TCd1V7PAx6bzrzr16y7g37idefzLeuoLFXbQ6JYo2VU5FL/M6cl0iiYT86aWA/wQRqFHOIa/bjcuS+Q==	2026-01-02 13:06:17.146839+03	2025-12-26 13:08:30.796039+03	\N	2025-12-26 13:06:17.147164+03	\N	System	\N
b9e9d174-1dfa-4b99-bc07-0a269e022e10	b08d2156-6c06-468a-9972-2f9a093752ac	4c9pASxhyn9uZQle5HA+HM8C/D36GLvxfH0pHz+OiIctFCAWZyiEmkFs0V9ZZi1tlzIh99Q5QQSct+FFfLauOw==	2026-01-02 13:06:24.058495+03	2025-12-26 13:08:39.363478+03	\N	2025-12-26 13:06:24.058887+03	\N	System	\N
a1f2814f-60c1-4d3e-9f03-9f52fabe0cb5	b08d2156-6c06-468a-9972-2f9a093752ac	wthvn91KJSLleYsoYPfIVT/PjFuHZb+IoiIcMLwMf1tqRvcj7ZyrIxy4B8Z8UvfZEl7bv0+4sYOofW3GEqAs4Q==	2026-01-02 13:06:45.876644+03	2025-12-26 13:12:31.548719+03	\N	2025-12-26 13:06:45.876926+03	\N	System	\N
407af7c8-0abd-4ba9-a014-6120a48a4822	9bc7da0f-c3e5-4bd4-84b0-6cf99fc6be04	eb3F3l/Mhg3rjGKt97HsxV+2NS+MGHfAqs4dYAxKyRDKnLS90Pi1iXBctlR4pQawCkl3DPeNGoMOs5QBam0D7w==	2026-01-02 13:18:59.344668+03	\N	\N	2025-12-26 13:18:59.356689+03	\N	System	\N
6dbaeec3-691d-47e5-9d65-dfa200fb7151	c67d074a-e0f5-4a64-b5bc-5e9c14c3fbd2	4f4FKB/1bYDolCp82vfGNMSE+V1bQm1JYupCThK0yy7LnHKQhKtvCaADbCIAEzkAFt6bhJ+2LFrEk6mJj8NPXw==	2026-01-02 13:35:42.585412+03	2025-12-26 13:35:43.367527+03	\N	2025-12-26 13:35:42.585777+03	\N	System	\N
8f5684e3-2adc-49fb-b19f-3bd9b01fcb4b	df606dc6-a1b7-4e21-8d0c-25c317fbc88d	t9la0cu21AcGkE0tvRycEh7PSJIWW2LC8GgLHgACVpSBDpFvtcDmr+n4f0Uu9SiFZIR4VWuix/BOR+RwPR+BVg==	2026-01-02 14:17:38.122394+03	2025-12-26 14:17:38.60939+03	\N	2025-12-26 14:17:38.122811+03	\N	System	\N
cb059170-d665-473c-8ca8-49938c0b352d	6133d208-a732-43a4-9cac-f8f08341c3cf	uB0uB5uCz34KdTkzdlHHq5Fm3H9UYwmGDu/47Icl1IJ21JFgKxwPN5brsnfl2k/RsM/YBM6FxQ6UlWiLNWATkg==	2026-01-02 14:19:20.557791+03	\N	\N	2025-12-26 14:19:20.558112+03	\N	System	\N
a942dc65-f991-43dd-b358-c0a0cb220c81	b08d2156-6c06-468a-9972-2f9a093752ac	H+QM7xIbnrH7fBPgHGl69aALPLInfrUYnpkuqXWf5HO3cLptuUPPuguy5KQ0XrRTlS0KHhkYtrJHUw8JsaeYfA==	2026-01-02 13:07:14.35714+03	2025-12-26 14:20:22.311909+03	\N	2025-12-26 13:07:14.357495+03	\N	System	\N
ac92c805-3f30-4723-9398-bf50e00225d7	b08d2156-6c06-468a-9972-2f9a093752ac	XElsXuXFqnPhXqppYf58HlyGTR8wpSBNR7He8u3wrRbO58E4r5Jc9rROPHrIij/Sug7FpHJYGpZJYWbucA7UlA==	2026-01-02 14:20:22.320695+03	\N	\N	2025-12-26 14:20:22.320992+03	\N	System	\N
ec30674d-0639-4142-8f1f-71599cae4890	838c161b-6922-4679-b587-58fd850cd83e	UV4J0n+VHsfHeAbHdYZ+XkF7ju+sP78W+pUuF+pDOn0lTd5HefW9hw/c20iipm9rO7DzsTHu6wwXE7Kcj7HFBQ==	2026-01-02 15:00:22.882305+03	2025-12-26 15:00:24.38555+03	\N	2025-12-26 15:00:22.882997+03	\N	System	\N
4b5eb4bb-edbf-4b69-a4b6-d9e053861da1	838c161b-6922-4679-b587-58fd850cd83e	94MzGvC1eyzemdZCiebNLAvr52uoXMta9NoXo8CiNCkRUzAQm9FyTSt5CDxsQRfpj+FkmPq+m39osXp5bDi32Q==	2026-01-02 15:00:23.830853+03	2025-12-26 15:00:24.38555+03	\N	2025-12-26 15:00:23.831178+03	\N	System	\N
891253ed-e075-4bf3-a3e1-5266011ee73b	a5e755a4-b5cd-4e39-b9b7-e274eeb83dcd	u0GhKmV3wChpaTKPdJ4AjHlq6KJIPEjcggGJgbIiokj7/KDe38bmbU46Cil9MY/DvpvOIA44PxGXFPx9gw7ggg==	2026-01-02 15:14:34.759735+03	\N	\N	2025-12-26 15:14:34.760087+03	\N	System	\N
7c3cfcf6-ce78-490d-9fd1-a139dc7d0d69	5f4dd627-7f94-4044-9a5b-3e3473fab05a	uxRCXVquHGDPOf6qNOmPrbNpRsZxy6hV3P1mzOkQnZv59HnntsBQQUYbS4K+nHplQY9m1AU9JhuO2/UkcyqlLQ==	2026-01-02 15:17:26.968014+03	\N	\N	2025-12-26 15:17:26.972558+03	\N	System	\N
0e06f9d8-763e-4d56-84ab-0ef9a59d147f	674936a1-dd7d-4f9e-99be-1449c26a1997	H3bIa7jLp03IMJvp6QD7t77yRweZM0iLLbBpQuedfUu4GgWOIrCmdpdEBlNlmZUEZTUFbactg7YHa4NJpu5uww==	2026-01-02 15:17:57.661007+03	\N	\N	2025-12-26 15:17:57.66136+03	\N	System	\N
0df549b6-0246-4813-988f-8d76ad68f4e0	9c025f7d-c227-4f60-b7e8-26399268127d	2IZBla0fR8rYONVAOiYPNuIag9h6ZdgZ7qRWgdV4u5sm4YAYZidcXRJnz6j5v1BcwZJF0e21hLBJfax24j61EQ==	2026-01-02 15:19:05.239038+03	\N	\N	2025-12-26 15:19:05.239407+03	\N	System	\N
82bca7f9-46d8-4742-9446-799d9a2a0a4d	5dfda0fa-ea09-427c-9557-ade5f4517bcf	JzzmV2YVKFJi6ejpzTBE9DCHTfxFt0q6Y4JP74KkusIW3h4+RMjxEgPGEyEuKVgMap8UPcwpkN7JQCT6u9XfRg==	2026-01-02 15:19:08.031498+03	\N	\N	2025-12-26 15:19:08.031851+03	\N	System	\N
8eda28dc-8264-448a-ba4f-16767d35278d	7cc791a4-489b-4313-978f-551353a71d52	FNpRXVVjWAJaPhoADXeDKqXXoLMWeQQD7Cdt53SBMWWp8rw+mNdC1N2WnVb5770v62WP6yQ3sARNpNbnM6t1rw==	2026-01-02 15:19:27.83827+03	\N	\N	2025-12-26 15:19:27.838761+03	\N	System	\N
a1a9af8a-df3e-4417-89ff-346b3e4e5e87	af1cb823-159d-4231-90c6-1ec3a9da5a2b	u+ZjUb0VF/Frr9+vfQZdA4uPREKiimELVANhV+pX9rj+pFMszjBtCPh8pA4khf45QrEP1nvOuO1bQk8unC6ZTQ==	2026-01-02 15:20:19.560024+03	\N	\N	2025-12-26 15:20:19.560352+03	\N	System	\N
b58cf838-b8b1-47be-98c8-2f0a81ec256b	b08d2156-6c06-468a-9972-2f9a093752ac	lMgdBV65sOdWxRXEkUkz/PIsydCC7EmpIgz5BKI0GD5EFtAA6amO9aeb23NftqEY6X1KpRVpPaAVr+NDQi3qJg==	2026-01-02 13:08:30.80783+03	2025-12-26 16:41:57.800975+03	\N	2025-12-26 13:08:30.808172+03	\N	System	\N
4ba3e565-d818-40be-8dce-3604127e8834	b08d2156-6c06-468a-9972-2f9a093752ac	3eksfvuRIuu/ROjuRLdKe6EmaUBEyVW1xtokfoZ8EBXmiHt53Ck3DQpxC/zNWZjLYNlyJBTqj7pJDTi2bBa9UA==	2026-01-02 13:08:39.366478+03	2025-12-26 16:45:50.205834+03	\N	2025-12-26 13:08:39.366712+03	\N	System	\N
b9738502-2e04-4f03-ab12-fd2c3d741bcb	78e13161-d28f-468d-98ab-23b23d2d6fc5	yQ4755SGdFymzyL0HA05ygtQeN3dgyoytF/xZcLfGpNWrVrUoGI17JAQbBfYETgbgIxSOqec94RmC0g2ZaryzQ==	2026-01-02 13:13:21.469208+03	2025-12-26 17:04:56.549397+03	\N	2025-12-26 13:13:21.469612+03	\N	b08d2156-6c06-468a-9972-2f9a093752ac	\N
33cd3a38-7205-4a7c-8544-478e539f594d	b08d2156-6c06-468a-9972-2f9a093752ac	JxlYzuLmMA5D7quqjYxqkuRDwULFrsroG5cUknCUpjyeonIG1YI4PXrQpzJl+iEVs4mNMqbyWBnNVO74zS2XMw==	2026-01-02 13:12:31.554132+03	2025-12-26 17:08:03.933265+03	\N	2025-12-26 13:12:31.554379+03	\N	System	\N
e75a8f1f-7639-4052-9e80-c491a8ccaf6e	78e13161-d28f-468d-98ab-23b23d2d6fc5	tQms0oHZhJnv3TPJoui23Z4vn0UrmxeB3rGdAwfwDsivkAWlLaKIbZHgB3trQg5tJAT5fr53TpUxynPmzXsP4g==	2026-01-02 13:13:27.692383+03	2025-12-26 17:08:09.605864+03	\N	2025-12-26 13:13:27.692734+03	\N	System	\N
aea12400-0f8f-4962-81d0-673586e26f21	78e13161-d28f-468d-98ab-23b23d2d6fc5	rdNL4+tZ67U0oH7QmgcdjPFqVKxRRVXpNwMLdfaj+5rb0p9dtFvVIkyd7pj/wYtJNMHUeR8M3+5NzEKehR+pRw==	2026-01-02 15:12:41.366417+03	2025-12-26 17:08:22.336725+03	\N	2025-12-26 15:12:41.366906+03	\N	System	\N
164b0ded-42e7-4405-9565-95853a9fd371	75de7f24-9c95-4250-9452-5fb624366198	Jh88T5wukzLLHyXyZmGMcQ7h/NlhldTGXwL5r5vJPNKGhLUBcfiK6z8COjSwKsGQQSGOxQqaiJdKGFLWjBE2Ow==	2026-01-02 15:21:21.514284+03	\N	\N	2025-12-26 15:21:21.514614+03	\N	System	\N
46abdebe-3251-40df-a5d3-dce7ff27abf9	5b74e814-7705-425d-9e65-9ac47533b213	/o+vVKIl2m+VRo4xu7s2c0XjcVVTGYG/dGUHY3J2dPUY1WR7VH6/vxFrd5AiuqindaJJsl2O0Ju5IGClgyt5vw==	2026-01-02 15:21:39.902221+03	\N	\N	2025-12-26 15:21:39.902459+03	\N	System	\N
9c991fab-4114-41cd-9612-2d96ebc103d8	99dbfb77-f0cf-4306-8209-3c89a1d90252	5uKfRPcwxsPNDuRjJBDrhyu+j0m70mHHVaQe54hBKbOvTz+4xcMiwHzQPRz+OsvGufiXiLUtwOhRLW+tadSfFg==	2026-01-02 15:21:49.07172+03	\N	\N	2025-12-26 15:21:49.071969+03	\N	System	\N
de77b72d-eab9-4b2b-b28d-b650105c4f52	07364542-00eb-4806-8ac5-d6698ef6c4b6	cjS6uvNN68b98/sM9WG4eicikSlKwSweunej0qE430L8kwwLQOMXcuTDFr/KEGZFI6714Qx1069+zQzaeUtF6A==	2026-01-02 15:21:53.152626+03	\N	\N	2025-12-26 15:21:53.152913+03	\N	System	\N
f697edb1-7cce-4209-8415-4b1832c34174	c67e4fee-1fe7-49d4-b54c-7c45bb6bbd03	VcJCQhOqQRkKeG+N7w/GP0I+EvW8ft2ggDfc7KVlHsnr8wOtKTnNVsQPWozRap5Zdd9Oeq9C62gcl/QhXDKcAg==	2026-01-02 15:22:02.276432+03	\N	\N	2025-12-26 15:22:02.276773+03	\N	System	\N
884afa88-bd3d-4434-a1f2-9bdd4b6a884e	216d602a-4bcf-431a-9f94-78c136d40ba2	0RqP7UM/LD1+tRJNJ5l+tIm38WMQ4CgdClOiq4iCTGHfctwu1QWV26hb1lqhvZk6jmcGnzxMGyNGnNhUTLWm3w==	2026-01-02 15:22:31.735612+03	\N	\N	2025-12-26 15:22:31.735858+03	\N	System	\N
2093889f-435a-44cb-bea4-9ffd6ced8f93	e203a4ed-18f8-4e74-8eb9-6c22338977d4	gyiEygLx42ptI6C8zFn9FhgcC4wNUXBi5YbkcQ2qp3ysmG5AhA+4a6IU0QLCWMhEr8NVaqn7PFau5moPEgDOsQ==	2026-01-02 15:23:22.639267+03	\N	\N	2025-12-26 15:23:22.639549+03	\N	System	\N
3120dc7a-0c1a-4bcd-a91b-53ffd68fabbd	4e1dfec9-755a-43db-80a7-46182cb73c43	FIPzlWzAy7JEvpQXN2wPzvBbaXRoux0o62a81/QD5k2ow7jOIm/hvk1G0MENyu/GaPVkk3JfKAXIHHBRE99d/g==	2026-01-02 15:23:25.462151+03	\N	\N	2025-12-26 15:23:25.462405+03	\N	System	\N
a4583255-40d0-403c-a71a-2f7b96ab90a1	e375e146-143f-427d-9af9-e93d68caba83	uFEwgfqWtF6eb5CU/BjOtNZSn9T4RggNVm5Gh/M3/CAE7jqH9LzS3FbyV1zyXUEVhlmkHJkRmmySOiR69pKALQ==	2026-01-02 15:23:27.836769+03	\N	\N	2025-12-26 15:23:27.837062+03	\N	System	\N
9e146e8c-514a-4e14-830f-ea8b9aca2823	03ccfa50-da08-41c3-a6f3-b643d63f74a9	GqEMPw4o5wDPZfDsWOZZ/cFrB23Nv74fYfJSCf9Jz5kjYuhtmVn+L+D8kVHLtwmwtZzs/7IbJ+ATYdsQTw6/Vg==	2026-01-02 15:23:30.93404+03	\N	\N	2025-12-26 15:23:30.934272+03	\N	System	\N
85fda37d-93d2-4830-9f94-016c122519dc	680a3d3c-bf37-44a1-b39a-9ef5c1fe1da7	a90rbJ8he9vBJ7aOa2F87AttWaqv9B3KGsYywWB/3nuO8IQG6+z2qMQcPUe4Sfn9fPTROH/KNE7Oo35bqwQ5dA==	2026-01-02 15:25:01.453269+03	\N	\N	2025-12-26 15:25:01.454082+03	\N	System	\N
7487165f-6e5c-495d-8104-e46a776ef8e9	a216b862-ec70-4d09-9322-2bf3a443aeaf	VdHqMx0sx+2ovD6VPxTywi56SEyqEYuI+cOxu/N1/vLPveTQgKN577Afk6mS3YF/tAUNufO366JjK53arAeN0A==	2026-01-02 15:26:07.094565+03	\N	\N	2025-12-26 15:26:07.094844+03	\N	System	\N
007af01b-cdfe-420e-b06e-e700f7fec67e	6af97412-9ded-41ce-8464-e1419660f302	Ajynei2rtZPv/KIVQ5TRwIIiTzEjkvabAs+5xPaQFpf+f7u7ENiWi/nfKBPjTe5CsF/tLtkDNPfC06Kugco8Qg==	2026-01-02 15:26:37.122662+03	\N	\N	2025-12-26 15:26:37.122908+03	\N	System	\N
a83ee998-62a5-466f-a4a8-5202df059617	9be09f09-72d2-4340-9555-442a6d26382d	+58I4UlHV0prt+Pmi33wlQomw5RIjXzOb2PmYLsNvbUiQqym0RnQYUCZ/LUyTQbcAmrH61bQIXBXQM3Ufjo0Cg==	2026-01-02 15:27:34.941538+03	\N	\N	2025-12-26 15:27:34.941859+03	\N	System	\N
0806938b-ebbd-4f66-ba57-93a5facbc266	11f2679f-7c3c-46bb-8b1f-3da1f973bb1e	ROk4yoVXL5rK7J8C7tOummz6KVpIPh8gsOkUcydhg0GkxDuwj0GuK+lnO/t6pj0HUQiSkuz5aoHPeGSDF0lqwQ==	2026-01-02 15:28:01.452522+03	\N	\N	2025-12-26 15:28:01.452846+03	\N	System	\N
2c811695-b343-4c91-8f75-e18f5baed7c4	0d324570-a84e-4ea8-8670-29ac75cb0b58	EZ9NSL0zidhAkqgqUx4R3Z/VtYO9xQjBHbd/wrDPrPACBCCgS4MIqX+IAidEcYr+4YchH9149uM9HlefS8J3bw==	2026-01-02 15:28:16.280414+03	\N	\N	2025-12-26 15:28:16.280663+03	\N	System	\N
a696cf5a-527e-41d5-b10b-ccb11c3e82a2	b6431a3a-f502-4ba0-8350-4b7a2befb05f	UC6khh1Mb3sEHTF7LxCSwVoRQTlxr63Tb6qhZUybtQojjJ3KKKNbx4hJYNqd4gfzsXBSb4t4F3psK+Kvu10Lww==	2026-01-02 15:29:21.166072+03	\N	\N	2025-12-26 15:29:21.166343+03	\N	System	\N
ad1cdcf0-823f-468f-a3ad-4cac9d54d2e9	3089247a-7b7f-4526-91f5-c1a745bd4d2b	2kusdB+O8Fut6Zg9VZvBdiRs3mHr8KNCAl40QSiRkDjRQZM9NDy6bZF9SfrY/RtW5/3gcD+LFFDOa/6hILBmUw==	2026-01-02 15:29:38.19307+03	\N	\N	2025-12-26 15:29:38.193323+03	\N	System	\N
3222835c-dda6-4dc7-9ca7-871fb38d006b	6ef91e16-b13e-4f51-8cff-e96505491062	3F1umFcPQKMN/FCbOZhrK7gkrdk9XbRcUveQD3mk0NMmJaPO4O49MbinpyNksvyTDpxoN2+LhfjLRdq8AXb4Bg==	2026-01-02 15:30:48.914503+03	\N	\N	2025-12-26 15:30:48.914829+03	\N	System	\N
68c45694-b144-4cc4-89c1-9537ed42b36e	abf997f1-facf-4e1a-a214-50bbf894b3ed	wxjwnvtPbj3kSBUELZTTaAZVZXgryFXveyJGyJQ36K3tCPLkKHdlA0JBC+PE/GAirMqowDOb1FSeBH5dIAnOtg==	2026-01-02 15:31:10.70599+03	\N	\N	2025-12-26 15:31:10.706297+03	\N	System	\N
6b28ac1a-f3cc-453c-ab2c-773d883a90cc	92bd564e-8a8d-46cd-9fba-1bf4aedc5b96	3OlKM2Sm3OZ52tjVQSRh52mC9nCutwryzqF86S5iWfhsOxsJF/GraLkG3bFE/2Y/iSpg/jPTh8sfMzK59R1ClA==	2026-01-02 15:31:44.770988+03	\N	\N	2025-12-26 15:31:44.771945+03	\N	System	\N
28300f09-72da-4110-a11d-5502ea2cd380	b08d2156-6c06-468a-9972-2f9a093752ac	EMOJCUZueIAAs7O2eNRTA7eprgfzsY5EXjEO0GYQnU//R9376y4iuxSgTyXXrld/iPN1AmWAKD+LsS9ZXIt18A==	2026-01-02 16:41:57.822557+03	\N	\N	2025-12-26 16:41:57.825307+03	\N	System	\N
3ad1ac63-ffa9-42af-bbd8-add0694409a8	78e13161-d28f-468d-98ab-23b23d2d6fc5	XcRp6yIsN0r814GEMnQQ21nwhG++Qvcw6qG/lHAhlRgPe5jJ+2DMIV3NMO8CcCsnvosBwfCwWIiKgySWxas5JA==	2026-01-02 16:43:09.759537+03	\N	\N	2025-12-26 16:43:09.759743+03	\N	System	\N
3e4ecf1e-468d-4291-8913-1fffca3c6b34	b08d2156-6c06-468a-9972-2f9a093752ac	9a5eC0LVURs56tXTE7iC5kzZR89ttdJafP51BrijGLyhC8/prVaG+54rKvTs/yNAuShewM0ffUHRdGauFtE3kw==	2026-01-02 16:45:50.211222+03	\N	\N	2025-12-26 16:45:50.211468+03	\N	System	\N
4ba126d2-d303-43ca-a566-8e3e9be25fca	78e13161-d28f-468d-98ab-23b23d2d6fc5	OMiZZRTdrlH9lbTaFuq9jRlUn6SXYIM/9u0zn+A6A5JSrxdATme37mRQF2v2uDBZ3cyDAqgEKS9RfIz5c5/7Nw==	2026-01-02 17:04:56.561007+03	\N	\N	2025-12-26 17:04:56.561679+03	\N	System	\N
b7faf409-62b4-4c74-80f3-a7bb14045372	b08d2156-6c06-468a-9972-2f9a093752ac	lIP5xUeqLvgosG/szLjmSyHoYZmxS3FB/oxWWjlN6S4WuKIb28LYuXF8eF4+2oUrKPoqWvT4qEzJG44lmdzMjg==	2026-01-02 17:08:03.938119+03	\N	\N	2025-12-26 17:08:03.938385+03	\N	System	\N
3293986b-3022-4d87-a543-c70f1714402c	78e13161-d28f-468d-98ab-23b23d2d6fc5	KYj1yfnNsmQ+BOYMG3cTu2c/K48NGeibIyzBctJxz8CLIfYwO9rQ9MS1B3pXks4+kvgMv6Ge6XzXZ64Ufd9wdw==	2026-01-02 17:08:09.613734+03	\N	\N	2025-12-26 17:08:09.614007+03	\N	System	\N
02d746c5-7985-4239-b262-bde2d5409be3	78e13161-d28f-468d-98ab-23b23d2d6fc5	XJ/4POs4ABG6Kzj9iuAnHQxwI4zsQomTjq+CMfuRktM1pVlZAnk+2VLLe6sIqHnIpa+W4oAyMSaxqYUCqc/jRw==	2026-01-02 17:08:22.344699+03	\N	\N	2025-12-26 17:08:22.344942+03	\N	System	\N
\.


--
-- Data for Name: Users; Type: TABLE DATA; Schema: identity; Owner: znlqr_user
--

COPY identity."Users" ("Id", "Email", "PasswordHash", "FirstName", "LastName", "Role", "BusinessId", "IsActive", "LastLoginAt", "CreatedAt", "UpdatedAt", "CreatedBy", "UpdatedBy", "Username") FROM stdin;
84171ca7-5ea0-4552-b266-012e4f27ec07	ctnsosyal@gmail.com	$2a$12$i3VzEdonW7rQ3cClpZv52.SWQpZGnlyih4rAvthCRLP.09pTPQJ.i	Test	Admin	Admin	3fa85f64-5717-4562-b3fc-2c963f66afa6	t	\N	2025-12-10 20:42:04.671507+03	\N	System	\N	testadmin
40c9e951-3498-4a95-a78e-1e086a3cd77e	testuser123@gmail.icom	$2a$12$0dJXUozEXH4KMu4dBSHK2O30vKr1.gYpaVUitJd4qjAYSYzQyGiVC	test	user	Admin	3fa85f64-5717-4562-b3fc-2c963f66afa6	t	\N	2025-12-10 21:25:58.330033+03	\N	System	\N	testuser123
c16f4711-b86e-4442-8bf2-ffdf6b9ca56e	testuser@gmail.com	$2a$12$ckeTTtKs/RfYEm.fBd8sk.hdO/L560S1HNXKL3VfpTV7ODfdJ2GEK	testuser	testuser	Admin	\N	t	2025-12-11 07:53:32.614963+03	2025-12-11 07:52:53.429032+03	2025-12-11 07:53:32.615154+03	System	System	testuser
7cb55a91-b116-4f16-97f4-0a40cd99340e	test_c0be3d27@example.com	$2a$12$Xaoc3aflzpXDbaYtbsQcm.7JcO2sDA1bv.82Ox9Neh3bwM9Qxw4Oy	Test	User c0be3d27	Pos	\N	t	\N	2025-12-11 12:29:46.763941+03	\N	System	\N	testuser_c0be3d27
b2cef333-e6e6-43f6-bf4d-79ecb111ad86	test_53c173c4@example.com	$2a$12$MA3iJSKi8Ut6aypxH2Kr0OLmsRzzDELLMZdtqS3oMb4PPjLuBDVSS	Test	User 53c173c4	Pos	\N	t	\N	2025-12-11 12:32:43.051504+03	\N	System	\N	testuser_53c173c4
c5ae9f21-0048-43a0-b4bd-326ac6eeb8ab	test_79782e79@example.com	$2a$12$BZHOyVzIpt4WkAGJbyvLru7t6QdJ6A9W.U3hjjesfSzjxB/4HqtBW	Test	User 79782e79	Admin	\N	t	2025-12-11 13:17:39.61651+03	2025-12-11 13:17:37.113863+03	2025-12-11 13:17:39.616544+03	System	System	testuser_79782e79
df3a87ef-5f0a-4094-9b59-c76235237b53	test_f8f5f31d@example.com	$2a$12$xYfl5VVRQER1X5MC06.N6eoGwMW6/Z5vEEO1xCVoL4FcSuQDMr7qO	Test	User f8f5f31d	Pos	\N	t	2025-12-11 12:43:23.548155+03	2025-12-11 12:32:49.315975+03	2025-12-11 12:43:23.548203+03	System	System	testuser_f8f5f31d
b44b2423-6845-412f-a9c6-f7919e86e478	test_2e5e6382@example.com	$2a$12$LS6N4Q9u/XQLx26cGZmePOmDcmS8EyglqYrgOQjJvtSK06fUKA0be	Test	User 2e5e6382	Pos	\N	t	\N	2025-12-11 12:44:28.044601+03	\N	System	\N	testuser_2e5e6382
3974f625-7327-454e-87ba-f1b48541d067	test_c39fb42e@example.com	$2a$12$eefHtswlVYbvwhRN/JkqcuqXlaOM2JfIUR2Jeh1Gt29EeA.H1doIS	Test	User c39fb42e	Admin	\N	t	2025-12-11 12:46:12.006432+03	2025-12-11 12:45:34.601825+03	2025-12-11 12:46:12.006465+03	System	System	testuser_c39fb42e
bce3db22-f232-4bc9-b6c6-8f8bd85fcad4	test_e1f31df5@example.com	$2a$12$Es7x1DGZ0V0bLQeIMGp3TemAd97dIulUL33Cl1nLewWt//sEZaIla	Test	User e1f31df5	Admin	\N	t	\N	2025-12-11 12:46:30.90675+03	\N	System	\N	testuser_e1f31df5
660b705a-6f24-4ec3-98c7-7a3950821ec3	test_dee1a010@example.com	$2a$12$uMxAhZN54pfkoe7/e4AshO5PWpOUqfNi79o.V5UBFxPhR7ZcDzSWe	Test	User dee1a010	Admin	\N	t	\N	2025-12-11 12:47:06.901493+03	\N	System	\N	testuser_dee1a010
70b4975c-dbe1-4bdf-ac15-5ea465007789	test_68a90162@example.com	$2a$12$lwlNoauNU9OQFs6wSdUF3efeek.EF96xCeZ5ZLLHGIiOM8CLBKjWy	Test	User 68a90162	Admin	\N	t	\N	2025-12-11 12:48:47.66228+03	\N	System	\N	testuser_68a90162
7b6ed699-398d-4ab2-b661-1a87458c3e8d	test_7a0075de@example.com	$2a$12$IynKt9OypjAr0V7kojxAxeSV9/coH/J2.Z1wmFpdbcx66g/Vy0TyW	Test	User 7a0075de	Admin	\N	t	\N	2025-12-11 12:49:05.829696+03	\N	System	\N	testuser_7a0075de
1b79b865-dbee-4c03-97d8-a0ae0df3cb75	test_1cb7db02@example.com	$2a$12$GXMWf/rL0o09LbP3Q8LvJudszovNy7SQUoUCaOuoAmp..rRXlpWfK	Test	User 1cb7db02	Admin	\N	t	\N	2025-12-11 12:49:50.947696+03	\N	System	\N	testuser_1cb7db02
9b5e0e08-9324-4095-9236-d3b7391742c3	test_405dee19@example.com	$2a$12$DBibvHqKUlGE5Oa2hH96x.DaGqYZWlpB8Cf4Lu1CIiU0k3a4Lve8m	Test	User 405dee19	Admin	\N	t	\N	2025-12-11 12:49:56.166147+03	\N	System	\N	testuser_405dee19
e7fc8bc1-7304-48d7-ac8e-bee4ab1835e4	test_ea974c51@example.com	$2a$12$H2ItVvTYwMejDIt/XrCp6.4kKdx0qTujchzqBNOX7/M0JJVYaPHOG	Test	User ea974c51	Admin	\N	t	\N	2025-12-11 12:50:19.347325+03	\N	System	\N	testuser_ea974c51
194b519f-9221-4ff1-b95f-6d566f253c40	test_bd6d896a@example.com	$2a$12$neOykY4uCmR6PToizz4B3OFtjg5LBExb3HRMmOfTlGWezdtNzbxPC	Test	User bd6d896a	Admin	\N	t	\N	2025-12-11 12:51:49.767085+03	\N	System	\N	testuser_bd6d896a
c9c557bf-4160-4bf7-a161-e73fb93bbf18	test_8d00cca9@example.com	$2a$12$ge8bTNfcp4RGJXJqu4Lv..AGY6XR3dLZPc7SXd1o4uijLprimoWem	Test	User 8d00cca9	Admin	\N	t	2025-12-11 12:53:30.324629+03	2025-12-11 12:51:25.323299+03	2025-12-11 12:53:30.324669+03	System	System	testuser_8d00cca9
d9cb4e69-207d-48b6-a163-c356f30948b4	test_82384093@example.com	$2a$12$3X1KWpcBlPiaiRpQ8e7lnOAqjyaFFkkmNHwy25oYphirf8Bj2J7/.	Test	User 82384093	Admin	\N	t	\N	2025-12-11 12:57:42.541678+03	\N	System	\N	testuser_82384093
5cf17bcb-df19-41fb-82b6-5ea34b64b376	test_022e2859@example.com	$2a$12$0AadD6CYbRH0SknRZI.x4O4FfWzBSNqVCzGVAUmv5RjwZyah6aszq	Test	User 022e2859	Admin	\N	t	2025-12-11 12:58:07.618113+03	2025-12-11 12:58:04.989355+03	2025-12-11 12:58:07.618155+03	System	System	testuser_022e2859
68d95f2d-30f5-446c-ae28-50d59769a5b8	bulk_29f935c0@example.com	$2a$12$CO2cNl4nicQOwfv3JNU6zefsr0Ke186AI6X1awW8i54A/XY19sLbO	Bulk	User 29f935c0	Admin	\N	t	\N	2025-12-11 13:34:11.312975+03	\N	System	\N	bulkuser_29f935c0
80530e20-28b4-45e2-8a6c-bee8f1b3939b	test_16d4324e@example.com	$2a$12$fXEZDXC3BR4wpv41iguAv.XVgIGu2MR3l.vzjLDhSragR/8/AHH.S	Test	User 16d4324e	Admin	\N	t	2025-12-11 13:03:15.848637+03	2025-12-11 13:03:13.57786+03	2025-12-11 13:03:15.848669+03	System	System	testuser_16d4324e
d19c73a5-0e37-4cfc-bb76-456eacc7997a	testemail12345@example.com	$2a$12$U7aAZ3heAKyGzovivpzzKurdveRbiygzusr1bTXWEvHFa.IT4jydO	Test	Kullanici	Admin	\N	t	\N	2025-12-11 13:09:45.556565+03	\N	System	\N	testkullanici12345
1562b4d5-eb58-418e-9934-d2ec79ce0711	test_3e67b038@example.com	$2a$12$AbB9Dyxe/iymrxFXhC/jHurK6OtvjmIuzNUuPpAvB9K8XmWeuqRgO	Test	User 3e67b038	Admin	\N	t	2025-12-11 13:23:48.181484+03	2025-12-11 13:23:45.718253+03	2025-12-11 13:23:48.181527+03	System	System	testuser_3e67b038
bb3da228-9284-4ce0-91ee-f1bd5e9e62d2	test_15fd2c44@example.com	$2a$12$V1p0HVpGUgGwacBFGU.e5OJezR386HajZo0TyQJn2QSHvF2Szbfa6	Test	User 15fd2c44	Admin	\N	t	2025-12-11 13:16:27.057291+03	2025-12-11 13:16:24.776488+03	2025-12-11 13:16:27.057379+03	System	System	testuser_15fd2c44
06d548e9-ea3c-4657-94f8-7715c38b847c	test_a633b135@example.com	$2a$12$0dYvwE4RaEqWeUGYTtqjMexMgUwJJ/1dQ/03wRPFSKMcnu9xgzn56	Test	User a633b135	Admin	\N	t	2025-12-11 13:26:31.471549+03	2025-12-11 13:26:28.863167+03	2025-12-11 13:26:31.471582+03	System	System	testuser_a633b135
eb46ba71-a0ea-4fb0-9eac-cc4ce8d6c4da	bulk_81a887ff@example.com	$2a$12$ce3Gz2YC.YeVTmf3bwZesu7OyzzoFCz39mfeKn2bYT3lBtTaQAUhq	Bulk	User 81a887ff	Admin	\N	t	\N	2025-12-11 13:34:04.301804+03	\N	System	\N	bulkuser_81a887ff
87e44767-c7fe-4374-9425-4285eddc5cf8	test_7a81b633@example.com	$2a$12$JIcbmkrpbRS6ZRjnUGHQRuc6afo7u8GHlgB/C..kClYvztHJfjpuO	Test	User 7a81b633	Admin	\N	t	2025-12-11 13:24:09.062676+03	2025-12-11 13:24:06.796129+03	2025-12-11 13:24:09.062706+03	System	System	testuser_7a81b633
14a01dc9-2a16-4d38-a33d-18dc5ff8f73a	bulk_b949883e@example.com	$2a$12$zYVZV.eHGLyrKnChCMXS/.jtnyp96tJ5n8NUqp4Xx5TZQWKVh.voC	Bulk	User b949883e	Admin	\N	t	\N	2025-12-11 13:34:05.147415+03	\N	System	\N	bulkuser_b949883e
6b029db2-012c-4013-904c-ab445142f0bd	test_a85f97d8@example.com	$2a$12$f6LQ8Dj9zcf8uWuAIAEkCeSTmODe.z8W9tWK/jGjt/kc5ti2d7ZbW	Test	User a85f97d8	Admin	\N	t	2025-12-11 13:26:14.186738+03	2025-12-11 13:26:11.746651+03	2025-12-11 13:26:14.18677+03	System	System	testuser_a85f97d8
53df461c-7a30-4518-b676-e784f70c430e	bulk_3d56cfbe@example.com	$2a$12$SstogZ4Jt3vV2YKCBnu4a.w0suGz3zwVlZOmAiaR9THHRwAu1yGDK	Bulk	User 3d56cfbe	Admin	\N	t	\N	2025-12-11 13:34:05.98828+03	\N	System	\N	bulkuser_3d56cfbe
ce8b1ff5-df95-44c2-ab79-72904ca9e14f	bulk_7c03c229@example.com	$2a$12$xLmAaTX645t7jT44r2LxE.iMtf0HrIGvenYIHOZ13fhl4if6Lr292	Bulk	User 7c03c229	Admin	\N	t	\N	2025-12-11 13:34:09.680303+03	\N	System	\N	bulkuser_7c03c229
47c73193-b7b4-4fd4-b3c0-4bf0d774d435	bulk_702ddd8f@example.com	$2a$12$7pKqLO/s6d69/FqOlyNobufeQztdI4RZsLdN.htp/iOoZh/HVltJS	Bulk	User 702ddd8f	Admin	\N	t	\N	2025-12-11 13:34:10.537306+03	\N	System	\N	bulkuser_702ddd8f
844fff5c-6e9b-40f2-a5cd-eff4e482de07	bulk_15445fa5@example.com	$2a$12$q3XS86DUhu43CV5gViru5eJuxROT7AG/jTmtcpSDb86il7Rd0d0ky	Bulk	User 15445fa5	Admin	\N	t	\N	2025-12-11 13:34:35.755994+03	\N	System	\N	bulkuser_15445fa5
469da776-7697-414c-8f4a-71c44df92914	bulk_02c3983f@example.com	$2a$12$wwVzV/po2SnfbCSnpcFfjummgePzoZzMwsIdYqjv298M5bE8p2bAa	Bulk	User 02c3983f	Admin	\N	t	\N	2025-12-11 13:34:36.5199+03	\N	System	\N	bulkuser_02c3983f
5d6c2b3e-44d3-49b9-9064-2ef1fa10cac6	bulk_9ef79b43@example.com	$2a$12$ala0BchQB3LPwTyoD96M/uqRpGqQKx6VMny/lpiIyTthOaD.2lZqa	Bulk	User 9ef79b43	Admin	\N	t	\N	2025-12-11 13:34:37.327265+03	\N	System	\N	bulkuser_9ef79b43
904505ec-cac2-4795-949e-cde0966487af	bulk_f86fea08@example.com	$2a$12$MzaIrSqncnHpGvwSPmrcZOzwNbTxTCOT9STm4c52AQfzmfqeyjp.u	Bulk	User f86fea08	Admin	\N	t	\N	2025-12-11 13:34:38.084761+03	\N	System	\N	bulkuser_f86fea08
93364d27-2956-456f-b646-99180e2f9b13	bulk_85615343@example.com	$2a$12$I8ylIWQTmQoVG/5OOlflo.Ah8Z4/35m4dxawXD.wS6bYuawYlRnUK	Bulk	User 85615343	Admin	\N	t	\N	2025-12-11 13:34:38.776592+03	\N	System	\N	bulkuser_85615343
548e04de-2edd-42e2-95ed-82783c494789	bulk_324077e6@example.com	$2a$12$05mUjQtqC0VDhtbECSkAGe9hCzSMlHuKIM.sT3tWErZI/S303AB.S	Bulk	User 324077e6	Admin	\N	t	\N	2025-12-11 13:34:39.515701+03	\N	System	\N	bulkuser_324077e6
0685b07c-7ba2-4a42-a746-ffdb27732311	bulk_c8524997@example.com	$2a$12$0aIslYmHjSoNakEG9TUh3.NW5gF9E.5yAMdPTM3gLs2RjdV7WH5je	Bulk	User c8524997	Admin	\N	t	\N	2025-12-11 13:34:40.189895+03	\N	System	\N	bulkuser_c8524997
8d978522-ef5d-4cf6-a700-b90cb3abe392	bulk_99dc08b0@example.com	$2a$12$dca2RTTsMcdqlJbN.Am7xOpIVL4GfTcxVU7GMiMhDmYCGwlovfk72	Bulk	User 99dc08b0	Admin	\N	t	\N	2025-12-11 13:34:40.84602+03	\N	System	\N	bulkuser_99dc08b0
a9652990-ff0e-44e9-9ef6-ff9a42d8eef2	bulk_df307bf3@example.com	$2a$12$dldUkJVSQYiY59BS23BiiePx8Ckv0EGHwRUnUnBxko5Z/yC9m9pzK	Bulk	User df307bf3	Admin	\N	t	\N	2025-12-11 13:34:41.520347+03	\N	System	\N	bulkuser_df307bf3
aebafbe8-48cc-49e0-ba1b-3ce7f9f012ff	bulk_b7a07593@example.com	$2a$12$keyH7IJc32Azj.P2ApCedOMJZnp8OZsM/Z.b.0/bXPYa5UB31rlS2	Bulk	User b7a07593	Admin	\N	t	\N	2025-12-11 13:34:42.178451+03	\N	System	\N	bulkuser_b7a07593
198aca9e-92f6-49dd-ad72-61408bb707f3	bulk_a4f6e695@example.com	$2a$12$EaHtgAiUaZ/B98u3lHGIIOm.IJZAm/BrHkN0nf815LZk5XfD5kaCO	Bulk	User a4f6e695	Admin	\N	t	\N	2025-12-11 13:35:40.971686+03	\N	System	\N	bulkuser_a4f6e695
d9004894-a0e6-4843-b280-35811925367c	bulk_f90ede6e@example.com	$2a$12$I/uTcGGBSXGHoqSLKZrmlOd.v9NyYSN38ZfrUSvluTzS6kNb.2.DC	Bulk	User f90ede6e	Admin	\N	t	\N	2025-12-11 17:49:56.325918+03	\N	System	\N	bulkuser_f90ede6e
0a024bd7-2704-4e93-b71c-2b646f9083ab	test_d1efe733@example.com	$2a$12$S4WTrLijzhwPb3ZA4/4C4OTgVvX8Bw73xiGw4oXJSgV9d9xcEnvGW	Test	User d1efe733	Admin	\N	t	2025-12-12 12:28:27.179104+03	2025-12-12 12:28:24.167927+03	2025-12-12 12:28:27.179132+03	System	System	testuser_d1efe733
7833b246-54f1-4dde-a7bd-cdacfc0071b4	test_256a8783@example.com	$2a$12$HVPUEEqDr9JbLWNRMdpql.WzltQft8AdoSzOqLujNGSHruk8J6vx6	Test	User 256a8783	Admin	\N	t	2025-12-12 12:17:16.380015+03	2025-12-12 12:17:13.926323+03	2025-12-12 12:17:16.380038+03	System	System	testuser_256a8783
c1868406-4998-46bc-beaf-7d594f6f759e	test1@example.com	$2a$12$pngrM2HiTq38Mk8pj0oTduIW34IATEp/a6sg9kfOyZSdp0mfqtP0i	Test	User	Waiter	c05436e8-bdaf-4476-9338-d012eef9ffc8	t	\N	2025-12-11 18:19:43.994847+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N	testuser1
5f7f9faf-001f-4a68-970e-09c860a65d8a	test2@example.com	$2a$12$HnHzk7DuwHyg4gZn5s//nuJN1D87H1K92Dnup4pYo9h.WjiM6N4J6	Test	User	Waiter	cce12547-0eb7-439a-b7b9-ba8326a8359d	t	\N	2025-12-11 18:24:22.198627+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N	testuser2
407c7efd-2956-4797-8c7f-9f43bd552bf7	deneemkfq@lksdjald.com	$2a$12$JRMqg7tjAnAcC8nYZvtaxuErR5Wph3PvVJOBdPPb3GuJLK8dtqZTK	Mert Test	kasdjaslUserFromUI	Waiter	cce12547-0eb7-439a-b7b9-ba8326a8359d	t	\N	2025-12-11 18:31:06.983316+03	\N	System	\N	kdlsajdlasjktestuserui1
572710c2-bbf8-4c7c-b43c-205e0d58a94b	test_38ba4730@example.com	$2a$12$Z0sJnoc0lE/P76oxWI0FHOW5AG7YD8qGNISNYm/lIiF4B6BfKcoRK	Test	User 38ba4730	Admin	\N	t	2025-12-12 12:20:33.579039+03	2025-12-12 12:20:31.02496+03	2025-12-12 12:20:33.579068+03	System	System	testuser_38ba4730
ecd743d4-3b9e-420d-94d8-884738833749	test_e8d2d81d@example.com	$2a$12$TDKSZiDGfC2HLiLuUWt6V.8wwg0jQh1tHYIEV9cd9rL1D3.mmYLHu	Test	User e8d2d81d	Admin	\N	t	2025-12-12 12:17:50.201082+03	2025-12-12 12:17:48.13678+03	2025-12-12 12:17:50.201108+03	System	System	testuser_e8d2d81d
a1ff5501-d315-4b38-a8a4-27b3eed3c4fd	akdhsja@djhkasd.com	$2a$12$//MtqidmbA1pk.cuKJon2eOSyyeYz6SmxVCgn1mIEBjER7els8fyy	mermerm	dashdkas	Waiter	171c4f70-d709-4044-9615-30ac91546b7c	t	2025-12-22 11:41:12.046685+03	2025-12-12 10:45:30.503314+03	2025-12-22 11:41:12.046719+03	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	System	adjkshakjhdasjk
2eecff13-7902-4180-9b4c-2402c999bf4d	test_87360b0e@example.com	$2a$12$ZzDmXWIOa7ljdh7/1S1lOepTCbg8u3cFf3x6keX9jlfCK.7SggAgq	Test	User 87360b0e	Admin	\N	t	\N	2025-12-12 10:53:52.31594+03	\N	System	\N	testuser_87360b0e
c04661e3-3e64-454e-a24a-af85a9421c41	test_585692ce@example.com	$2a$12$Y4CeeyZYR/oTYf87Ezg4yeZxy0jhZ/3id/wHX7xL804fEpykrnVTe	Test	User 585692ce	Admin	\N	t	\N	2025-12-12 10:54:26.984089+03	\N	System	\N	testuser_585692ce
a6a0f0ef-2bc0-403d-887e-2ac8671ed11b	test_dcf3175d@example.com	$2a$12$phq3Haj7kyj8it9cxwQuHuKR4TEcms467E5y.7fvRpgK3gC.74tpu	Test	User dcf3175d	Admin	\N	t	2025-12-12 12:19:12.838421+03	2025-12-12 12:19:10.481806+03	2025-12-12 12:19:12.838443+03	System	System	testuser_dcf3175d
3dc40293-fdc9-46ff-92a3-8af8eae3ecfe	test_d8417363@example.com	$2a$12$CsgOv/25Holv5I7fc8qF8..bZSQkxAC4KiDh3MB6Cl3GUbcdxPn5q	Test	User d8417363	Admin	\N	t	2025-12-12 12:10:42.101094+03	2025-12-12 12:10:39.772899+03	2025-12-12 12:10:42.101122+03	System	System	testuser_d8417363
f9540b6d-f57c-48f3-b146-912701b29d4c	test_8c340c03@example.com	$2a$12$1Wk5Y8RRtv49OQWIhyinVuCEmmVRZoB32.IoqMz11U8gqh9bYb/76	Test	User 8c340c03	Admin	\N	t	2025-12-12 12:19:23.741738+03	2025-12-12 12:19:21.350788+03	2025-12-12 12:19:23.741761+03	System	System	testuser_8c340c03
13791700-1d9c-401b-8f66-946c0767e367	test_662d5759@example.com	$2a$12$qh4QEfWQVLxin8SgHqG/O.OX8GNHrBCK0Hv75VuRS9Up2xBs84CB6	Test	User 662d5759	Admin	\N	t	2025-12-12 12:16:31.565032+03	2025-12-12 12:16:29.418391+03	2025-12-12 12:16:31.56506+03	System	System	testuser_662d5759
a4d49c5f-fb18-41ae-900c-3a39668bef7c	test_8aeb9286@example.com	$2a$12$5BnmZlpBaR48jC7uz7N8JeAYbsHR1BeksZOnD6CmZOS9FoShGuWWe	Test	User 8aeb9286	Admin	\N	t	2025-12-12 12:21:54.487001+03	2025-12-12 12:21:51.931567+03	2025-12-12 12:21:54.487023+03	System	System	testuser_8aeb9286
b54645cd-488d-485e-8e17-5e6711b2f684	test_02bafd5e@example.com	$2a$12$O7xc5Zreh2R39VLn8tSh0OxQ7TzT.4DdOKe3Ow16R.HFnEt3QHuu.	Test	User 02bafd5e	Admin	\N	t	2025-12-12 12:20:23.857212+03	2025-12-12 12:20:21.833256+03	2025-12-12 12:20:23.857232+03	System	System	testuser_02bafd5e
9b923001-9d02-4039-9393-0f7c5f5aaabc	test_9d1a24f8@example.com	$2a$12$S1QInsA../o0OTJU1RAVcOMO8OsbxmJjafUiuepXY37GXL29qeF1e	Test	User 9d1a24f8	Admin	\N	t	2025-12-12 12:22:24.766862+03	2025-12-12 12:22:22.183185+03	2025-12-12 12:22:24.766892+03	System	System	testuser_9d1a24f8
c943ac90-a729-4110-8f0c-e38147669272	test_2f9f4ea0@example.com	$2a$12$epRXnYNjEVA4NnTbPv7ww.4fz.HqJswmcULd6mVOz3WQ60fPEXF4G	Test	User 2f9f4ea0	Admin	\N	t	2025-12-12 15:39:35.289827+03	2025-12-12 12:33:05.993622+03	2025-12-12 15:39:35.289851+03	System	System	testuser_2f9f4ea0
557c9c1c-a39c-4076-8097-5a4b541f80fc	test_e6329066@example.com	$2a$12$IzVBAbhd8jga56DfrL9gNuocnSoqE/mE3lDd6RitrIUxCCSBr3kbe	Test	User e6329066	Admin	\N	t	2025-12-12 12:29:57.280873+03	2025-12-12 12:29:54.470271+03	2025-12-12 12:29:57.280895+03	System	System	testuser_e6329066
7246b710-2223-4712-bc4d-202e16205fa8	test_d794f67b@example.com	$2a$12$BKTQ5lUdn3sTkw.XJaV8R.YzcT1rBb8adqSZhSQfPyuTYd0/V/ERe	Test	User d794f67b	Admin	\N	t	2025-12-12 12:32:32.117809+03	2025-12-12 12:32:29.905701+03	2025-12-12 12:32:32.117833+03	System	System	testuser_d794f67b
bcd5ba45-8ccf-4672-9bc3-90b65645f95a	test_f483a6d3@example.com	$2a$12$sJl2EWLm2Wracnvb.KwEcefo6LW4zSAQVkVZ2AgmQXkiQsvpS.XNG	Test	User f483a6d3	Admin	\N	t	2025-12-12 12:30:57.826446+03	2025-12-12 12:30:55.277671+03	2025-12-12 12:30:57.826467+03	System	System	testuser_f483a6d3
f9703044-e0cc-40df-a9b2-a7dcb7899920	test_f46da607@example.com	$2a$12$NQPVBO8BCdU9rlia6Nxio.oG9IVu/z97YjOctJL.nmRbdFUtqlewK	Test	User f46da607	Admin	\N	t	2025-12-12 12:35:40.43217+03	2025-12-12 12:35:37.909981+03	2025-12-12 12:35:40.432193+03	System	System	testuser_f46da607
0369c1c8-96e2-413e-be23-376fb5a7e86b	str@ing.csad	$2a$12$rU666kgi00tMnxpn3.StL.XCxVgt6I6Q0dn7qP.z/mPYLqmnT.qli	string	string	Admin	3fa85f64-5717-4562-b3fc-2c963f66afa6	t	\N	2025-12-12 12:39:14.879884+03	\N	System	\N	string
7fb88752-25e3-48ed-9ab1-e569c2019de8	test_370562b5@example.com	$2a$12$ox9OK/0PurgVSUPvQaXLieI81kOR3r9ezhhx20hyUJ9sv2FNGtpWe	Test	User 370562b5	Admin	\N	t	2025-12-12 12:35:50.373539+03	2025-12-12 12:35:47.793502+03	2025-12-12 12:35:50.373561+03	System	System	testuser_370562b5
f94f7bad-417f-4bf8-88fe-2c6a902faa2d	test_8e99c276@example.com	$2a$12$Y/hwuMeNT6w2LzPcTOp8Pepu4P7boEWoL1L7MPYDwOCpqiubkk5Ky	Test	User	Admin	\N	t	\N	2025-12-12 12:41:17.082452+03	\N	System	\N	testuser_8e99c276
7f930590-40fa-4568-a060-962265be8b59	test_fe58532b@example.com	$2a$12$3tfmmmhxHrNWbYxR5CY16O8iqoCOjQdU4o9JDaEJCGs5FFeLzwKjK	Test	User	Admin	\N	t	\N	2025-12-12 12:41:44.447894+03	\N	System	\N	testuser_fe58532b
eea72642-5eac-4b86-9931-a060c582796e	asdkajdls@ckdlasj.com	$2a$12$WEBe86E0ET4tfr1jSou9LuGWAb8mx8.RhXzUP6jP7SMo0BMMflWqO	FKSDFLAJKa	kdjaslkdjasl	Waiter	cce12547-0eb7-439a-b7b9-ba8326a8359d	t	\N	2025-12-12 14:50:22.191283+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N	dsadjasldksja
4fa1a256-a774-42eb-a91e-ad37f677aac1	deneme@deneme.com	$2a$12$dz9UvqU1XWyb9Qkp.REIc.hdnummi5gnyZw9A7LMQnq5xhYQhlzNS	denemeeee	demneme	Waiter	cce12547-0eb7-439a-b7b9-ba8326a8359d	t	2025-12-12 14:51:01.999239+03	2025-12-12 14:50:54.929048+03	2025-12-12 14:51:01.999271+03	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	System	deneme2
c9e74762-9c89-40cf-8d36-75ef107003af	test_790429f8@example.com	$2a$12$BBcSVYQioqvsj8PB4de1/eIYrkKIsov2cADeEYCrQUIe1Wtfq8aXC	Test	User	Admin	\N	t	\N	2025-12-12 14:52:12.094792+03	\N	System	\N	testuser_790429f8
dfe58f84-38ab-47e7-a175-1178f6b67890	exist_fbee60e7@example.com	$2a$12$3wIvtHiSLtuXubEJM/Q3eOBT91tacmthB.1HznJli4T2o/B7BRylW	Test	User	Admin	\N	t	\N	2025-12-12 14:54:32.862805+03	\N	System	\N	exist_user_fbee60e7
a24ae186-e64b-4810-a549-19291c016bf1	biz_test_954c1283@example.com	$2a$12$moUSqXrZnsQuE4VjxXLiSuXgK5SFmaQWw7w38pqfLUYzP.pULe1UC	Biz	Tester	Admin	\N	t	\N	2025-12-12 14:54:34.436638+03	\N	System	\N	biz_test_user_954c1283
6133d208-a732-43a4-9cac-f8f08341c3cf	test_table_364c2082@example.com	$2a$12$E0zKEue2ZaMblhna79YUmuQYhIYoyQua2Cfi4JJjjymGzZVDca3Oq	Test	User Table 364c2082	Manager	\N	t	\N	2025-12-26 14:19:20.558112+03	\N	System	\N	testuser_table_364c2082
78e13161-d28f-468d-98ab-23b23d2d6fc5	mertmudur20@example.com	$2a$12$eRlA8PQJj/FO/9nLnzOHeOVkREUbeVfMBZS6GkraN1vkMhd6aXa5S	Mert	Mudur	Manager	c5c8e2fa-c5d1-4538-bf58-114973fb3edc	t	2025-12-26 17:08:22.344915+03	2025-12-26 13:13:21.469612+03	2025-12-26 17:08:22.344942+03	b08d2156-6c06-468a-9972-2f9a093752ac	System	mertmudur20
ec70242c-9a31-42b4-a219-6fb508164cc4	bulk_7025a613@example.com	$2a$12$ew41R7f19nhkV./riP7FVO4HJ0MlBzvteP5Msx.WnRLTc2o8jCIrS	Bulk	User 7025a613	Admin	\N	t	\N	2025-12-15 09:59:23.557962+03	\N	System	\N	bulkuser_7025a613
106dc20b-403e-4195-b4fb-bb669c92c1ec	bulk_77f61431@example.com	$2a$12$0kbwZtBAKhTgQpZTT9HZTOxNwDvSCYdvBJ1UB/bBJ4XrXsyDjRZH6	Bulk	User 77f61431	Admin	\N	t	\N	2025-12-15 09:59:41.833813+03	\N	System	\N	bulkuser_77f61431
a263a58c-73af-44cb-b8f3-7fe17eb565a4	bulk_8002822e@example.com	$2a$12$rGG1CJoTw6u1fg2wwvvp.ORZdEN0fLRtUY..TCQccPMje2SvsSCiO	Bulk	User 8002822e	Admin	\N	t	\N	2025-12-15 09:59:42.712179+03	\N	System	\N	bulkuser_8002822e
15215090-997e-4f9d-bab0-23c3a503fa2b	bulk_f5dc3e80@example.com	$2a$12$wdGDRzh3SOSYHedjwPpWpuk5O9yo4YAn9yFsNOyC6A7uA2aylU7XW	Bulk	User f5dc3e80	Admin	\N	t	\N	2025-12-15 09:59:43.445715+03	\N	System	\N	bulkuser_f5dc3e80
2c51d349-de30-4737-b5be-adcbfc859d93	bulk_fcf12f90@example.com	$2a$12$lPn2Gn..yqHikMGe2yJbkuX2j.6yeTJ/E0Vsh.XkbOY6ODpoLgcHW	Bulk	User fcf12f90	Admin	\N	t	\N	2025-12-15 09:59:44.203704+03	\N	System	\N	bulkuser_fcf12f90
105c1bd3-f7f3-434c-8071-831e4a9b3a54	bulk_3a25d191@example.com	$2a$12$UVFcfZ4Cih4569DbEVqshePVBcQj0tSmv3ywE0g2gp7xR1VesixI.	Bulk	User 3a25d191	Admin	\N	t	\N	2025-12-15 09:59:44.748298+03	\N	System	\N	bulkuser_3a25d191
432c4ac4-cf0c-44a7-88bb-9ac7317428dc	bulk_9f37fc94@example.com	$2a$12$NDWqIA4ryRja7gJ9QihubeJoEbCmAGhTFDuXhAlJEFUhm97DzzPSW	Bulk	User 9f37fc94	Admin	\N	t	\N	2025-12-15 09:59:45.521584+03	\N	System	\N	bulkuser_9f37fc94
0549e4d5-85f5-44b5-87e9-5fca9c30cf41	bulk_473629fc@example.com	$2a$12$myl1Hv2DPfjDm8xttCDXZONUECqiriz9HdkUcfpcV8fC6xarqSX0S	Bulk	User 473629fc	Admin	\N	t	\N	2025-12-15 09:59:46.26639+03	\N	System	\N	bulkuser_473629fc
7ede245f-ce47-4250-98f7-f5b38e925a03	bulk_400f9b31@example.com	$2a$12$t/Od5uU82GCWbVVPJfB6auIX9H1RO.JlZOYU.AQJ8BWGpAcRYXzCO	Bulk	User 400f9b31	Admin	\N	t	\N	2025-12-15 09:59:46.96189+03	\N	System	\N	bulkuser_400f9b31
ff54c8e3-1939-43fe-b329-0986badc9c1d	bulk_98db9053@example.com	$2a$12$I5RgFTmU0PbeLq.ZeDQtk.d.JA5MvCbDN1qzrw649wYnI5uxk4k1y	Bulk	User 98db9053	Admin	\N	t	\N	2025-12-15 09:59:47.689806+03	\N	System	\N	bulkuser_98db9053
51e1fad7-dfdd-4dbe-bc05-7bf69d331cf8	bulk_9c1f0595@example.com	$2a$12$ThTzbG4SRCXRlA.HknqbgeKnDo6WcLnflokG6My1hI.PvVab6xU16	Bulk	User 9c1f0595	Admin	\N	t	\N	2025-12-15 09:59:48.384668+03	\N	System	\N	bulkuser_9c1f0595
f4c2592b-bac7-4b20-bcf5-840d84d5f22c	testuser1@temp.com	$2a$12$cdnySZiJFe3xev.q9QowZ.RAsZzB1kpCjTyOSqIPGsAKFSO7vRVFu	test	user	Admin	3fa85f64-5717-4562-b3fc-2c963f66afa6	t	2025-12-16 20:30:17.947121+03	2025-12-16 20:30:02.316125+03	2025-12-16 20:30:17.947145+03	System	System	testuser11
a9d084a1-8905-4808-89a5-9e6d7a4abb0f	mert@mert.mert	$2a$12$hUVV8aybh0Rn5NC9AX7SwuO.EVV8oGZ6vXNlwVEiJyJwQaHftMU36	Mert	Mert	Admin	e1afce41-b43c-4dad-a04a-17d2f7248623	t	2025-12-17 16:36:34.68158+03	2025-12-16 10:13:38.728636+03	2025-12-17 16:36:34.681625+03	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	System	mertmert
bd462227-6b1c-4cd3-baa8-421cf3385fe0	mert@mudur.com	$2a$12$ySdgWJ2vtDOJZCQuWRtXeuyUIvHyq9DSWoXWTDcbA1aGnEIwuBipu	Mert	Müdür	Manager	00092bef-683a-44f2-8cbd-22d074fd4bca	t	2025-12-19 13:38:57.302944+03	2025-12-17 18:20:19.37466+03	2025-12-19 13:38:57.302968+03	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	System	mertmudur
e8a604a1-10a0-4ba6-a0f3-17eaacddce0c	kulla@kkldkas.com	$2a$12$rpvrjiM0x0qFyUbJoj5ZxOUSa94CYCFV/z4oriQ/O/N.ijLQjFEOq	kullanici	askdjlkd	Waiter	00092bef-683a-44f2-8cbd-22d074fd4bca	t	\N	2025-12-17 17:01:26.737612+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N	kkkkkullnacini
27c827f8-4681-4f26-b393-53c51c09fe4e	mert@mudur2.com	$2a$12$MllabalWaB4974RZe1Y/TOH6q6Fg/sjOQz5PiH2LPDYyI/BGohjgO	Mert	Müdür	Manager	6298b4f1-33a7-475b-b7b6-28250ed3eaa0	t	2025-12-19 13:39:04.120341+03	2025-12-17 18:23:03.766267+03	2025-12-19 13:39:04.12037+03	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	bd462227-6b1c-4cd3-baa8-421cf3385fe0	mertmudur2
a5e755a4-b5cd-4e39-b9b7-e274eeb83dcd	superadmin_c1732e6c@example.com	$2a$12$BIRSF/yryNvsiQOpZEyT3uc5/lrW9BSEwZ76kH1MrUDtZ2hiOS3Kq	Super	Admin c1732e6c	Manager	\N	t	\N	2025-12-26 15:14:34.760087+03	\N	System	\N	superadmin_c1732e6c
29c5feb0-f793-4543-b50b-be2bea5bb31d	adminn@znl-qr.com	$2a$12$c7/WwyjdJneoW7X2LrSUruD23Qnnoj9pSm6LCvuI.1GZDAWKt3wYG	Admin	User	Admin	\N	t	\N	2025-12-25 08:58:02.215049+03	\N	System	\N	adminn
d32582cd-f25c-4ea5-bb24-e8eedf2992c6	bulk_7adc0ee8@example.com	$2a$12$UIFhhL5du8hgvAdmOgZxZ.5o.twX630d6XnrmPv7dPN0GlEAxWIZK	Bulk	User 7adc0ee8	Admin	\N	t	2025-12-22 10:15:36.172679+03	2025-12-11 18:09:45.133025+03	2025-12-22 10:15:36.172717+03	System	System	bulkuser_7adc0ee8
c482cdbf-d3d3-49d5-a562-48dd3f9646c1	manager@testcafe.com	$2a$12$fj/vL2K12G8a4zpW7fa1QOe.I.SInFC5onrbBT1CGbhmy26LzUiAK	Ahmet	Yılmaz	Manager	765ceefc-af36-420d-9731-0e9d1cc9dcda	t	\N	2025-12-25 09:00:46.79592+03	\N	System	\N	manager1
9f7ebb62-fad5-4ebe-9bbb-2abf077c5d8c	admin@example.com	$2a$12$z05MSMNDnsCaRU4ASje72.hJ0trnLpf/a5pX1y4YnXTWlRW/HL3km	Admin	User	Admin	\N	t	2025-12-25 15:35:14.466909+03	2025-12-22 10:23:51.181884+03	2025-12-25 15:35:14.472892+03	System	System	admin
056c6c95-98c5-41e8-87d8-4fc7079fefec	kamlsd@kasdjlk.com	$2a$12$wByJSD/CCQ62s1xykDcsPeqMV3yGyCQ34XDeB2vImPM65BBtG0Ir6	mert	mert	Waiter	00092bef-683a-44f2-8cbd-22d074fd4bca	t	\N	2025-12-17 18:17:42.892511+03	\N	d32582cd-f25c-4ea5-bb24-e8eedf2992c6	\N	emrerk
9bc7da0f-c3e5-4bd4-84b0-6cf99fc6be04	test_table_8bfd48c1@example.com	$2a$12$keKWMITrlaAb39vZlnmLZeUw9XF4mHScWF4ooWw5DEYgymaDMvq6K	Test	User Table 8bfd48c1	Admin	\N	t	\N	2025-12-26 13:18:59.356689+03	\N	System	\N	testuser_table_8bfd48c1
c67d074a-e0f5-4a64-b5bc-5e9c14c3fbd2	test_table_7ef32c9b@example.com	$2a$12$2QASbp71nYv7FouVWFGsiOQYulfc.HxSsJGz.qG7fK.eolgSHOmM.	Test	User Table 7ef32c9b	Admin	\N	t	\N	2025-12-26 13:35:42.585777+03	\N	System	\N	testuser_table_7ef32c9b
df606dc6-a1b7-4e21-8d0c-25c317fbc88d	test_table_da0f275c@example.com	$2a$12$S/.ABYav7y2xqVj8Bp0ACODuOtldFzAMo7whyjp1W2nxZ50ukxx7O	Test	User Table da0f275c	Admin	\N	t	\N	2025-12-26 14:17:38.122811+03	\N	System	\N	testuser_table_da0f275c
838c161b-6922-4679-b587-58fd850cd83e	test_table_572eeed9@example.com	$2a$12$MM.uAAFH.O5I61FoDtAGpuDD24f1l7QQekGKCEOXebj7YkOxy/aOC	Test	User Table 572eeed9	Admin	\N	t	2025-12-26 15:00:23.831141+03	2025-12-26 15:00:22.882997+03	2025-12-26 15:00:23.831178+03	System	System	testuser_table_572eeed9
5f4dd627-7f94-4044-9a5b-3e3473fab05a	superuser_f39555d0@example.com	$2a$12$wB0bFSG1lxEQZPNDaeR7jOvS0n2LHGd6hZSjrgwDIZHQ2X7tQzgnK	Super	User f39555d0	Admin	\N	t	\N	2025-12-26 15:17:26.972558+03	\N	System	\N	superuser_f39555d0
674936a1-dd7d-4f9e-99be-1449c26a1997	superuser_051590e2@example.com	$2a$12$1vBXkSTpdEGKg4UjGW1M4uFZqLBw/qlpHUihn7Qfz5t1CHB4zlBIe	Super	User 051590e2	Admin	\N	t	\N	2025-12-26 15:17:57.66136+03	\N	System	\N	superuser_051590e2
9c025f7d-c227-4f60-b7e8-26399268127d	superuser_13c5b613@example.com	$2a$12$0rxYt1LL88XaX0psvY/2JuJKDFH9xuYQFtjymwL0/EwKAyiqdSc0C	Super	User 13c5b613	Admin	\N	t	\N	2025-12-26 15:19:05.239407+03	\N	System	\N	superuser_13c5b613
5dfda0fa-ea09-427c-9557-ade5f4517bcf	superuser_8f650c1a@example.com	$2a$12$ifYWQX2EqbeRr2ww6sEuCOz3pFUhkc6Ok93xkK2u024SaNpLoS4ke	Super	User 8f650c1a	Admin	\N	t	\N	2025-12-26 15:19:08.031851+03	\N	System	\N	superuser_8f650c1a
7cc791a4-489b-4313-978f-551353a71d52	superuser_f3a0088c@example.com	$2a$12$y//77hxU8wxITl2FfqmZAOAUMHKL.TBbuRw0KXwKOJ5zAXO.QBVly	Super	User f3a0088c	Admin	\N	t	\N	2025-12-26 15:19:27.838761+03	\N	System	\N	superuser_f3a0088c
af1cb823-159d-4231-90c6-1ec3a9da5a2b	superuser_b67bbd92@example.com	$2a$12$DRKwpi7C.mex80uUmQIXLeQr4MP96VXS4bLAbHAjBGzNErDBO1sPm	Super	User b67bbd92	Admin	\N	t	\N	2025-12-26 15:20:19.560352+03	\N	System	\N	superuser_b67bbd92
75de7f24-9c95-4250-9452-5fb624366198	superadmin_f81a7e2a@example.com	$2a$12$bqEmimV0n5uOu5l6Kpv8weuzuJUS6yRAGaAOdHy01f5gsIYyC0rBa	Super	Admin f81a7e2a	Manager	\N	t	\N	2025-12-26 15:21:21.514614+03	\N	System	\N	superadmin_f81a7e2a
5b74e814-7705-425d-9e65-9ac47533b213	superadmin_e39821d0@example.com	$2a$12$qVVS.vWTVIiKE6RAv/4cIOjoiVYZOLS3cZdKNYAi250MkTY6Jpwua	Super	Admin e39821d0	Manager	\N	t	\N	2025-12-26 15:21:39.902459+03	\N	System	\N	superadmin_e39821d0
99dbfb77-f0cf-4306-8209-3c89a1d90252	superuser_3e85963f@example.com	$2a$12$oW99DPADjAX9a1EWyqLIeu7VNrY0qC10jjAz6XcRWKtcIRZHNb2Du	Super	User 3e85963f	Admin	\N	t	\N	2025-12-26 15:21:49.071969+03	\N	System	\N	superuser_3e85963f
07364542-00eb-4806-8ac5-d6698ef6c4b6	superuser_63a15f1a@example.com	$2a$12$GrY9qn9uLgT89LUcRhZA3.8lkDSeIE9Z0IsfAfVNAJcU1NQAWG7Uq	Super	User 63a15f1a	Admin	\N	t	\N	2025-12-26 15:21:53.152913+03	\N	System	\N	superuser_63a15f1a
c67e4fee-1fe7-49d4-b54c-7c45bb6bbd03	superuser_777e1f04@example.com	$2a$12$xWYbikq5vw7aMhsfuXIwBu6K8dwwRuuJ1F.XA4dpbgu/QMajvHM7m	Super	User 777e1f04	Admin	\N	t	\N	2025-12-26 15:22:02.276773+03	\N	System	\N	superuser_777e1f04
216d602a-4bcf-431a-9f94-78c136d40ba2	superuser_f70dcf84@example.com	$2a$12$v2BlSnWlVs/TKpeWttCC6.29Hva.ohXvLnjRGOE2Nb.qF4BqGTMc.	Super	User f70dcf84	Admin	\N	t	\N	2025-12-26 15:22:31.735858+03	\N	System	\N	superuser_f70dcf84
e203a4ed-18f8-4e74-8eb9-6c22338977d4	superuser_9d6985f5@example.com	$2a$12$vjbDr8/uLRlteSJUtLoh0eVimkSgR9OQfV36Xy2TcmVIm72ZqWaji	Super	User 9d6985f5	Admin	\N	t	\N	2025-12-26 15:23:22.639549+03	\N	System	\N	superuser_9d6985f5
4e1dfec9-755a-43db-80a7-46182cb73c43	superuser_dbe7c1dd@example.com	$2a$12$7rr7HW5u9TY3MJ3HDGz5mu8m2xlqxIrVzOFGKfoKNrVcO7ryvPjQe	Super	User dbe7c1dd	Admin	\N	t	\N	2025-12-26 15:23:25.462405+03	\N	System	\N	superuser_dbe7c1dd
e375e146-143f-427d-9af9-e93d68caba83	superuser_60517580@example.com	$2a$12$71iVDbxr2k4RhusGwNuF8uK6.K4BaWkvQxV8zcF7TEAfh32e78yZu	Super	User 60517580	Admin	\N	t	\N	2025-12-26 15:23:27.837062+03	\N	System	\N	superuser_60517580
03ccfa50-da08-41c3-a6f3-b643d63f74a9	superuser_d0b93b82@example.com	$2a$12$lDjHGnJF/HY4QaBTWKoDJeXvvT4qjvPaSSKOGfXXupw/r.h3MNXkO	Super	User d0b93b82	Admin	\N	t	\N	2025-12-26 15:23:30.934272+03	\N	System	\N	superuser_d0b93b82
680a3d3c-bf37-44a1-b39a-9ef5c1fe1da7	superuser_ff4ac641@example.com	$2a$12$NLYGapJFzRZ90uAGodnbhOQYWXUny4b8Jqbis2YIUQv5gC9o9evYS	Super	User ff4ac641	Admin	\N	t	\N	2025-12-26 15:25:01.454082+03	\N	System	\N	superuser_ff4ac641
a216b862-ec70-4d09-9322-2bf3a443aeaf	superuser_8780d3df@example.com	$2a$12$2CSJI85cHCIm9vGQwXhPR.oSWxnot6iY2RX/d0MeVWIqOoTSo1LHG	Super	User 8780d3df	Admin	\N	t	\N	2025-12-26 15:26:07.094844+03	\N	System	\N	superuser_8780d3df
6af97412-9ded-41ce-8464-e1419660f302	superadmin_4446549e@example.com	$2a$12$c7UXKKSmn92LG54OZIvcreytX6AHDzHEMm4HG8F5MBdcZQRwHQWHK	Super	Admin 4446549e	Manager	\N	t	\N	2025-12-26 15:26:37.122908+03	\N	System	\N	superadmin_4446549e
9be09f09-72d2-4340-9555-442a6d26382d	superadmin_913dbc52@example.com	$2a$12$4NXg7ooCSVpJ4Lty4eQ92unuFdsEzx/RHRhJR1HWp5qBGf1CxSRTO	Super	Admin 913dbc52	Manager	\N	t	\N	2025-12-26 15:27:34.941859+03	\N	System	\N	superadmin_913dbc52
11f2679f-7c3c-46bb-8b1f-3da1f973bb1e	superadmin_fb05bba0@example.com	$2a$12$tXgp1Y4VqOxDPkxpatgmtuCKq02DJMEBQz2ey4Oh7B7/XWj2PKtxe	Super	Admin fb05bba0	Manager	\N	t	\N	2025-12-26 15:28:01.452846+03	\N	System	\N	superadmin_fb05bba0
0d324570-a84e-4ea8-8670-29ac75cb0b58	superadmin_f5f1a2c0@example.com	$2a$12$nMJhJIh7bt5VV98bcRuHTuvbPmZ6K.aWHo4dsLATUJNma3e6h0sWW	Super	Admin f5f1a2c0	Manager	\N	t	\N	2025-12-26 15:28:16.280663+03	\N	System	\N	superadmin_f5f1a2c0
b6431a3a-f502-4ba0-8350-4b7a2befb05f	admin_e5f8803f@example.com	$2a$12$9WDAiroijurz/SHtLXKV9OVDG6C9XYt1GOOERPerPUOHjbQSJcWMm	Admin	User e5f8803f	Admin	\N	t	\N	2025-12-26 15:29:21.166343+03	\N	System	\N	admin_e5f8803f
3089247a-7b7f-4526-91f5-c1a745bd4d2b	admin_132e9535@example.com	$2a$12$expgekXXMYVYOuLEkHh6gOnhGYmzyPtp7p9UDizG56HFWyoXYbN02	Admin	User 132e9535	Admin	\N	t	\N	2025-12-26 15:29:38.193323+03	\N	System	\N	admin_132e9535
6ef91e16-b13e-4f51-8cff-e96505491062	admin_168c248e@example.com	$2a$12$1uUj0/XlV11L8RNDdJhite8R3ft39ZcxBCAwlf5GTt8Vki7awzThu	Admin	User 168c248e	Admin	\N	t	\N	2025-12-26 15:30:48.914829+03	\N	System	\N	admin_168c248e
abf997f1-facf-4e1a-a214-50bbf894b3ed	admin_0e8a463b@example.com	$2a$12$MJ5DcQibE9uPvFzX3cPRDukovbKUMOdxWKgz4yJIZxfukZCe4YNAW	Admin	User 0e8a463b	Admin	\N	t	\N	2025-12-26 15:31:10.706297+03	\N	System	\N	admin_0e8a463b
92bd564e-8a8d-46cd-9fba-1bf4aedc5b96	admin_02be4205@example.com	$2a$12$s8gvsIQMHIFC2Z./.JvScOLXLOatnaUBja8bx08erxAMrRHzpR00K	Admin	User 02be4205	Admin	\N	t	\N	2025-12-26 15:31:44.771945+03	\N	System	\N	admin_02be4205
b08d2156-6c06-468a-9972-2f9a093752ac	mertadmin20@example.com	$2a$12$sVbhG00lz0MYlPjwwIx5T.c6NVTVBo7ZB.orNsllT2xP7xPCMd1hC	Mert	Admin	Admin	\N	t	2025-12-26 17:08:03.938345+03	2025-12-25 17:04:42.858611+03	2025-12-26 17:08:03.938385+03	System	System	mertadmin20
\.


--
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: identity; Owner: znlqr_user
--

COPY identity."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
20251204044053_InitialIdentity	8.0.11
20251205014312_AddUsernameToUser	8.0.11
20251211004257_AddRowVersion	8.0.11
20251211005226_UpdateExistingRowVersionValues	8.0.11
20251211010601_LatestUpdate	8.0.11
20251211013100_RemoveConcurrencySettings	8.0.11
\.


--
-- Data for Name: TableEntities; Type: TABLE DATA; Schema: table; Owner: znlqr_user
--

COPY "table"."TableEntities" ("Id", "Name", "QrCode", "TableGroupId", "HasActiveSession", "TableRequest", "Shape", "CreatedAt", "UpdatedAt", "CreatedBy", "UpdatedBy", "Position") FROM stdin;
5e76aa41-6845-4e3e-806d-db60ad7c32f6	123	677BA7F2034A	ed378699-057a-4d50-ade3-8615557a788c	f	0	\N	2025-12-26 17:05:25.446689+03	\N	78e13161-d28f-468d-98ab-23b23d2d6fc5	\N	\N
3b07160f-d5f8-482a-b81a-66a34e519f9b	Masa 1	3DB2F4FAB26F	e5c04769-5b10-48a3-be37-728de86eeee6	f	0	\N	2025-12-26 17:13:35.67988+03	\N	78e13161-d28f-468d-98ab-23b23d2d6fc5	\N	\N
e2e1f9e8-12f2-449c-a502-4348669aad20	rwaasda	7F9ED367977F	e5c04769-5b10-48a3-be37-728de86eeee6	f	0	\N	2025-12-26 17:17:54.305042+03	\N	78e13161-d28f-468d-98ab-23b23d2d6fc5	\N	\N
889be99d-3aef-4484-9258-e20e2c56a209	fdsfew1	A024D59E4A44	e5c04769-5b10-48a3-be37-728de86eeee6	f	0	\N	2025-12-26 17:18:00.91557+03	\N	78e13161-d28f-468d-98ab-23b23d2d6fc5	\N	\N
\.


--
-- Data for Name: TableGroups; Type: TABLE DATA; Schema: table; Owner: znlqr_user
--

COPY "table"."TableGroups" ("Id", "BusinessId", "Name", "Color", "LayoutData", "Width", "Height", "CreatedAt", "UpdatedAt", "CreatedBy", "UpdatedBy") FROM stdin;
ed378699-057a-4d50-ade3-8615557a788c	c5c8e2fa-c5d1-4538-bf58-114973fb3edc	Teras	#FFB347	\N	\N	\N	2025-12-26 17:05:20.976728+03	\N	78e13161-d28f-468d-98ab-23b23d2d6fc5	\N
f8b3b408-4848-4d71-9076-0b5a44c6ff65	c5c8e2fa-c5d1-4538-bf58-114973fb3edc	lknkljlkn	#50C878	\N	\N	\N	2025-12-26 17:08:21.450491+03	\N	78e13161-d28f-468d-98ab-23b23d2d6fc5	\N
e5c04769-5b10-48a3-be37-728de86eeee6	c5c8e2fa-c5d1-4538-bf58-114973fb3edc	Debug Test	#50C878	\N	\N	\N	2025-12-26 17:12:17.266735+03	\N	78e13161-d28f-468d-98ab-23b23d2d6fc5	\N
\.


--
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: table; Owner: znlqr_user
--

COPY "table"."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
20251222065138_InitialTables	8.0.11
\.


--
-- Name: Businesses PK_Businesses; Type: CONSTRAINT; Schema: business; Owner: znlqr_user
--

ALTER TABLE ONLY business."Businesses"
    ADD CONSTRAINT "PK_Businesses" PRIMARY KEY ("Id");


--
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: business; Owner: znlqr_user
--

ALTER TABLE ONLY business."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- Name: PasswordResetTokens PK_PasswordResetTokens; Type: CONSTRAINT; Schema: identity; Owner: znlqr_user
--

ALTER TABLE ONLY identity."PasswordResetTokens"
    ADD CONSTRAINT "PK_PasswordResetTokens" PRIMARY KEY ("Id");


--
-- Name: RefreshTokens PK_RefreshTokens; Type: CONSTRAINT; Schema: identity; Owner: znlqr_user
--

ALTER TABLE ONLY identity."RefreshTokens"
    ADD CONSTRAINT "PK_RefreshTokens" PRIMARY KEY ("Id");


--
-- Name: Users PK_Users; Type: CONSTRAINT; Schema: identity; Owner: znlqr_user
--

ALTER TABLE ONLY identity."Users"
    ADD CONSTRAINT "PK_Users" PRIMARY KEY ("Id");


--
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: identity; Owner: znlqr_user
--

ALTER TABLE ONLY identity."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- Name: TableEntities PK_TableEntities; Type: CONSTRAINT; Schema: table; Owner: znlqr_user
--

ALTER TABLE ONLY "table"."TableEntities"
    ADD CONSTRAINT "PK_TableEntities" PRIMARY KEY ("Id");


--
-- Name: TableGroups PK_TableGroups; Type: CONSTRAINT; Schema: table; Owner: znlqr_user
--

ALTER TABLE ONLY "table"."TableGroups"
    ADD CONSTRAINT "PK_TableGroups" PRIMARY KEY ("Id");


--
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: table; Owner: znlqr_user
--

ALTER TABLE ONLY "table"."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- Name: IX_Businesses_Slug; Type: INDEX; Schema: business; Owner: znlqr_user
--

CREATE UNIQUE INDEX "IX_Businesses_Slug" ON business."Businesses" USING btree ("Slug");


--
-- Name: IX_PasswordResetTokens_Token; Type: INDEX; Schema: identity; Owner: znlqr_user
--

CREATE INDEX "IX_PasswordResetTokens_Token" ON identity."PasswordResetTokens" USING btree ("Token");


--
-- Name: IX_RefreshTokens_Token; Type: INDEX; Schema: identity; Owner: znlqr_user
--

CREATE UNIQUE INDEX "IX_RefreshTokens_Token" ON identity."RefreshTokens" USING btree ("Token");


--
-- Name: IX_RefreshTokens_UserId; Type: INDEX; Schema: identity; Owner: znlqr_user
--

CREATE INDEX "IX_RefreshTokens_UserId" ON identity."RefreshTokens" USING btree ("UserId");


--
-- Name: IX_Users_BusinessId; Type: INDEX; Schema: identity; Owner: znlqr_user
--

CREATE INDEX "IX_Users_BusinessId" ON identity."Users" USING btree ("BusinessId");


--
-- Name: IX_Users_Email; Type: INDEX; Schema: identity; Owner: znlqr_user
--

CREATE UNIQUE INDEX "IX_Users_Email" ON identity."Users" USING btree ("Email");


--
-- Name: IX_Users_Username; Type: INDEX; Schema: identity; Owner: znlqr_user
--

CREATE UNIQUE INDEX "IX_Users_Username" ON identity."Users" USING btree ("Username");


--
-- Name: IX_TableEntities_TableGroupId; Type: INDEX; Schema: table; Owner: znlqr_user
--

CREATE INDEX "IX_TableEntities_TableGroupId" ON "table"."TableEntities" USING btree ("TableGroupId");


--
-- Name: RefreshTokens FK_RefreshTokens_Users_UserId; Type: FK CONSTRAINT; Schema: identity; Owner: znlqr_user
--

ALTER TABLE ONLY identity."RefreshTokens"
    ADD CONSTRAINT "FK_RefreshTokens_Users_UserId" FOREIGN KEY ("UserId") REFERENCES identity."Users"("Id") ON DELETE CASCADE;


--
-- Name: TableEntities FK_TableEntities_TableGroups_TableGroupId; Type: FK CONSTRAINT; Schema: table; Owner: znlqr_user
--

ALTER TABLE ONLY "table"."TableEntities"
    ADD CONSTRAINT "FK_TableEntities_TableGroups_TableGroupId" FOREIGN KEY ("TableGroupId") REFERENCES "table"."TableGroups"("Id") ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO znlqr_user;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES  TO znlqr_user;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES  TO znlqr_user;


--
-- PostgreSQL database dump complete
--

\unrestrict 0J9MWtuTzLN3IFPL0xLZ3xgoB37dAhPsZ45T1C10KOyMKr7AdtbxEha13E8g6x3

--
-- PostgreSQL database cluster dump complete
--

