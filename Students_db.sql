PGDMP         /                {            Students_db    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16513    Students_db    DATABASE     �   CREATE DATABASE "Students_db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Students_db";
                postgres    false            �            1259    16523    student_seq    SEQUENCE     u   CREATE SEQUENCE public.student_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.student_seq;
       public          postgres    false            �            1259    16535    students    TABLE     �   CREATE TABLE public.students (
    date_of_birth date,
    id bigint NOT NULL,
    email character varying(255),
    first_name character varying(255),
    last_name character varying(255)
);
    DROP TABLE public.students;
       public         heap    postgres    false            �            1259    16534    students_seq    SEQUENCE     v   CREATE SEQUENCE public.students_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.students_seq;
       public          postgres    false            �          0    16535    students 
   TABLE DATA           S   COPY public.students (date_of_birth, id, email, first_name, last_name) FROM stdin;
    public          postgres    false    216   �                  0    0    student_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.student_seq', 1, false);
          public          postgres    false    214                       0    0    students_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.students_seq', 1, false);
          public          postgres    false    215            g           2606    16543    students students_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.students DROP CONSTRAINT students_email_key;
       public            postgres    false    216            i           2606    16541    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    216            �   W   x�3204�54�54�4�H-)rH�M���K���0��֋M���.l�220��50�54�4��,K�C�1�¦.�3�:b���� ��-     