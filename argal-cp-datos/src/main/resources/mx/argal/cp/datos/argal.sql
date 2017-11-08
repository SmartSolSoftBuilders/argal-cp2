--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-11-07 23:01:44

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 7 (class 2615 OID 115969)
-- Name: seguridad; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA seguridad;


ALTER SCHEMA seguridad OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2285 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 205 (class 1259 OID 116226)
-- Name: CIRUGIA_SOLICITADA; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "CIRUGIA_SOLICITADA" (
    "ID_CIRUGIA_SOLICITADA" integer NOT NULL,
    "ID_DIAGNOSTICO_INGRESO" integer,
    "ID_PROCEDIMIENTO_1" integer,
    "ID_PROCEDIMIENTO_2" integer,
    "ID_PROCEDIMIENTO_3" integer,
    "FUNDAMENTOS_DIAGNOSTICO" character varying,
    "ID_ICD_OTRASENF_1" integer,
    "ID_ICD_OTRASENF_2" integer,
    "ID_ICD_OTRASENF_3" integer,
    "ID_ICD_OTRASENF_4" integer,
    "ID_ICD_OTRASENF_5" integer,
    "NUM_CIRUGIA" integer
);


ALTER TABLE "CIRUGIA_SOLICITADA" OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 115962)
-- Name: CPT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "CPT" (
    "ID_CPT" integer NOT NULL,
    "DESCRIPCION" character varying(125),
    "ES_CATALOGO" boolean,
    "CVE_CPT" character varying(30)
);


ALTER TABLE "CPT" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 116211)
-- Name: EMPRESA; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "EMPRESA" (
    "ID_EMPRESA" integer NOT NULL,
    "NOMBRE_EMPRESA" character varying(80),
    "NOMBRE_CORTO" character varying(30),
    "ACTIVA" boolean
);


ALTER TABLE "EMPRESA" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 116329)
-- Name: HOSPITAL; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "HOSPITAL" (
    "ID_HOSP" integer NOT NULL,
    "NOMBRE_HOSP" character varying(55),
    "DIR_HOSP" character varying(90),
    "COL_HOSP" character varying(45),
    "MUN_DEL_HOSP" character varying(45),
    "ESTADO_HOSP" character varying(45),
    "CP_HOSP" character varying(45),
    "CONMUTADOR_HOSP" character varying(45),
    "ACTIVO_HOSP" boolean,
    "TEL_DIR_MOD_HOSP" character varying(45),
    "PAIS_HOSP" character varying(45),
    "CIUDAD_HOSP" character varying(45)
);


ALTER TABLE "HOSPITAL" OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 115956)
-- Name: ICD; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "ICD" (
    "ID_ICD" integer NOT NULL,
    "DESCRIPCION" character varying(125),
    "ES_CATALOGO" boolean,
    "CVE_ICD" character varying(25)
);


ALTER TABLE "ICD" OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 116297)
-- Name: INSUMO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "INSUMO" (
    "ID_INSUMO" integer NOT NULL,
    "DESCRIPCION" character varying(200),
    "MONTO" double precision,
    "ID_SOLICITUD_CIRUGIA_PROGRAMADA" integer
);


ALTER TABLE "INSUMO" OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 116203)
-- Name: MEDICO_TRATANTE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "MEDICO_TRATANTE" (
    "ID_MEDICO_TRATANTE" integer NOT NULL,
    "NOMBRE_MEDICO_TRATANTE" character varying,
    "APP_MEDICO_TRATANTE" character varying(50),
    "APM_MEDICO_TRATANTE" character varying(50),
    id_t_usuario integer
);


ALTER TABLE "MEDICO_TRATANTE" OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 116272)
-- Name: PROCEDIMIENTO_SOLICITADO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "PROCEDIMIENTO_SOLICITADO" (
    "ID_PROCEDIMIENTO_SOLICITADO" integer NOT NULL,
    "ID_CPT" integer,
    "AUTORIZADO" boolean,
    "HONORARIOS_MED_DICTAMINADOS" double precision,
    "HONORARIOS_MED_NEGOCIADOS" double precision,
    "HONORARIOS_MED_AUTORIZADOS" double precision,
    "HONORARIOS_AY1_DICTAMINADOS" double precision,
    "HONORARIOS_AY1_NEGOCIADOS" double precision,
    "HONORARIOS_AY1_AUTORIZADOS" double precision,
    "HONORARIOS_ANE_DICTAMINADOS" double precision,
    "HONORARIOS_ANE_NEGOCIADOS" double precision,
    "HONORARIOS_ANE_AUTORIZADOS" double precision,
    "HONORARIOS_AY2_DICTAMINADOS" double precision,
    "HONORARIOS_AY2_NEGOCIADOS" double precision,
    "HONORARIOS_AY2_AUTORIZADOS" double precision,
    "NUM_PROCEDIMIENTO" integer
);


ALTER TABLE "PROCEDIMIENTO_SOLICITADO" OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 99567)
-- Name: SOLICITUD_CIRUGIA_PROGRAMADA; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "SOLICITUD_CIRUGIA_PROGRAMADA" (
    "ID_SOLICITUD_CIRUGIA_PROGRAMADA" integer NOT NULL,
    "NOMBRE_BENEFICIARIO" character varying(80),
    "APP_BENEFICIARIO" character varying(80),
    "APM_BENEFICIARIO" character varying(80),
    "EMPRESA_BENEFICIARIO" character varying(80),
    "NUM_NOMINA_BENEFICIARIO" character varying(40),
    "FECHA_SOLICITUD" date,
    "TIPO_CIRUGIA_PROGRAMADA" integer,
    "EDAD_BENEFICIARIO" integer,
    "SEXO_BENEFICIARIO" character varying,
    "ID_MEDICO_TRATANTE" integer,
    "STATUS" integer,
    "FECHA_SOLICITUD_ELABORACION" date,
    "ID_EMPRESA" integer,
    "ID_CIRUGIA_SOLICITADA_1" integer,
    "ID_CIRUGIA_SOLICITADA_2" integer,
    "ID_HOSPITAL" integer,
    "TIEMPO_CIRUGIA" character varying(5),
    "TIEMPO_SALA_RECUPERACION" character varying,
    "DESC_RES_PREOPERATORIOS" character varying(500),
    "RES_PREOPERATORIOS" interval,
    "RIESGOS_QUIRURGICOS_1" integer DEFAULT 0,
    "RIESGOS_QUIRURGICOS_2" integer DEFAULT 0,
    "RIESGOS_QUIRURGICOS_3" integer DEFAULT 0,
    "RIESGOS_QUIRURGICOS_4" integer DEFAULT 0,
    "NOMBRE_AYUDANTE_1" character varying(100),
    "NOMBRE_AYUDANTE_2" character varying(100),
    "NOMBRE_ANESTESIOLOGO" character varying(100),
    "NOMBRE_TITULAR" character varying,
    "APP_TITULAR" character varying(80),
    "APM_TITULAR" character varying(80)
);


ALTER TABLE "SOLICITUD_CIRUGIA_PROGRAMADA" OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 116099)
-- Name: acl_class; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE acl_class (
    id integer NOT NULL,
    class character varying(100) NOT NULL
);


ALTER TABLE acl_class OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 116102)
-- Name: acl_class_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE acl_class_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acl_class_id_seq OWNER TO postgres;

--
-- TOC entry 2286 (class 0 OID 0)
-- Dependencies: 191
-- Name: acl_class_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE acl_class_id_seq OWNED BY acl_class.id;


--
-- TOC entry 192 (class 1259 OID 116104)
-- Name: acl_entry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE acl_entry (
    id integer NOT NULL,
    ace_order integer NOT NULL,
    audit_failure boolean NOT NULL,
    audit_success boolean NOT NULL,
    granting boolean NOT NULL,
    mask integer NOT NULL,
    acl_object_identity integer NOT NULL,
    sid integer NOT NULL
);


ALTER TABLE acl_entry OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 116107)
-- Name: acl_entry_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE acl_entry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acl_entry_id_seq OWNER TO postgres;

--
-- TOC entry 2287 (class 0 OID 0)
-- Dependencies: 193
-- Name: acl_entry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE acl_entry_id_seq OWNED BY acl_entry.id;


--
-- TOC entry 194 (class 1259 OID 116109)
-- Name: acl_object_identity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE acl_object_identity (
    id integer NOT NULL,
    entries_inheriting boolean NOT NULL,
    object_id_identity integer NOT NULL,
    object_id_class integer NOT NULL,
    parent_object integer,
    owner_sid integer
);


ALTER TABLE acl_object_identity OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 116112)
-- Name: acl_object_identity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE acl_object_identity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acl_object_identity_id_seq OWNER TO postgres;

--
-- TOC entry 2288 (class 0 OID 0)
-- Dependencies: 195
-- Name: acl_object_identity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE acl_object_identity_id_seq OWNED BY acl_object_identity.id;


--
-- TOC entry 196 (class 1259 OID 116114)
-- Name: acl_sid; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE acl_sid (
    id integer NOT NULL,
    principal boolean NOT NULL,
    sid character varying(100) NOT NULL
);


ALTER TABLE acl_sid OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 116117)
-- Name: acl_sid_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE acl_sid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acl_sid_id_seq OWNER TO postgres;

--
-- TOC entry 2289 (class 0 OID 0)
-- Dependencies: 197
-- Name: acl_sid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE acl_sid_id_seq OWNED BY acl_sid.id;


--
-- TOC entry 206 (class 1259 OID 116270)
-- Name: sec_cirugia_solicitada; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sec_cirugia_solicitada
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sec_cirugia_solicitada OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 116377)
-- Name: sec_insumo; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sec_insumo
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sec_insumo OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 116327)
-- Name: sec_procedimiento_solicitado; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sec_procedimiento_solicitado
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sec_procedimiento_solicitado OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 99572)
-- Name: sec_solicitud_c_p; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sec_solicitud_c_p
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sec_solicitud_c_p OWNER TO postgres;

SET search_path = seguridad, pg_catalog;

--
-- TOC entry 198 (class 1259 OID 116119)
-- Name: sec_user; Type: SEQUENCE; Schema: seguridad; Owner: postgres
--

CREATE SEQUENCE sec_user
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sec_user OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 116121)
-- Name: t_opcion_menu; Type: TABLE; Schema: seguridad; Owner: postgres
--

CREATE TABLE t_opcion_menu (
    id_t_opcion integer NOT NULL,
    v_descripcion character varying(120) NOT NULL,
    v_opcion character varying(80) NOT NULL,
    v_url character varying(200),
    id_t_opcion_padre integer
);


ALTER TABLE t_opcion_menu OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 116124)
-- Name: t_r_usuario_rol; Type: TABLE; Schema: seguridad; Owner: postgres
--

CREATE TABLE t_r_usuario_rol (
    id_tr_usuario integer NOT NULL,
    id_tr_rol integer NOT NULL
);


ALTER TABLE t_r_usuario_rol OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 116127)
-- Name: t_rol_seguridad; Type: TABLE; Schema: seguridad; Owner: postgres
--

CREATE TABLE t_rol_seguridad (
    id_t_rol integer NOT NULL,
    v_rol character varying(30) NOT NULL,
    l_rol_activo boolean DEFAULT true NOT NULL
);


ALTER TABLE t_rol_seguridad OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 116131)
-- Name: t_usuario_seguridad; Type: TABLE; Schema: seguridad; Owner: postgres
--

CREATE TABLE t_usuario_seguridad (
    id_t_usuario integer NOT NULL,
    v_username character varying(50) NOT NULL,
    v_password character varying(25) NOT NULL,
    v_nombre_usuario character varying(100) NOT NULL,
    l_usuario_activo boolean DEFAULT true NOT NULL
);


ALTER TABLE t_usuario_seguridad OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 2090 (class 2604 OID 116135)
-- Name: acl_class id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acl_class ALTER COLUMN id SET DEFAULT nextval('acl_class_id_seq'::regclass);


--
-- TOC entry 2091 (class 2604 OID 116136)
-- Name: acl_entry id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acl_entry ALTER COLUMN id SET DEFAULT nextval('acl_entry_id_seq'::regclass);


--
-- TOC entry 2092 (class 2604 OID 116137)
-- Name: acl_object_identity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acl_object_identity ALTER COLUMN id SET DEFAULT nextval('acl_object_identity_id_seq'::regclass);


--
-- TOC entry 2093 (class 2604 OID 116138)
-- Name: acl_sid id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acl_sid ALTER COLUMN id SET DEFAULT nextval('acl_sid_id_seq'::regclass);


--
-- TOC entry 2136 (class 2606 OID 116233)
-- Name: CIRUGIA_SOLICITADA CIRUGIA_SOLICITADA_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CIRUGIA_SOLICITADA"
    ADD CONSTRAINT "CIRUGIA_SOLICITADA_pkey" PRIMARY KEY ("ID_CIRUGIA_SOLICITADA");


--
-- TOC entry 2134 (class 2606 OID 116215)
-- Name: EMPRESA EMPRESA_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EMPRESA"
    ADD CONSTRAINT "EMPRESA_pkey" PRIMARY KEY ("ID_EMPRESA");


--
-- TOC entry 2099 (class 2606 OID 115960)
-- Name: ICD ICD_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ICD"
    ADD CONSTRAINT "ICD_pkey" PRIMARY KEY ("ID_ICD");


--
-- TOC entry 2140 (class 2606 OID 116301)
-- Name: INSUMO INSUMO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "INSUMO"
    ADD CONSTRAINT "INSUMO_pkey" PRIMARY KEY ("ID_INSUMO");


--
-- TOC entry 2132 (class 2606 OID 116207)
-- Name: MEDICO_TRATANTE MEDICO_TRATANTE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "MEDICO_TRATANTE"
    ADD CONSTRAINT "MEDICO_TRATANTE_pkey" PRIMARY KEY ("ID_MEDICO_TRATANTE");


--
-- TOC entry 2138 (class 2606 OID 116276)
-- Name: PROCEDIMIENTO_SOLICITADO PROCEDIMIENTO_SOLICITADO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "PROCEDIMIENTO_SOLICITADO"
    ADD CONSTRAINT "PROCEDIMIENTO_SOLICITADO_pkey" PRIMARY KEY ("ID_PROCEDIMIENTO_SOLICITADO");


--
-- TOC entry 2097 (class 2606 OID 99571)
-- Name: SOLICITUD_CIRUGIA_PROGRAMADA SOLICITUD_CIRUGIA_PROGRAMADA_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SOLICITUD_CIRUGIA_PROGRAMADA"
    ADD CONSTRAINT "SOLICITUD_CIRUGIA_PROGRAMADA_pkey" PRIMARY KEY ("ID_SOLICITUD_CIRUGIA_PROGRAMADA");


--
-- TOC entry 2103 (class 2606 OID 116140)
-- Name: acl_class acl_class_class_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acl_class
    ADD CONSTRAINT acl_class_class_key UNIQUE (class);


--
-- TOC entry 2105 (class 2606 OID 116142)
-- Name: acl_class acl_class_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acl_class
    ADD CONSTRAINT acl_class_pkey PRIMARY KEY (id);


--
-- TOC entry 2107 (class 2606 OID 116144)
-- Name: acl_entry acl_entry_acl_object_identity_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acl_entry
    ADD CONSTRAINT acl_entry_acl_object_identity_key UNIQUE (acl_object_identity, ace_order);


--
-- TOC entry 2109 (class 2606 OID 116146)
-- Name: acl_entry acl_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acl_entry
    ADD CONSTRAINT acl_entry_pkey PRIMARY KEY (id);


--
-- TOC entry 2111 (class 2606 OID 116148)
-- Name: acl_object_identity acl_object_identity_object_id_class_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acl_object_identity
    ADD CONSTRAINT acl_object_identity_object_id_class_key UNIQUE (object_id_class, object_id_identity);


--
-- TOC entry 2113 (class 2606 OID 116150)
-- Name: acl_object_identity acl_object_identity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acl_object_identity
    ADD CONSTRAINT acl_object_identity_pkey PRIMARY KEY (id);


--
-- TOC entry 2115 (class 2606 OID 116152)
-- Name: acl_sid acl_sid_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acl_sid
    ADD CONSTRAINT acl_sid_pkey PRIMARY KEY (id);


--
-- TOC entry 2117 (class 2606 OID 116154)
-- Name: acl_sid acl_sid_sid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acl_sid
    ADD CONSTRAINT acl_sid_sid_key UNIQUE (sid, principal);


--
-- TOC entry 2101 (class 2606 OID 115966)
-- Name: CPT pc_cpt; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CPT"
    ADD CONSTRAINT pc_cpt UNIQUE ("ID_CPT");


--
-- TOC entry 2142 (class 2606 OID 116336)
-- Name: HOSPITAL pk_hosp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HOSPITAL"
    ADD CONSTRAINT pk_hosp PRIMARY KEY ("ID_HOSP");


SET search_path = seguridad, pg_catalog;

--
-- TOC entry 2120 (class 2606 OID 116156)
-- Name: t_opcion_menu t_opcion_pkey; Type: CONSTRAINT; Schema: seguridad; Owner: postgres
--

ALTER TABLE ONLY t_opcion_menu
    ADD CONSTRAINT t_opcion_pkey PRIMARY KEY (id_t_opcion);


--
-- TOC entry 2122 (class 2606 OID 116158)
-- Name: t_r_usuario_rol t_r_usuario_rol_pkey; Type: CONSTRAINT; Schema: seguridad; Owner: postgres
--

ALTER TABLE ONLY t_r_usuario_rol
    ADD CONSTRAINT t_r_usuario_rol_pkey PRIMARY KEY (id_tr_usuario, id_tr_rol);


--
-- TOC entry 2124 (class 2606 OID 116160)
-- Name: t_rol_seguridad t_rol_seguridad_pkey; Type: CONSTRAINT; Schema: seguridad; Owner: postgres
--

ALTER TABLE ONLY t_rol_seguridad
    ADD CONSTRAINT t_rol_seguridad_pkey PRIMARY KEY (id_t_rol);


--
-- TOC entry 2126 (class 2606 OID 116162)
-- Name: t_rol_seguridad t_rol_seguridad_v_rol_key; Type: CONSTRAINT; Schema: seguridad; Owner: postgres
--

ALTER TABLE ONLY t_rol_seguridad
    ADD CONSTRAINT t_rol_seguridad_v_rol_key UNIQUE (v_rol);


--
-- TOC entry 2128 (class 2606 OID 116164)
-- Name: t_usuario_seguridad t_usuario_seguridad_pkey; Type: CONSTRAINT; Schema: seguridad; Owner: postgres
--

ALTER TABLE ONLY t_usuario_seguridad
    ADD CONSTRAINT t_usuario_seguridad_pkey PRIMARY KEY (id_t_usuario);


--
-- TOC entry 2130 (class 2606 OID 116166)
-- Name: t_usuario_seguridad t_usuario_seguridad_v_username_key; Type: CONSTRAINT; Schema: seguridad; Owner: postgres
--

ALTER TABLE ONLY t_usuario_seguridad
    ADD CONSTRAINT t_usuario_seguridad_v_username_key UNIQUE (v_username);


--
-- TOC entry 2118 (class 1259 OID 116167)
-- Name: fki_t_opcion_padre; Type: INDEX; Schema: seguridad; Owner: postgres
--

CREATE INDEX fki_t_opcion_padre ON t_opcion_menu USING btree (id_t_opcion);


SET search_path = public, pg_catalog;

--
-- TOC entry 2161 (class 2606 OID 116322)
-- Name: INSUMO FKINSUMOSCP; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "INSUMO"
    ADD CONSTRAINT "FKINSUMOSCP" FOREIGN KEY ("ID_SOLICITUD_CIRUGIA_PROGRAMADA") REFERENCES "SOLICITUD_CIRUGIA_PROGRAMADA"("ID_SOLICITUD_CIRUGIA_PROGRAMADA");


--
-- TOC entry 2157 (class 2606 OID 116282)
-- Name: CIRUGIA_SOLICITADA FK_CIRUGIASOLPROC1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CIRUGIA_SOLICITADA"
    ADD CONSTRAINT "FK_CIRUGIASOLPROC1" FOREIGN KEY ("ID_PROCEDIMIENTO_1") REFERENCES "PROCEDIMIENTO_SOLICITADO"("ID_PROCEDIMIENTO_SOLICITADO");


--
-- TOC entry 2158 (class 2606 OID 116287)
-- Name: CIRUGIA_SOLICITADA FK_CIRUGIASOLPROC2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CIRUGIA_SOLICITADA"
    ADD CONSTRAINT "FK_CIRUGIASOLPROC2" FOREIGN KEY ("ID_PROCEDIMIENTO_2") REFERENCES "PROCEDIMIENTO_SOLICITADO"("ID_PROCEDIMIENTO_SOLICITADO");


--
-- TOC entry 2159 (class 2606 OID 116292)
-- Name: CIRUGIA_SOLICITADA FK_CIRUGIASOLPROC3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CIRUGIA_SOLICITADA"
    ADD CONSTRAINT "FK_CIRUGIASOLPROC3" FOREIGN KEY ("ID_PROCEDIMIENTO_3") REFERENCES "PROCEDIMIENTO_SOLICITADO"("ID_PROCEDIMIENTO_SOLICITADO");


--
-- TOC entry 2145 (class 2606 OID 116259)
-- Name: SOLICITUD_CIRUGIA_PROGRAMADA FK_CIRUG_SOL1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SOLICITUD_CIRUGIA_PROGRAMADA"
    ADD CONSTRAINT "FK_CIRUG_SOL1" FOREIGN KEY ("ID_CIRUGIA_SOLICITADA_1") REFERENCES "CIRUGIA_SOLICITADA"("ID_CIRUGIA_SOLICITADA");


--
-- TOC entry 2146 (class 2606 OID 116264)
-- Name: SOLICITUD_CIRUGIA_PROGRAMADA FK_CIRUG_SOL2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SOLICITUD_CIRUGIA_PROGRAMADA"
    ADD CONSTRAINT "FK_CIRUG_SOL2" FOREIGN KEY ("ID_CIRUGIA_SOLICITADA_2") REFERENCES "ICD"("ID_ICD");


--
-- TOC entry 2144 (class 2606 OID 116221)
-- Name: SOLICITUD_CIRUGIA_PROGRAMADA FK_CP_MED_TRAT; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SOLICITUD_CIRUGIA_PROGRAMADA"
    ADD CONSTRAINT "FK_CP_MED_TRAT" FOREIGN KEY ("ID_MEDICO_TRATANTE") REFERENCES "MEDICO_TRATANTE"("ID_MEDICO_TRATANTE");


--
-- TOC entry 2155 (class 2606 OID 116234)
-- Name: CIRUGIA_SOLICITADA FK_DIAGING; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CIRUGIA_SOLICITADA"
    ADD CONSTRAINT "FK_DIAGING" FOREIGN KEY ("ID_DIAGNOSTICO_INGRESO") REFERENCES "ICD"("ID_ICD");


--
-- TOC entry 2143 (class 2606 OID 116216)
-- Name: SOLICITUD_CIRUGIA_PROGRAMADA FK_EMPRESA_CP; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SOLICITUD_CIRUGIA_PROGRAMADA"
    ADD CONSTRAINT "FK_EMPRESA_CP" FOREIGN KEY ("ID_EMPRESA") REFERENCES "EMPRESA"("ID_EMPRESA");


--
-- TOC entry 2147 (class 2606 OID 116337)
-- Name: SOLICITUD_CIRUGIA_PROGRAMADA FK_HOSP_CP; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SOLICITUD_CIRUGIA_PROGRAMADA"
    ADD CONSTRAINT "FK_HOSP_CP" FOREIGN KEY ("ID_HOSPITAL") REFERENCES "HOSPITAL"("ID_HOSP");


--
-- TOC entry 2156 (class 2606 OID 116254)
-- Name: CIRUGIA_SOLICITADA FK_OTRASENF1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CIRUGIA_SOLICITADA"
    ADD CONSTRAINT "FK_OTRASENF1" FOREIGN KEY ("ID_ICD_OTRASENF_1") REFERENCES "ICD"("ID_ICD");


--
-- TOC entry 2160 (class 2606 OID 116277)
-- Name: PROCEDIMIENTO_SOLICITADO FK_PROCSOL_CPT; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "PROCEDIMIENTO_SOLICITADO"
    ADD CONSTRAINT "FK_PROCSOL_CPT" FOREIGN KEY ("ID_CPT") REFERENCES "CPT"("ID_CPT");


--
-- TOC entry 2148 (class 2606 OID 116168)
-- Name: acl_entry fk_acl_entry_acl_object_identity; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acl_entry
    ADD CONSTRAINT fk_acl_entry_acl_object_identity FOREIGN KEY (acl_object_identity) REFERENCES acl_object_identity(id);


--
-- TOC entry 2149 (class 2606 OID 116173)
-- Name: acl_entry fk_acl_entry_acl_sid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acl_entry
    ADD CONSTRAINT fk_acl_entry_acl_sid FOREIGN KEY (sid) REFERENCES acl_sid(id);


--
-- TOC entry 2150 (class 2606 OID 116178)
-- Name: acl_object_identity fk_acl_object_identity_acl_class; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acl_object_identity
    ADD CONSTRAINT fk_acl_object_identity_acl_class FOREIGN KEY (object_id_class) REFERENCES acl_class(id);


--
-- TOC entry 2151 (class 2606 OID 116183)
-- Name: acl_object_identity fk_acl_object_identity_acl_sid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acl_object_identity
    ADD CONSTRAINT fk_acl_object_identity_acl_sid FOREIGN KEY (owner_sid) REFERENCES acl_sid(id);


SET search_path = seguridad, pg_catalog;

--
-- TOC entry 2152 (class 2606 OID 116188)
-- Name: t_opcion_menu fk_t_opcion_padre; Type: FK CONSTRAINT; Schema: seguridad; Owner: postgres
--

ALTER TABLE ONLY t_opcion_menu
    ADD CONSTRAINT fk_t_opcion_padre FOREIGN KEY (id_t_opcion) REFERENCES t_opcion_menu(id_t_opcion);


--
-- TOC entry 2153 (class 2606 OID 116193)
-- Name: t_r_usuario_rol t_r_usuario_rol_id_tr_rol_fkey; Type: FK CONSTRAINT; Schema: seguridad; Owner: postgres
--

ALTER TABLE ONLY t_r_usuario_rol
    ADD CONSTRAINT t_r_usuario_rol_id_tr_rol_fkey FOREIGN KEY (id_tr_rol) REFERENCES t_rol_seguridad(id_t_rol);


--
-- TOC entry 2154 (class 2606 OID 116198)
-- Name: t_r_usuario_rol t_r_usuario_rol_id_tr_usuario_fkey; Type: FK CONSTRAINT; Schema: seguridad; Owner: postgres
--

ALTER TABLE ONLY t_r_usuario_rol
    ADD CONSTRAINT t_r_usuario_rol_id_tr_usuario_fkey FOREIGN KEY (id_tr_usuario) REFERENCES t_usuario_seguridad(id_t_usuario);


-- Completed on 2017-11-07 23:01:44

--
-- PostgreSQL database dump complete
--

