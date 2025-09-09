SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

\restrict h9RCO3INDTIBddNXDmdy2GsLKt1tEAb3pm2iBfbJJpvHYsOArl40LeuTcabdkX1

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."roles" ("id", "name") FROM stdin;
4158bb4f-8350-4081-99e5-47aed79a9212	admin
c48cb8cb-36d7-4241-94e3-f0e523d60690	member
73c170fb-9448-49aa-8837-1e639a4eeaa8	viewer
fce0bc7a-8c1f-413a-97d4-269b7ad513e4	agency_admin
c14cbc68-9a11-4df0-b137-4944c85488a4	agency_member
b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d	manager
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."users" ("id", "clerk_user_id", "email", "first_name", "last_name", "username", "image_url", "profile_image_url", "external_id", "password_enabled", "two_factor_enabled", "last_sign_in_at", "created_at", "updated_at", "primary_email_address_id", "primary_phone_number_id", "primary_web3_wallet_id", "all_step_completed", "user_role_id") FROM stdin;
9c9f2092-a974-4d9d-9321-9c0aa2984b52	user_30VUxwbo1DtZwBDp2sid5ONXjlI	graygenetic@mechanicspedia.com	Chales	Gray	\N	https://img.clerk.com/eyJ0eXBlIjoiZGVmYXVsdCIsImlpZCI6Imluc18yeTJqZ0p4UHo1UlZvSWtEaFF2MVNwQkh4Zm4iLCJyaWQiOiJ1c2VyXzMwVlV4d2JvMUR0WndCRHAyc2lkNU9OWGpsSSIsImluaXRpYWxzIjoiQ0cifQ	\N	\N	t	f	\N	2025-09-04 18:39:23.388+00	2025-09-04 18:39:23.388+00	\N	\N	\N	f	\N
68791c34-6384-4d8f-b544-5188033fa7ac	user_32PxnTy14RvmyUb08WYMu0xwNlJ	57y50gj3od@mkzaso.com	Soumya Ranjan	Behera	\N	https://img.clerk.com/eyJ0eXBlIjoiZGVmYXVsdCIsImlpZCI6Imluc18yeTJqZ0p4UHo1UlZvSWtEaFF2MVNwQkh4Zm4iLCJyaWQiOiJ1c2VyXzMyUHhuVHkxNFJ2bXlVYjA4V1lNdTB4d05sSiIsImluaXRpYWxzIjoiU0IifQ	\N	\N	t	f	\N	2025-09-08 12:56:30.135+00	2025-09-08 12:56:57.488+00	\N	\N	\N	f	4158bb4f-8350-4081-99e5-47aed79a9212
13021275-88df-4d55-99f4-88e7b2b8076a	user_32GQ31FaWBbMLOb1JNpos9xlAbN	tibahica@cyclelove.cc	Mansh	Soni	\N	https://img.clerk.com/eyJ0eXBlIjoiZGVmYXVsdCIsImlpZCI6Imluc18yeTJqZ0p4UHo1UlZvSWtEaFF2MVNwQkh4Zm4iLCJyaWQiOiJ1c2VyXzMyR1EzMUZhV0JiTUxPYjFKTnBvczl4bEFiTiIsImluaXRpYWxzIjoiTVMifQ	\N	\N	t	f	\N	2025-09-05 03:50:47.309+00	2025-09-05 03:51:08.242+00	\N	\N	\N	f	4158bb4f-8350-4081-99e5-47aed79a9212
6a2f7b86-b331-4192-9ef9-432b748319dc	user_32Q22MSROw06Me8zN4a0XowFsN6	s.reddy@ishvaratech.com	Srikanth	Reddy	\N	https://img.clerk.com/eyJ0eXBlIjoiZGVmYXVsdCIsImlpZCI6Imluc18yeTJqZ0p4UHo1UlZvSWtEaFF2MVNwQkh4Zm4iLCJyaWQiOiJ1c2VyXzMyUTIyTVNST3cwNk1lOHpONGEwWG93RnNONiIsImluaXRpYWxzIjoiU1IifQ	\N	\N	t	f	\N	2025-09-08 13:31:15.293+00	2025-09-08 13:32:08.82+00	\N	\N	\N	f	4158bb4f-8350-4081-99e5-47aed79a9212
7f491d4a-d92c-46d1-bc1f-36dc2215e550	user_32SzI63UcwHTIgDLTXdh0VP4fFU	gubiqova@forexzig.com	Yuvraj	Singh	\N	\N	\N	\N	t	f	\N	2025-09-09 14:38:06.665+00	2025-09-09 14:38:14.073+00	\N	\N	\N	f	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d
86a7b846-f35a-4166-866b-1046cc07ecea	user_32TE1Agt5LxPDvzQ0tKlaR56Ot6	loluxoze@cyclelove.cc	Ab	Devillers	\N	\N	\N	\N	t	f	\N	2025-09-09 16:39:14.2+00	2025-09-09 16:39:25.36+00	\N	\N	\N	f	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d
b2d167d9-a9ca-4dd3-b5c7-750575f45c92	user_32EKrqVEKhFTPAUycET5sA4tfra	fasiw89419@lespedia.com	fasi	lespedia	\N	https://img.clerk.com/eyJ0eXBlIjoiZGVmYXVsdCIsImlpZCI6Imluc18yeTJqZ0p4UHo1UlZvSWtEaFF2MVNwQkh4Zm4iLCJyaWQiOiJ1c2VyXzMyRUtycVZFS2hGVFBBVXljRVQ1c0E0dGZyYSIsImluaXRpYWxzIjoiRkwifQ	\N	\N	t	f	\N	2025-09-05 08:52:25.585+00	2025-09-05 08:52:25.585+00	\N	\N	\N	f	\N
a097c1b2-a4df-4a06-9363-77e2a7efc311	user_32THzqwmuVn6R4N7NBvlB2vPnuQ	fuvusi@fxzig.com	Sikhar	Dhawan	\N	\N	\N	\N	t	f	\N	2025-09-09 17:11:59.082+00	2025-09-09 17:12:11.805+00	\N	\N	\N	f	73c170fb-9448-49aa-8837-1e639a4eeaa8
773a847a-99cc-41e6-ba13-ffcfcb7e0028	user_32H52UWYrQIxP4wIzdc22l5wMEq	ganor93599@besaies.com	Mansh	Soni	\N	https://img.clerk.com/eyJ0eXBlIjoiZGVmYXVsdCIsImlpZCI6Imluc18yeTJqZ0p4UHo1UlZvSWtEaFF2MVNwQkh4Zm4iLCJyaWQiOiJ1c2VyXzMySDUyVVdZclFJeFA0d0l6ZGMyMmw1d01FcSIsImluaXRpYWxzIjoiTVMifQ	\N	\N	t	f	\N	2025-09-05 09:27:44.336+00	2025-09-05 09:28:05.027+00	\N	\N	\N	f	4158bb4f-8350-4081-99e5-47aed79a9212
a9b07853-cb7a-4e03-89af-74aaa93ddeaa	user_32H5XV6NnvaL8xN0RHUCTBqGssO	quintilla84@powerscrews.com	Rishav	Jaiswal	\N	https://img.clerk.com/eyJ0eXBlIjoiZGVmYXVsdCIsImlpZCI6Imluc18yeTJqZ0p4UHo1UlZvSWtEaFF2MVNwQkh4Zm4iLCJyaWQiOiJ1c2VyXzMySDVYVjZObnZhTDh4TjBSSFVDVEJxR3NzTyIsImluaXRpYWxzIjoiUkoifQ	\N	\N	t	f	\N	2025-09-05 09:31:51.724+00	2025-09-05 09:32:16.84+00	\N	\N	\N	f	4158bb4f-8350-4081-99e5-47aed79a9212
3bbf6631-ff9d-492f-8245-1196174d2ae8	user_32H5jzexhxIcZySoQABsM2rtIKA	hapoc61038@lanipe.com	Soumya Ranjan	Behera	\N	https://img.clerk.com/eyJ0eXBlIjoiZGVmYXVsdCIsImlpZCI6Imluc18yeTJqZ0p4UHo1UlZvSWtEaFF2MVNwQkh4Zm4iLCJyaWQiOiJ1c2VyXzMySDVqemV4aHhJY1p5U29RQUJzTTJydElLQSIsImluaXRpYWxzIjoiU0IifQ	\N	\N	t	f	\N	2025-09-05 09:33:31.078+00	2025-09-05 09:34:03.017+00	\N	\N	\N	f	4158bb4f-8350-4081-99e5-47aed79a9212
468d6435-3f9e-40f1-b664-7439c248e7ad	user_32H67iHy3PCJm16sL2BL10l8RUU	bajobov377@lespedia.com	bajo	lesp	\N	https://img.clerk.com/eyJ0eXBlIjoiZGVmYXVsdCIsImlpZCI6Imluc18yeTJqZ0p4UHo1UlZvSWtEaFF2MVNwQkh4Zm4iLCJyaWQiOiJ1c2VyXzMySDY3aUh5M1BDSm0xNnNMMkJMMTBsOFJVVSIsImluaXRpYWxzIjoiQkwifQ	\N	\N	t	f	\N	2025-09-05 09:36:42.789+00	2025-09-05 09:53:49.48+00	\N	\N	\N	f	4158bb4f-8350-4081-99e5-47aed79a9212
099365f9-7db0-4118-95cd-66d72b17e252	user_32H85gax8RUtYvxcakF9qgcKczB	abhijit.mishra@ishvaratech.com	Abhijit	Mishra	\N	https://img.clerk.com/eyJ0eXBlIjoiZGVmYXVsdCIsImlpZCI6Imluc18yeTJqZ0p4UHo1UlZvSWtEaFF2MVNwQkh4Zm4iLCJyaWQiOiJ1c2VyXzMySDg1Z2F4OFJVdFl2eGNha0Y5cWdjS2N6QiIsImluaXRpYWxzIjoiQU0ifQ	\N	\N	t	f	\N	2025-09-05 09:53:23.292+00	2025-09-05 09:56:30.309+00	\N	\N	\N	f	4158bb4f-8350-4081-99e5-47aed79a9212
2eb47c0f-8870-4979-bf10-7583dc5f3c6e	user_32HB5Q3jjhiQM32sjwI0YiA3czs	mahison707@lespedia.com	abhi	ppn	\N	https://img.clerk.com/eyJ0eXBlIjoiZGVmYXVsdCIsImlpZCI6Imluc18yeTJqZ0p4UHo1UlZvSWtEaFF2MVNwQkh4Zm4iLCJyaWQiOiJ1c2VyXzMySEI1UTNqamhpUU0zMnNqd0kwWWlBM2N6cyIsImluaXRpYWxzIjoiQVAifQ	\N	\N	t	f	\N	2025-09-05 10:17:40.099+00	2025-09-05 10:24:27.952+00	\N	\N	\N	f	4158bb4f-8350-4081-99e5-47aed79a9212
d1d62436-8860-4fdb-8ae5-dbbd586d1a66	user_32HJoIgcuCS61C2pit1Q6u9Umr0	manash.nexgen@gmail.com	Manash	Baruah	\N	https://img.clerk.com/eyJ0eXBlIjoiZGVmYXVsdCIsImlpZCI6Imluc18yeTJqZ0p4UHo1UlZvSWtEaFF2MVNwQkh4Zm4iLCJyaWQiOiJ1c2VyXzMySEpvSWdjdUNTNjFDMnBpdDFRNnU5VW1yMCIsImluaXRpYWxzIjoiTUIifQ	\N	\N	t	f	\N	2025-09-05 11:29:31.562+00	2025-09-05 11:29:54.646+00	\N	\N	\N	f	4158bb4f-8350-4081-99e5-47aed79a9212
a375e816-a34d-4c06-9289-468a90d547eb	user_32HOHZE8qBtSlEWfGuMn5X07vye	manash.jyoti@nexgenai.io	Zoya	Doe	\N	\N	\N	\N	t	f	\N	2025-09-05 12:06:04.823+00	2025-09-05 12:06:04.823+00	\N	\N	\N	f	\N
5e46721f-df55-4a73-80d5-d3476538d92d	user_32HBbBUNXo7EBFsjpXJeE7p2sfL	nehadumi@cyclelove.cc	Virat	Kohli	\N	\N	\N	\N	t	f	\N	2025-09-05 10:21:32.296+00	2025-09-05 10:21:32.296+00	\N	\N	\N	f	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d
\.


--
-- Data for Name: organizations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."organizations" ("id", "slug", "type", "parent_org_id", "created_by", "display_name", "organization_settings", "default_timezone", "default_currency", "billing_address", "tax_information", "created_at", "updated_at", "vendor_org_id") FROM stdin;
ce691bdf-681e-43de-ba03-971fefaa797a	zero-org	main	\N	13021275-88df-4d55-99f4-88e7b2b8076a	zero org	{}	UTC	USD	\N	\N	2025-09-05 03:51:05.34+00	2025-09-05 03:51:05.34+00	org_32GQ7iNjRmYwauij5mf2Ew2BUmH
f357d8a9-45a4-4440-8324-174fdc73b8a1	test34	main	\N	\N	test34	{}	UTC	USD	\N	\N	2025-09-05 08:12:28.924+00	2025-09-05 08:12:28.924+00	org_32GvukScUEdZIj3SnGg9seyEHYG
2672c7ae-c165-477e-84d4-961b7bacbe74	sports	main	\N	\N	sports	{}	UTC	USD	\N	\N	2025-09-05 08:48:47.931+00	2025-09-05 08:48:47.931+00	org_32H0KGD2e82P0aMFWZ6PCekcud8
5de5079e-a9c8-4aa0-ae44-7f182424b700	wgsdxc	main	\N	773a847a-99cc-41e6-ba13-ffcfcb7e0028	wgsdxc	{}	UTC	USD	\N	\N	2025-09-05 09:28:02.66+00	2025-09-05 09:28:02.66+00	org_32H56UyEADN1R1dYWQs9zaP6euZ
f4ae3849-725c-4323-b4fb-83d10ca38ce9	rj-org	main	\N	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	Rj org	{}	UTC	USD	\N	\N	2025-09-05 09:32:14.528+00	2025-09-05 09:32:14.528+00	org_32H5c42JEuAafGqrViUZl4YVEZP
1d133e85-37ec-411c-8cf2-84f80888e8a6	test-org	main	\N	3bbf6631-ff9d-492f-8245-1196174d2ae8	test org	{}	UTC	USD	\N	\N	2025-09-05 09:33:56.599+00	2025-09-05 09:33:56.599+00	org_32H5owAOuyTN1h7owcYcL1imDSX
b41c2d03-8668-4fc0-9d02-eadd0602dc72	org-x	main	\N	\N	Org X	{}	UTC	USD	\N	\N	2025-09-05 08:49:05.408+00	2025-09-05 08:49:05.408+00	org_32H0MZbeAKK70gTQ2T6ghSE5ERW
173e39a3-b55c-448c-950e-97c82f5b69eb	cporg	main	\N	468d6435-3f9e-40f1-b664-7439c248e7ad	cporg	{}	UTC	USD	\N	\N	2025-09-05 09:53:47.101+00	2025-09-05 09:53:47.101+00	org_32H8EJbpF8zmrI6hUTKH1fAHPHC
0e86bc51-138a-498b-8e6a-1d30d380baa5	cricket-org	main	\N	099365f9-7db0-4118-95cd-66d72b17e252	Cricket Org	{}	UTC	USD	\N	\N	2025-09-05 09:56:27.942+00	2025-09-05 09:56:27.942+00	org_32H8YQwxbCEsISmBJ7TyVcEi8j6
50261d89-cbdf-4517-9c36-7e77af3aa2b2	abhi	main	\N	2eb47c0f-8870-4979-bf10-7583dc5f3c6e	Abhi	{}	UTC	USD	\N	\N	2025-09-05 10:24:25.622+00	2025-09-05 10:24:25.622+00	org_32HBxSYpYd7HIQELbENbIjarlST
469f9695-140e-4627-9636-7d670617b454	manash-org	main	\N	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	Manash	{}	UTC	USD	\N	\N	2025-09-05 11:29:52.487+00	2025-09-05 11:29:52.487+00	org_32HJsotcaAnGQG9qy89boYlahYJ
b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	test43	main	\N	68791c34-6384-4d8f-b544-5188033fa7ac	test43	{}	UTC	USD	\N	\N	2025-09-08 12:56:55.634+00	2025-09-08 12:56:55.634+00	org_32PxsRJLxKf2v8XrVyZQrhos83p
fd560bd7-735a-45b0-9751-648202ab072d	test1	main	\N	6a2f7b86-b331-4192-9ef9-432b748319dc	test1	{}	UTC	USD	\N	\N	2025-09-08 13:32:08.258+00	2025-09-08 13:32:08.258+00	org_32Q2A1BttDVu8ElJMGGAEqM2GVp
\.


--
-- Data for Name: WhiteLabelSettings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."WhiteLabelSettings" ("orgId", "userId", "customDomain", "subdomain", "faviconUrl", "logoUrl", "loginBackgroundUrl", "termsUrl", "privacyUrl", "supportUrl", "primaryColor", "secondaryColor", "description", "supportEmail", "contactEmail", "contactPhone", "address", "companyName", "websiteUrl", "createdAt", "updatedAt") FROM stdin;
f4ae3849-725c-4323-b4fb-83d10ca38ce9	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	rishav.com	acme3app	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Default Company	https://example.com	2025-09-09 09:43:44.772	2025-09-09 12:52:56.057
\.


--
-- Data for Name: campaign_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."campaign_categories" ("name", "id") FROM stdin;
Education	aef34f14-185b-447e-9749-6ff8933eed9e
Environment	004ef22e-15ec-469a-ae58-efd1a6908d10
Candidate	86bada76-2ad4-43bf-be5d-54b3948e5dbe
Healthcare	517eae72-b792-4725-9b36-1f4e23bca454
Public Safety	97c9fbe8-de30-407b-8615-2a4cde6cfe71
\.


--
-- Data for Name: insertion_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insertion_orders" ("id", "org_id", "created_by", "name", "description", "start_date", "end_date", "timezone_id", "total_budget", "budget_type", "budget_distribution_method", "status", "iqm_io_id", "iqm_budget_day", "iqm_performance_goal", "iqm_distribution_method_id", "platform_references", "created_at", "updated_at") FROM stdin;
65c694f5-9509-4ee0-9458-3a4112369afc	ce691bdf-681e-43de-ba03-971fefaa797a	13021275-88df-4d55-99f4-88e7b2b8076a	Test IO	No description provided.	2025-09-06 05:00:00+00	2025-10-02 04:59:00+00	423	10000.00	currency	manual	draft	\N	\N	\N	\N	{}	2025-09-05 04:01:17.362+00	2025-09-05 04:01:17.362+00
48214b6f-e485-453f-923a-238bacef58bf	5de5079e-a9c8-4aa0-ae44-7f182424b700	773a847a-99cc-41e6-ba13-ffcfcb7e0028	iooo	No description provided.	2025-09-06 05:00:00+00	2025-10-05 04:59:00+00	423	12000.00	currency	manual	draft	\N	\N	\N	\N	{}	2025-09-05 09:34:35.201+00	2025-09-05 09:34:35.201+00
aefc19eb-afdd-47a8-89ac-14d66f0ca0b9	1d133e85-37ec-411c-8cf2-84f80888e8a6	3bbf6631-ff9d-492f-8245-1196174d2ae8	ION_05_TEST	test description	2025-09-06 04:00:00+00	2025-09-10 03:59:00+00	29	2000.00	currency	manual	draft	6122	\N	\N	\N	{"ioId": 6122, "owId": 2148, "ioName": "ION_05_TEST", "ioEndTime": 1757476740000, "ioStatusId": 1, "ioStartTime": 1757131200000, "ioTimeZoneId": 29, "ioTotalBudget": 2000, "createdByUowId": 41148, "ioBudgetTypeId": 1, "isIoPrioritise": false, "modifiedByUowId": 41148, "ioCurrentPriority": null, "ioTotalImpressions": null, "ioLastPriorityShift": null, "ioNextPerformanceCheck": null, "isAutoSumIoTotalBudget": false, "ioBudgetDistributionMethodId": 1}	2025-09-05 09:48:10.467+00	2025-09-05 09:48:14.035+00
ffac842c-68ba-4fe4-8764-87265892caac	f4ae3849-725c-4323-b4fb-83d10ca38ce9	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	Test Insertion Order	helo	2025-09-07 05:00:00+00	2025-09-14 04:59:00+00	423	3442.00	currency	manual	draft	6123	\N	\N	\N	{"ioId": 6123, "owId": 2148, "ioName": "Test Insertion Order", "ioEndTime": 1757825940000, "ioStatusId": 1, "ioStartTime": 1757221200000, "ioTimeZoneId": 423, "ioTotalBudget": 3442, "createdByUowId": 41148, "ioBudgetTypeId": 1, "isIoPrioritise": false, "modifiedByUowId": 41148, "ioCurrentPriority": null, "ioTotalImpressions": null, "ioLastPriorityShift": null, "ioNextPerformanceCheck": null, "isAutoSumIoTotalBudget": false, "ioBudgetDistributionMethodId": 1}	2025-09-05 09:53:41.183+00	2025-09-05 09:53:45.752+00
63c237cc-7b61-4727-a08e-cbb53b4763de	173e39a3-b55c-448c-950e-97c82f5b69eb	468d6435-3f9e-40f1-b664-7439c248e7ad	news ads2	test	2025-09-06 05:00:00+00	2025-09-11 04:59:00+00	423	4256.00	currency	manual	draft	6124	\N	\N	\N	{"ioId": 6124, "owId": 2148, "ioName": "news ads2", "ioEndTime": 1757566740000, "ioStatusId": 1, "ioStartTime": 1757134800000, "ioTimeZoneId": 423, "ioTotalBudget": 4256, "createdByUowId": 41148, "ioBudgetTypeId": 1, "isIoPrioritise": false, "modifiedByUowId": 41148, "ioCurrentPriority": null, "ioTotalImpressions": null, "ioLastPriorityShift": null, "ioNextPerformanceCheck": null, "isAutoSumIoTotalBudget": false, "ioBudgetDistributionMethodId": 1}	2025-09-05 09:57:40.528+00	2025-09-05 09:57:45.812+00
7c5cd2c1-7be7-4bcd-8818-9b3becc823d2	50261d89-cbdf-4517-9c36-7e77af3aa2b2	2eb47c0f-8870-4979-bf10-7583dc5f3c6e	sdsdff	safdsdfsdf	2025-09-06 10:14:00+00	2025-09-12 12:54:00+00	29	100.00	currency	manual	draft	6125	\N	\N	\N	{"ioId": 6125, "owId": 2148, "ioName": "sdsdff", "ioEndTime": 1757681640000, "ioStatusId": 1, "ioStartTime": 1757153640000, "ioTimeZoneId": 29, "ioTotalBudget": 100, "createdByUowId": 41148, "ioBudgetTypeId": 1, "isIoPrioritise": false, "modifiedByUowId": 41148, "ioCurrentPriority": null, "ioTotalImpressions": null, "ioLastPriorityShift": null, "ioNextPerformanceCheck": null, "isAutoSumIoTotalBudget": false, "ioBudgetDistributionMethodId": 1}	2025-09-05 10:27:52.489+00	2025-09-05 10:27:56.095+00
0af88d34-a966-420f-8b2d-2137f2f5d9dd	1d133e85-37ec-411c-8cf2-84f80888e8a6	3bbf6631-ff9d-492f-8245-1196174d2ae8	test io	test description	2025-09-06 04:00:00+00	2025-09-11 03:59:00+00	29	1111.00	currency	manual	draft	6126	\N	\N	\N	{"ioId": 6126, "owId": 2148, "ioName": "test io", "ioEndTime": 1757563140000, "ioStatusId": 1, "ioStartTime": 1757131200000, "ioTimeZoneId": 29, "ioTotalBudget": 1111, "createdByUowId": 41148, "ioBudgetTypeId": 1, "isIoPrioritise": false, "modifiedByUowId": 41148, "ioCurrentPriority": null, "ioTotalImpressions": null, "ioLastPriorityShift": null, "ioNextPerformanceCheck": null, "isAutoSumIoTotalBudget": false, "ioBudgetDistributionMethodId": 1}	2025-09-05 11:03:37.896+00	2025-09-05 11:03:43.061+00
36ead118-cca6-4c97-abdc-11522fd6e9cc	1d133e85-37ec-411c-8cf2-84f80888e8a6	3bbf6631-ff9d-492f-8245-1196174d2ae8	Test	test desc	2025-09-06 04:00:00+00	2025-09-11 03:59:00+00	29	1221.00	currency	manual	draft	6127	\N	\N	\N	{"ioId": 6127, "owId": 2148, "ioName": "Test", "ioEndTime": 1757563140000, "ioStatusId": 1, "ioStartTime": 1757131200000, "ioTimeZoneId": 29, "ioTotalBudget": 1221, "createdByUowId": 41148, "ioBudgetTypeId": 1, "isIoPrioritise": false, "modifiedByUowId": 41148, "ioCurrentPriority": null, "ioTotalImpressions": null, "ioLastPriorityShift": null, "ioNextPerformanceCheck": null, "isAutoSumIoTotalBudget": false, "ioBudgetDistributionMethodId": 1}	2025-09-05 11:16:06.01+00	2025-09-05 11:16:10.056+00
bd59e02a-a737-4e32-9818-bed7e8f36466	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	Flash IO	No description provided.	2025-09-12 05:00:00+00	2025-09-20 04:59:00+00	423	5000.00	currency	manual	draft	6128	\N	\N	\N	{"ioId": 6128, "owId": 2148, "ioName": "Flash IO", "ioEndTime": 1758344340000, "ioStatusId": 1, "ioStartTime": 1757653200000, "ioTimeZoneId": 423, "ioTotalBudget": 5000, "createdByUowId": 41148, "ioBudgetTypeId": 1, "isIoPrioritise": false, "modifiedByUowId": 41148, "ioCurrentPriority": null, "ioTotalImpressions": null, "ioLastPriorityShift": null, "ioNextPerformanceCheck": null, "isAutoSumIoTotalBudget": false, "ioBudgetDistributionMethodId": 1}	2025-09-05 11:33:06.005+00	2025-09-05 11:33:09.416+00
904474dd-a7d6-4ebd-a4f7-d92b9364f66c	0e86bc51-138a-498b-8e6a-1d30d380baa5	5e46721f-df55-4a73-80d5-d3476538d92d	Io for test	No description provided.	2025-09-06 05:00:00+00	2025-09-22 04:59:00+00	423	100.00	currency	manual	draft	6129	\N	\N	\N	{"ioId": 6129, "owId": 2148, "ioName": "Io for test", "ioEndTime": 1758517140000, "ioStatusId": 1, "ioStartTime": 1757134800000, "ioTimeZoneId": 423, "ioTotalBudget": 100, "createdByUowId": 41148, "ioBudgetTypeId": 1, "isIoPrioritise": false, "modifiedByUowId": 41148, "ioCurrentPriority": null, "ioTotalImpressions": null, "ioLastPriorityShift": null, "ioNextPerformanceCheck": null, "isAutoSumIoTotalBudget": false, "ioBudgetDistributionMethodId": 1}	2025-09-05 11:54:22.468+00	2025-09-05 11:54:28.152+00
9080bd44-1caa-4837-bb4d-a870ce7fab36	0e86bc51-138a-498b-8e6a-1d30d380baa5	5e46721f-df55-4a73-80d5-d3476538d92d	io 2	testing	2025-09-13 04:00:00+00	2025-10-13 03:59:00+00	29	2000.00	currency	manual	draft	6130	\N	\N	\N	{"ioId": 6130, "owId": 2148, "ioName": "io 2", "ioEndTime": 1760327940000, "ioStatusId": 1, "ioStartTime": 1757736000000, "ioTimeZoneId": 29, "ioTotalBudget": 2000, "createdByUowId": 41148, "ioBudgetTypeId": 1, "isIoPrioritise": false, "modifiedByUowId": 41148, "ioCurrentPriority": null, "ioTotalImpressions": null, "ioLastPriorityShift": null, "ioNextPerformanceCheck": null, "isAutoSumIoTotalBudget": false, "ioBudgetDistributionMethodId": 1}	2025-09-05 12:45:32.336+00	2025-09-05 12:45:35.928+00
6f01c711-6ac7-47c5-956c-58471817ec7f	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	Hero IO	No description provided.	2025-09-12 04:00:00+00	2025-09-28 03:59:00+00	29	3000.00	currency	manual	draft	6131	\N	\N	\N	{"ioId": 6131, "owId": 2148, "ioName": "Hero IO", "ioEndTime": 1759031940000, "ioStatusId": 1, "ioStartTime": 1757649600000, "ioTimeZoneId": 29, "ioTotalBudget": 3000, "createdByUowId": 41148, "ioBudgetTypeId": 1, "isIoPrioritise": false, "modifiedByUowId": 41148, "ioCurrentPriority": null, "ioTotalImpressions": null, "ioLastPriorityShift": null, "ioNextPerformanceCheck": null, "isAutoSumIoTotalBudget": false, "ioBudgetDistributionMethodId": 1}	2025-09-05 12:55:36.852+00	2025-09-05 12:55:43.275+00
ebd9c5d8-57ba-406a-b18f-1b9cac87b227	0e86bc51-138a-498b-8e6a-1d30d380baa5	5e46721f-df55-4a73-80d5-d3476538d92d	io 3	testing	2025-09-13 04:00:00+00	2025-10-13 03:59:00+00	29	2000.00	currency	manual	draft	6132	\N	\N	\N	{"ioId": 6132, "owId": 2148, "ioName": "io 3", "ioEndTime": 1760327940000, "ioStatusId": 1, "ioStartTime": 1757736000000, "ioTimeZoneId": 29, "ioTotalBudget": 2000, "createdByUowId": 41148, "ioBudgetTypeId": 1, "isIoPrioritise": false, "modifiedByUowId": 41148, "ioCurrentPriority": null, "ioTotalImpressions": null, "ioLastPriorityShift": null, "ioNextPerformanceCheck": null, "isAutoSumIoTotalBudget": false, "ioBudgetDistributionMethodId": 1}	2025-09-05 14:07:12.973+00	2025-09-05 14:07:18.677+00
de3a7eac-07ba-442e-bcc6-9dda2ad191bb	1d133e85-37ec-411c-8cf2-84f80888e8a6	3bbf6631-ff9d-492f-8245-1196174d2ae8	ION_8_Test	test description	2025-09-09 07:00:00+00	2025-09-18 06:59:00+00	433	1200.00	currency	manual	draft	6138	\N	\N	\N	{"ioId": 6138, "owId": 2148, "ioName": "ION_8_Test", "ioEndTime": 1758178740000, "ioStatusId": 1, "ioStartTime": 1757401200000, "ioTimeZoneId": 433, "ioTotalBudget": 1200, "createdByUowId": 41148, "ioBudgetTypeId": 1, "isIoPrioritise": false, "modifiedByUowId": 41148, "ioCurrentPriority": null, "ioTotalImpressions": null, "ioLastPriorityShift": null, "ioNextPerformanceCheck": null, "isAutoSumIoTotalBudget": false, "ioBudgetDistributionMethodId": 1}	2025-09-08 11:02:29.373+00	2025-09-08 11:02:36.077+00
38610fdf-1b14-4126-8ad1-ffaafabb9268	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	68791c34-6384-4d8f-b544-5188033fa7ac	test	test description	2025-09-09 08:00:00+00	2025-09-18 07:59:00+00	420	1234.00	currency	manual	draft	6140	\N	\N	\N	{"ioId": 6140, "owId": 2148, "ioName": "test", "ioEndTime": 1758182340000, "ioStatusId": 1, "ioStartTime": 1757404800000, "ioTimeZoneId": 420, "ioTotalBudget": 1234, "createdByUowId": 41148, "ioBudgetTypeId": 1, "isIoPrioritise": false, "modifiedByUowId": 41148, "ioCurrentPriority": null, "ioTotalImpressions": null, "ioLastPriorityShift": null, "ioNextPerformanceCheck": null, "isAutoSumIoTotalBudget": false, "ioBudgetDistributionMethodId": 1}	2025-09-08 13:10:31.485+00	2025-09-08 13:10:35.333+00
\.


--
-- Data for Name: campaigns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."campaigns" ("id", "org_id", "created_by", "name", "description", "objective", "start_date", "end_date", "timezone_id", "currency", "actualBudget", "budget", "daily_budget", "status", "enabled_platforms", "created_at", "updated_at", "insertion_order_id", "category_id", "tags", "bid_strategy", "day_parting", "draft_data", "flighting_schedule", "kpi_targets", "last_edited_at", "last_edited_by", "last_edited_step", "platform_budgets", "step_completed", "submitted_at", "submitted_by", "campaign_funding_status", "current_balance") FROM stdin;
90a0c5c7-6b7b-4f63-85cc-a61e4d770908	f4ae3849-725c-4323-b4fb-83d10ca38ce9	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	basic	ffffff	consideration	2025-09-11 15:00:00+00	2025-09-14 14:59:00+00	423	USD	\N	0.00	\N	draft	["OTT"]	2025-09-05 09:55:16.466+00	2025-09-05 16:43:51.011+00	ffac842c-68ba-4fe4-8764-87265892caac	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{we}	\N	\N	\N	\N	\N	2025-09-05 09:55:16.465+00	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	platformConfig	{}	3	\N	\N	awaiting_payment	0.00
d10753c2-337d-448a-8fa1-dafca571cbf8	1d133e85-37ec-411c-8cf2-84f80888e8a6	3bbf6631-ff9d-492f-8245-1196174d2ae8	test cmp	test description	consideration	2025-09-07 16:00:00+00	2025-09-09 15:59:00+00	29	USD	\N	0.00	\N	draft	["OTT"]	2025-09-05 09:53:33.847+00	2025-09-05 12:18:05.471+00	aefc19eb-afdd-47a8-89ac-14d66f0ca0b9	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-05 09:53:33.845+00	3bbf6631-ff9d-492f-8245-1196174d2ae8	platformConfig	{}	3	\N	\N	awaiting_payment	0.00
e4d73742-dbc1-4edf-9453-887ede8d77bf	1d133e85-37ec-411c-8cf2-84f80888e8a6	3bbf6631-ff9d-492f-8245-1196174d2ae8	hello campaign	tes description	consideration	2025-09-10 10:00:00+00	2025-09-16 09:59:00+00	433	USD	\N	2.00	\N	draft	["OTT"]	2025-09-08 11:50:52.475+00	2025-09-09 17:10:16.955+00	de3a7eac-07ba-442e-bcc6-9dda2ad191bb	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-09 10:17:59.07+00	3bbf6631-ff9d-492f-8245-1196174d2ae8	platformConfig	{"OTT": 2}	3	\N	\N	funded	-3.40
4b81e203-deb5-4890-833b-06293b8ec37c	ce691bdf-681e-43de-ba03-971fefaa797a	13021275-88df-4d55-99f4-88e7b2b8076a	camp 1	test	awareness	2025-09-10 05:00:00+00	2025-10-01 04:59:00+00	423	USD	\N	3500.00	\N	draft	["Facebook", "Instagram"]	2025-09-05 04:04:32.386+00	2025-09-05 04:13:46.973+00	65c694f5-9509-4ee0-9458-3a4112369afc	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-05 04:04:32.383+00	13021275-88df-4d55-99f4-88e7b2b8076a	platformConfig	{"OTT": 0, "Facebook": 1500, "Instagram": 2000}	3	\N	\N	funded	-2975.00
41af3f95-231b-4b07-bca3-97f4c97093a0	ce691bdf-681e-43de-ba03-971fefaa797a	13021275-88df-4d55-99f4-88e7b2b8076a	camp4	tet	awareness	2025-09-11 02:00:00+00	2025-10-02 01:59:00+00	423	USD	\N	1400.00	\N	draft	["Facebook", "Instagram"]	2025-09-05 08:52:30.823+00	2025-09-05 09:10:12.642+00	65c694f5-9509-4ee0-9458-3a4112369afc	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-05 08:52:30.82+00	13021275-88df-4d55-99f4-88e7b2b8076a	platformConfig	{"OTT": 0, "Facebook": 500, "Instagram": 900}	3	\N	\N	funded	-2040.00
adb287bf-7f2f-41af-9b7a-6f89e78357cf	ce691bdf-681e-43de-ba03-971fefaa797a	13021275-88df-4d55-99f4-88e7b2b8076a	camp2	test	awareness	2025-09-10 05:00:00+00	2025-10-01 04:59:00+00	423	USD	\N	3100.00	\N	draft	["Instagram"]	2025-09-05 04:25:24.253+00	2025-09-05 04:28:19.039+00	65c694f5-9509-4ee0-9458-3a4112369afc	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-05 04:25:24.251+00	13021275-88df-4d55-99f4-88e7b2b8076a	platformConfig	{"OTT": 0, "Facebook": 1800, "Instagram": 1300}	3	\N	\N	funded	-1105.00
75b2fbc6-41db-46d5-b553-19a349344809	5de5079e-a9c8-4aa0-ae44-7f182424b700	773a847a-99cc-41e6-ba13-ffcfcb7e0028	camp1	est	consideration	2025-09-10 20:30:00+00	2025-10-02 20:29:00+00	423	USD	\N	0.00	\N	draft	["Facebook", "Instagram"]	2025-09-05 09:36:01.308+00	2025-09-05 16:04:31.725+00	48214b6f-e485-453f-923a-238bacef58bf	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-05 09:36:01.306+00	773a847a-99cc-41e6-ba13-ffcfcb7e0028	platformConfig	{}	3	\N	\N	funded	-2034.90
370c8c2c-fa6f-4e92-a664-a8c75f9231f8	ce691bdf-681e-43de-ba03-971fefaa797a	13021275-88df-4d55-99f4-88e7b2b8076a	camp3	test	awareness	2025-09-10 05:00:00+00	2025-10-01 04:59:00+00	423	USD	\N	1300.00	\N	draft	["Facebook", "Instagram"]	2025-09-05 08:44:18.838+00	2025-09-05 08:47:32.888+00	65c694f5-9509-4ee0-9458-3a4112369afc	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-05 08:44:18.822+00	13021275-88df-4d55-99f4-88e7b2b8076a	platformConfig	{"OTT": 0, "Facebook": 500, "Instagram": 800}	3	\N	\N	funded	-1105.00
67daf5fa-97d1-4db1-829c-99d49c4de4c9	173e39a3-b55c-448c-950e-97c82f5b69eb	468d6435-3f9e-40f1-b664-7439c248e7ad	marketing camp	test	awareness	2025-09-11 05:00:00+00	2025-09-16 04:59:00+00	423	USD	\N	0.00	\N	draft	["OTT"]	2025-09-05 09:58:35.38+00	2025-09-08 12:40:25.53+00	63c237cc-7b61-4727-a08e-cbb53b4763de	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-05 09:58:35.378+00	468d6435-3f9e-40f1-b664-7439c248e7ad	platforms	{}	2	\N	\N	awaiting_payment	0.00
a4dd32c8-554c-4a73-8549-e0b7a082e132	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	Heroe campaign	Team description	consideration	2025-09-17 05:00:00+00	2025-09-20 04:59:00+00	423	USD	\N	0.00	\N	draft	["OTT"]	2025-09-05 13:10:48.952+00	2025-09-05 13:13:44.323+00	bd59e02a-a737-4e32-9818-bed7e8f36466	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-05 13:10:48.951+00	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	platformConfig	{}	3	\N	\N	awaiting_payment	0.00
3bbbb122-293a-4be4-bb94-79dbd0da4f31	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	68791c34-6384-4d8f-b544-5188033fa7ac	Political Campaign	test description	conversion	2025-09-11 00:00:00+00	2025-09-15 23:59:00+00	420	USD	\N	100.00	\N	draft	["OTT"]	2025-09-08 13:23:50.387+00	2025-09-08 13:45:00.237+00	38610fdf-1b14-4126-8ad1-ffaafabb9268	aef34f14-185b-447e-9749-6ff8933eed9e	{}	\N	\N	\N	\N	\N	2025-09-08 13:23:50.384+00	68791c34-6384-4d8f-b544-5188033fa7ac	platforms	{"OTT": 100}	2	\N	\N	funded	-85.00
be5baba9-0134-4712-b075-65811e89a766	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	Flash campaign	fsdfsfdsfsf	awareness	2025-09-16 21:00:00+00	2025-09-20 20:59:00+00	423	USD	\N	0.00	\N	draft	["OTT"]	2025-09-05 11:33:49.248+00	2025-09-05 12:02:06.963+00	bd59e02a-a737-4e32-9818-bed7e8f36466	aef34f14-185b-447e-9749-6ff8933eed9e	{}	\N	\N	\N	\N	\N	2025-09-05 11:33:49.247+00	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	platformConfig	{}	3	\N	\N	awaiting_payment	0.00
ca5c9dff-ba6f-460c-816b-18f97319d33c	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	camp1	test	awareness	2025-09-13 12:00:00+00	2025-09-26 11:59:00+00	29	USD	\N	1600.00	\N	draft	["Facebook", "Instagram", "OTT"]	2025-09-05 16:28:24.004+00	2025-09-09 16:47:12.911+00	6f01c711-6ac7-47c5-956c-58471817ec7f	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-05 16:28:24.003+00	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	platforms	{"OTT": 200, "Facebook": 200, "Instagram": 1200}	2	\N	\N	funded	-1360.00
022c7fda-8348-46b0-898c-7c855e5b0234	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	New camp	new campign	consideration	2025-09-18 14:00:00+00	2025-09-20 13:59:00+00	29	USD	\N	3800.00	\N	draft	["OTT"]	2025-09-08 12:19:28.328+00	2025-09-08 15:18:13.076+00	6f01c711-6ac7-47c5-956c-58471817ec7f	004ef22e-15ec-469a-ae58-efd1a6908d10	{}	\N	\N	\N	\N	\N	2025-09-08 12:19:28.327+00	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	platformConfig	{"OTT": 1600, "Facebook": 200, "Instagram": 2000}	3	\N	\N	funded	-850.00
0d98b402-52f8-4d29-bb2b-c58202fc9f3c	1d133e85-37ec-411c-8cf2-84f80888e8a6	3bbf6631-ff9d-492f-8245-1196174d2ae8	New campaign	test desc	consideration	2025-09-09 15:00:00+00	2025-09-11 03:59:00+00	29	USD	\N	100.00	\N	draft	["OTT"]	2025-09-05 13:39:28.783+00	2025-09-08 10:34:46.134+00	36ead118-cca6-4c97-abdc-11522fd6e9cc	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-05 13:39:28.781+00	3bbf6631-ff9d-492f-8245-1196174d2ae8	platformConfig	{"OTT": 100}	3	\N	\N	funded	-255.00
4f3c9f4a-ec1c-4ab9-b635-0de65a86a7dc	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	camp2	test	awareness	2025-09-12 08:00:00+00	2025-09-27 07:59:00+00	29	USD	\N	3200.00	\N	draft	["OTT", "Facebook", "Instagram"]	2025-09-05 19:12:09.557+00	2025-09-09 16:48:25.893+00	6f01c711-6ac7-47c5-956c-58471817ec7f	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-05 19:12:09.556+00	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	platforms	{"OTT": 1000, "Facebook": 200, "Instagram": 2000}	2	\N	\N	funded	-2720.00
e77c0dcc-7614-4e6c-acc0-254e1eaa0def	50261d89-cbdf-4517-9c36-7e77af3aa2b2	2eb47c0f-8870-4979-bf10-7583dc5f3c6e	papun	xcvbfs	consideration	2025-09-09 02:34:00+00	2025-09-13 23:55:00+00	29	USD	\N	0.00	\N	draft	["OTT"]	2025-09-05 10:28:30.608+00	2025-09-08 16:02:31.129+00	7c5cd2c1-7be7-4bcd-8818-9b3becc823d2	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-05 10:28:30.607+00	2eb47c0f-8870-4979-bf10-7583dc5f3c6e	platformConfig	{"OTT": 0}	3	\N	\N	awaiting_payment	0.00
e7e2082d-a8e3-4f97-a743-38f334bf0ad7	1d133e85-37ec-411c-8cf2-84f80888e8a6	3bbf6631-ff9d-492f-8245-1196174d2ae8	test	test description	consideration	2025-09-10 00:00:00+00	2025-09-10 23:59:00+00	29	USD	\N	1000.00	\N	draft	["OTT"]	2025-09-05 11:19:52.809+00	2025-09-08 11:10:32.273+00	36ead118-cca6-4c97-abdc-11522fd6e9cc	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-05 11:19:52.807+00	3bbf6631-ff9d-492f-8245-1196174d2ae8	platformConfig	{"OTT": 1000}	3	\N	\N	funded	-850.00
abdb98e0-ea1f-4d3b-8af6-f3d68ac71242	173e39a3-b55c-448c-950e-97c82f5b69eb	468d6435-3f9e-40f1-b664-7439c248e7ad	tesing campaign	fdfdserwfrgrgg	awareness	2025-09-11 07:00:00+00	2025-09-13 06:59:00+00	423	USD	\N	0.00	\N	draft	["X"]	2025-09-08 12:46:43.151+00	2025-09-09 16:44:32.352+00	63c237cc-7b61-4727-a08e-cbb53b4763de	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-08 12:46:43.148+00	468d6435-3f9e-40f1-b664-7439c248e7ad	platforms	{}	2	\N	\N	awaiting_payment	0.00
1bb3e6fe-0f68-4358-bbb3-4b6ba99d02ad	f4ae3849-725c-4323-b4fb-83d10ca38ce9	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	goal	w	consideration	2025-09-12 20:00:00+00	2025-09-14 19:59:00+00	423	USD	\N	12345.00	\N	draft	["OTT"]	2025-09-05 14:24:42.743+00	2025-09-08 14:24:16.714+00	ffac842c-68ba-4fe4-8764-87265892caac	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-05 14:24:42.742+00	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	platformConfig	{"OTT": 12345}	3	\N	\N	awaiting_payment	0.00
201ba7e2-f31b-498a-9095-69b4a71ff686	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	latest campaign test	test	awareness	2025-09-12 04:00:00+00	2025-09-29 03:59:00+00	29	USD	\N	2100.00	\N	draft	["Facebook"]	2025-09-08 15:45:08.732+00	2025-09-08 16:29:14.752+00	6f01c711-6ac7-47c5-956c-58471817ec7f	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-08 15:45:08.731+00	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	platformConfig	{"Facebook": 2100}	3	\N	\N	awaiting_payment	0.00
6dedc3c6-3095-4518-844b-d59c74b5353a	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	hellocamp	test	conversion	2025-09-13 20:00:00+00	2025-09-30 19:59:00+00	29	USD	\N	2600.00	\N	draft	["Facebook", "Instagram"]	2025-09-08 16:42:01.675+00	2025-09-09 15:03:47.952+00	6f01c711-6ac7-47c5-956c-58471817ec7f	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-08 16:42:01.673+00	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	platformConfig	{"OTT": 400, "Facebook": 1800, "Instagram": 400}	3	\N	\N	awaiting_payment	0.00
221e470e-01bd-4c83-8f23-096aaa45beaf	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	newcamp1	test	consideration	2025-09-12 16:00:00+00	2025-09-23 15:59:00+00	29	USD	\N	1000.00	\N	draft	["OTT", "Facebook", "Instagram", "X"]	2025-09-08 15:24:03.514+00	2025-09-09 16:44:25.147+00	6f01c711-6ac7-47c5-956c-58471817ec7f	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-08 15:24:03.511+00	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	basic_info	{"OTT": 1000, "Facebook": 0, "Instagram": 0}	1	\N	\N	funded	-1020.00
3da1c54d-f790-4428-a327-6242d61564e8	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	devcamp	test	awareness	2025-09-16 04:00:00+00	2025-09-28 03:59:00+00	29	USD	\N	3300.00	\N	draft	["OTT"]	2025-09-09 16:57:17.399+00	2025-09-09 16:58:57.859+00	6f01c711-6ac7-47c5-956c-58471817ec7f	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-09 16:57:17.397+00	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	platformConfig	{"OTT": 1100, "Facebook": 200, "Instagram": 2000}	3	\N	\N	awaiting_payment	0.00
8bc29f05-d334-4286-81f5-372e7d8b6331	f4ae3849-725c-4323-b4fb-83d10ca38ce9	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	ranger	power	awareness	2025-09-14 11:01:00+00	2025-09-15 16:12:00+00	423	USD	\N	0.00	\N	draft	["OTT"]	2025-09-09 11:20:10.211+00	2025-09-09 12:46:40.147+00	ffac842c-68ba-4fe4-8764-87265892caac	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-09 11:20:10.209+00	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	platformConfig	{"OTT": 0}	3	\N	\N	awaiting_payment	0.00
90919b41-6661-4576-b5df-aa6b6d5b4b7e	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	fix camp	test	awareness	2025-09-17 20:00:00+00	2025-09-29 19:59:00+00	29	USD	\N	3451.00	\N	draft	["Facebook", "OTT", "Instagram"]	2025-09-09 15:05:19.487+00	2025-09-09 16:05:20.077+00	6f01c711-6ac7-47c5-956c-58471817ec7f	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-09 15:05:19.486+00	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	basic_info	{"OTT": 1000, "Facebook": 1799, "Instagram": 652}	1	\N	\N	awaiting_payment	0.00
a9ad0ea9-1345-4ea2-92e5-d0dade643d66	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	dev2camp	test	conversion	2025-09-14 08:00:00+00	2025-09-29 07:59:00+00	29	USD	\N	2600.00	\N	draft	["OTT"]	2025-09-09 17:13:38.777+00	2025-09-09 17:29:29.452+00	6f01c711-6ac7-47c5-956c-58471817ec7f	86bada76-2ad4-43bf-be5d-54b3948e5dbe	{}	\N	\N	\N	\N	\N	2025-09-09 17:13:38.775+00	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	platformConfig	{"OTT": 2600}	3	\N	\N	awaiting_payment	0.00
\.


--
-- Data for Name: platform_configurations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."platform_configurations" ("id", "org_id", "platform", "account_id", "workspace_id", "business_manager_id", "api_credentials", "default_settings", "status", "last_sync_at", "expires_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: platform_specific_campaigns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."platform_specific_campaigns" ("id", "campaign_id", "platform_configuration_id", "platform", "platform_campaign_id", "status", "platform_status", "budget", "daily_budget", "platform_specific_data", "error_message", "last_synced_at", "server_logs", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: ad_sets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ad_sets" ("id", "platform_specific_campaign_id", "platform", "platform_ad_set_id", "name", "targeting", "optimization_goal", "bid_strategy", "bid_amount", "budget", "daily_budget", "status", "platform_specific_fields", "server_logs", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: creatives; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."creatives" ("id", "org_id", "created_by", "name", "description", "type", "status", "creative_data", "created_at", "updated_at", "is_variant", "parent_creative_id", "platform_compatibility", "variant_type") FROM stdin;
513301c2-e384-4320-9a72-330e6078f8bd	1d133e85-37ec-411c-8cf2-84f80888e8a6	3bbf6631-ff9d-492f-8245-1196174d2ae8	img	\N	image	pending	{"iqm": {"I001": {"clickUrl": "https://example.com", "creativeName": "img", "imageDetails": {"pixelUrl": "", "creativeWidth": 1200, "creativeHeight": 1080}, "creativeSource": "creatives/1d133e85-37ec-411c-8cf2-84f80888e8a6/3bbf6631-ff9d-492f-8245-1196174d2ae8/image/513301c2-e384-4320-9a72-330e6078f8bd/original/meta_feed_1200x1080_513301c2-e384-4320-9a72-330e6078f8bd.jpg", "creativeSourceType": "FILE", "externalCreativeId": "cpulse_513301c2-e384-4320-9a72-330e6078f8bd", "platformCreativeTypeId": 1}}, "r2Path": "creatives/1d133e85-37ec-411c-8cf2-84f80888e8a6/3bbf6631-ff9d-492f-8245-1196174d2ae8/image/513301c2-e384-4320-9a72-330e6078f8bd/original/meta_feed_1200x1080_513301c2-e384-4320-9a72-330e6078f8bd.jpg", "validation": {"valid": true, "errors": [], "warnings": []}, "originalInput": {"name": "img", "orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "width": 1200, "adType": "feed", "height": 1080, "clickUrl": "https://example.com", "platform": "meta", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "creativeType": "image"}, "actualDimensions": {"width": 1200, "height": 1080}, "mediaExtractionWarnings": []}	2025-09-05 10:02:18.618+00	2025-09-05 10:02:18.618+00	f	\N	\N	\N
6ca076de-312e-4af5-baaa-f4f04572af06	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	pexels-markusspiske-2990644	\N	image	pending	{"iqm": {"I001": {"clickUrl": "https://example.com", "creativeName": "pexels-markusspiske-2990644", "imageDetails": {"pixelUrl": "https://example.com", "creativeWidth": 1920, "creativeHeight": 1280}, "creativeSource": "creatives/469f9695-140e-4627-9636-7d670617b454/d1d62436-8860-4fdb-8ae5-dbbd586d1a66/image/6ca076de-312e-4af5-baaa-f4f04572af06/original/meta_feed_1920x1280_6ca076de-312e-4af5-baaa-f4f04572af06.jpg", "creativeSourceType": "FILE", "externalCreativeId": "cpulse_6ca076de-312e-4af5-baaa-f4f04572af06", "platformCreativeTypeId": 1}}, "r2Path": "creatives/469f9695-140e-4627-9636-7d670617b454/d1d62436-8860-4fdb-8ae5-dbbd586d1a66/image/6ca076de-312e-4af5-baaa-f4f04572af06/original/meta_feed_1920x1280_6ca076de-312e-4af5-baaa-f4f04572af06.jpg", "validation": {"valid": true, "errors": [], "warnings": []}, "originalInput": {"name": "pexels-markusspiske-2990644", "orgId": "469f9695-140e-4627-9636-7d670617b454", "width": 1920, "adType": "feed", "height": 1280, "clickUrl": "https://example.com", "pixelUrl": "https://example.com", "platform": "meta", "createdBy": "d1d62436-8860-4fdb-8ae5-dbbd586d1a66", "creativeType": "image"}, "actualDimensions": {"width": 1920, "height": 1280}, "mediaExtractionWarnings": []}	2025-09-05 11:51:08.771+00	2025-09-05 11:51:08.771+00	f	\N	\N	\N
6021a6ef-201b-479a-b8c6-9098c8144494	f4ae3849-725c-4323-b4fb-83d10ca38ce9	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	cinema-5069314_1920	\N	image	pending	{"iqm": {"I001": {"clickUrl": "https://example.com", "creativeName": "cinema-5069314_1920", "imageDetails": {"pixelUrl": "", "creativeWidth": 1920, "creativeHeight": 1281}, "creativeSource": "creatives/f4ae3849-725c-4323-b4fb-83d10ca38ce9/a9b07853-cb7a-4e03-89af-74aaa93ddeaa/image/6021a6ef-201b-479a-b8c6-9098c8144494/original/meta_feed_1920x1281_6021a6ef-201b-479a-b8c6-9098c8144494.jpg", "creativeSourceType": "FILE", "externalCreativeId": "cpulse_6021a6ef-201b-479a-b8c6-9098c8144494", "platformCreativeTypeId": 1}}, "r2Path": "creatives/f4ae3849-725c-4323-b4fb-83d10ca38ce9/a9b07853-cb7a-4e03-89af-74aaa93ddeaa/image/6021a6ef-201b-479a-b8c6-9098c8144494/original/meta_feed_1920x1281_6021a6ef-201b-479a-b8c6-9098c8144494.jpg", "validation": {"valid": true, "errors": [], "warnings": []}, "originalInput": {"name": "cinema-5069314_1920", "orgId": "f4ae3849-725c-4323-b4fb-83d10ca38ce9", "width": 1920, "adType": "feed", "height": 1281, "clickUrl": "https://example.com", "platform": "meta", "createdBy": "a9b07853-cb7a-4e03-89af-74aaa93ddeaa", "creativeType": "image"}, "actualDimensions": {"width": 1920, "height": 1281}, "mediaExtractionWarnings": []}	2025-09-05 16:44:03.414+00	2025-09-05 16:44:03.414+00	f	\N	\N	\N
0bfc6241-251b-4273-85dc-b100b9261ede	f4ae3849-725c-4323-b4fb-83d10ca38ce9	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	geometric-7719159_1920	\N	image	pending	{"iqm": {"I001": {"clickUrl": "https://example.com", "creativeName": "geometric-7719159_1920", "imageDetails": {"pixelUrl": "", "creativeWidth": 1444, "creativeHeight": 1920}, "creativeSource": "creatives/f4ae3849-725c-4323-b4fb-83d10ca38ce9/a9b07853-cb7a-4e03-89af-74aaa93ddeaa/image/0bfc6241-251b-4273-85dc-b100b9261ede/original/meta_feed_1444x1920_0bfc6241-251b-4273-85dc-b100b9261ede.png", "creativeSourceType": "FILE", "externalCreativeId": "cpulse_0bfc6241-251b-4273-85dc-b100b9261ede", "platformCreativeTypeId": 1}}, "r2Path": "creatives/f4ae3849-725c-4323-b4fb-83d10ca38ce9/a9b07853-cb7a-4e03-89af-74aaa93ddeaa/image/0bfc6241-251b-4273-85dc-b100b9261ede/original/meta_feed_1444x1920_0bfc6241-251b-4273-85dc-b100b9261ede.png", "validation": {"valid": true, "errors": [], "warnings": []}, "originalInput": {"name": "geometric-7719159_1920", "orgId": "f4ae3849-725c-4323-b4fb-83d10ca38ce9", "width": 1444, "adType": "feed", "height": 1920, "clickUrl": "https://example.com", "platform": "meta", "createdBy": "a9b07853-cb7a-4e03-89af-74aaa93ddeaa", "creativeType": "image"}, "actualDimensions": {"width": 1444, "height": 1920}, "mediaExtractionWarnings": []}	2025-09-05 16:50:33.711+00	2025-09-05 16:50:33.711+00	f	\N	\N	\N
62b7b36c-4430-433a-9c9e-81774965a4bb	1d133e85-37ec-411c-8cf2-84f80888e8a6	3bbf6631-ff9d-492f-8245-1196174d2ae8	locking system (1)	\N	image	pending	{"iqm": {"I001": {"clickUrl": "https://example.com", "creativeName": "locking system (1)", "imageDetails": {"pixelUrl": "", "creativeWidth": 1200, "creativeHeight": 1800}, "creativeSource": "creatives/1d133e85-37ec-411c-8cf2-84f80888e8a6/3bbf6631-ff9d-492f-8245-1196174d2ae8/image/62b7b36c-4430-433a-9c9e-81774965a4bb/original/meta_feed_1200x1800_62b7b36c-4430-433a-9c9e-81774965a4bb.png", "creativeSourceType": "FILE", "externalCreativeId": "cpulse_62b7b36c-4430-433a-9c9e-81774965a4bb", "platformCreativeTypeId": 1}}, "r2Path": "creatives/1d133e85-37ec-411c-8cf2-84f80888e8a6/3bbf6631-ff9d-492f-8245-1196174d2ae8/image/62b7b36c-4430-433a-9c9e-81774965a4bb/original/meta_feed_1200x1800_62b7b36c-4430-433a-9c9e-81774965a4bb.png", "validation": {"valid": true, "errors": [], "warnings": []}, "originalInput": {"name": "locking system (1)", "orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "width": 1200, "adType": "feed", "height": 1800, "clickUrl": "https://example.com", "platform": "meta", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "creativeType": "image"}, "actualDimensions": {"width": 1200, "height": 1800}, "mediaExtractionWarnings": []}	2025-09-08 12:01:02.545+00	2025-09-08 12:01:02.545+00	f	\N	\N	\N
838300ea-6a6a-4d14-b44c-cf02ee3669f7	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	pexels-kindelmedia-8849978	\N	image	pending	{"iqm": {"I001": {"clickUrl": "https://example.com", "creativeName": "pexels-kindelmedia-8849978", "imageDetails": {"pixelUrl": "", "creativeWidth": 5184, "creativeHeight": 3888}, "creativeSource": "creatives/469f9695-140e-4627-9636-7d670617b454/d1d62436-8860-4fdb-8ae5-dbbd586d1a66/image/838300ea-6a6a-4d14-b44c-cf02ee3669f7/original/meta_feed_5184x3888_838300ea-6a6a-4d14-b44c-cf02ee3669f7.jpg", "creativeSourceType": "FILE", "externalCreativeId": "cpulse_838300ea-6a6a-4d14-b44c-cf02ee3669f7", "platformCreativeTypeId": 1}}, "r2Path": "creatives/469f9695-140e-4627-9636-7d670617b454/d1d62436-8860-4fdb-8ae5-dbbd586d1a66/image/838300ea-6a6a-4d14-b44c-cf02ee3669f7/original/meta_feed_5184x3888_838300ea-6a6a-4d14-b44c-cf02ee3669f7.jpg", "validation": {"valid": true, "errors": [], "warnings": []}, "originalInput": {"name": "pexels-kindelmedia-8849978", "orgId": "469f9695-140e-4627-9636-7d670617b454", "width": 5184, "adType": "feed", "height": 3888, "clickUrl": "https://example.com", "platform": "meta", "createdBy": "d1d62436-8860-4fdb-8ae5-dbbd586d1a66", "creativeType": "image"}, "actualDimensions": {"width": 5184, "height": 3888}, "mediaExtractionWarnings": []}	2025-09-08 12:25:44.728+00	2025-09-08 12:25:44.728+00	f	\N	\N	\N
fb12956e-b6f9-4f3c-bbe8-7623d184cf8d	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	68791c34-6384-4d8f-b544-5188033fa7ac	img	\N	image	pending	{"iqm": {"I001": {"clickUrl": "https://example.com", "creativeName": "img", "imageDetails": {"pixelUrl": "", "creativeWidth": 1200, "creativeHeight": 1080}, "creativeSource": "creatives/b67d4fa5-128b-4252-8a8e-cd4ddf17b40e/68791c34-6384-4d8f-b544-5188033fa7ac/image/fb12956e-b6f9-4f3c-bbe8-7623d184cf8d/original/meta_feed_1200x1080_fb12956e-b6f9-4f3c-bbe8-7623d184cf8d.jpg", "creativeSourceType": "FILE", "externalCreativeId": "cpulse_fb12956e-b6f9-4f3c-bbe8-7623d184cf8d", "platformCreativeTypeId": 1}}, "r2Path": "creatives/b67d4fa5-128b-4252-8a8e-cd4ddf17b40e/68791c34-6384-4d8f-b544-5188033fa7ac/image/fb12956e-b6f9-4f3c-bbe8-7623d184cf8d/original/meta_feed_1200x1080_fb12956e-b6f9-4f3c-bbe8-7623d184cf8d.jpg", "validation": {"valid": true, "errors": [], "warnings": []}, "originalInput": {"name": "img", "orgId": "b67d4fa5-128b-4252-8a8e-cd4ddf17b40e", "width": 1200, "adType": "feed", "height": 1080, "clickUrl": "https://example.com", "platform": "meta", "createdBy": "68791c34-6384-4d8f-b544-5188033fa7ac", "creativeType": "image"}, "actualDimensions": {"width": 1200, "height": 1080}, "mediaExtractionWarnings": []}	2025-09-08 13:32:26.943+00	2025-09-08 13:32:26.943+00	f	\N	\N	\N
369f65d4-b89b-4144-9a8e-9931d6f69bf3	f4ae3849-725c-4323-b4fb-83d10ca38ce9	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	geometric-7719159_1920	\N	image	pending	{"iqm": {"I001": {"clickUrl": "https://example.com", "creativeName": "geometric-7719159_1920", "imageDetails": {"pixelUrl": "", "creativeWidth": 1444, "creativeHeight": 1920}, "creativeSource": "creatives/f4ae3849-725c-4323-b4fb-83d10ca38ce9/a9b07853-cb7a-4e03-89af-74aaa93ddeaa/image/369f65d4-b89b-4144-9a8e-9931d6f69bf3/original/meta_feed_1444x1920_369f65d4-b89b-4144-9a8e-9931d6f69bf3.png", "creativeSourceType": "FILE", "externalCreativeId": "cpulse_369f65d4-b89b-4144-9a8e-9931d6f69bf3", "platformCreativeTypeId": 1}}, "r2Path": "creatives/f4ae3849-725c-4323-b4fb-83d10ca38ce9/a9b07853-cb7a-4e03-89af-74aaa93ddeaa/image/369f65d4-b89b-4144-9a8e-9931d6f69bf3/original/meta_feed_1444x1920_369f65d4-b89b-4144-9a8e-9931d6f69bf3.png", "validation": {"valid": true, "errors": [], "warnings": []}, "originalInput": {"name": "geometric-7719159_1920", "orgId": "f4ae3849-725c-4323-b4fb-83d10ca38ce9", "width": 1444, "adType": "feed", "height": 1920, "clickUrl": "https://example.com", "platform": "meta", "createdBy": "a9b07853-cb7a-4e03-89af-74aaa93ddeaa", "creativeType": "image"}, "actualDimensions": {"width": 1444, "height": 1920}, "mediaExtractionWarnings": []}	2025-09-09 12:47:09.228+00	2025-09-09 12:47:09.228+00	f	\N	\N	\N
\.


--
-- Data for Name: ads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ads" ("id", "ad_set_id", "creative_id", "platform_ad_id", "name", "status", "tracking_specs", "server_logs", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: agency_applications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agency_applications" ("id", "org_id", "created_by", "company_name", "contact_info", "status", "submitted_at", "reviewed_at", "reviewed_by", "notes", "created_at", "updated_at", "address", "contact_email", "contact_phone", "description", "logo_url", "preferred_domain", "primary_color", "privacy_url", "secondary_color", "support_email", "terms_url") FROM stdin;
\.


--
-- Data for Name: agency_customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agency_customers" ("agency_org_id", "customer_org_id", "status", "commission_rate", "commission_structure", "contract_start_date", "contract_end_date", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: agency_fees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agency_fees" ("id", "org_id", "fee_percentage", "min_fee_amount", "effective_from", "effective_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: agency_platform_access; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agency_platform_access" ("agency_org_id", "customer_org_id", "platform", "access_level", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: analytics_aggregated; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."analytics_aggregated" ("id", "org_id", "campaign_id", "insertion_order_id", "platform", "date", "hour", "impressions", "clicks", "conversions", "spend", "reach", "frequency", "cpm", "cpc", "ctr", "conversion_rate", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: analytics_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."analytics_data" ("id", "org_id", "campaign_id", "platform", "date", "metrics", "created_at", "updated_at", "insertion_order_id") FROM stdin;
\.


--
-- Data for Name: assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."assets" ("id", "creative_id", "type", "url", "metadata", "created_at", "updated_at") FROM stdin;
eb9b40de-676c-46ef-8ca3-50db7b75e9f8	513301c2-e384-4320-9a72-330e6078f8bd	image	creatives/1d133e85-37ec-411c-8cf2-84f80888e8a6/3bbf6631-ff9d-492f-8245-1196174d2ae8/image/513301c2-e384-4320-9a72-330e6078f8bd/original/meta_feed_1200x1080_513301c2-e384-4320-9a72-330e6078f8bd.jpg	{"size": 110049, "width": 1200, "height": 1080, "mimeType": "image/jpeg", "originalName": "img.jpg", "providedWidth": 1200, "providedHeight": 1080, "mediaExtractionWarnings": []}	2025-09-05 10:02:21.169+00	2025-09-05 10:02:21.169+00
ec7f4971-50b0-49d3-a8aa-33a470b47246	6ca076de-312e-4af5-baaa-f4f04572af06	image	creatives/469f9695-140e-4627-9636-7d670617b454/d1d62436-8860-4fdb-8ae5-dbbd586d1a66/image/6ca076de-312e-4af5-baaa-f4f04572af06/original/meta_feed_1920x1280_6ca076de-312e-4af5-baaa-f4f04572af06.jpg	{"size": 225196, "width": 1920, "height": 1280, "mimeType": "image/jpeg", "originalName": "pexels-markusspiske-2990644.jpg", "providedWidth": 1920, "providedHeight": 1280, "mediaExtractionWarnings": []}	2025-09-05 11:51:11.243+00	2025-09-05 11:51:11.243+00
1a2937b9-74dc-47c0-9872-5be1e5510eaf	6021a6ef-201b-479a-b8c6-9098c8144494	image	creatives/f4ae3849-725c-4323-b4fb-83d10ca38ce9/a9b07853-cb7a-4e03-89af-74aaa93ddeaa/image/6021a6ef-201b-479a-b8c6-9098c8144494/original/meta_feed_1920x1281_6021a6ef-201b-479a-b8c6-9098c8144494.jpg	{"size": 611957, "width": 1920, "height": 1281, "mimeType": "image/jpeg", "originalName": "cinema-5069314_1920.jpg", "providedWidth": 1920, "providedHeight": 1281, "mediaExtractionWarnings": []}	2025-09-05 16:44:07.717+00	2025-09-05 16:44:07.717+00
5a05f823-30ca-483b-a897-9d3afc47aa22	0bfc6241-251b-4273-85dc-b100b9261ede	image	creatives/f4ae3849-725c-4323-b4fb-83d10ca38ce9/a9b07853-cb7a-4e03-89af-74aaa93ddeaa/image/0bfc6241-251b-4273-85dc-b100b9261ede/original/meta_feed_1444x1920_0bfc6241-251b-4273-85dc-b100b9261ede.png	{"size": 360212, "width": 1444, "height": 1920, "mimeType": "image/png", "originalName": "geometric-7719159_1920.png", "providedWidth": 1444, "providedHeight": 1920, "mediaExtractionWarnings": []}	2025-09-05 16:50:36.932+00	2025-09-05 16:50:36.932+00
2241e961-175f-4264-a70a-e15965dfa231	62b7b36c-4430-433a-9c9e-81774965a4bb	image	creatives/1d133e85-37ec-411c-8cf2-84f80888e8a6/3bbf6631-ff9d-492f-8245-1196174d2ae8/image/62b7b36c-4430-433a-9c9e-81774965a4bb/original/meta_feed_1200x1800_62b7b36c-4430-433a-9c9e-81774965a4bb.png	{"size": 50710, "width": 1200, "height": 1800, "mimeType": "image/png", "originalName": "locking system (1).png", "providedWidth": 1200, "providedHeight": 1800, "mediaExtractionWarnings": []}	2025-09-08 12:01:05.011+00	2025-09-08 12:01:05.011+00
98f099d1-fb92-4b31-a3ae-07eef059bbb9	838300ea-6a6a-4d14-b44c-cf02ee3669f7	image	creatives/469f9695-140e-4627-9636-7d670617b454/d1d62436-8860-4fdb-8ae5-dbbd586d1a66/image/838300ea-6a6a-4d14-b44c-cf02ee3669f7/original/meta_feed_5184x3888_838300ea-6a6a-4d14-b44c-cf02ee3669f7.jpg	{"size": 1931373, "width": 5184, "height": 3888, "mimeType": "image/jpeg", "originalName": "pexels-kindelmedia-8849978.jpg", "providedWidth": 5184, "providedHeight": 3888, "mediaExtractionWarnings": []}	2025-09-08 12:25:46.493+00	2025-09-08 12:25:46.493+00
4e088c61-e4e6-478d-ae3e-b86045a014c1	fb12956e-b6f9-4f3c-bbe8-7623d184cf8d	image	creatives/b67d4fa5-128b-4252-8a8e-cd4ddf17b40e/68791c34-6384-4d8f-b544-5188033fa7ac/image/fb12956e-b6f9-4f3c-bbe8-7623d184cf8d/original/meta_feed_1200x1080_fb12956e-b6f9-4f3c-bbe8-7623d184cf8d.jpg	{"size": 110049, "width": 1200, "height": 1080, "mimeType": "image/jpeg", "originalName": "img.jpg", "providedWidth": 1200, "providedHeight": 1080, "mediaExtractionWarnings": []}	2025-09-08 13:32:29.924+00	2025-09-08 13:32:29.924+00
2489a2f1-4352-4e1b-b387-eb4710f6362d	369f65d4-b89b-4144-9a8e-9931d6f69bf3	image	creatives/f4ae3849-725c-4323-b4fb-83d10ca38ce9/a9b07853-cb7a-4e03-89af-74aaa93ddeaa/image/369f65d4-b89b-4144-9a8e-9931d6f69bf3/original/meta_feed_1444x1920_369f65d4-b89b-4144-9a8e-9931d6f69bf3.png	{"size": 360212, "width": 1444, "height": 1920, "mimeType": "image/png", "originalName": "geometric-7719159_1920.png", "providedWidth": 1444, "providedHeight": 1920, "mediaExtractionWarnings": []}	2025-09-09 12:47:10.814+00	2025-09-09 12:47:10.814+00
\.


--
-- Data for Name: audiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."audiences" ("id", "org_id", "created_by", "name", "description", "type", "start_date", "end_date", "period", "source", "status", "targeting_data", "size", "created_at", "updated_at") FROM stdin;
87d47b6c-d17a-49a1-97e7-a5c783c01df4	1d133e85-37ec-411c-8cf2-84f80888e8a6	3bbf6631-ff9d-492f-8245-1196174d2ae8	cmp audience2	test description	retargeted	2025-09-05 09:51:41	2025-12-04 09:51:41	3	website	ready	{"id": 29924, "message": "Audience created successfully", "tag_script": "<script src='https://pxl.iqm.com/d/c/tag/10d9b7d2-8fd2-41ea-b972-53a90d506644' async></script>"}	\N	2025-09-05 09:51:41.322+00	2025-09-05 09:51:44.642+00
3845d74e-9701-4ec5-8fb9-bdbc7fda111a	1d133e85-37ec-411c-8cf2-84f80888e8a6	3bbf6631-ff9d-492f-8245-1196174d2ae8	looktest1	test description	lookalike	\N	\N	\N	website	ready	{"id": 29925, "message": "Lookalike Audience created successfully"}	3	2025-09-05 10:26:52.523+00	2025-09-05 10:26:56.705+00
6e534d51-30e7-417c-ad8b-3de1e1c1a68d	50261d89-cbdf-4517-9c36-7e77af3aa2b2	2eb47c0f-8870-4979-bf10-7583dc5f3c6e	ewfwefg	FFWEQ	retargeted	2025-09-05 11:17:04	2025-11-04 11:17:04	2	website	ready	{"id": 29926, "message": "Audience created successfully", "tag_script": "<script src='https://pxl.iqm.com/d/c/tag/80771ba1-2d57-429c-946d-265b900895ef' async></script>"}	\N	2025-09-05 11:17:07.43+00	2025-09-05 11:17:12.727+00
df8aa7a4-11d7-4b71-abac-a1d9357df01a	1d133e85-37ec-411c-8cf2-84f80888e8a6	3bbf6631-ff9d-492f-8245-1196174d2ae8	audience	test desc	retargeted	2025-09-05 11:18:44	2026-02-02 11:18:44	5	website	ready	{"id": 29927, "message": "Audience created successfully", "tag_script": "<script src='https://pxl.iqm.com/d/c/tag/f1728d30-f13c-411a-813d-7cb9ae6a1c00' async></script>"}	\N	2025-09-05 11:18:50.912+00	2025-09-05 11:18:55.432+00
f4d96b0a-927c-456b-a565-896d3d3de727	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	Flash audience		retargeted	2025-09-05 11:45:30	2025-11-04 11:45:30	2	website	ready	{"id": 29928, "message": "Audience created successfully", "tag_script": "<script src='https://pxl.iqm.com/d/c/tag/00ea9d9b-4af7-43d8-b5a0-1502f6b2a6ac' async></script>"}	\N	2025-09-05 11:45:30.795+00	2025-09-05 11:45:36.28+00
65f1db8a-f6b8-43c1-97bd-2a1dbc87b2be	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	Flash lookalike	Description	lookalike	\N	\N	\N	website	ready	\N	3	2025-09-05 11:46:36.135+00	2025-09-05 11:46:42.381+00
f191480a-8e61-4162-bcc7-659e77e14d2a	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	Hero audience	heo 	retargeted	2025-09-05 12:56:42	2025-10-05 12:56:42	1	website	ready	{"id": 29932, "message": "Audience created successfully", "tag_script": "<script src='https://pxl.iqm.com/d/c/tag/b677461b-2fde-41a2-ad06-51c7d592aa83' async></script>"}	\N	2025-09-05 12:56:42.346+00	2025-09-05 12:56:48.661+00
03d69841-f3e9-4bfb-adc7-269fb1d3eafd	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	new aud		retargeted	2025-09-05 15:20:01	2025-10-05 15:20:01	1	website	ready	{"id": 29937, "message": "Audience created successfully", "tag_script": "<script src='https://pxl.iqm.com/d/c/tag/7d97baad-3edd-4bc3-8feb-8f313f1f3fbd' async></script>"}	\N	2025-09-05 15:20:01.512+00	2025-09-05 15:20:07.536+00
9869d267-ecf0-4a9d-8bb5-73c77a656937	f4ae3849-725c-4323-b4fb-83d10ca38ce9	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	section		retargeted	2025-09-08 13:05:06	2025-10-08 13:05:06	1	website	ready	{"id": 29960, "message": "Audience created successfully", "tag_script": "<script src='https://pxl.iqm.com/d/c/tag/3b02c8fc-51c9-4418-98ea-7f9a99f71208' async></script>"}	\N	2025-09-08 13:05:06.394+00	2025-09-08 13:05:09.472+00
672b15fe-e4dc-4365-b60a-91946b7f20f0	f4ae3849-725c-4323-b4fb-83d10ca38ce9	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	456		lookalike	\N	\N	\N	website	ready	\N	3	2025-09-08 13:05:30.511+00	2025-09-08 13:05:35.832+00
49b48e68-0db7-445f-82d7-d70941dd10f5	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	68791c34-6384-4d8f-b544-5188033fa7ac	soumya audience	test desc	retargeted	2025-09-08 13:38:15	2026-02-05 13:38:15	5	website	ready	{"id": 29961, "message": "Audience created successfully", "tag_script": "<script src='https://pxl.iqm.com/d/c/tag/3e561a57-cc6b-4632-a660-b09744d31e75' async></script>"}	\N	2025-09-08 13:38:15.368+00	2025-09-08 13:38:22.754+00
\.


--
-- Data for Name: campaign_alerts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."campaign_alerts" ("id", "org_id", "campaign_id", "alert_type", "severity", "title", "message", "is_read", "is_resolved", "resolved_by", "resolved_at", "metadata", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: campaign_audiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."campaign_audiences" ("campaign_id", "audience_id", "assigned_by", "created_at", "is_active", "org_id", "platform_assignment", "updated_at", "weight") FROM stdin;
\.


--
-- Data for Name: campaign_creatives; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."campaign_creatives" ("campaign_id", "creative_id", "assigned_by", "created_at", "is_active", "org_id", "platform_assignment", "position", "updated_at", "variations") FROM stdin;
d10753c2-337d-448a-8fa1-dafca571cbf8	513301c2-e384-4320-9a72-330e6078f8bd	3bbf6631-ff9d-492f-8245-1196174d2ae8	2025-09-05 10:02:29.749+00	t	1d133e85-37ec-411c-8cf2-84f80888e8a6	"212179"	0	2025-09-05 10:02:29.749+00	\N
e7e2082d-a8e3-4f97-a743-38f334bf0ad7	513301c2-e384-4320-9a72-330e6078f8bd	3bbf6631-ff9d-492f-8245-1196174d2ae8	2025-09-05 11:23:09.046+00	t	1d133e85-37ec-411c-8cf2-84f80888e8a6	"212179"	0	2025-09-05 11:23:09.046+00	\N
be5baba9-0134-4712-b075-65811e89a766	6ca076de-312e-4af5-baaa-f4f04572af06	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	2025-09-05 11:51:19.058+00	t	469f9695-140e-4627-9636-7d670617b454	"212180"	0	2025-09-05 11:51:19.058+00	\N
a4dd32c8-554c-4a73-8549-e0b7a082e132	6ca076de-312e-4af5-baaa-f4f04572af06	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	2025-09-05 13:14:06.33+00	t	469f9695-140e-4627-9636-7d670617b454	"212180"	0	2025-09-05 13:14:06.33+00	\N
90a0c5c7-6b7b-4f63-85cc-a61e4d770908	6021a6ef-201b-479a-b8c6-9098c8144494	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	2025-09-05 16:44:17.936+00	t	f4ae3849-725c-4323-b4fb-83d10ca38ce9	"212182"	0	2025-09-05 16:44:17.936+00	\N
1bb3e6fe-0f68-4358-bbb3-4b6ba99d02ad	0bfc6241-251b-4273-85dc-b100b9261ede	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	2025-09-05 16:50:47.789+00	t	f4ae3849-725c-4323-b4fb-83d10ca38ce9	"212183"	0	2025-09-05 16:50:47.789+00	\N
0d98b402-52f8-4d29-bb2b-c58202fc9f3c	513301c2-e384-4320-9a72-330e6078f8bd	3bbf6631-ff9d-492f-8245-1196174d2ae8	2025-09-08 08:56:53.898+00	t	1d133e85-37ec-411c-8cf2-84f80888e8a6	"212179"	0	2025-09-08 08:56:53.898+00	\N
e4d73742-dbc1-4edf-9453-887ede8d77bf	62b7b36c-4430-433a-9c9e-81774965a4bb	3bbf6631-ff9d-492f-8245-1196174d2ae8	2025-09-08 12:01:13.423+00	t	1d133e85-37ec-411c-8cf2-84f80888e8a6	"212243"	0	2025-09-08 12:01:13.423+00	\N
022c7fda-8348-46b0-898c-7c855e5b0234	838300ea-6a6a-4d14-b44c-cf02ee3669f7	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	2025-09-08 12:25:56.224+00	t	469f9695-140e-4627-9636-7d670617b454	"212244"	0	2025-09-08 12:25:56.224+00	\N
3bbbb122-293a-4be4-bb94-79dbd0da4f31	fb12956e-b6f9-4f3c-bbe8-7623d184cf8d	68791c34-6384-4d8f-b544-5188033fa7ac	2025-09-08 13:32:37.143+00	t	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	"212253"	0	2025-09-08 13:32:37.143+00	\N
8bc29f05-d334-4286-81f5-372e7d8b6331	369f65d4-b89b-4144-9a8e-9931d6f69bf3	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	2025-09-09 12:47:16.347+00	t	f4ae3849-725c-4323-b4fb-83d10ca38ce9	"212343"	0	2025-09-09 12:47:16.347+00	\N
\.


--
-- Data for Name: campaign_priorities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."campaign_priorities" ("priority_id", "io_id", "priority", "campaign_ids", "status", "platform_request", "platform_response", "created_by", "created_at", "updated_at") FROM stdin;
ee898d97-7c6a-4350-bbd0-74b09d5448c2	ffac842c-68ba-4fe4-8764-87265892caac	2	{1bb3e6fe-0f68-4358-bbb3-4b6ba99d02ad}	pending	{"ioId": 6123, "priority": 2, "requestId": "upd-ee898d97-7c6a-4350-bbd0-74b09d5448c2", "timestamp": "2025-09-08T11:26:43.393Z", "campaignIds": [46087]}	{"data": "Priority Updated Successfully", "success": true}	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	2025-09-08 11:05:34.13+00	2025-09-08 11:26:48.373+00
7a5d7924-12aa-470c-bd31-c7772ca9b5bf	ffac842c-68ba-4fe4-8764-87265892caac	1	{90a0c5c7-6b7b-4f63-85cc-a61e4d770908}	pending	{"ioId": 6123, "priority": 1, "requestId": "req-7a5d7924-12aa-470c-bd31-c7772ca9b5bf", "timestamp": "2025-09-08T12:01:11.301Z", "campaignIds": [46084]}	{"data": "Priority Updated Successfully", "success": true}	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	2025-09-08 12:01:08.686+00	2025-09-08 12:01:15.211+00
a733aa2b-efaa-485f-97be-25abd0520cbc	ffac842c-68ba-4fe4-8764-87265892caac	6	{8bc29f05-d334-4286-81f5-372e7d8b6331}	pending	{"ioId": 6123, "priority": 6, "requestId": "req-a733aa2b-efaa-485f-97be-25abd0520cbc", "timestamp": "2025-09-09T12:49:03.680Z", "campaignIds": [46150]}	{"data": "Priority Updated Successfully", "success": true}	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	2025-09-09 12:49:00.994+00	2025-09-09 12:49:05.467+00
\.


--
-- Data for Name: campaign_steps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."campaign_steps" ("id", "org_id", "campaign_id", "step_name", "step_order", "is_completed", "completed_by", "step_data", "completed_at", "created_at", "updated_at") FROM stdin;
1e0b6954-a280-4a96-97f4-18c1b085ed5f	1d133e85-37ec-411c-8cf2-84f80888e8a6	0d98b402-52f8-4d29-bb2b-c58202fc9f3c	platformConfig	3	t	\N	\N	\N	2025-09-05 13:39:30.696+00	2025-09-08 10:06:39.021+00
7ca944e5-316e-4286-9593-b427a41ddb6f	ce691bdf-681e-43de-ba03-971fefaa797a	4b81e203-deb5-4890-833b-06293b8ec37c	creatives	4	f	\N	\N	\N	2025-09-05 04:04:33.508+00	2025-09-05 04:04:33.508+00
21843936-ef77-4cde-b211-3a5efc64d236	ce691bdf-681e-43de-ba03-971fefaa797a	4b81e203-deb5-4890-833b-06293b8ec37c	review_submit	5	f	\N	\N	\N	2025-09-05 04:04:33.508+00	2025-09-05 04:04:33.508+00
617a1242-b96a-4acd-9387-ceb1c280fb13	ce691bdf-681e-43de-ba03-971fefaa797a	4b81e203-deb5-4890-833b-06293b8ec37c	basic_info	1	t	\N	\N	\N	2025-09-05 04:04:33.508+00	2025-09-05 04:05:22.039+00
6ebdcfb9-2fde-490c-a030-53fdf3f2a527	ce691bdf-681e-43de-ba03-971fefaa797a	4b81e203-deb5-4890-833b-06293b8ec37c	platforms	2	t	\N	\N	\N	2025-09-05 04:04:33.508+00	2025-09-05 04:06:36.624+00
8581feb8-4480-4fc7-a7f2-7187aff3129e	ce691bdf-681e-43de-ba03-971fefaa797a	4b81e203-deb5-4890-833b-06293b8ec37c	platformConfig	3	t	\N	\N	\N	2025-09-05 04:04:33.508+00	2025-09-05 04:10:33.777+00
e0382cf9-708b-4759-82d9-72f71f7d6e7a	173e39a3-b55c-448c-950e-97c82f5b69eb	67daf5fa-97d1-4db1-829c-99d49c4de4c9	platformConfig	3	t	\N	\N	\N	2025-09-05 09:58:37.314+00	2025-09-08 12:13:37.406+00
109791bd-f269-4f30-94c2-3e2b523cee37	ce691bdf-681e-43de-ba03-971fefaa797a	adb287bf-7f2f-41af-9b7a-6f89e78357cf	creatives	4	f	\N	\N	\N	2025-09-05 04:25:25.675+00	2025-09-05 04:25:25.675+00
f503f53f-4265-43e2-9296-685eacb5d53d	ce691bdf-681e-43de-ba03-971fefaa797a	adb287bf-7f2f-41af-9b7a-6f89e78357cf	review_submit	5	f	\N	\N	\N	2025-09-05 04:25:25.675+00	2025-09-05 04:25:25.675+00
0456b527-1dce-4fd4-8ca0-fba3962587b3	ce691bdf-681e-43de-ba03-971fefaa797a	adb287bf-7f2f-41af-9b7a-6f89e78357cf	platforms	2	t	\N	\N	\N	2025-09-05 04:25:25.675+00	2025-09-05 04:26:10.303+00
b39fdf15-1ea3-4c69-b833-476779a5abc2	ce691bdf-681e-43de-ba03-971fefaa797a	adb287bf-7f2f-41af-9b7a-6f89e78357cf	basic_info	1	t	\N	\N	\N	2025-09-05 04:25:25.675+00	2025-09-05 04:26:11.89+00
c32cd298-b422-4b7b-8963-dab5a01407bc	ce691bdf-681e-43de-ba03-971fefaa797a	adb287bf-7f2f-41af-9b7a-6f89e78357cf	platformConfig	3	t	\N	\N	\N	2025-09-05 04:25:25.675+00	2025-09-05 04:26:52.682+00
8756b521-14a2-49f6-98d4-01bb9264f2b8	1d133e85-37ec-411c-8cf2-84f80888e8a6	0d98b402-52f8-4d29-bb2b-c58202fc9f3c	basic_info	1	t	\N	\N	\N	2025-09-05 13:39:30.696+00	2025-09-08 10:06:16.248+00
927d0a4a-1523-4640-a3ba-7ad0b5c25e01	1d133e85-37ec-411c-8cf2-84f80888e8a6	e7e2082d-a8e3-4f97-a743-38f334bf0ad7	platformConfig	3	t	\N	\N	\N	2025-09-05 11:19:54.556+00	2025-09-08 11:05:59.511+00
6544477f-4306-410c-9eb4-61d60e3b09d8	1d133e85-37ec-411c-8cf2-84f80888e8a6	e7e2082d-a8e3-4f97-a743-38f334bf0ad7	platforms	2	t	\N	\N	\N	2025-09-05 11:19:54.556+00	2025-09-08 11:05:35.928+00
4f6e97f3-4465-440a-bc47-f441c4d5b87c	ce691bdf-681e-43de-ba03-971fefaa797a	370c8c2c-fa6f-4e92-a664-a8c75f9231f8	creatives	4	f	\N	\N	\N	2025-09-05 08:44:22.187+00	2025-09-05 08:44:22.187+00
647dfa81-9af3-446a-b8c6-2e017251750c	ce691bdf-681e-43de-ba03-971fefaa797a	370c8c2c-fa6f-4e92-a664-a8c75f9231f8	review_submit	5	f	\N	\N	\N	2025-09-05 08:44:22.187+00	2025-09-05 08:44:22.187+00
01f9a9de-b57b-45ad-b3aa-1e05dcd65f7c	ce691bdf-681e-43de-ba03-971fefaa797a	370c8c2c-fa6f-4e92-a664-a8c75f9231f8	platforms	2	t	\N	\N	\N	2025-09-05 08:44:22.187+00	2025-09-05 08:46:05.142+00
74b6abb1-378f-4fe3-bea0-b8b04839fa9a	ce691bdf-681e-43de-ba03-971fefaa797a	370c8c2c-fa6f-4e92-a664-a8c75f9231f8	basic_info	1	t	\N	\N	\N	2025-09-05 08:44:22.187+00	2025-09-05 08:46:05.708+00
ccb69f47-3f2c-4955-8b24-3a0f2fe63ee9	ce691bdf-681e-43de-ba03-971fefaa797a	370c8c2c-fa6f-4e92-a664-a8c75f9231f8	platformConfig	3	t	\N	\N	\N	2025-09-05 08:44:22.187+00	2025-09-05 08:46:30.667+00
cabfc7f2-2ed3-4ac6-9a2e-0ca33c5a22e5	1d133e85-37ec-411c-8cf2-84f80888e8a6	e7e2082d-a8e3-4f97-a743-38f334bf0ad7	basic_info	1	t	\N	\N	\N	2025-09-05 11:19:54.556+00	2025-09-08 11:05:33.012+00
80658731-084f-4cd0-bf9e-fd2480b737ee	50261d89-cbdf-4517-9c36-7e77af3aa2b2	e77c0dcc-7614-4e6c-acc0-254e1eaa0def	platformConfig	3	t	\N	\N	\N	2025-09-05 10:28:32.48+00	2025-09-08 16:02:32.425+00
d1b4bebb-6e87-4802-914a-09a0f44777aa	50261d89-cbdf-4517-9c36-7e77af3aa2b2	e77c0dcc-7614-4e6c-acc0-254e1eaa0def	platforms	2	t	\N	\N	\N	2025-09-05 10:28:32.48+00	2025-09-08 15:04:13.258+00
927041aa-fcf0-418e-9f81-9e6060ebe964	ce691bdf-681e-43de-ba03-971fefaa797a	41af3f95-231b-4b07-bca3-97f4c97093a0	creatives	4	f	\N	\N	\N	2025-09-05 08:52:32.282+00	2025-09-05 08:52:32.282+00
a38f0b68-75e1-49de-b18a-14b2765e6ca4	ce691bdf-681e-43de-ba03-971fefaa797a	41af3f95-231b-4b07-bca3-97f4c97093a0	review_submit	5	f	\N	\N	\N	2025-09-05 08:52:32.282+00	2025-09-05 08:52:32.282+00
c4daa764-8418-4139-9662-1a5a13f19ba1	50261d89-cbdf-4517-9c36-7e77af3aa2b2	e77c0dcc-7614-4e6c-acc0-254e1eaa0def	basic_info	1	t	\N	\N	\N	2025-09-05 10:28:32.48+00	2025-09-08 15:04:12.901+00
997688f7-cac8-4e33-ace7-2ece0c448780	f4ae3849-725c-4323-b4fb-83d10ca38ce9	90a0c5c7-6b7b-4f63-85cc-a61e4d770908	creatives	4	f	\N	\N	\N	2025-09-05 09:55:18.465+00	2025-09-05 09:55:18.465+00
1c4c70ee-9cbb-4c34-82d0-042637f7c992	f4ae3849-725c-4323-b4fb-83d10ca38ce9	90a0c5c7-6b7b-4f63-85cc-a61e4d770908	review_submit	5	f	\N	\N	\N	2025-09-05 09:55:18.465+00	2025-09-05 09:55:18.465+00
35bdccbd-2e69-48d8-b0a2-83cde2d3fdaf	ce691bdf-681e-43de-ba03-971fefaa797a	41af3f95-231b-4b07-bca3-97f4c97093a0	basic_info	1	t	\N	\N	\N	2025-09-05 08:52:32.282+00	2025-09-05 09:09:18.409+00
9565e281-f3b2-426f-8071-2c88b436b86a	ce691bdf-681e-43de-ba03-971fefaa797a	41af3f95-231b-4b07-bca3-97f4c97093a0	platforms	2	t	\N	\N	\N	2025-09-05 08:52:32.282+00	2025-09-05 09:09:18.702+00
b5ae1d0b-2042-477e-978a-84be44e4abf1	ce691bdf-681e-43de-ba03-971fefaa797a	41af3f95-231b-4b07-bca3-97f4c97093a0	platformConfig	3	t	\N	\N	\N	2025-09-05 08:52:32.282+00	2025-09-05 09:09:32.875+00
cc14e890-46b1-43a4-81fc-efab5047af66	5de5079e-a9c8-4aa0-ae44-7f182424b700	75b2fbc6-41db-46d5-b553-19a349344809	creatives	4	f	\N	\N	\N	2025-09-05 09:36:02.78+00	2025-09-05 09:36:02.78+00
3725afe0-7c70-42fb-942c-b6faaa6b0323	5de5079e-a9c8-4aa0-ae44-7f182424b700	75b2fbc6-41db-46d5-b553-19a349344809	review_submit	5	f	\N	\N	\N	2025-09-05 09:36:02.78+00	2025-09-05 09:36:02.78+00
c2659357-9a2b-4fc0-bef8-5667574c9ddd	5de5079e-a9c8-4aa0-ae44-7f182424b700	75b2fbc6-41db-46d5-b553-19a349344809	platformConfig	3	t	\N	\N	\N	2025-09-05 09:36:02.78+00	2025-09-05 16:04:33.951+00
3ac75df7-521e-423d-a063-3bbd275d74aa	f4ae3849-725c-4323-b4fb-83d10ca38ce9	90a0c5c7-6b7b-4f63-85cc-a61e4d770908	basic_info	1	t	\N	\N	\N	2025-09-05 09:55:18.465+00	2025-09-05 16:40:10.003+00
8978bb7e-d50b-4e71-9036-d8c21b9b0412	5de5079e-a9c8-4aa0-ae44-7f182424b700	75b2fbc6-41db-46d5-b553-19a349344809	basic_info	1	t	\N	\N	\N	2025-09-05 09:36:02.78+00	2025-09-05 15:39:13.184+00
c2defbf2-138a-4b99-90bb-5980eebf5f75	1d133e85-37ec-411c-8cf2-84f80888e8a6	d10753c2-337d-448a-8fa1-dafca571cbf8	creatives	4	f	\N	\N	\N	2025-09-05 09:53:36.561+00	2025-09-05 09:53:36.561+00
d81cabe4-be79-4280-86ab-c0a15faa2e4c	1d133e85-37ec-411c-8cf2-84f80888e8a6	d10753c2-337d-448a-8fa1-dafca571cbf8	review_submit	5	f	\N	\N	\N	2025-09-05 09:53:36.561+00	2025-09-05 09:53:36.561+00
a647aef1-5543-49fd-9036-57b955bc4399	173e39a3-b55c-448c-950e-97c82f5b69eb	67daf5fa-97d1-4db1-829c-99d49c4de4c9	creatives	4	f	\N	\N	\N	2025-09-05 09:58:37.314+00	2025-09-05 09:58:37.314+00
c8570aea-1bea-46ba-9669-bab55a351689	173e39a3-b55c-448c-950e-97c82f5b69eb	67daf5fa-97d1-4db1-829c-99d49c4de4c9	review_submit	5	f	\N	\N	\N	2025-09-05 09:58:37.314+00	2025-09-05 09:58:37.314+00
dcc874a0-d112-4e85-aa5a-0502b53c5bb3	f4ae3849-725c-4323-b4fb-83d10ca38ce9	90a0c5c7-6b7b-4f63-85cc-a61e4d770908	platforms	2	t	\N	\N	\N	2025-09-05 09:55:18.465+00	2025-09-05 16:40:12.177+00
6ddddd1e-b7ad-48ed-a22a-cd14cff638ee	5de5079e-a9c8-4aa0-ae44-7f182424b700	75b2fbc6-41db-46d5-b553-19a349344809	platforms	2	t	\N	\N	\N	2025-09-05 09:36:02.78+00	2025-09-05 15:39:17.819+00
c73ef4d3-30fd-4c20-941f-cfdb47367f23	50261d89-cbdf-4517-9c36-7e77af3aa2b2	e77c0dcc-7614-4e6c-acc0-254e1eaa0def	creatives	4	f	\N	\N	\N	2025-09-05 10:28:32.48+00	2025-09-05 10:28:32.48+00
9c2cd8f2-3ef0-4366-8ba7-f23b273cd0d2	50261d89-cbdf-4517-9c36-7e77af3aa2b2	e77c0dcc-7614-4e6c-acc0-254e1eaa0def	review_submit	5	f	\N	\N	\N	2025-09-05 10:28:32.48+00	2025-09-05 10:28:32.48+00
a7adaf25-7ee7-4e02-af75-ca97579ed635	1d133e85-37ec-411c-8cf2-84f80888e8a6	d10753c2-337d-448a-8fa1-dafca571cbf8	basic_info	1	t	\N	\N	\N	2025-09-05 09:53:36.561+00	2025-09-05 12:17:43.035+00
bf5e61a8-6ec2-4449-be34-9f43ee069b6e	469f9695-140e-4627-9636-7d670617b454	a4dd32c8-554c-4a73-8549-e0b7a082e132	basic_info	1	t	\N	\N	\N	2025-09-05 13:10:50.926+00	2025-09-05 13:11:40.198+00
b1b859b2-8942-476a-a03e-2f395f2afcef	469f9695-140e-4627-9636-7d670617b454	a4dd32c8-554c-4a73-8549-e0b7a082e132	platforms	2	t	\N	\N	\N	2025-09-05 13:10:50.926+00	2025-09-05 13:11:42.543+00
03c7fca9-ecbc-4784-898c-ac9dcfc39bfb	1d133e85-37ec-411c-8cf2-84f80888e8a6	e7e2082d-a8e3-4f97-a743-38f334bf0ad7	creatives	4	f	\N	\N	\N	2025-09-05 11:19:54.556+00	2025-09-05 11:19:54.556+00
898bb076-20d7-4751-99b8-c6359618b260	1d133e85-37ec-411c-8cf2-84f80888e8a6	e7e2082d-a8e3-4f97-a743-38f334bf0ad7	review_submit	5	f	\N	\N	\N	2025-09-05 11:19:54.556+00	2025-09-05 11:19:54.556+00
ed76beb6-93ba-4d45-9bf2-329ed25120e8	469f9695-140e-4627-9636-7d670617b454	be5baba9-0134-4712-b075-65811e89a766	platforms	2	t	\N	\N	\N	2025-09-05 11:33:50.676+00	2025-09-05 12:01:19.239+00
d63345ca-c5fc-4cb5-91ea-fad771319049	469f9695-140e-4627-9636-7d670617b454	be5baba9-0134-4712-b075-65811e89a766	creatives	4	f	\N	\N	\N	2025-09-05 11:33:50.676+00	2025-09-05 11:33:50.676+00
f07ea8fd-5fd1-468b-8e3d-09a74bb2ff79	469f9695-140e-4627-9636-7d670617b454	be5baba9-0134-4712-b075-65811e89a766	review_submit	5	f	\N	\N	\N	2025-09-05 11:33:50.676+00	2025-09-05 11:33:50.676+00
b1468c06-d72b-4904-8c35-10e0b4fdff09	469f9695-140e-4627-9636-7d670617b454	be5baba9-0134-4712-b075-65811e89a766	basic_info	1	t	\N	\N	\N	2025-09-05 11:33:50.676+00	2025-09-05 12:01:27.969+00
ee55feec-fa7b-46f7-8511-0dde6657bdcb	469f9695-140e-4627-9636-7d670617b454	be5baba9-0134-4712-b075-65811e89a766	platformConfig	3	t	\N	\N	\N	2025-09-05 11:33:50.676+00	2025-09-05 12:02:09.598+00
926c90d7-aaef-4555-af24-23ba08ab1ae5	f4ae3849-725c-4323-b4fb-83d10ca38ce9	90a0c5c7-6b7b-4f63-85cc-a61e4d770908	platformConfig	3	t	\N	\N	\N	2025-09-05 09:55:18.465+00	2025-09-05 16:43:52.272+00
35e809de-f7ba-457b-83eb-3bbd392fe894	1d133e85-37ec-411c-8cf2-84f80888e8a6	d10753c2-337d-448a-8fa1-dafca571cbf8	platforms	2	t	\N	\N	\N	2025-09-05 09:53:36.561+00	2025-09-05 12:17:45.431+00
9bc5ec46-2983-4a77-a990-8c7cdac9eb1f	1d133e85-37ec-411c-8cf2-84f80888e8a6	d10753c2-337d-448a-8fa1-dafca571cbf8	platformConfig	3	t	\N	\N	\N	2025-09-05 09:53:36.561+00	2025-09-05 12:18:07.21+00
ea9085cf-f929-4ed7-be3d-9f0e24267da3	469f9695-140e-4627-9636-7d670617b454	a4dd32c8-554c-4a73-8549-e0b7a082e132	creatives	4	f	\N	\N	\N	2025-09-05 13:10:50.926+00	2025-09-05 13:10:50.926+00
d51d01a1-f3d9-48a0-83af-7e68ae20e8d1	469f9695-140e-4627-9636-7d670617b454	a4dd32c8-554c-4a73-8549-e0b7a082e132	review_submit	5	f	\N	\N	\N	2025-09-05 13:10:50.926+00	2025-09-05 13:10:50.926+00
e1c1bafe-e0a6-4826-8301-6ed7cf7ccfcd	469f9695-140e-4627-9636-7d670617b454	a4dd32c8-554c-4a73-8549-e0b7a082e132	platformConfig	3	t	\N	\N	\N	2025-09-05 13:10:50.926+00	2025-09-05 13:13:45.782+00
a811241c-86d7-4b41-9441-22a56ff76bf0	1d133e85-37ec-411c-8cf2-84f80888e8a6	0d98b402-52f8-4d29-bb2b-c58202fc9f3c	creatives	4	f	\N	\N	\N	2025-09-05 13:39:30.696+00	2025-09-05 13:39:30.696+00
fd094286-2473-4647-bb44-f88b0acc4504	1d133e85-37ec-411c-8cf2-84f80888e8a6	0d98b402-52f8-4d29-bb2b-c58202fc9f3c	review_submit	5	f	\N	\N	\N	2025-09-05 13:39:30.696+00	2025-09-05 13:39:30.696+00
cb6b8eab-b2a9-4006-8b49-8c7edc3fb129	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	platforms	2	t	\N	\N	\N	2025-09-08 11:50:54.124+00	2025-09-09 17:09:48.489+00
25ebbaa3-b170-43a7-b20e-67908d7e57ca	469f9695-140e-4627-9636-7d670617b454	ca5c9dff-ba6f-460c-816b-18f97319d33c	basic_info	1	t	\N	\N	\N	2025-09-05 16:28:25.613+00	2025-09-09 16:47:13.999+00
ad327f19-ee6d-456a-9e86-1f3923f49ba1	469f9695-140e-4627-9636-7d670617b454	ca5c9dff-ba6f-460c-816b-18f97319d33c	platformConfig	3	t	\N	\N	\N	2025-09-05 16:28:25.613+00	2025-09-05 19:03:11.182+00
2b905931-3bca-41b1-92eb-c350e9822dcb	469f9695-140e-4627-9636-7d670617b454	4f3c9f4a-ec1c-4ab9-b635-0de65a86a7dc	creatives	4	f	\N	\N	\N	2025-09-05 19:12:10.748+00	2025-09-05 19:12:10.748+00
9a1f76a6-6523-4981-a88d-1410e32c82ee	469f9695-140e-4627-9636-7d670617b454	4f3c9f4a-ec1c-4ab9-b635-0de65a86a7dc	review_submit	5	f	\N	\N	\N	2025-09-05 19:12:10.748+00	2025-09-05 19:12:10.748+00
85210125-701d-4b44-847e-772d4620df30	f4ae3849-725c-4323-b4fb-83d10ca38ce9	1bb3e6fe-0f68-4358-bbb3-4b6ba99d02ad	creatives	4	f	\N	\N	\N	2025-09-05 14:24:45.621+00	2025-09-05 14:24:45.621+00
9b6ba3a4-1a1f-464f-99fd-e6755b2f46b7	f4ae3849-725c-4323-b4fb-83d10ca38ce9	1bb3e6fe-0f68-4358-bbb3-4b6ba99d02ad	review_submit	5	f	\N	\N	\N	2025-09-05 14:24:45.621+00	2025-09-05 14:24:45.621+00
487c5290-d189-4377-a914-011ba6ce45c4	469f9695-140e-4627-9636-7d670617b454	4f3c9f4a-ec1c-4ab9-b635-0de65a86a7dc	platforms	2	t	\N	\N	\N	2025-09-05 19:12:10.748+00	2025-09-09 16:48:27.059+00
e577a671-7da1-4d61-9398-9ed31499e2a1	469f9695-140e-4627-9636-7d670617b454	4f3c9f4a-ec1c-4ab9-b635-0de65a86a7dc	platformConfig	3	t	\N	\N	\N	2025-09-05 19:12:10.748+00	2025-09-05 19:14:27.737+00
e1b43e7e-9b63-4142-8df7-197a3213978b	469f9695-140e-4627-9636-7d670617b454	ca5c9dff-ba6f-460c-816b-18f97319d33c	creatives	4	f	\N	\N	\N	2025-09-05 16:28:25.613+00	2025-09-05 16:28:25.613+00
038ad06e-bdf3-47ad-a7e4-c9566c15554c	469f9695-140e-4627-9636-7d670617b454	ca5c9dff-ba6f-460c-816b-18f97319d33c	review_submit	5	f	\N	\N	\N	2025-09-05 16:28:25.613+00	2025-09-05 16:28:25.613+00
dbea67e7-0108-45f1-b5d8-dff238c1c9fe	173e39a3-b55c-448c-950e-97c82f5b69eb	67daf5fa-97d1-4db1-829c-99d49c4de4c9	basic_info	1	t	\N	\N	\N	2025-09-05 09:58:37.314+00	2025-09-08 12:33:03.294+00
2a3c7563-dd0e-4e5e-8fca-e47a649bee74	f4ae3849-725c-4323-b4fb-83d10ca38ce9	1bb3e6fe-0f68-4358-bbb3-4b6ba99d02ad	platformConfig	3	t	\N	\N	\N	2025-09-05 14:24:45.621+00	2025-09-08 14:24:18.074+00
560a320b-34b7-44ce-af52-3071824e3e4b	173e39a3-b55c-448c-950e-97c82f5b69eb	67daf5fa-97d1-4db1-829c-99d49c4de4c9	platforms	2	t	\N	\N	\N	2025-09-05 09:58:37.314+00	2025-09-08 12:40:28.933+00
d3043b8d-9669-4a49-b2ab-b3953b5f11ee	1d133e85-37ec-411c-8cf2-84f80888e8a6	0d98b402-52f8-4d29-bb2b-c58202fc9f3c	platforms	2	t	\N	\N	\N	2025-09-05 13:39:30.696+00	2025-09-08 10:06:15.987+00
de327a51-04bc-49bf-81ec-71876b15a8c2	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	3bbbb122-293a-4be4-bb94-79dbd0da4f31	platformConfig	3	t	\N	\N	\N	2025-09-08 13:23:51.652+00	2025-09-08 13:35:27.094+00
4f4582b8-5770-46ac-993e-65dc85b9ebf4	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	3bbbb122-293a-4be4-bb94-79dbd0da4f31	basic_info	1	t	\N	\N	\N	2025-09-08 13:23:51.652+00	2025-09-08 13:45:03.004+00
b5124943-790f-4c97-912c-f0b838b36d7b	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	3bbbb122-293a-4be4-bb94-79dbd0da4f31	platforms	2	t	\N	\N	\N	2025-09-08 13:23:51.652+00	2025-09-08 13:45:03.154+00
d9e37d11-a19f-4cd7-834c-ea4e680e4ffc	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	creatives	4	f	\N	\N	\N	2025-09-08 11:50:54.124+00	2025-09-08 11:50:54.124+00
2c61ad49-a0c2-4a0b-9b0c-8277c14308ab	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	review_submit	5	f	\N	\N	\N	2025-09-08 11:50:54.124+00	2025-09-08 11:50:54.124+00
83ad15a4-3a08-417f-80ff-5290d17e73cc	469f9695-140e-4627-9636-7d670617b454	6dedc3c6-3095-4518-844b-d59c74b5353a	platformConfig	3	t	\N	\N	\N	2025-09-08 16:42:03.371+00	2025-09-09 15:03:50.565+00
a2243bfa-9f7c-46a1-8af8-7b82a2727f30	469f9695-140e-4627-9636-7d670617b454	022c7fda-8348-46b0-898c-7c855e5b0234	creatives	4	f	\N	\N	\N	2025-09-08 12:19:30.412+00	2025-09-08 12:19:30.412+00
4271c862-e640-46f9-a86f-3eb4f2d6a533	469f9695-140e-4627-9636-7d670617b454	022c7fda-8348-46b0-898c-7c855e5b0234	review_submit	5	f	\N	\N	\N	2025-09-08 12:19:30.412+00	2025-09-08 12:19:30.412+00
b6476167-0930-4ed4-b9b5-e959032d99fc	173e39a3-b55c-448c-950e-97c82f5b69eb	abdb98e0-ea1f-4d3b-8af6-f3d68ac71242	creatives	4	f	\N	\N	\N	2025-09-08 12:46:44.385+00	2025-09-08 12:46:44.385+00
e4635008-08e4-4f89-8d60-4f104f1a5a86	173e39a3-b55c-448c-950e-97c82f5b69eb	abdb98e0-ea1f-4d3b-8af6-f3d68ac71242	review_submit	5	f	\N	\N	\N	2025-09-08 12:46:44.385+00	2025-09-08 12:46:44.385+00
6583d2da-4b3d-4f27-b984-013130f85422	469f9695-140e-4627-9636-7d670617b454	022c7fda-8348-46b0-898c-7c855e5b0234	platforms	2	t	\N	\N	\N	2025-09-08 12:19:30.412+00	2025-09-08 15:13:54.261+00
a2945265-65c6-4d62-a0b6-77e4188c872d	469f9695-140e-4627-9636-7d670617b454	022c7fda-8348-46b0-898c-7c855e5b0234	basic_info	1	t	\N	\N	\N	2025-09-08 12:19:30.412+00	2025-09-08 15:13:57.844+00
e7a11bb1-9cbc-43e8-8296-ceb523def8d9	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	3bbbb122-293a-4be4-bb94-79dbd0da4f31	creatives	4	f	\N	\N	\N	2025-09-08 13:23:51.652+00	2025-09-08 13:23:51.652+00
a6099552-d3aa-4a88-87c6-5491db30e2cf	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	3bbbb122-293a-4be4-bb94-79dbd0da4f31	review_submit	5	f	\N	\N	\N	2025-09-08 13:23:51.652+00	2025-09-08 13:23:51.652+00
f52b2097-5b90-4625-b856-4d6358d385d8	469f9695-140e-4627-9636-7d670617b454	201ba7e2-f31b-498a-9095-69b4a71ff686	creatives	4	f	\N	\N	\N	2025-09-08 15:45:11.957+00	2025-09-08 15:45:11.957+00
77ec01ad-4837-40b8-940f-40ce3d368cf3	469f9695-140e-4627-9636-7d670617b454	201ba7e2-f31b-498a-9095-69b4a71ff686	platforms	2	t	\N	\N	\N	2025-09-08 15:45:11.957+00	2025-09-08 15:46:44.703+00
14895e6a-3c7b-42f3-beaa-1c3e5f59449c	f4ae3849-725c-4323-b4fb-83d10ca38ce9	1bb3e6fe-0f68-4358-bbb3-4b6ba99d02ad	platforms	2	t	\N	\N	\N	2025-09-05 14:24:45.621+00	2025-09-08 14:23:18.872+00
11fac283-2fee-43b7-8e2f-b994040f32ff	f4ae3849-725c-4323-b4fb-83d10ca38ce9	1bb3e6fe-0f68-4358-bbb3-4b6ba99d02ad	basic_info	1	t	\N	\N	\N	2025-09-05 14:24:45.621+00	2025-09-08 14:23:19.238+00
88689e5f-aad4-4454-a159-eb5ed1ef2644	469f9695-140e-4627-9636-7d670617b454	022c7fda-8348-46b0-898c-7c855e5b0234	platformConfig	3	t	\N	\N	\N	2025-09-08 12:19:30.412+00	2025-09-08 15:18:15.627+00
e891e499-eef4-44b4-bb81-6bb9f4bc2792	469f9695-140e-4627-9636-7d670617b454	ca5c9dff-ba6f-460c-816b-18f97319d33c	platforms	2	t	\N	\N	\N	2025-09-05 16:28:25.613+00	2025-09-09 16:47:14.248+00
f0658076-4dc7-4cb2-93b3-051ea17c5c18	469f9695-140e-4627-9636-7d670617b454	221e470e-01bd-4c83-8f23-096aaa45beaf	creatives	4	f	\N	\N	\N	2025-09-08 15:24:05.882+00	2025-09-08 15:24:05.882+00
9bba2733-a6ae-4677-951a-43fce6cb8e1b	469f9695-140e-4627-9636-7d670617b454	221e470e-01bd-4c83-8f23-096aaa45beaf	review_submit	5	f	\N	\N	\N	2025-09-08 15:24:05.882+00	2025-09-08 15:24:05.882+00
9c1d16b1-bb67-401a-b8cd-ba9c8d34d459	469f9695-140e-4627-9636-7d670617b454	201ba7e2-f31b-498a-9095-69b4a71ff686	review_submit	5	f	\N	\N	\N	2025-09-08 15:45:11.957+00	2025-09-08 15:45:11.957+00
6ed6f1f0-bbe8-4dbf-b044-23d6b647c930	469f9695-140e-4627-9636-7d670617b454	201ba7e2-f31b-498a-9095-69b4a71ff686	basic_info	1	t	\N	\N	\N	2025-09-08 15:45:11.957+00	2025-09-08 15:46:24.142+00
d743e7d0-58f6-43f0-a47c-d181709d9cf9	469f9695-140e-4627-9636-7d670617b454	221e470e-01bd-4c83-8f23-096aaa45beaf	platforms	2	t	\N	\N	\N	2025-09-08 15:24:05.882+00	2025-09-09 16:44:25.712+00
955565da-fd53-4b41-ade0-c1f3c0453e93	469f9695-140e-4627-9636-7d670617b454	201ba7e2-f31b-498a-9095-69b4a71ff686	platformConfig	3	t	\N	\N	\N	2025-09-08 15:45:11.957+00	2025-09-08 16:29:16.579+00
50f4546b-9306-4a5f-94f5-ec22928cef79	469f9695-140e-4627-9636-7d670617b454	6dedc3c6-3095-4518-844b-d59c74b5353a	creatives	4	f	\N	\N	\N	2025-09-08 16:42:03.371+00	2025-09-08 16:42:03.371+00
bd8475f4-1e97-47f2-ab12-9e10fd060ef5	469f9695-140e-4627-9636-7d670617b454	6dedc3c6-3095-4518-844b-d59c74b5353a	review_submit	5	f	\N	\N	\N	2025-09-08 16:42:03.371+00	2025-09-08 16:42:03.371+00
424d1710-4753-42fe-927c-ca8a09617a0a	469f9695-140e-4627-9636-7d670617b454	6dedc3c6-3095-4518-844b-d59c74b5353a	platforms	2	t	\N	\N	\N	2025-09-08 16:42:03.371+00	2025-09-09 15:03:05.775+00
40983361-6f10-482b-8e93-1ffd55d39d11	469f9695-140e-4627-9636-7d670617b454	221e470e-01bd-4c83-8f23-096aaa45beaf	platformConfig	3	t	\N	\N	\N	2025-09-08 15:24:05.882+00	2025-09-09 16:37:44.126+00
196a3f6e-893c-4dc4-8d61-a841f3673dd9	469f9695-140e-4627-9636-7d670617b454	6dedc3c6-3095-4518-844b-d59c74b5353a	basic_info	1	t	\N	\N	\N	2025-09-08 16:42:03.371+00	2025-09-09 15:03:01.006+00
fa5a731f-32b8-4c7b-8c6a-716983abdda8	f4ae3849-725c-4323-b4fb-83d10ca38ce9	8bc29f05-d334-4286-81f5-372e7d8b6331	creatives	4	f	\N	\N	\N	2025-09-09 11:20:12.193+00	2025-09-09 11:20:12.193+00
6a8028cf-0f77-4cad-8c44-599f838f1921	f4ae3849-725c-4323-b4fb-83d10ca38ce9	8bc29f05-d334-4286-81f5-372e7d8b6331	review_submit	5	f	\N	\N	\N	2025-09-09 11:20:12.193+00	2025-09-09 11:20:12.193+00
133fd077-558f-45e9-8801-0e0497fe32ed	f4ae3849-725c-4323-b4fb-83d10ca38ce9	8bc29f05-d334-4286-81f5-372e7d8b6331	platformConfig	3	t	\N	\N	\N	2025-09-09 11:20:12.193+00	2025-09-09 12:46:41.63+00
de88eabb-ab57-4e2a-9c6e-543b97b331e3	173e39a3-b55c-448c-950e-97c82f5b69eb	abdb98e0-ea1f-4d3b-8af6-f3d68ac71242	platformConfig	3	t	\N	\N	\N	2025-09-08 12:46:44.385+00	2025-09-09 15:16:50.823+00
f9542962-a739-45d7-b3e5-68e84a634674	f4ae3849-725c-4323-b4fb-83d10ca38ce9	8bc29f05-d334-4286-81f5-372e7d8b6331	platforms	2	t	\N	\N	\N	2025-09-09 11:20:12.193+00	2025-09-09 12:46:14.332+00
c104dfbe-7c65-4ad2-8273-dc23f55c1914	f4ae3849-725c-4323-b4fb-83d10ca38ce9	8bc29f05-d334-4286-81f5-372e7d8b6331	basic_info	1	t	\N	\N	\N	2025-09-09 11:20:12.193+00	2025-09-09 12:46:14.099+00
456c812d-f69e-436f-9814-9d48b29a58ca	469f9695-140e-4627-9636-7d670617b454	90919b41-6661-4576-b5df-aa6b6d5b4b7e	creatives	4	f	\N	\N	\N	2025-09-09 15:05:21.84+00	2025-09-09 15:05:21.84+00
e68ce277-c521-43b2-9f9c-d58138ee1647	469f9695-140e-4627-9636-7d670617b454	90919b41-6661-4576-b5df-aa6b6d5b4b7e	review_submit	5	f	\N	\N	\N	2025-09-09 15:05:21.84+00	2025-09-09 15:05:21.84+00
190f3a75-001b-4542-ac69-e843a18a48dd	469f9695-140e-4627-9636-7d670617b454	4f3c9f4a-ec1c-4ab9-b635-0de65a86a7dc	basic_info	1	t	\N	\N	\N	2025-09-05 19:12:10.748+00	2025-09-09 16:47:45.569+00
a0a5e678-4c5a-4dcb-8a6c-c3e59c057155	469f9695-140e-4627-9636-7d670617b454	90919b41-6661-4576-b5df-aa6b6d5b4b7e	platformConfig	3	t	\N	\N	\N	2025-09-09 15:05:21.84+00	2025-09-09 16:00:57.197+00
cf908441-a017-4870-bdc8-16a75c7dc715	469f9695-140e-4627-9636-7d670617b454	90919b41-6661-4576-b5df-aa6b6d5b4b7e	platforms	2	t	\N	\N	\N	2025-09-09 15:05:21.84+00	2025-09-09 16:05:18.614+00
9f32944e-8ba7-41ba-a369-a78924e2a72d	173e39a3-b55c-448c-950e-97c82f5b69eb	abdb98e0-ea1f-4d3b-8af6-f3d68ac71242	basic_info	1	t	\N	\N	\N	2025-09-08 12:46:44.385+00	2025-09-09 16:44:30.857+00
df29a68a-4093-4a39-a841-cd9b29613d3b	469f9695-140e-4627-9636-7d670617b454	221e470e-01bd-4c83-8f23-096aaa45beaf	basic_info	1	t	\N	\N	\N	2025-09-08 15:24:05.882+00	2025-09-09 16:44:26.426+00
d0e6e7ca-a5c6-4e31-8480-b751e98f7c51	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	platformConfig	3	t	\N	\N	\N	2025-09-08 11:50:54.124+00	2025-09-09 17:10:18.225+00
5784ae47-8957-4d0c-92f5-b1696d5be8db	469f9695-140e-4627-9636-7d670617b454	90919b41-6661-4576-b5df-aa6b6d5b4b7e	basic_info	1	t	\N	\N	\N	2025-09-09 15:05:21.84+00	2025-09-09 16:05:21.711+00
92df06d6-63bb-470c-abf4-66066dd1dac7	173e39a3-b55c-448c-950e-97c82f5b69eb	abdb98e0-ea1f-4d3b-8af6-f3d68ac71242	platforms	2	t	\N	\N	\N	2025-09-08 12:46:44.385+00	2025-09-09 16:44:33.038+00
da943398-2845-47c1-bd2f-3c1b4717b93f	469f9695-140e-4627-9636-7d670617b454	3da1c54d-f790-4428-a327-6242d61564e8	creatives	4	f	\N	\N	\N	2025-09-09 16:57:18.917+00	2025-09-09 16:57:18.917+00
84f69082-fbd6-4cbc-a9a6-95d8809cd449	469f9695-140e-4627-9636-7d670617b454	3da1c54d-f790-4428-a327-6242d61564e8	review_submit	5	f	\N	\N	\N	2025-09-09 16:57:18.917+00	2025-09-09 16:57:18.917+00
b2e648ca-aae4-4456-a399-a568e7910a3b	469f9695-140e-4627-9636-7d670617b454	3da1c54d-f790-4428-a327-6242d61564e8	basic_info	1	t	\N	\N	\N	2025-09-09 16:57:18.917+00	2025-09-09 16:58:09.986+00
d7bbd987-5f92-484e-9189-015266bd3ee6	469f9695-140e-4627-9636-7d670617b454	3da1c54d-f790-4428-a327-6242d61564e8	platforms	2	t	\N	\N	\N	2025-09-09 16:57:18.917+00	2025-09-09 16:58:11.106+00
56158505-12e7-4887-994d-c9c645aecc57	469f9695-140e-4627-9636-7d670617b454	3da1c54d-f790-4428-a327-6242d61564e8	platformConfig	3	t	\N	\N	\N	2025-09-09 16:57:18.917+00	2025-09-09 16:59:00.248+00
8c291bdf-28c6-4028-a740-c5f0ca75e4b8	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	basic_info	1	t	\N	\N	\N	2025-09-08 11:50:54.124+00	2025-09-09 17:09:48.172+00
57c42cef-aa2f-4a6d-b772-0b5e3d400fc1	469f9695-140e-4627-9636-7d670617b454	a9ad0ea9-1345-4ea2-92e5-d0dade643d66	creatives	4	f	\N	\N	\N	2025-09-09 17:13:40.689+00	2025-09-09 17:13:40.689+00
2c03801b-d51d-4796-9f7d-6dfed1ffc906	469f9695-140e-4627-9636-7d670617b454	a9ad0ea9-1345-4ea2-92e5-d0dade643d66	review_submit	5	f	\N	\N	\N	2025-09-09 17:13:40.689+00	2025-09-09 17:13:40.689+00
f8d7ddf8-a58f-4626-887b-b5fe262d54cc	469f9695-140e-4627-9636-7d670617b454	a9ad0ea9-1345-4ea2-92e5-d0dade643d66	basic_info	1	t	\N	\N	\N	2025-09-09 17:13:40.689+00	2025-09-09 17:28:39.281+00
210851b7-67f3-427e-aecf-6e320e9743a1	469f9695-140e-4627-9636-7d670617b454	a9ad0ea9-1345-4ea2-92e5-d0dade643d66	platforms	2	t	\N	\N	\N	2025-09-09 17:13:40.689+00	2025-09-09 17:28:41.226+00
c0b48ade-90db-49bb-abd6-0f4019f51104	469f9695-140e-4627-9636-7d670617b454	a9ad0ea9-1345-4ea2-92e5-d0dade643d66	platformConfig	3	t	\N	\N	\N	2025-09-09 17:13:40.689+00	2025-09-09 17:29:31.729+00
\.


--
-- Data for Name: platform_campaigns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."platform_campaigns" ("id", "campaign_id", "platform", "platform_campaign_id", "platform_data", "status", "error_message", "last_sync_at", "created_at", "updated_at") FROM stdin;
692dec87-eb64-459f-b243-14b23f2eaae3	4b81e203-deb5-4890-833b-06293b8ec37c	iqm	\N	\N	pending	\N	\N	2025-09-05 04:05:44.69+00	2025-09-05 04:05:44.69+00
4c8246ef-9547-4629-8b3c-3b6d6e00bc94	adb287bf-7f2f-41af-9b7a-6f89e78357cf	iqm	\N	\N	pending	\N	\N	2025-09-05 04:26:33.237+00	2025-09-05 04:26:33.237+00
6613b323-c054-4fb0-9cc4-adf116d9990c	370c8c2c-fa6f-4e92-a664-a8c75f9231f8	iqm	\N	\N	pending	\N	\N	2025-09-05 08:46:14.818+00	2025-09-05 08:46:14.818+00
51816269-3b38-4fc6-8b9b-cc6e234a80e2	41af3f95-231b-4b07-bca3-97f4c97093a0	iqm	\N	\N	pending	\N	\N	2025-09-05 08:53:23.861+00	2025-09-05 08:53:23.861+00
bb3506ea-3104-44d2-9acc-997a6436553d	75b2fbc6-41db-46d5-b553-19a349344809	iqm	\N	\N	pending	\N	\N	2025-09-05 09:36:55.492+00	2025-09-05 09:36:55.492+00
3d4eb08d-d2df-4878-996f-35ecb7c658e4	d10753c2-337d-448a-8fa1-dafca571cbf8	iqm	\N	\N	pending	\N	\N	2025-09-05 09:57:30.784+00	2025-09-05 09:57:30.784+00
2e38575e-c219-4b9b-9e65-ae35ba5357b8	67daf5fa-97d1-4db1-829c-99d49c4de4c9	iqm	\N	\N	pending	\N	\N	2025-09-05 10:01:20.685+00	2025-09-05 10:01:20.685+00
25b6b800-696e-4bf7-afc3-99f7145a47ec	e77c0dcc-7614-4e6c-acc0-254e1eaa0def	iqm	\N	\N	pending	\N	\N	2025-09-05 10:38:01.365+00	2025-09-05 10:38:01.365+00
7e35ad4b-1a7a-4121-ad0b-a6d8be276bff	e7e2082d-a8e3-4f97-a743-38f334bf0ad7	iqm	\N	\N	pending	\N	\N	2025-09-05 11:22:31.607+00	2025-09-05 11:22:31.607+00
392feb9b-9744-4ad5-9a54-b749243b60bd	be5baba9-0134-4712-b075-65811e89a766	iqm	\N	\N	pending	\N	\N	2025-09-05 11:37:18.919+00	2025-09-05 11:37:18.919+00
3f591147-1f8d-4242-a4d0-b81c8a110237	a4dd32c8-554c-4a73-8549-e0b7a082e132	iqm	\N	\N	pending	\N	\N	2025-09-05 13:13:24.558+00	2025-09-05 13:13:24.558+00
ae18be09-b17b-4595-98d9-fde15805a211	ca5c9dff-ba6f-460c-816b-18f97319d33c	iqm	\N	\N	pending	\N	\N	2025-09-05 16:29:50.411+00	2025-09-05 16:29:50.411+00
dd0f939e-9a34-4ff1-b7e2-a69b66f83ba6	90a0c5c7-6b7b-4f63-85cc-a61e4d770908	iqm	\N	\N	pending	\N	\N	2025-09-05 16:40:21.912+00	2025-09-05 16:40:21.912+00
72f69869-9e99-4a7f-a528-64c799f736c7	1bb3e6fe-0f68-4358-bbb3-4b6ba99d02ad	iqm	\N	\N	pending	\N	\N	2025-09-05 16:49:15.061+00	2025-09-05 16:49:15.061+00
5309bd3e-87ab-4643-878d-123f5adb35dd	4f3c9f4a-ec1c-4ab9-b635-0de65a86a7dc	iqm	\N	\N	pending	\N	\N	2025-09-05 19:14:06.54+00	2025-09-05 19:14:06.54+00
08a7efa5-6541-4e26-abab-841091db8699	0d98b402-52f8-4d29-bb2b-c58202fc9f3c	iqm	\N	\N	pending	\N	\N	2025-09-08 08:56:14.561+00	2025-09-08 08:56:14.561+00
d9b37a94-f6f0-4a03-8a27-96f2aa31a7e9	e4d73742-dbc1-4edf-9453-887ede8d77bf	iqm	\N	\N	pending	\N	\N	2025-09-08 12:00:06.974+00	2025-09-08 12:00:06.974+00
809c93df-9aa5-447b-bc4e-9f0568ca6d01	022c7fda-8348-46b0-898c-7c855e5b0234	iqm	\N	\N	pending	\N	\N	2025-09-08 12:22:49.214+00	2025-09-08 12:22:49.214+00
9d068324-0595-460a-8713-1117945cbf95	3bbbb122-293a-4be4-bb94-79dbd0da4f31	iqm	\N	\N	pending	\N	\N	2025-09-08 13:30:40.887+00	2025-09-08 13:30:40.887+00
3fa16ca6-d468-48f3-a871-eb2e2a1c306e	abdb98e0-ea1f-4d3b-8af6-f3d68ac71242	iqm	\N	\N	pending	\N	\N	2025-09-08 14:51:55.77+00	2025-09-08 14:51:55.77+00
4943247a-89e6-4e6a-a56c-dd01b4a24bc5	221e470e-01bd-4c83-8f23-096aaa45beaf	iqm	\N	\N	pending	\N	\N	2025-09-08 15:31:20.668+00	2025-09-08 15:31:20.668+00
fb2062a8-ef38-40bd-b78c-972995316bb4	201ba7e2-f31b-498a-9095-69b4a71ff686	iqm	\N	\N	pending	\N	\N	2025-09-08 15:47:00.933+00	2025-09-08 15:47:00.933+00
545b209f-048c-44af-9192-fbf8241619c8	6dedc3c6-3095-4518-844b-d59c74b5353a	iqm	\N	\N	pending	\N	\N	2025-09-08 16:43:31.448+00	2025-09-08 16:43:31.448+00
572d47ed-db61-4622-842f-2ee6e280c93e	8bc29f05-d334-4286-81f5-372e7d8b6331	iqm	\N	\N	pending	\N	\N	2025-09-09 12:45:26.127+00	2025-09-09 12:45:26.127+00
2ddd6c5e-edfc-4df3-8d60-d42092a7f035	90919b41-6661-4576-b5df-aa6b6d5b4b7e	iqm	\N	\N	pending	\N	\N	2025-09-09 15:06:39.914+00	2025-09-09 15:06:39.914+00
f963074c-89dc-48b0-b99c-1d47dfc01149	3da1c54d-f790-4428-a327-6242d61564e8	iqm	\N	\N	pending	\N	\N	2025-09-09 16:58:33.352+00	2025-09-09 16:58:33.352+00
9ed2e3d9-876f-4205-a983-5cc1f1c54af5	a9ad0ea9-1345-4ea2-92e5-d0dade643d66	iqm	\N	\N	pending	\N	\N	2025-09-09 17:15:02.543+00	2025-09-09 17:15:02.543+00
\.


--
-- Data for Name: campaign_transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."campaign_transactions" ("id", "insertion_order_id", "campaign_id", "platform_campaign_id", "amount", "currency", "source_platform", "description", "external_reference", "metadata", "occurred_at", "synced_at", "created_at") FROM stdin;
\.


--
-- Data for Name: enhanced_assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."enhanced_assets" ("id", "org_id", "created_by", "name", "description", "asset_type", "url", "mime_type", "size_bytes", "width", "height", "duration_seconds", "metadata", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: creative_assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."creative_assets" ("creative_id", "enhanced_asset_id", "position", "created_at") FROM stdin;
\.


--
-- Data for Name: domain_alias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."domain_alias" ("id", "org_id", "host", "redirect_to_host", "active_until", "created_at", "updated_at") FROM stdin;
743caba1-7779-4df0-9890-51386f0590b6	f4ae3849-725c-4323-b4fb-83d10ca38ce9	agency1.cpulse.com	acme.cpulse.com	\N	2025-09-09 10:41:51.648+00	2025-09-09 10:41:51.648+00
\.


--
-- Data for Name: email_addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."email_addresses" ("id", "user_id", "email_address", "verification_status", "verification_strategy", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: email_configurations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."email_configurations" ("id", "org_id", "from_domain", "from_name", "from_email", "reply_to_email", "logo_url", "primary_color", "footer_text", "enable_notifications", "enable_marketing_emails", "business_hours_start", "business_hours_end", "timezone", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: email_templates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."email_templates" ("id", "org_id", "email_configuration_id", "template_type", "name", "description", "subject", "html_content", "text_content", "variables", "is_system", "is_active", "version", "created_at", "updated_at") FROM stdin;
467d5a8b-245a-4d71-86cd-993976743e8f	\N	\N	onboarding_abandonment_reminder	Day 1 – Onboarding Reminder	\N	Just one step away from launching your campaign 🚀	\n        <html>\n        <head>\n          <style>\n            @media only screen and (max-width: 600px) {\n              .container { padding: 20px !important; }\n              .cta-button { width: 100% !important; text-align: center !important; }\n            }\n          </style>\n        </head>\n        <body style="font-family: Arial, sans-serif; background-color: #e9f1fb; margin: 0; padding: 40px;">\n          <div class="container" style="max-width: 600px; margin: auto; background: #ffffff; padding: 30px; border-radius: 10px; box-shadow: 0 0 8px rgba(0,0,0,0.05);">\n            <h2 style="color: #4A90E2;">👋 Just a Step Away from Launching!</h2>\n            <p style="font-size: 16px;">Hi {{firstName}},</p>\n            <p style="font-size: 16px;">We noticed you didn’t finish setting up your Campaign Pulse account. Great campaigns start with action—don’t let your momentum fade!</p>\n            <p style="font-size: 16px;">With Campaign Pulse, you can track engagement, manage audiences, and drive conversions effortlessly.</p>\n            <a class="cta-button" href="#" style="display: inline-block; margin: 20px 0; padding: 12px 24px; background-color: #4A90E2; color: white; text-decoration: none; border-radius: 5px;">Complete Your Setup</a>\n            <p style="font-size: 14px; color: #666;">Need a hand? <a href="mailto:support@campaignpulse.com">support@campaignpulse.com</a></p>\n            <p style="font-size: 14px; color: #999;">— Team Campaign Pulse</p>\n          </div>\n        </body>\n        </html>\n      	\N	"test"	t	t	1	2025-09-05 04:03:43.149+00	2025-09-05 04:03:43.149+00
4c64e43a-1a0f-4817-9c2b-0ebd1b7a6866	\N	\N	onboarding_abandonment_reminder	Day 4 – Urgency Reminder	\N	⏳ Your dashboard is waiting – don’t miss out!	\n        <html>\n        <head>\n          <style>\n            @media only screen and (max-width: 600px) {\n              .container { padding: 20px !important; }\n              .cta-button { width: 100% !important; text-align: center !important; }\n            }\n          </style>\n        </head>\n        <body style="font-family: Arial, sans-serif; background-color: #e9f1fb; margin: 0; padding: 40px;">\n          <div class="container" style="max-width: 600px; margin: auto; background: #ffffff; padding: 30px; border-radius: 10px; box-shadow: 0 0 8px rgba(0,0,0,0.05);">\n            <h2 style="color: #4A90E2;">⏳ Don’t Miss Out On a Powerful Start</h2>\n            <p style="font-size: 16px;">Hey {{firstName}},</p>\n            <p style="font-size: 16px;">It’s been a few days and your dashboard is still waiting. Campaign Pulse makes it easy to launch targeted campaigns in minutes.</p>\n            <p style="font-size: 16px;">You’re closer than ever to building something impactful—just finalize your setup to unlock analytics, automation, and growth tools.</p>\n            <a class="cta-button" href="#" style="display: inline-block; margin: 20px 0; padding: 12px 24px; background-color: #4A90E2; color: white; text-decoration: none; border-radius: 5px;">Get Started Now</a>\n            <p style="font-size: 14px; color: #666;">Questions? <a href="mailto:support@campaignpulse.com">support@campaignpulse.com</a></p>\n            <p style="font-size: 14px; color: #999;">— Team Campaign Pulse</p>\n          </div>\n        </body>\n        </html>\n      	\N	"test"	t	t	2	2025-09-05 04:03:44.392+00	2025-09-05 04:03:44.392+00
f8e0f54f-cd60-47cf-8208-82ab67a0d8ab	\N	\N	onboarding_abandonment_reminder	Day 7 – Final Reminder	\N	🚀 Last chance to unlock your bonus checklist!	\n        <html>\n        <head>\n          <style>\n            @media only screen and (max-width: 600px) {\n              .container { padding: 20px !important; }\n              .cta-button { width: 100% !important; text-align: center !important; }\n            }\n          </style>\n        </head>\n        <body style="font-family: Arial, sans-serif; background-color: #e9f1fb; margin: 0; padding: 40px;">\n          <div class="container" style="max-width: 600px; margin: auto; background: #ffffff; padding: 30px; border-radius: 10px; box-shadow: 0 0 8px rgba(0,0,0,0.05);">\n            <h2 style="color: #4A90E2;">🚀 Final Call: Let’s Get Your Campaign Live</h2>\n            <p style="font-size: 16px;">Hi {{firstName}},</p>\n            <p style="font-size: 16px;">This is your final reminder to complete onboarding. Thousands of marketers trust Campaign Pulse to simplify workflows and boost ROI.</p>\n            <p style="font-size: 16px;">Finish setup today and receive a free campaign performance checklist as a bonus 🎁</p>\n            <a class="cta-button" href="#" style="display: inline-block; margin: 20px 0; padding: 12px 24px; background-color: #4A90E2; color: white; text-decoration: none; border-radius: 5px;">Finish Setup & Claim Bonus</a>\n            <p style="font-size: 14px; color: #666;">Need support? <a href="mailto:support@campaignpulse.com">support@campaignpulse.com</a></p>\n            <p style="font-size: 14px; color: #999;">— Team Campaign Pulse</p>\n          </div>\n        </body>\n        </html>\n      	\N	"test"	t	t	3	2025-09-05 04:03:45.622+00	2025-09-05 04:03:45.622+00
4cb96ecd-8515-4078-950b-bc8f3a44548f	\N	\N	user_invitation	User Invitation Email	\N	You’re invited to join {{orgName}} on Campaign Pulse!	\n    <html>\n      <head>\n        <style>\n          body {\n            font-family: Arial, sans-serif;\n            color: #333333;\n            background-color: #F9F9F9;\n            padding: 20px;\n          }\n          .container {\n            max-width: 600px;\n            margin: 0 auto;\n            background-color: #FFFFFF;\n            padding: 30px;\n            border-radius: 8px;\n            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);\n          }\n          .header {\n            font-size: 20px;\n            font-weight: bold;\n            color: #2C3E50;\n            margin-bottom: 20px;\n          }\n          .content {\n            font-size: 16px;\n            line-height: 1.6;\n          }\n          .highlight {\n            font-weight: bold;\n            color: #2C3E50;\n          }\n          .button {\n            display: inline-block;\n            margin-top: 20px;\n            padding: 12px 20px;\n            background-color: #4F46E5;\n            text-decoration: none;\n            border-radius: 6px;\n            font-weight: bold;\n          }\n          .footer {\n            margin-top: 30px;\n            font-size: 14px;\n            color: #888888;\n          }\n          .code-box {\n            margin-top: 20px;\n            padding: 10px 15px;\n            background-color: #F1F5F9;\n            border: 1px dashed #4F46E5;\n            border-radius: 6px;\n            display: inline-block;\n            font-family: monospace;\n            font-size: 15px;\n            color: #1E293B;\n          }\n        </style>\n      </head>\n      <body>\n        <div class="container">\n          <div class="header">You're Invited!</div>\n          <div class="content">\n            Hi there,<br><br>\n            You have been invited to join <span class="highlight">{{orgName}}</span> as a\n            <span class="highlight">{{roleName}}</span>.<br><br>\n            Please click the button below to accept the invitation:\n            <br><br>\n            <a href="{{inviteLink}}" class="button" style="color: #FFFFFF !important;">Accept Invitation</a>\n            <br><br>\n            Or use this invite code if needed:\n            <div class="code-box">{{inviteCode}}</div>\n            <br><br>\n            This invite will expire in 7 days.\n          </div>\n          <div class="footer">\n            If you did not expect this invitation, you can ignore this email.\n          </div>\n        </div>\n      </body>\n    </html>	\N	"test"	t	t	1	2025-09-05 04:03:47.507+00	2025-09-05 04:03:47.507+00
b18edb60-8593-4031-84d5-7ddd1df2f412	\N	\N	campaign_submission_confirmation	Campaign Submission Confirmation	\N	Your campaign {{campaignName}} has been submitted!	\n    <div style="font-family: Arial, sans-serif; max-width: 600px; margin: auto; padding: 25px; background: #f9f9f9; border: 1px solid #ddd; border-radius: 8px; color: #333;">\n      <h2 style="color: #2c3e50; margin-bottom: 15px; border-bottom: 2px solid #2980b9; padding-bottom: 8px;">Campaign Submission Confirmation</h2>\n\n      <p style="font-size: 16px; line-height: 1.6; margin-bottom: 20px;">\n        Hello,<br><br>\n        We are pleased to inform you that your campaign <strong style="color: #2980b9;">{{campaignName}}</strong> has been successfully submitted and is now under review.\n      </p>\n\n      <table style="width: 100%; margin: 20px 0; border-collapse: collapse; font-size: 15px;">\n        <tr>\n          <td style="padding: 10px; font-weight: bold; background-color: #ecf0f1; border: 1px solid #ddd; width: 30%;">Budget:</td>\n          <td style="padding: 10px; background-color: #ecf0f1; border: 1px solid #ddd;">{{budget}}</td>\n        </tr>\n        <tr>\n          <td style="padding: 10px; font-weight: bold; background-color: #ffffff; border: 1px solid #ddd;">Targeting Platforms:</td>\n          <td style="padding: 10px; background-color: #ffffff; border: 1px solid #ddd;">{{targeting}}</td>\n        </tr>\n        <tr>\n          <td style="padding: 10px; font-weight: bold; background-color: #ecf0f1; border: 1px solid #ddd;">Objective:</td>\n          <td style="padding: 10px; background-color: #ecf0f1; border: 1px solid #ddd;">{{objective}}</td>\n        </tr>\n      </table>\n\n      <p style="font-size: 16px; line-height: 1.6; margin-bottom: 20px;">\n        <strong>Next Steps:</strong><br>\n        {{nextSteps}}\n      </p>\n\n      <p style="font-size: 14px; color: #555; margin-top: 30px; line-height: 1.4;">\n        If you have any questions or need assistance, please feel free to reply to this email or contact our support team.<br><br>\n        Best regards,<br>\n        <em style="color: #2980b9;">Team Campaign Pulse</em>\n      </p>\n\n      <hr style="border: none; border-top: 1px solid #ddd; margin: 30px 0;" />\n\n      <p style="font-size: 12px; color: #999; text-align: center;">\n        © 2025 Campaign Pulse. All rights reserved.<br>\n        You are receiving this email because you created a campaign on Campaign Pulse.\n      </p>\n    </div>\n    	\N	"test"	t	t	1	2025-09-05 04:03:48.759+00	2025-09-05 04:03:48.759+00
9183f075-007d-4161-8f87-cdb16dd3736b	\N	\N	custom	Account Created with Temporary Password	\N	Your Campaign Pulse account is ready to use!	\n    <html>\n      <body style="margin:0;padding:0;background-color:#f9f9f9;font-family:Arial,sans-serif;color:#333333;">\n        <table width="100%" cellpadding="0" cellspacing="0" style="padding:20px 0;">\n          <tr>\n            <td align="center">\n              <table width="600" cellpadding="0" cellspacing="0" style="width:100%;max-width:600px;background-color:#ffffff;padding:30px;border-radius:8px;box-shadow:0 2px 8px rgba(0,0,0,0.05);">\n                <tr>\n                  <td style="font-size:20px;font-weight:bold;color:#1f2937;padding-bottom:20px;">\n                    Your Account is Ready\n                  </td>\n                </tr>\n                <tr>\n                  <td style="font-size:16px;line-height:1.6;">\n                    Hello <span style="font-weight:bold;color:#111827;">{{userName}}</span>,<br /><br />\n                    Your account has been created successfully. You can log in using the temporary password below.\n                    <br /><br />\n                    <strong>Login Email:</strong> {{userEmail}}<br />\n                    <strong>Temporary Password:</strong><br />\n                    <span style="display:inline-block;margin:10px 0;padding:10px 15px;background-color:#f3f4f6;border:1px dashed #6366F1;border-radius:6px;font-family:monospace;font-size:15px;color:#1e293b;">\n                      {{tempPassword}}\n                    </span>\n                    <br /><br />\n                    Click the button below to log in:\n                    <br /><br />\n                    <a href="{{loginLink}}" style="display:inline-block;padding:12px 20px;background-color:#4f46e5;color:#ffffff !important;text-decoration:none;border-radius:6px;font-weight:bold;">\n                      Log In\n                    </a>\n                    <br /><br />\n                    For your security, please change your password after logging in.\n                  </td>\n                </tr>\n                <tr>\n                  <td style="font-size:14px;color:#888888;padding-top:30px;">\n                    If you did not expect this email, you can safely ignore it.\n                  </td>\n                </tr>\n              </table>\n            </td>\n          </tr>\n        </table>\n      </body>\n    </html>\n    	\N	"test"	t	t	1	2025-09-05 04:03:50.003+00	2025-09-05 04:03:50.003+00
9addd7b8-68a7-4951-8e9e-aa60065a6978	\N	\N	onboarding_abandonment_reminder	Day 1 – Onboarding Reminder	\N	Just one step away from launching your campaign 🚀	\n        <html>\n        <head>\n          <style>\n            @media only screen and (max-width: 600px) {\n              .container { padding: 20px !important; }\n              .cta-button { width: 100% !important; text-align: center !important; }\n            }\n          </style>\n        </head>\n        <body style="font-family: Arial, sans-serif; background-color: #e9f1fb; margin: 0; padding: 40px;">\n          <div class="container" style="max-width: 600px; margin: auto; background: #ffffff; padding: 30px; border-radius: 10px; box-shadow: 0 0 8px rgba(0,0,0,0.05);">\n            <h2 style="color: #4A90E2;">👋 Just a Step Away from Launching!</h2>\n            <p style="font-size: 16px;">Hi {{firstName}},</p>\n            <p style="font-size: 16px;">We noticed you didn’t finish setting up your Campaign Pulse account. Great campaigns start with action—don’t let your momentum fade!</p>\n            <p style="font-size: 16px;">With Campaign Pulse, you can track engagement, manage audiences, and drive conversions effortlessly.</p>\n            <a class="cta-button" href="#" style="display: inline-block; margin: 20px 0; padding: 12px 24px; background-color: #4A90E2; color: white; text-decoration: none; border-radius: 5px;">Complete Your Setup</a>\n            <p style="font-size: 14px; color: #666;">Need a hand? <a href="mailto:support@campaignpulse.com">support@campaignpulse.com</a></p>\n            <p style="font-size: 14px; color: #999;">— Team Campaign Pulse</p>\n          </div>\n        </body>\n        </html>\n      	\N	"test"	t	t	1	2025-09-05 09:16:48.192+00	2025-09-05 09:16:48.192+00
1fd45080-5947-4c58-bfa6-50132bfc5738	\N	\N	onboarding_abandonment_reminder	Day 4 – Urgency Reminder	\N	⏳ Your dashboard is waiting – don’t miss out!	\n        <html>\n        <head>\n          <style>\n            @media only screen and (max-width: 600px) {\n              .container { padding: 20px !important; }\n              .cta-button { width: 100% !important; text-align: center !important; }\n            }\n          </style>\n        </head>\n        <body style="font-family: Arial, sans-serif; background-color: #e9f1fb; margin: 0; padding: 40px;">\n          <div class="container" style="max-width: 600px; margin: auto; background: #ffffff; padding: 30px; border-radius: 10px; box-shadow: 0 0 8px rgba(0,0,0,0.05);">\n            <h2 style="color: #4A90E2;">⏳ Don’t Miss Out On a Powerful Start</h2>\n            <p style="font-size: 16px;">Hey {{firstName}},</p>\n            <p style="font-size: 16px;">It’s been a few days and your dashboard is still waiting. Campaign Pulse makes it easy to launch targeted campaigns in minutes.</p>\n            <p style="font-size: 16px;">You’re closer than ever to building something impactful—just finalize your setup to unlock analytics, automation, and growth tools.</p>\n            <a class="cta-button" href="#" style="display: inline-block; margin: 20px 0; padding: 12px 24px; background-color: #4A90E2; color: white; text-decoration: none; border-radius: 5px;">Get Started Now</a>\n            <p style="font-size: 14px; color: #666;">Questions? <a href="mailto:support@campaignpulse.com">support@campaignpulse.com</a></p>\n            <p style="font-size: 14px; color: #999;">— Team Campaign Pulse</p>\n          </div>\n        </body>\n        </html>\n      	\N	"test"	t	t	2	2025-09-05 09:16:49.561+00	2025-09-05 09:16:49.561+00
a4dfc1a7-a020-41e3-a3b8-7291eaa7383e	\N	\N	onboarding_abandonment_reminder	Day 7 – Final Reminder	\N	🚀 Last chance to unlock your bonus checklist!	\n        <html>\n        <head>\n          <style>\n            @media only screen and (max-width: 600px) {\n              .container { padding: 20px !important; }\n              .cta-button { width: 100% !important; text-align: center !important; }\n            }\n          </style>\n        </head>\n        <body style="font-family: Arial, sans-serif; background-color: #e9f1fb; margin: 0; padding: 40px;">\n          <div class="container" style="max-width: 600px; margin: auto; background: #ffffff; padding: 30px; border-radius: 10px; box-shadow: 0 0 8px rgba(0,0,0,0.05);">\n            <h2 style="color: #4A90E2;">🚀 Final Call: Let’s Get Your Campaign Live</h2>\n            <p style="font-size: 16px;">Hi {{firstName}},</p>\n            <p style="font-size: 16px;">This is your final reminder to complete onboarding. Thousands of marketers trust Campaign Pulse to simplify workflows and boost ROI.</p>\n            <p style="font-size: 16px;">Finish setup today and receive a free campaign performance checklist as a bonus 🎁</p>\n            <a class="cta-button" href="#" style="display: inline-block; margin: 20px 0; padding: 12px 24px; background-color: #4A90E2; color: white; text-decoration: none; border-radius: 5px;">Finish Setup & Claim Bonus</a>\n            <p style="font-size: 14px; color: #666;">Need support? <a href="mailto:support@campaignpulse.com">support@campaignpulse.com</a></p>\n            <p style="font-size: 14px; color: #999;">— Team Campaign Pulse</p>\n          </div>\n        </body>\n        </html>\n      	\N	"test"	t	t	3	2025-09-05 09:16:51.046+00	2025-09-05 09:16:51.046+00
b753e9b6-9812-41eb-98f1-a966abc83473	\N	\N	user_invitation	User Invitation Email	\N	You’re invited to join {{orgName}} on Campaign Pulse!	\n    <html>\n      <head>\n        <style>\n          body {\n            font-family: Arial, sans-serif;\n            color: #333333;\n            background-color: #F9F9F9;\n            padding: 20px;\n          }\n          .container {\n            max-width: 600px;\n            margin: 0 auto;\n            background-color: #FFFFFF;\n            padding: 30px;\n            border-radius: 8px;\n            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);\n          }\n          .header {\n            font-size: 20px;\n            font-weight: bold;\n            color: #2C3E50;\n            margin-bottom: 20px;\n          }\n          .content {\n            font-size: 16px;\n            line-height: 1.6;\n          }\n          .highlight {\n            font-weight: bold;\n            color: #2C3E50;\n          }\n          .button {\n            display: inline-block;\n            margin-top: 20px;\n            padding: 12px 20px;\n            background-color: #4F46E5;\n            text-decoration: none;\n            border-radius: 6px;\n            font-weight: bold;\n          }\n          .footer {\n            margin-top: 30px;\n            font-size: 14px;\n            color: #888888;\n          }\n          .code-box {\n            margin-top: 20px;\n            padding: 10px 15px;\n            background-color: #F1F5F9;\n            border: 1px dashed #4F46E5;\n            border-radius: 6px;\n            display: inline-block;\n            font-family: monospace;\n            font-size: 15px;\n            color: #1E293B;\n          }\n        </style>\n      </head>\n      <body>\n        <div class="container">\n          <div class="header">You're Invited!</div>\n          <div class="content">\n            Hi there,<br><br>\n            You have been invited to join <span class="highlight">{{orgName}}</span> as a\n            <span class="highlight">{{roleName}}</span>.<br><br>\n            Please click the button below to accept the invitation:\n            <br><br>\n            <a href="{{inviteLink}}" class="button" style="color: #FFFFFF !important;">Accept Invitation</a>\n            <br><br>\n            Or use this invite code if needed:\n            <div class="code-box">{{inviteCode}}</div>\n            <br><br>\n            This invite will expire in 7 days.\n          </div>\n          <div class="footer">\n            If you did not expect this invitation, you can ignore this email.\n          </div>\n        </div>\n      </body>\n    </html>	\N	"test"	t	t	1	2025-09-05 09:16:53.889+00	2025-09-05 09:16:53.889+00
81ef2e68-fdca-42ba-b02a-271aa45cfd5c	\N	\N	campaign_submission_confirmation	Campaign Submission Confirmation	\N	Your campaign {{campaignName}} has been submitted!	\n    <div style="font-family: Arial, sans-serif; max-width: 600px; margin: auto; padding: 25px; background: #f9f9f9; border: 1px solid #ddd; border-radius: 8px; color: #333;">\n      <h2 style="color: #2c3e50; margin-bottom: 15px; border-bottom: 2px solid #2980b9; padding-bottom: 8px;">Campaign Submission Confirmation</h2>\n\n      <p style="font-size: 16px; line-height: 1.6; margin-bottom: 20px;">\n        Hello,<br><br>\n        We are pleased to inform you that your campaign <strong style="color: #2980b9;">{{campaignName}}</strong> has been successfully submitted and is now under review.\n      </p>\n\n      <table style="width: 100%; margin: 20px 0; border-collapse: collapse; font-size: 15px;">\n        <tr>\n          <td style="padding: 10px; font-weight: bold; background-color: #ecf0f1; border: 1px solid #ddd; width: 30%;">Budget:</td>\n          <td style="padding: 10px; background-color: #ecf0f1; border: 1px solid #ddd;">{{budget}}</td>\n        </tr>\n        <tr>\n          <td style="padding: 10px; font-weight: bold; background-color: #ffffff; border: 1px solid #ddd;">Targeting Platforms:</td>\n          <td style="padding: 10px; background-color: #ffffff; border: 1px solid #ddd;">{{targeting}}</td>\n        </tr>\n        <tr>\n          <td style="padding: 10px; font-weight: bold; background-color: #ecf0f1; border: 1px solid #ddd;">Objective:</td>\n          <td style="padding: 10px; background-color: #ecf0f1; border: 1px solid #ddd;">{{objective}}</td>\n        </tr>\n      </table>\n\n      <p style="font-size: 16px; line-height: 1.6; margin-bottom: 20px;">\n        <strong>Next Steps:</strong><br>\n        {{nextSteps}}\n      </p>\n\n      <p style="font-size: 14px; color: #555; margin-top: 30px; line-height: 1.4;">\n        If you have any questions or need assistance, please feel free to reply to this email or contact our support team.<br><br>\n        Best regards,<br>\n        <em style="color: #2980b9;">Team Campaign Pulse</em>\n      </p>\n\n      <hr style="border: none; border-top: 1px solid #ddd; margin: 30px 0;" />\n\n      <p style="font-size: 12px; color: #999; text-align: center;">\n        © 2025 Campaign Pulse. All rights reserved.<br>\n        You are receiving this email because you created a campaign on Campaign Pulse.\n      </p>\n    </div>\n    	\N	"test"	t	t	1	2025-09-05 09:16:55.364+00	2025-09-05 09:16:55.364+00
9b64c173-7631-4433-92ee-52a106f3b17c	\N	\N	custom	Account Created with Temporary Password	\N	Your Campaign Pulse account is ready to use!	\n    <html>\n      <body style="margin:0;padding:0;background-color:#f9f9f9;font-family:Arial,sans-serif;color:#333333;">\n        <table width="100%" cellpadding="0" cellspacing="0" style="padding:20px 0;">\n          <tr>\n            <td align="center">\n              <table width="600" cellpadding="0" cellspacing="0" style="width:100%;max-width:600px;background-color:#ffffff;padding:30px;border-radius:8px;box-shadow:0 2px 8px rgba(0,0,0,0.05);">\n                <tr>\n                  <td style="font-size:20px;font-weight:bold;color:#1f2937;padding-bottom:20px;">\n                    Your Account is Ready\n                  </td>\n                </tr>\n                <tr>\n                  <td style="font-size:16px;line-height:1.6;">\n                    Hello <span style="font-weight:bold;color:#111827;">{{userName}}</span>,<br /><br />\n                    Your account has been created successfully. You can log in using the temporary password below.\n                    <br /><br />\n                    <strong>Login Email:</strong> {{userEmail}}<br />\n                    <strong>Temporary Password:</strong><br />\n                    <span style="display:inline-block;margin:10px 0;padding:10px 15px;background-color:#f3f4f6;border:1px dashed #6366F1;border-radius:6px;font-family:monospace;font-size:15px;color:#1e293b;">\n                      {{tempPassword}}\n                    </span>\n                    <br /><br />\n                    Click the button below to log in:\n                    <br /><br />\n                    <a href="{{loginLink}}" style="display:inline-block;padding:12px 20px;background-color:#4f46e5;color:#ffffff !important;text-decoration:none;border-radius:6px;font-weight:bold;">\n                      Log In\n                    </a>\n                    <br /><br />\n                    For your security, please change your password after logging in.\n                  </td>\n                </tr>\n                <tr>\n                  <td style="font-size:14px;color:#888888;padding-top:30px;">\n                    If you did not expect this email, you can safely ignore it.\n                  </td>\n                </tr>\n              </table>\n            </td>\n          </tr>\n        </table>\n      </body>\n    </html>\n    	\N	"test"	t	t	1	2025-09-05 09:16:56.843+00	2025-09-05 09:16:56.843+00
\.


--
-- Data for Name: email_automation_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."email_automation_rules" ("id", "org_id", "email_template_id", "name", "description", "trigger_type", "trigger_conditions", "delay_minutes", "is_active", "last_triggered_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: email_notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."email_notifications" ("id", "org_id", "email_configuration_id", "email_template_id", "to_email", "to_name", "user_id", "subject", "html_content", "text_content", "from_email", "from_name", "reply_to_email", "status", "priority", "scheduled_at", "sent_at", "delivered_at", "trigger_type", "trigger_entity_id", "trigger_entity_type", "provider_message_id", "provider_data", "error_message", "retry_count", "max_retries", "metadata", "template_variables", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: email_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."email_events" ("id", "email_notification_id", "event_type", "timestamp", "user_agent", "ip_address", "location", "provider_event_id", "provider_data", "clicked_url", "link_id", "bounce_type", "bounce_reason", "created_at") FROM stdin;
\.


--
-- Data for Name: external_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."external_accounts" ("id", "user_id", "provider_type", "provider_user_id", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: history_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."history_log" ("id", "userId", "entityType", "entityId", "orgId", "action", "previousData", "newData", "createdAt") FROM stdin;
\.


--
-- Data for Name: invoices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."invoices" ("id", "org_id", "invoice_number", "amount", "currency", "status", "due_date", "paid_at", "invoice_data", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: iqm_configurations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."iqm_configurations" ("id", "workspace_id", "api_credentials", "default_settings", "viewability_settings", "status", "last_sync_at", "created_at", "updated_at") FROM stdin;
c9767b7a-3668-4814-bdcb-9ad1f127abea	2148	{"url": "https://app.iqm.com/api/v3/ua/login", "email": "nitin.gupta@nexgenai.io", "headers": {"Accept": "application/json", "X-Iaa-Host": "app.iqm.com", "Content-Type": "application/json", "Authorization": "Basic cmF3LmdvcDpna0JkSEtDblU2RFdiSjlMTw=="}, "password": "%eZE6GKK>qru8qA>", "grantType": "password"}	{}	{}	active	2025-09-09 17:11:35.994+00	2025-09-05 09:30:20.138221+00	2025-09-09 17:11:36.002+00
\.


--
-- Data for Name: iqm_campaigns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."iqm_campaigns" ("id", "campaign_id", "iqm_configuration_id", "platform_campaign_id", "platform_audience_id", "advertiser_domain", "creative_type", "campaign_type", "total_budget_pacing", "is_tv_ad", "budget_day", "budget_total", "max_bid", "dsp_margin", "platform_margin", "user_deal_margin", "targeting", "status", "server_logs", "created_at", "updated_at", "scheduling", "demographics", "bid_pacing", "impression_capping", "max_day_impressions", "total_impressions", "max_day_clicks", "total_clicks", "max_day_conversions", "total_conversions", "deviceSettings") FROM stdin;
25f63f47-b4ff-46c7-b3d0-e82a1b768b69	be5baba9-0134-4712-b075-65811e89a766	c9767b7a-3668-4814-bdcb-9ad1f127abea	392feb9b-9744-4ad5-9a54-b749243b60bd	29928	https://example.com	11	1	t	f	100.00	2000.00	0.00	0	0	0	{}	pending	{"statusCode": 201, "responseObject": {"data": 46076, "status": "draft", "message": "Campaign saved successfully."}}	2025-09-05 11:50:34.946+00	2025-09-05 12:02:24.735+00	{"0": [["09:00:00", "17:00:00"]], "1": [["09:00:00", "17:00:00"]], "2": [["09:00:00", "17:00:00"]], "3": [["09:00:00", "17:00:00"]], "4": [["09:00:00", "17:00:00"]]}	{"genderIds": "10200001", "ageRangeIds": "10100001", "interestIds": "", "languageIds": "", "ethnicityIds": "", "incomeRangeIds": "10300001"}	f	0	1	100	1	100	1	100	{"carrierIds": "", "deviceType": "13,15,11,12", "deviceOsIds": "11,12", "networkTypeIds": "13", "trafficTypeIds": "11,14", "manufacturerIds": ""}
8969739d-b1a6-4a1a-b50f-a74df4673030	d10753c2-337d-448a-8fa1-dafca571cbf8	c9767b7a-3668-4814-bdcb-9ad1f127abea	3d4eb08d-d2df-4878-996f-35ecb7c658e4	29924	https://example.com	11	1	t	f	10.00	1000.00	0.00	0	0	0	{"dmaIds": "", "stateIds": "", "countryId": 30100001, "houseDistrictIds": "", "senateDistrictIds": "", "whiteListedCityIds": "30404911", "whiteListedCountyIds": "30302224", "congressionalDistrictIds": ""}	pending	{"statusCode": 201, "responseObject": {"data": 46075, "status": "draft", "message": "Campaign saved successfully."}}	2025-09-05 10:01:49.339+00	2025-09-05 12:17:57.801+00	{"0": [["09:00:00", "17:00:00"]], "1": [["09:00:00", "17:00:00"]], "2": [["09:00:00", "17:00:00"]], "3": [["09:00:00", "17:00:00"]], "4": [["09:00:00", "17:00:00"]]}	{"genderIds": "10200002", "ageRangeIds": "10100008", "interestIds": "10800075", "languageIds": "10500048", "ethnicityIds": "10700003", "incomeRangeIds": "10300002"}	f	0	1	2	1	3	1	4	{"carrierIds": "20400002,20400003", "deviceType": "13,15,11,12", "deviceOsIds": "11,12", "networkTypeIds": "13", "trafficTypeIds": "11,14", "manufacturerIds": "317,451"}
573e5c9b-e807-478f-aa04-73cc2428ec14	a4dd32c8-554c-4a73-8549-e0b7a082e132	c9767b7a-3668-4814-bdcb-9ad1f127abea	3f591147-1f8d-4242-a4d0-b81c8a110237	29928	https://example.com	\N	1	t	f	100.00	3000.00	30.00	0	0	0	{"dmaIds": "", "stateIds": "30200032,30200033", "countryId": 30100001, "houseDistrictIds": "", "senateDistrictIds": "", "whiteListedCityIds": "", "whiteListedCountyIds": "", "congressionalDistrictIds": ""}	pending	{}	2025-09-05 13:13:36.226+00	2025-09-05 13:13:36.226+00	{"0": [["09:00:00", "17:00:00"]], "1": [["09:00:00", "17:00:00"]], "2": [["09:00:00", "17:00:00"]], "3": [["09:00:00", "17:00:00"]], "4": [["09:00:00", "17:00:00"]]}	{"genderIds": "10200001", "ageRangeIds": "10100001,10100008", "interestIds": "", "languageIds": "", "ethnicityIds": "", "incomeRangeIds": "10300001"}	f	0	20	2000	20	2000	19	2000	{"carrierIds": "20400002,20400003", "deviceType": "13,15,11,12", "deviceOsIds": "11,12", "networkTypeIds": "13", "trafficTypeIds": "11,14", "manufacturerIds": "317,451"}
2f079ada-7a06-46c9-8d07-7c365c2e2c9e	90a0c5c7-6b7b-4f63-85cc-a61e4d770908	c9767b7a-3668-4814-bdcb-9ad1f127abea	dd0f939e-9a34-4ff1-b7e2-a69b66f83ba6		https://example.com	11	1	t	f	123.00	1233.00	0.00	0	0	0	{"dmaIds": "", "stateIds": "", "countryId": 30100001, "houseDistrictIds": "", "senateDistrictIds": "", "whiteListedCityIds": "", "whiteListedCountyIds": "30302192", "congressionalDistrictIds": ""}	pending	{"statusCode": 201, "responseObject": {"data": 46084, "status": "draft", "message": "Campaign saved successfully."}}	2025-09-05 16:40:30.529+00	2025-09-05 16:45:22.494+00	{"0": [["01:00:00", "23:59:59"]], "1": [["00:00:00", "23:59:59"]], "2": [["00:00:00", "03:00:00"], ["09:00:00", "17:00:00"]], "3": [["09:00:00", "17:00:00"]], "4": [["09:00:00", "17:00:00"]]}	{"genderIds": "10200001,10200002", "ageRangeIds": "10100001,10100008", "interestIds": "10800042", "languageIds": "", "ethnicityIds": "10700002", "incomeRangeIds": "10300001,10300002,10300003"}	f	0	0	0	0	0	0	0	{"carrierIds": "20400002,20400003", "deviceType": "13,15,11,12", "deviceOsIds": "13,14", "networkTypeIds": "13", "trafficTypeIds": "11,14", "manufacturerIds": "28,451"}
6ce0c781-a23e-4081-b560-82e1dfd55afc	67daf5fa-97d1-4db1-829c-99d49c4de4c9	c9767b7a-3668-4814-bdcb-9ad1f127abea	2e38575e-c219-4b9b-9e65-ae35ba5357b8		https://example.com	\N	1	t	f	100.00	1000.00	0.00	0	0	0	{"dmaIds": "", "stateIds": "", "countryId": 30100001, "houseDistrictIds": "", "senateDistrictIds": "", "whiteListedCityIds": "30400171", "whiteListedCountyIds": "30303313", "congressionalDistrictIds": "30615755"}	pending	{"statusCode": 200, "responseObject": {"data": 46091, "status": "draft", "message": "Campaign updated successfully."}}	2025-09-05 17:06:17.616+00	2025-09-08 12:13:21.321+00	{"0": [["02:00:00", "23:59:59"]], "1": [["00:00:00", "05:00:00"]]}	{"genderIds": "10200001", "ageRangeIds": "10100008,10100009", "interestIds": "", "languageIds": "10500048", "ethnicityIds": "10700002", "incomeRangeIds": "10300002,10300003"}	f	0	0	0	0	0	0	0	{"carrierIds": "", "deviceType": "13,15,11,12", "deviceOsIds": "11", "networkTypeIds": "13", "trafficTypeIds": "11", "manufacturerIds": ""}
f8001e2b-ca36-4a53-9442-3e5672e247b4	0d98b402-52f8-4d29-bb2b-c58202fc9f3c	c9767b7a-3668-4814-bdcb-9ad1f127abea	08a7efa5-6541-4e26-abab-841091db8699	29924	https://example.com	\N	1	t	f	10.00	100.00	0.00	0	0	0	{"dmaIds": "", "stateIds": "", "countryId": 30100001, "houseDistrictIds": "", "senateDistrictIds": "", "whiteListedCityIds": "30404911", "whiteListedCountyIds": "30302224", "congressionalDistrictIds": ""}	pending	{}	2025-09-08 08:56:24.193+00	2025-09-08 10:06:31.974+00	{"0": [["09:00:00", "17:00:00"]], "1": [["09:00:00", "17:00:00"]], "2": [["09:00:00", "17:00:00"]], "3": [["09:00:00", "17:00:00"]], "4": [["09:00:00", "17:00:00"]]}	{"genderIds": "", "ageRangeIds": "10100008,10100009", "interestIds": "", "languageIds": "", "ethnicityIds": "", "incomeRangeIds": ""}	t	2	1	2	1	2	1	2	{"carrierIds": "20400002,20400003", "deviceType": "13,15,11,12", "deviceOsIds": "11,12", "networkTypeIds": "12,13", "trafficTypeIds": "11,14", "manufacturerIds": "317,451"}
bcd940b5-4a47-4e0f-8c99-0d1721f098c1	e7e2082d-a8e3-4f97-a743-38f334bf0ad7	c9767b7a-3668-4814-bdcb-9ad1f127abea	7e35ad4b-1a7a-4121-ad0b-a6d8be276bff	29927	https://example.com	\N	1	t	f	10.00	1000.00	0.00	0	0	0	{"dmaIds": "", "stateIds": "", "countryId": 30100001, "houseDistrictIds": "", "senateDistrictIds": "", "whiteListedCityIds": "30404911", "whiteListedCountyIds": "30302224", "congressionalDistrictIds": ""}	pending	{}	2025-09-05 11:22:45.875+00	2025-09-08 11:05:49.772+00	{"0": [["09:00:00", "17:00:00"]], "1": [["09:00:00", "17:00:00"]], "2": [["09:00:00", "17:00:00"]], "3": [["09:00:00", "17:00:00"]], "4": [["09:00:00", "17:00:00"]]}	{"genderIds": "10200001", "ageRangeIds": "10100008", "interestIds": "10800058", "languageIds": "10500048", "ethnicityIds": "10700004", "incomeRangeIds": "10300002"}	f	0	0	0	0	0	0	0	{"carrierIds": "20400002", "deviceType": "13,15,11,12", "deviceOsIds": "11,13", "networkTypeIds": "12,13", "trafficTypeIds": "11,14", "manufacturerIds": "317"}
d048e968-9c5d-4e28-ad28-95194f58551c	1bb3e6fe-0f68-4358-bbb3-4b6ba99d02ad	c9767b7a-3668-4814-bdcb-9ad1f127abea	72f69869-9e99-4a7f-a528-64c799f736c7		https://example.com	11	1	t	f	123.00	12345.00	0.00	0	0	0	{"dmaIds": "", "stateIds": "", "countryId": 30100001, "houseDistrictIds": "", "senateDistrictIds": "", "whiteListedCityIds": "", "whiteListedCountyIds": "30302192", "congressionalDistrictIds": ""}	pending	{"statusCode": 201, "responseObject": {"data": 46087, "status": "draft", "message": "Campaign saved successfully."}}	2025-09-05 16:49:34.643+00	2025-09-08 14:24:10.34+00	{"0": [["09:00:00", "17:00:00"]], "1": [["09:00:00", "17:00:00"]], "2": [["09:00:00", "17:00:00"]], "3": [["09:00:00", "17:00:00"]], "4": [["09:00:00", "17:00:00"]]}	{"genderIds": "", "ageRangeIds": "", "interestIds": "", "languageIds": "", "ethnicityIds": "", "incomeRangeIds": ""}	f	0	0	0	0	0	0	0	{"carrierIds": "", "deviceType": "13,15,11,12", "deviceOsIds": "", "networkTypeIds": "", "trafficTypeIds": "", "manufacturerIds": ""}
bdacd9e4-7660-41a2-b543-40add4f8400a	3bbbb122-293a-4be4-bb94-79dbd0da4f31	c9767b7a-3668-4814-bdcb-9ad1f127abea	9d068324-0595-460a-8713-1117945cbf95		https://example.com	11	1	t	f	10.00	100.00	0.00	0	0	0	{"dmaIds": "", "stateIds": "", "countryId": 30100001, "houseDistrictIds": "", "senateDistrictIds": "", "whiteListedCityIds": "30404911", "whiteListedCountyIds": "30302224", "congressionalDistrictIds": ""}	pending	{"statusCode": 201, "responseObject": {"data": 46127, "status": "draft", "message": "Campaign saved successfully."}}	2025-09-08 13:30:53.627+00	2025-09-08 13:35:42.079+00	{"0": [["09:00:00", "17:00:00"]], "1": [["09:00:00", "17:00:00"]], "2": [["09:00:00", "17:00:00"]], "3": [["09:00:00", "17:00:00"]], "4": [["09:00:00", "17:00:00"]]}	{"genderIds": "10200001,10200002", "ageRangeIds": "10100008,10100009", "interestIds": "", "languageIds": "", "ethnicityIds": "", "incomeRangeIds": "10300002,10300003"}	f	0	0	0	0	0	0	0	{"carrierIds": "20400002", "deviceType": "13,15,11,12", "deviceOsIds": "11", "networkTypeIds": "12,13", "trafficTypeIds": "11,14", "manufacturerIds": "317,451"}
4704978c-9c45-416f-a0c2-ac8c66e69cc1	022c7fda-8348-46b0-898c-7c855e5b0234	c9767b7a-3668-4814-bdcb-9ad1f127abea	809c93df-9aa5-447b-bc4e-9f0568ca6d01	29928	https://example.com	11	1	t	f	10.00	1600.00	0.00	0	0	0	{}	pending	{}	2025-09-08 12:25:16.921+00	2025-09-08 15:18:00.928+00	{"0": [["09:00:00", "17:00:00"]], "1": [["09:00:00", "17:00:00"]], "2": [["09:00:00", "17:00:00"]], "3": [["09:00:00", "17:00:00"]], "4": [["09:00:00", "17:00:00"]]}	{"genderIds": "10200002", "ageRangeIds": "10100008", "interestIds": "10800042", "languageIds": "10500007", "ethnicityIds": "10700001", "incomeRangeIds": "10300001"}	f	0	1	100	1	10	10	100	{"carrierIds": "20400002", "deviceType": "13,15,11,12", "deviceOsIds": "11", "networkTypeIds": "13", "trafficTypeIds": "11", "manufacturerIds": "317"}
ff05a8b2-a3de-4820-98f2-e138324c1c5f	6dedc3c6-3095-4518-844b-d59c74b5353a	c9767b7a-3668-4814-bdcb-9ad1f127abea	545b209f-048c-44af-9192-fbf8241619c8		example.com	\N	1	t	f	0.00	400.00	0.00	0	0	0	{}	pending	{}	2025-09-08 16:43:43.887+00	2025-09-09 15:03:38.151+00	{}	{"genderIds": "", "ageRangeIds": "", "interestIds": "", "languageIds": "", "ethnicityIds": "", "incomeRangeIds": ""}	f	0	0	0	0	0	0	0	{"carrierIds": "", "deviceType": "13,15,11,12", "deviceOsIds": "", "networkTypeIds": "", "trafficTypeIds": "", "manufacturerIds": ""}
13cb0d11-c06f-432e-90be-381c208b1ceb	abdb98e0-ea1f-4d3b-8af6-f3d68ac71242	c9767b7a-3668-4814-bdcb-9ad1f127abea	3fa16ca6-d468-48f3-a871-eb2e2a1c306e		https://example.com	\N	1	t	f	400.00	0.00	252.00	0	0	0	{}	pending	{}	2025-09-08 14:52:07.962+00	2025-09-09 15:16:36.286+00	{}	{"genderIds": "", "ageRangeIds": "", "interestIds": "", "languageIds": "", "ethnicityIds": "", "incomeRangeIds": ""}	f	0	0	0	0	0	0	0	{"carrierIds": "", "deviceType": "13,15,11,12", "deviceOsIds": "", "networkTypeIds": "", "trafficTypeIds": "14", "manufacturerIds": ""}
963033af-8f94-41f5-8563-f2b2b3aaf471	e77c0dcc-7614-4e6c-acc0-254e1eaa0def	c9767b7a-3668-4814-bdcb-9ad1f127abea	25b6b800-696e-4bf7-afc3-99f7145a47ec		example.com	\N	1	t	f	0.00	0.00	0.00	0	0	0	{}	pending	{}	2025-09-08 16:02:24.154+00	2025-09-08 16:02:24.154+00	{}	{"genderIds": "", "ageRangeIds": "", "interestIds": "", "languageIds": "", "ethnicityIds": "", "incomeRangeIds": ""}	f	1	0	0	0	0	0	0	{"carrierIds": "", "deviceType": "13,15,11,12", "deviceOsIds": "", "networkTypeIds": "", "trafficTypeIds": "", "manufacturerIds": ""}
a9254396-d39d-49e8-bcb2-afc1d1873e4d	201ba7e2-f31b-498a-9095-69b4a71ff686	c9767b7a-3668-4814-bdcb-9ad1f127abea	fb2062a8-ef38-40bd-b78c-972995316bb4	\N	example.com	\N	1	t	f	0.00	0.00	0.00	0	0	0	{}	pending	{}	2025-09-08 15:47:09.967+00	2025-09-08 16:29:05.713+00	{}	{}	f	0	0	0	0	0	0	0	{}
38114397-ef47-41ad-9b6e-594c7bf9c8d2	221e470e-01bd-4c83-8f23-096aaa45beaf	c9767b7a-3668-4814-bdcb-9ad1f127abea	4943247a-89e6-4e6a-a56c-dd01b4a24bc5		example.com	\N	1	t	f	50.00	1000.00	0.00	0	0	0	{}	pending	{}	2025-09-08 15:31:38.304+00	2025-09-09 16:37:31.822+00	{}	{"genderIds": "", "ageRangeIds": "", "interestIds": "", "languageIds": "", "ethnicityIds": "", "incomeRangeIds": ""}	f	0	0	0	0	0	0	0	{"carrierIds": "", "deviceType": "13,15,11,12", "deviceOsIds": "", "networkTypeIds": "", "trafficTypeIds": "", "manufacturerIds": ""}
de3bd946-e5e7-4b60-a6ee-4d18365fa5be	8bc29f05-d334-4286-81f5-372e7d8b6331	c9767b7a-3668-4814-bdcb-9ad1f127abea	572d47ed-db61-4622-842f-2ee6e280c93e		https://example.com	11	1	t	f	0.00	0.00	0.00	0	0	0	{"dmaIds": "", "stateIds": "", "countryId": 30100001, "houseDistrictIds": "", "senateDistrictIds": "", "whiteListedCityIds": "", "whiteListedCountyIds": "30302192", "congressionalDistrictIds": ""}	pending	{"statusCode": 201, "responseObject": {"data": 46150, "status": "draft", "message": "Campaign saved successfully."}}	2025-09-09 12:45:32.908+00	2025-09-09 12:47:41.55+00	{"0": [["09:00:00", "17:00:00"]], "1": [["09:00:00", "17:00:00"]], "2": [["09:00:00", "17:00:00"]], "3": [["09:00:00", "17:00:00"]], "4": [["09:00:00", "17:00:00"]]}	{"genderIds": "", "ageRangeIds": "", "interestIds": "", "languageIds": "", "ethnicityIds": "", "incomeRangeIds": ""}	f	0	0	0	0	0	0	0	{"carrierIds": "", "deviceType": "13,15,11,12", "deviceOsIds": "", "networkTypeIds": "", "trafficTypeIds": "", "manufacturerIds": ""}
dbad2cce-c71b-4170-b499-a3f916ee10b8	90919b41-6661-4576-b5df-aa6b6d5b4b7e	c9767b7a-3668-4814-bdcb-9ad1f127abea	2ddd6c5e-edfc-4df3-8d60-d42092a7f035		example.com	\N	1	t	f	80.00	1000.00	0.00	0	0	0	{}	pending	{}	2025-09-09 15:06:49.372+00	2025-09-09 16:00:49.803+00	{}	{"genderIds": "", "ageRangeIds": "", "interestIds": "", "languageIds": "", "ethnicityIds": "", "incomeRangeIds": ""}	f	0	0	0	0	0	0	0	{"carrierIds": "", "deviceType": "13,15,11,12", "deviceOsIds": "", "networkTypeIds": "", "trafficTypeIds": "", "manufacturerIds": ""}
82b3e15c-7d2b-4b9f-b23e-13a465ab4195	3da1c54d-f790-4428-a327-6242d61564e8	c9767b7a-3668-4814-bdcb-9ad1f127abea	f963074c-89dc-48b0-b99c-1d47dfc01149		example.com	\N	1	t	f	50.00	1100.00	0.00	0	0	0	{}	pending	{}	2025-09-09 16:58:47.412+00	2025-09-09 16:58:47.412+00	{}	{"genderIds": "", "ageRangeIds": "", "interestIds": "", "languageIds": "", "ethnicityIds": "", "incomeRangeIds": ""}	f	0	0	0	0	0	0	0	{"carrierIds": "", "deviceType": "13,15,11,12", "deviceOsIds": "", "networkTypeIds": "", "trafficTypeIds": "", "manufacturerIds": ""}
d18462ce-2e0c-488c-905b-2bc25ecfd506	a9ad0ea9-1345-4ea2-92e5-d0dade643d66	c9767b7a-3668-4814-bdcb-9ad1f127abea	9ed2e3d9-876f-4205-a983-5cc1f1c54af5		example.com	\N	1	t	f	50.00	2600.00	0.00	0	0	0	{}	pending	{}	2025-09-09 17:15:12.084+00	2025-09-09 17:29:17.872+00	{}	{"genderIds": "", "ageRangeIds": "", "interestIds": "", "languageIds": "", "ethnicityIds": "", "incomeRangeIds": ""}	f	0	0	0	0	0	0	0	{"carrierIds": "", "deviceType": "13,15,11,12", "deviceOsIds": "", "networkTypeIds": "", "trafficTypeIds": "", "manufacturerIds": ""}
e3e2cef3-ceb4-447d-b9d3-d768f34ce9d0	e4d73742-dbc1-4edf-9453-887ede8d77bf	c9767b7a-3668-4814-bdcb-9ad1f127abea	d9b37a94-f6f0-4a03-8a27-96f2aa31a7e9	29924	https://example.com	11	1	t	f	1.00	2.00	1.00	0	0	0	{"dmaIds": "", "stateIds": "30200041", "countryId": 30100001, "houseDistrictIds": "", "senateDistrictIds": "", "whiteListedCityIds": "30435421,30436214", "whiteListedCountyIds": "", "congressionalDistrictIds": ""}	pending	{"statusCode": 400, "responseObject": {"errorMsg": "Request body either not provided or not valid.", "errorCode": 400, "description": "uri=/api/v2/cmp/campaigns/add"}}	2025-09-08 12:00:18.814+00	2025-09-09 17:10:39.1+00	{"0": [["09:00:00", "17:00:00"]], "1": [["09:00:00", "17:00:00"]], "2": [["09:00:00", "17:00:00"]], "3": [["09:00:00", "17:00:00"]], "4": [["09:00:00", "17:00:00"]]}	{"genderIds": "10200001,10200002", "ageRangeIds": "10100001,10100008", "interestIds": "10800081", "languageIds": "10500048,10500056", "ethnicityIds": "10700003,10700004", "incomeRangeIds": "10300001,10300002,10300003"}	f	4	0	0	0	0	0	0	{"carrierIds": "20400002,20400003", "deviceType": "13,15,11,12", "deviceOsIds": "11,12,13", "networkTypeIds": "12,13", "trafficTypeIds": "11,14", "manufacturerIds": "317,451"}
\.


--
-- Data for Name: iqm_analytics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."iqm_analytics" ("id", "iqm_campaign_id", "date", "impressions", "clicks", "conversions", "spend", "viewability_rate", "completion_rate", "iqm_specific_metrics", "raw_data", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: line_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."line_items" ("id", "platform_specific_campaign_id", "platform_line_item_id", "name", "product_type", "goal", "bid_strategy", "bid_amount", "status", "platform_specific_fields", "server_logs", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: meta_configurations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."meta_configurations" ("id", "org_id", "ad_account_id", "business_manager_id", "api_credentials", "default_settings", "pixel_id", "status", "last_sync_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: meta_campaigns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."meta_campaigns" ("id", "campaign_id", "meta_configuration_id", "platform_campaign_id", "objective", "buying_type", "budget", "daily_budget", "bid_strategy", "bid_amount", "targeting", "status", "platform_status", "server_logs", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: meta_ad_sets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."meta_ad_sets" ("id", "meta_campaign_id", "platform_ad_set_id", "name", "optimization_goal", "billing_event", "bid_amount", "budget", "daily_budget", "targeting", "status", "platform_status", "server_logs", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: meta_ads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."meta_ads" ("id", "meta_ad_set_id", "creative_id", "platform_ad_id", "name", "status", "platform_status", "ad_creative_data", "tracking_specs", "server_logs", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: system_modules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."system_modules" ("id", "name", "displayName", "description", "category", "isActive", "sortOrder", "created_at", "updated_at") FROM stdin;
4636adf0-3103-4121-9286-e7c4426bf2db	insertion_orders	Insertion Orders	\N	core	t	1	2025-09-05 04:02:50.01+00	2025-09-05 09:15:47.274+00
d68be727-e3de-4cbd-b045-df3344b94e7c	campaigns	Campaigns	\N	core	t	2	2025-09-05 04:02:51.674+00	2025-09-05 09:15:48.763+00
ffcc1df1-bbeb-4290-89bf-a81d79157ba7	creatives	Creatives	\N	core	t	3	2025-09-05 04:02:52.99+00	2025-09-05 09:15:50.211+00
d975c3ed-d85e-411c-8f7f-44f863c9eb71	audiences	Audiences	\N	core	t	4	2025-09-05 04:02:54.264+00	2025-09-05 09:15:51.657+00
f075f743-ab37-4133-bc93-fb94d9439704	analytics	Analytics	\N	analytics	t	5	2025-09-05 04:02:55.5+00	2025-09-05 09:15:53.1+00
8ffbb170-e258-4877-8d7d-861bdde5f0ab	reports	Reports	\N	analytics	t	6	2025-09-05 04:02:57.02+00	2025-09-05 09:15:54.535+00
fb5f4ef7-af8c-448a-8e09-e8fc1fad0c3a	billing	Billing & Payments	\N	finance	t	7	2025-09-05 04:02:58.269+00	2025-09-05 09:15:55.896+00
d32659a7-dfef-4c64-bce3-8d002066f8a3	user_management	User Management	\N	admin	t	8	2025-09-05 04:02:59.636+00	2025-09-05 09:15:57.317+00
27689079-192b-4f61-895f-7506dac23952	organization_settings	Organization Settings	\N	admin	t	9	2025-09-05 04:03:01.023+00	2025-09-05 09:15:58.773+00
\.


--
-- Data for Name: module_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."module_permissions" ("id", "module_id", "name", "displayName", "description", "isActive", "created_at", "updated_at") FROM stdin;
a72c907a-47be-43be-8089-3e1429c11b34	4636adf0-3103-4121-9286-e7c4426bf2db	module_access	Module Access	Can access and use this module	t	2025-09-05 04:03:03.3+00	2025-09-05 09:16:00.25+00
63a284c4-3270-452a-8ef8-3f401234fdde	d68be727-e3de-4cbd-b045-df3344b94e7c	module_access	Module Access	Can access and use this module	t	2025-09-05 04:03:04.578+00	2025-09-05 09:16:02.583+00
633e0251-e523-448b-98bb-19bd6f9bbbb2	ffcc1df1-bbeb-4290-89bf-a81d79157ba7	module_access	Module Access	Can access and use this module	t	2025-09-05 04:03:05.806+00	2025-09-05 09:16:04.848+00
b87dc266-ce0e-4a66-b0f9-35bd8b0bc7ac	d975c3ed-d85e-411c-8f7f-44f863c9eb71	module_access	Module Access	Can access and use this module	t	2025-09-05 04:03:07.28+00	2025-09-05 09:16:06.298+00
dd361553-d34f-426b-86b8-637f737b4977	f075f743-ab37-4133-bc93-fb94d9439704	module_access	Module Access	Can access and use this module	t	2025-09-05 04:03:08.945+00	2025-09-05 09:16:07.729+00
d3a7a456-5cac-49ad-8bed-3b0bcae5e4d6	8ffbb170-e258-4877-8d7d-861bdde5f0ab	module_access	Module Access	Can access and use this module	t	2025-09-05 04:03:10.63+00	2025-09-05 09:16:09.184+00
03dcfd47-c2b7-48fa-a1d1-c4fe4ef960e9	fb5f4ef7-af8c-448a-8e09-e8fc1fad0c3a	module_access	Module Access	Can access and use this module	t	2025-09-05 04:03:12.778+00	2025-09-05 09:16:11.154+00
11c61206-e82a-42a5-b223-7282c4bdfdc3	d32659a7-dfef-4c64-bce3-8d002066f8a3	module_access	Module Access	Can access and use this module	t	2025-09-05 04:03:14.328+00	2025-09-05 09:16:12.622+00
22cf1e4f-3c3a-40e7-8cd8-7925f69401b5	27689079-192b-4f61-895f-7506dac23952	module_access	Module Access	Can access and use this module	t	2025-09-05 04:03:15.555+00	2025-09-05 09:16:14.078+00
\.


--
-- Data for Name: onboarding_steps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."onboarding_steps" ("id", "org_id", "is_completed", "completed_at", "step_data", "created_at", "updated_at", "step_type", "user_id") FROM stdin;
30e52eb5-5046-4d27-9016-b53b3385ad6d	ce691bdf-681e-43de-ba03-971fefaa797a	t	2025-09-05 03:51:19.411+00	{"organizationId": "ce691bdf-681e-43de-ba03-971fefaa797a", "organizationCreated": true}	2025-09-05 03:51:09.206+00	2025-09-05 03:51:19.411+00	organization_setup	13021275-88df-4d55-99f4-88e7b2b8076a
4dc146db-9283-47e5-814d-80ec1e8131d3	ce691bdf-681e-43de-ba03-971fefaa797a	t	2025-09-05 03:51:49.932+00	{"role": "campaign_manager", "industryFocus": "political_campaign"}	2025-09-05 03:51:20.39+00	2025-09-05 03:51:49.932+00	personal_info	13021275-88df-4d55-99f4-88e7b2b8076a
70316178-3abc-4b5e-a53b-e22a7de0a293	ce691bdf-681e-43de-ba03-971fefaa797a	t	2025-09-05 03:51:59.071+00	{"targetLocations": ["ca"], "campaignObjective": "awareness"}	2025-09-05 03:51:59.073+00	2025-09-05 03:51:59.073+00	campaign_preferences	13021275-88df-4d55-99f4-88e7b2b8076a
d744c651-b0af-4b18-94e8-a96b25c8757c	ce691bdf-681e-43de-ba03-971fefaa797a	t	2025-09-05 03:52:13.442+00	{"adPlatforms": ["ott", "instagram", "facebook", "x"], "campaignTypes": ["video", "display"]}	2025-09-05 03:52:13.444+00	2025-09-05 03:52:13.444+00	platform_preferences	13021275-88df-4d55-99f4-88e7b2b8076a
969c9ab4-4917-45cb-944f-016dbd4b1986	1d133e85-37ec-411c-8cf2-84f80888e8a6	t	2025-09-05 09:34:14.622+00	{"organizationId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "organizationCreated": true}	2025-09-05 09:34:04.944+00	2025-09-05 09:34:14.622+00	organization_setup	3bbf6631-ff9d-492f-8245-1196174d2ae8
80059903-5f39-4b1a-bdb1-bf2f8739d0bc	1d133e85-37ec-411c-8cf2-84f80888e8a6	t	2025-09-05 09:34:25.58+00	{"role": "campaign_manager", "industryFocus": "political_campaign"}	2025-09-05 09:34:25.582+00	2025-09-05 09:34:25.582+00	personal_info	3bbf6631-ff9d-492f-8245-1196174d2ae8
0bd3d442-1884-452a-a317-94bd0868677f	1d133e85-37ec-411c-8cf2-84f80888e8a6	t	2025-09-05 09:35:02.051+00	{"targetLocations": ["ca", "ny"], "campaignObjective": "awareness"}	2025-09-05 09:35:02.053+00	2025-09-05 09:35:02.053+00	campaign_preferences	3bbf6631-ff9d-492f-8245-1196174d2ae8
caebb6ad-097b-43c5-8346-fd4afdcad6e8	5de5079e-a9c8-4aa0-ae44-7f182424b700	t	2025-09-05 09:28:14.736+00	{"organizationId": "5de5079e-a9c8-4aa0-ae44-7f182424b700", "organizationCreated": true}	2025-09-05 09:28:06.098+00	2025-09-05 09:28:14.736+00	organization_setup	773a847a-99cc-41e6-ba13-ffcfcb7e0028
5809d57c-64fb-45e3-8f80-1429752d89d9	5de5079e-a9c8-4aa0-ae44-7f182424b700	t	2025-09-05 09:28:27.151+00	{"role": "campaign_manager", "industryFocus": "political_campaign"}	2025-09-05 09:28:15.338+00	2025-09-05 09:28:27.151+00	personal_info	773a847a-99cc-41e6-ba13-ffcfcb7e0028
35f42773-3df8-4bbd-9313-8c119a9cdc29	5de5079e-a9c8-4aa0-ae44-7f182424b700	t	2025-09-05 09:28:37.93+00	{"targetLocations": ["ca", "fl"], "campaignObjective": "awareness"}	2025-09-05 09:28:37.932+00	2025-09-05 09:28:37.932+00	campaign_preferences	773a847a-99cc-41e6-ba13-ffcfcb7e0028
6b7b7055-653d-4d54-81f7-29aa4192a159	5de5079e-a9c8-4aa0-ae44-7f182424b700	t	2025-09-05 09:28:48.536+00	{"adPlatforms": ["facebook", "instagram"], "campaignTypes": ["display"]}	2025-09-05 09:28:48.537+00	2025-09-05 09:28:48.537+00	platform_preferences	773a847a-99cc-41e6-ba13-ffcfcb7e0028
c6f249eb-0b83-4d63-aed9-a687d54f344e	f4ae3849-725c-4323-b4fb-83d10ca38ce9	t	2025-09-05 09:32:27.022+00	{"organizationId": "f4ae3849-725c-4323-b4fb-83d10ca38ce9", "organizationCreated": true}	2025-09-05 09:32:17.955+00	2025-09-05 09:32:27.022+00	organization_setup	a9b07853-cb7a-4e03-89af-74aaa93ddeaa
93363d55-7187-4dce-ae6e-2929913194ca	f4ae3849-725c-4323-b4fb-83d10ca38ce9	t	2025-09-05 09:32:48.372+00	{"role": "candidate", "industryFocus": "government_agency"}	2025-09-05 09:32:33.699+00	2025-09-05 09:32:48.372+00	personal_info	a9b07853-cb7a-4e03-89af-74aaa93ddeaa
12ed358f-26a3-4f37-b7ed-5b08d4e2dec5	f4ae3849-725c-4323-b4fb-83d10ca38ce9	t	2025-09-05 09:33:23.201+00	{"targetLocations": ["ny"], "campaignObjective": "voter_registration"}	2025-09-05 09:32:58.685+00	2025-09-05 09:33:23.201+00	campaign_preferences	a9b07853-cb7a-4e03-89af-74aaa93ddeaa
35612681-9d31-427a-a5cc-079edf2cb678	f4ae3849-725c-4323-b4fb-83d10ca38ce9	t	2025-09-05 09:33:45.012+00	{"adPlatforms": ["ott"], "campaignTypes": ["native"]}	2025-09-05 09:33:45.015+00	2025-09-05 09:33:45.015+00	platform_preferences	a9b07853-cb7a-4e03-89af-74aaa93ddeaa
3ba851ba-3233-484c-8422-fb3f4d716273	1d133e85-37ec-411c-8cf2-84f80888e8a6	t	2025-09-05 09:35:14.216+00	{"adPlatforms": ["ott"], "campaignTypes": ["video", "display", "native", "audio"]}	2025-09-05 09:35:14.218+00	2025-09-05 09:35:14.218+00	platform_preferences	3bbf6631-ff9d-492f-8245-1196174d2ae8
9d1cf936-3048-47d0-91ae-ad1d140e7342	173e39a3-b55c-448c-950e-97c82f5b69eb	t	2025-09-05 09:54:01.591+00	{"organizationId": "173e39a3-b55c-448c-950e-97c82f5b69eb", "organizationCreated": true}	2025-09-05 09:53:50.704+00	2025-09-05 09:54:01.591+00	organization_setup	468d6435-3f9e-40f1-b664-7439c248e7ad
d3205f3e-3861-425d-a2ae-78ed03db0b48	173e39a3-b55c-448c-950e-97c82f5b69eb	t	2025-09-05 09:54:07.833+00	{"role": "campaign_manager", "industryFocus": "political_campaign"}	2025-09-05 09:53:59.333+00	2025-09-05 09:54:07.833+00	personal_info	468d6435-3f9e-40f1-b664-7439c248e7ad
58aa4a8e-9c88-4624-b648-d40dd6677528	173e39a3-b55c-448c-950e-97c82f5b69eb	t	2025-09-05 09:54:17.808+00	{"targetLocations": ["ca", "ny"], "campaignObjective": "awareness"}	2025-09-05 09:54:17.81+00	2025-09-05 09:54:17.81+00	campaign_preferences	468d6435-3f9e-40f1-b664-7439c248e7ad
c15248fc-afb7-448f-8d86-74458c639743	173e39a3-b55c-448c-950e-97c82f5b69eb	t	2025-09-05 09:54:27.691+00	{"adPlatforms": ["ott"], "campaignTypes": ["video", "display"]}	2025-09-05 09:54:27.693+00	2025-09-05 09:54:27.693+00	platform_preferences	468d6435-3f9e-40f1-b664-7439c248e7ad
79fe4152-15f9-4cb9-8754-b5480ec76f3b	0e86bc51-138a-498b-8e6a-1d30d380baa5	t	2025-09-09 17:05:58.602+00	{"role": "campaign_manager", "industryFocus": "pac"}	2025-09-05 09:56:51.711+00	2025-09-09 17:05:58.602+00	personal_info	099365f9-7db0-4118-95cd-66d72b17e252
335d506f-f462-48d7-bc92-efe207769109	0e86bc51-138a-498b-8e6a-1d30d380baa5	t	2025-09-05 10:01:00.449+00	{"targetLocations": ["ny"], "campaignObjective": "awareness"}	2025-09-05 10:01:00.45+00	2025-09-05 10:01:00.45+00	campaign_preferences	099365f9-7db0-4118-95cd-66d72b17e252
48d056b4-8f99-4244-aa42-24cc909160da	0e86bc51-138a-498b-8e6a-1d30d380baa5	t	2025-09-05 10:01:13.668+00	{"adPlatforms": ["ott"], "campaignTypes": ["display"]}	2025-09-05 10:01:13.669+00	2025-09-05 10:01:13.669+00	platform_preferences	099365f9-7db0-4118-95cd-66d72b17e252
72c82186-d073-4a4f-b3fe-3a72e39051fc	50261d89-cbdf-4517-9c36-7e77af3aa2b2	t	2025-09-05 10:24:40.243+00	{"organizationId": "50261d89-cbdf-4517-9c36-7e77af3aa2b2", "organizationCreated": true}	2025-09-05 10:24:29.168+00	2025-09-05 10:24:40.243+00	organization_setup	2eb47c0f-8870-4979-bf10-7583dc5f3c6e
a94c3b40-67ec-44e5-9921-ab190a2a4199	50261d89-cbdf-4517-9c36-7e77af3aa2b2	t	2025-09-05 10:24:55.388+00	{"role": "campaign_manager", "industryFocus": "government_agency"}	2025-09-05 10:24:45.346+00	2025-09-05 10:24:55.388+00	personal_info	2eb47c0f-8870-4979-bf10-7583dc5f3c6e
4d8f9049-4af8-400c-8641-797a4f343345	50261d89-cbdf-4517-9c36-7e77af3aa2b2	t	2025-09-05 10:25:05.89+00	{"targetLocations": ["ny"], "campaignObjective": "consideration"}	2025-09-05 10:25:05.892+00	2025-09-05 10:25:05.892+00	campaign_preferences	2eb47c0f-8870-4979-bf10-7583dc5f3c6e
e75eec81-1956-4bb5-ba8c-397d0fe320b1	50261d89-cbdf-4517-9c36-7e77af3aa2b2	t	2025-09-05 10:25:21.64+00	{"adPlatforms": ["facebook"], "campaignTypes": ["native"]}	2025-09-05 10:25:21.642+00	2025-09-05 10:25:21.642+00	platform_preferences	2eb47c0f-8870-4979-bf10-7583dc5f3c6e
19c9874a-257e-4416-bee3-dea7eec623b5	469f9695-140e-4627-9636-7d670617b454	t	2025-09-05 11:30:04.21+00	{"organizationId": "469f9695-140e-4627-9636-7d670617b454", "organizationCreated": true}	2025-09-05 11:29:55.724+00	2025-09-05 11:30:04.21+00	organization_setup	d1d62436-8860-4fdb-8ae5-dbbd586d1a66
cbdc75a9-3d66-41cf-9008-60ceac9287ed	469f9695-140e-4627-9636-7d670617b454	t	2025-09-05 11:30:12.514+00	{"role": "campaign_manager", "industryFocus": "political_campaign"}	2025-09-05 11:30:12.515+00	2025-09-05 11:30:12.515+00	personal_info	d1d62436-8860-4fdb-8ae5-dbbd586d1a66
e9a78b7b-5f94-44fb-b7f7-a8c652f861f2	469f9695-140e-4627-9636-7d670617b454	t	2025-09-05 11:30:53.92+00	{"targetLocations": ["ca"], "campaignObjective": "awareness"}	2025-09-05 11:30:53.921+00	2025-09-05 11:30:53.921+00	campaign_preferences	d1d62436-8860-4fdb-8ae5-dbbd586d1a66
e64b3f8c-25ce-48cf-a95a-c482b0029464	469f9695-140e-4627-9636-7d670617b454	t	2025-09-05 11:31:03.758+00	{"adPlatforms": ["ott"], "campaignTypes": ["native", "display"]}	2025-09-05 11:31:03.759+00	2025-09-05 11:31:03.759+00	platform_preferences	d1d62436-8860-4fdb-8ae5-dbbd586d1a66
1a826b18-c599-4c72-8867-c75d944bac43	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	t	2025-09-08 12:57:05.578+00	{"organizationId": "b67d4fa5-128b-4252-8a8e-cd4ddf17b40e", "organizationCreated": true}	2025-09-08 12:56:58.408+00	2025-09-08 12:57:05.578+00	organization_setup	68791c34-6384-4d8f-b544-5188033fa7ac
3cc72fa2-ab20-4b2e-bc7c-3b0880f4cea6	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	t	2025-09-08 12:57:14.847+00	{"role": "campaign_manager", "industryFocus": "political_campaign"}	2025-09-08 12:57:08.545+00	2025-09-08 12:57:14.847+00	personal_info	68791c34-6384-4d8f-b544-5188033fa7ac
9a2c1dbd-5de4-4205-af00-ecf8a6070486	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	t	2025-09-08 12:57:37.559+00	{"targetLocations": ["ca", "ny"], "campaignObjective": "awareness"}	2025-09-08 12:57:28.445+00	2025-09-08 12:57:37.559+00	campaign_preferences	68791c34-6384-4d8f-b544-5188033fa7ac
922f3b3c-db4c-41c5-8cde-14003a6d6d28	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	t	2025-09-08 12:58:05.258+00	{"adPlatforms": ["ott"], "campaignTypes": ["video", "display", "native", "audio", "text"]}	2025-09-08 12:58:05.272+00	2025-09-08 12:58:05.272+00	platform_preferences	68791c34-6384-4d8f-b544-5188033fa7ac
afb25cce-fc60-4a53-993e-b015dad748f0	fd560bd7-735a-45b0-9751-648202ab072d	t	2025-09-08 13:32:14.559+00	{"organizationId": "fd560bd7-735a-45b0-9751-648202ab072d", "organizationCreated": true}	2025-09-08 13:32:09.1+00	2025-09-08 13:32:14.559+00	organization_setup	6a2f7b86-b331-4192-9ef9-432b748319dc
e08ad7f0-bd86-4d4e-934d-bfcf027f2155	fd560bd7-735a-45b0-9751-648202ab072d	t	2025-09-08 13:32:35.145+00	{"role": "other", "industryFocus": "other"}	2025-09-08 13:32:35.146+00	2025-09-08 13:32:35.146+00	personal_info	6a2f7b86-b331-4192-9ef9-432b748319dc
5d583f30-3b3f-4683-a9c4-71ebfa58651d	fd560bd7-735a-45b0-9751-648202ab072d	t	2025-09-08 13:33:01.27+00	{"targetLocations": ["tx"], "campaignObjective": "awareness"}	2025-09-08 13:33:01.271+00	2025-09-08 13:33:01.271+00	campaign_preferences	6a2f7b86-b331-4192-9ef9-432b748319dc
c138279b-2716-4b9a-b9f4-d59cbf5fae05	fd560bd7-735a-45b0-9751-648202ab072d	t	2025-09-08 13:33:42.432+00	{"adPlatforms": ["ott"], "campaignTypes": ["text"]}	2025-09-08 13:33:42.433+00	2025-09-08 13:33:42.433+00	platform_preferences	6a2f7b86-b331-4192-9ef9-432b748319dc
428d5802-1267-4b15-aa28-84f255cce561	0e86bc51-138a-498b-8e6a-1d30d380baa5	t	2025-09-09 16:39:28.948+00	{"joinedAt": "2025-09-09T16:39:27.525Z", "inviteCode": "1YTPPBIH", "joinedViaInvite": true, "organizationJoined": true}	2025-09-05 09:56:31.526+00	2025-09-09 16:39:28.948+00	organization_setup	099365f9-7db0-4118-95cd-66d72b17e252
\.


--
-- Data for Name: organization_branding; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."organization_branding" ("id", "org_id", "payment_header_text", "payment_footer_text", "trust_badges", "payment_success_url", "payment_cancel_url", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: organization_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."organization_details" ("org_id", "name", "description", "logo_url", "primary_color", "secondary_color", "contact_email", "contact_phone", "address", "timezone", "created_at", "updated_at") FROM stdin;
ce691bdf-681e-43de-ba03-971fefaa797a	zero org		\N	\N	\N			\N	UTC	2025-09-05 03:51:05.823+00	2025-09-05 03:51:05.823+00
f357d8a9-45a4-4440-8324-174fdc73b8a1	test34		\N	\N	\N			\N	UTC	2025-09-05 08:12:29.467+00	2025-09-05 08:12:29.467+00
2672c7ae-c165-477e-84d4-961b7bacbe74	sports	badminton	\N	\N	\N			\N	UTC	2025-09-05 08:48:48.768+00	2025-09-05 08:48:48.768+00
b41c2d03-8668-4fc0-9d02-eadd0602dc72	Org X	X organisation	\N	\N	\N			\N	UTC	2025-09-05 08:49:06.029+00	2025-09-05 08:49:06.029+00
5de5079e-a9c8-4aa0-ae44-7f182424b700	wgsdxc		\N	\N	\N			\N	UTC	2025-09-05 09:28:03.236+00	2025-09-05 09:28:03.236+00
f4ae3849-725c-4323-b4fb-83d10ca38ce9	Rj org		\N	\N	\N			\N	UTC	2025-09-05 09:32:15.073+00	2025-09-05 09:32:15.073+00
1d133e85-37ec-411c-8cf2-84f80888e8a6	test org		\N	\N	\N			\N	UTC	2025-09-05 09:33:57.39+00	2025-09-05 09:33:57.39+00
173e39a3-b55c-448c-950e-97c82f5b69eb	cporg		\N	\N	\N			\N	UTC	2025-09-05 09:53:47.68+00	2025-09-05 09:53:47.68+00
0e86bc51-138a-498b-8e6a-1d30d380baa5	Cricket Org	For Cricket	\N	\N	\N			\N	UTC	2025-09-05 09:56:28.486+00	2025-09-05 09:56:28.486+00
50261d89-cbdf-4517-9c36-7e77af3aa2b2	Abhi	fewf	\N	\N	\N	abhisek.mallick@ishvaratech.com	wwqr	\N	UTC	2025-09-05 10:24:26.254+00	2025-09-05 10:24:26.254+00
469f9695-140e-4627-9636-7d670617b454	Manash		\N	\N	\N			\N	UTC	2025-09-05 11:29:53.028+00	2025-09-05 11:29:53.028+00
b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	test43		\N	\N	\N			\N	UTC	2025-09-08 12:56:56.11+00	2025-09-08 12:56:56.11+00
fd560bd7-735a-45b0-9751-648202ab072d	test1		\N	\N	\N			\N	UTC	2025-09-08 13:32:08.401+00	2025-09-08 13:32:08.401+00
\.


--
-- Data for Name: organization_hierarchy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."organization_hierarchy" ("parent_org_id", "child_org_id", "relationship_type", "created_at") FROM stdin;
\.


--
-- Data for Name: organization_invites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."organization_invites" ("id", "org_id", "invite_code", "created_by", "invited_email", "role_id", "used_by", "used_at", "expires_at", "is_active", "created_at", "updated_at", "temporary_password_hash", "invitee_first_name", "invitee_last_name") FROM stdin;
53ded7c1-6eb9-4a4b-99f5-71eceb176a15	0e86bc51-138a-498b-8e6a-1d30d380baa5	CF39ZIPD	099365f9-7db0-4118-95cd-66d72b17e252	nehadumi@cyclelove.cc	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d	5e46721f-df55-4a73-80d5-d3476538d92d	2025-09-05 10:21:40.811+00	2025-09-12 10:21:02.615+00	f	2025-09-05 10:21:02.617+00	2025-09-05 10:21:40.812+00	DH@DpjqN3W	Virat	Kohli
fd59d414-7c25-4b7f-973a-1869eede4954	469f9695-140e-4627-9636-7d670617b454	OCQBQLHS	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	manash.jyoti@nexgenai.io	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d	a375e816-a34d-4c06-9289-468a90d547eb	2025-09-05 12:06:12.256+00	2025-09-12 12:04:51.061+00	f	2025-09-05 12:04:51.062+00	2025-09-05 12:06:12.258+00	0FQuozjEAp	Zoya	Doe
631e220b-8c5f-45b4-a9ea-0705752637e7	0e86bc51-138a-498b-8e6a-1d30d380baa5	BODDPNQL	099365f9-7db0-4118-95cd-66d72b17e252	gubiqova@forexzig.com	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d	7f491d4a-d92c-46d1-bc1f-36dc2215e550	2025-09-09 14:38:15.62+00	2025-09-16 14:37:10.691+00	f	2025-09-09 14:37:10.693+00	2025-09-09 14:38:15.622+00	VkSPZDgOzW	Yuvraj	Singh
05285e48-bca2-4209-9579-a88d05b7274a	0e86bc51-138a-498b-8e6a-1d30d380baa5	1YTPPBIH	099365f9-7db0-4118-95cd-66d72b17e252	loluxoze@cyclelove.cc	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d	86a7b846-f35a-4166-866b-1046cc07ecea	2025-09-09 16:39:30.44+00	2025-09-16 16:38:52.362+00	f	2025-09-09 16:38:52.364+00	2025-09-09 16:39:30.442+00	en4y#l01wA	Ab	Devillers
25259e0d-25f1-47ee-a93c-b05d26ab00b9	0e86bc51-138a-498b-8e6a-1d30d380baa5	E5F8OCNM	099365f9-7db0-4118-95cd-66d72b17e252	fuvusi@fxzig.com	73c170fb-9448-49aa-8837-1e639a4eeaa8	a097c1b2-a4df-4a06-9363-77e2a7efc311	2025-09-09 17:12:14.572+00	2025-09-16 16:45:37.824+00	f	2025-09-09 16:45:37.826+00	2025-09-09 17:12:14.579+00	Ykg3!gD&l@	Sikhar	Dhawan
\.


--
-- Data for Name: organization_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."organization_members" ("id", "org_id", "user_id", "role_id") FROM stdin;
cbffc832-819f-4667-ba8e-0199e6e62d50	ce691bdf-681e-43de-ba03-971fefaa797a	13021275-88df-4d55-99f4-88e7b2b8076a	4158bb4f-8350-4081-99e5-47aed79a9212
86ff325c-2648-4e96-be67-a20c8f1c9e75	5de5079e-a9c8-4aa0-ae44-7f182424b700	773a847a-99cc-41e6-ba13-ffcfcb7e0028	4158bb4f-8350-4081-99e5-47aed79a9212
51bb8263-7967-46c0-9aed-2eceb9c31d51	f4ae3849-725c-4323-b4fb-83d10ca38ce9	a9b07853-cb7a-4e03-89af-74aaa93ddeaa	4158bb4f-8350-4081-99e5-47aed79a9212
1657d56e-1ae4-4533-9cba-e9cf57d5532b	1d133e85-37ec-411c-8cf2-84f80888e8a6	3bbf6631-ff9d-492f-8245-1196174d2ae8	4158bb4f-8350-4081-99e5-47aed79a9212
5b1b3fa0-0903-4784-b7ea-0429a1f5b2f1	173e39a3-b55c-448c-950e-97c82f5b69eb	468d6435-3f9e-40f1-b664-7439c248e7ad	4158bb4f-8350-4081-99e5-47aed79a9212
6f8a69c5-2e33-47a7-93bc-09f5dd5c9f57	0e86bc51-138a-498b-8e6a-1d30d380baa5	099365f9-7db0-4118-95cd-66d72b17e252	4158bb4f-8350-4081-99e5-47aed79a9212
9ddb7cd4-af48-49b7-b1b6-7dd4573f6336	50261d89-cbdf-4517-9c36-7e77af3aa2b2	2eb47c0f-8870-4979-bf10-7583dc5f3c6e	4158bb4f-8350-4081-99e5-47aed79a9212
7b24990e-1097-49aa-8bf3-f4960ad6cd51	469f9695-140e-4627-9636-7d670617b454	d1d62436-8860-4fdb-8ae5-dbbd586d1a66	4158bb4f-8350-4081-99e5-47aed79a9212
62d4591d-343c-499a-868e-b74b50790acc	469f9695-140e-4627-9636-7d670617b454	a375e816-a34d-4c06-9289-468a90d547eb	73c170fb-9448-49aa-8837-1e639a4eeaa8
36867cd4-ecc3-4dee-9a82-b50870b316a1	0e86bc51-138a-498b-8e6a-1d30d380baa5	5e46721f-df55-4a73-80d5-d3476538d92d	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d
7440b970-1cc6-4ac3-90c1-1cdfbbf3a2be	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	68791c34-6384-4d8f-b544-5188033fa7ac	4158bb4f-8350-4081-99e5-47aed79a9212
2e7e9504-70ac-449f-bb63-2b11f438df47	fd560bd7-735a-45b0-9751-648202ab072d	6a2f7b86-b331-4192-9ef9-432b748319dc	4158bb4f-8350-4081-99e5-47aed79a9212
e0c597d6-9d45-4d57-8bdd-e12d83a884f6	0e86bc51-138a-498b-8e6a-1d30d380baa5	7f491d4a-d92c-46d1-bc1f-36dc2215e550	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d
cffc5820-0d4a-4652-b76f-6515fe83284d	0e86bc51-138a-498b-8e6a-1d30d380baa5	86a7b846-f35a-4166-866b-1046cc07ecea	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d
02c0c5fe-1a92-4fec-8cad-c075e7e66a19	0e86bc51-138a-498b-8e6a-1d30d380baa5	a097c1b2-a4df-4a06-9363-77e2a7efc311	73c170fb-9448-49aa-8837-1e639a4eeaa8
\.


--
-- Data for Name: organization_role_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."organization_role_permissions" ("id", "org_id", "role_id", "module_id", "permission_id", "isGranted", "granted_by", "granted_at", "updated_at") FROM stdin;
4c2c04a6-c022-4850-9d00-45dacd57b537	0e86bc51-138a-498b-8e6a-1d30d380baa5	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d	4636adf0-3103-4121-9286-e7c4426bf2db	a72c907a-47be-43be-8089-3e1429c11b34	t	099365f9-7db0-4118-95cd-66d72b17e252	2025-09-05 16:10:19.192+00	2025-09-05 16:10:19.193+00
61829050-4f35-4890-9a3b-01a99f905362	0e86bc51-138a-498b-8e6a-1d30d380baa5	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d	d68be727-e3de-4cbd-b045-df3344b94e7c	63a284c4-3270-452a-8ef8-3f401234fdde	t	099365f9-7db0-4118-95cd-66d72b17e252	2025-09-05 16:17:09.644+00	2025-09-05 16:17:09.644+00
501b1ceb-a71b-4454-a75d-f5ea4162b2d6	0e86bc51-138a-498b-8e6a-1d30d380baa5	73c170fb-9448-49aa-8837-1e639a4eeaa8	4636adf0-3103-4121-9286-e7c4426bf2db	a72c907a-47be-43be-8089-3e1429c11b34	t	099365f9-7db0-4118-95cd-66d72b17e252	2025-09-09 15:12:17.374+00	2025-09-09 15:12:17.376+00
\.


--
-- Data for Name: payment_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."payment_logs" ("id", "org_id", "campaign_id", "insertion_order_id", "amount_media", "fee_cpg", "tax_amount", "amount_total", "currency", "status", "paidPlatforms", "payment_type", "stripe_payment_intent_id", "stripe_charge_id", "stripe_invoice_id", "receipt_url", "processor_fees", "failure_reason", "failure_code", "metadata", "processed_at", "created_at", "updated_at", "invoice_line_items", "invoice_pdf_url", "r2_invoice_url") FROM stdin;
d07f7b47-01ff-4e8d-a0c7-462a55a212d3	ce691bdf-681e-43de-ba03-971fefaa797a	4b81e203-deb5-4890-833b-06293b8ec37c	65c694f5-9509-4ee0-9458-3a4112369afc	2975.00	525.00	0.00	3500.00	USD	succeeded	["Facebook", "Instagram"]	initial	pi_3S3r1rPr4feoR0CM2Sw6Z4Vf	ch_3S3r1rPr4feoR0CM26a1Izh2	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKPXG6cUGMgap15nIKxM6LBYt8cqwS0zWfhDKStALpcjATVko49GRmhxLYdeozNorwWQ6Me2ETIQRazpm	\N	\N	\N	{"orgId": "ce691bdf-681e-43de-ba03-971fefaa797a", "orgName": "zero org", "createdBy": "13021275-88df-4d55-99f4-88e7b2b8076a", "campaignId": "4b81e203-deb5-4890-833b-06293b8ec37c", "createdByName": "Mansh Soni", "insertionOrderId": "65c694f5-9509-4ee0-9458-3a4112369afc", "checkoutSessionId": "cs_test_b11Xl3yPUhlOY7A5UbGLBeBPPghcrByYCYvs8pXmTIHU0FuQF0cOoCxUhr", "platformBreakdown": [{"budget": 1500, "platform": "Facebook"}, {"budget": 2000, "platform": "Instagram"}]}	2025-09-05 04:13:45.937+00	2025-09-05 04:10:48.221+00	2025-09-05 04:13:45.948+00	[{"platform": "Facebook", "quantity": 1, "description": "Facebook", "unit_amount": 1500}, {"platform": "Instagram", "quantity": 1, "description": "Instagram", "unit_amount": 2000}]	\N	\N
e880911d-02a8-48ed-9b8e-b615cb0d8460	ce691bdf-681e-43de-ba03-971fefaa797a	41af3f95-231b-4b07-bca3-97f4c97093a0	65c694f5-9509-4ee0-9458-3a4112369afc	425.00	75.00	0.00	500.00	USD	succeeded	["Facebook"]	initial	pi_3S3vPcPr4feoR0CM19fKS9vn	ch_3S3vPcPr4feoR0CM1gx5MlRi	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKMfK6sUGMgZ_cu7s9AQ6LBY42wsMeUxxIcTNFvtGDP0m8rnNESHrwNmtPI6ptymtXzackLCIXxohuXgz	\N	\N	\N	{"orgId": "ce691bdf-681e-43de-ba03-971fefaa797a", "orgName": "zero org", "createdBy": "13021275-88df-4d55-99f4-88e7b2b8076a", "campaignId": "41af3f95-231b-4b07-bca3-97f4c97093a0", "createdByName": "Mansh Soni", "insertionOrderId": "65c694f5-9509-4ee0-9458-3a4112369afc", "checkoutSessionId": "cs_test_a1mPXdyc2hskWPnoEEguo9AxedQasVCSDbslSzsT0HwMBt8kRrrmnApKoU", "platformBreakdown": [{"budget": 500, "platform": "Facebook"}]}	2025-09-05 08:54:33.447+00	2025-09-05 08:54:09.371+00	2025-09-05 08:54:33.449+00	\N	\N	\N
af836841-a736-4d5c-8f0d-45176de6ed6c	ce691bdf-681e-43de-ba03-971fefaa797a	adb287bf-7f2f-41af-9b7a-6f89e78357cf	65c694f5-9509-4ee0-9458-3a4112369afc	1105.00	195.00	0.00	1300.00	USD	succeeded	["Instagram"]	initial	pi_3S3rFvPr4feoR0CM1JXEFoYk	ch_3S3rFvPr4feoR0CM1wfTAdKX	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKN3N6cUGMgbu81eDK2s6LBaVb1R5ca8-me2ADqfx4qea6f5PenE-E9gE4hveH-n7gVviQdQIJAjtRBN6	\N	\N	\N	{"orgId": "ce691bdf-681e-43de-ba03-971fefaa797a", "orgName": "zero org", "createdBy": "13021275-88df-4d55-99f4-88e7b2b8076a", "campaignId": "adb287bf-7f2f-41af-9b7a-6f89e78357cf", "createdByName": "Mansh Soni", "insertionOrderId": "65c694f5-9509-4ee0-9458-3a4112369afc", "checkoutSessionId": "cs_test_a1xAWjxd9xl9PbmZNlpkxuK8Ok3D76nOo4v7keXmR6dPYLlDdYNhuld000", "platformBreakdown": [{"budget": 1300, "platform": "Instagram"}]}	2025-09-05 04:28:17.647+00	2025-09-05 04:27:34.574+00	2025-09-05 04:28:17.649+00	[{"platform": "Instagram", "quantity": 1, "description": "Instagram", "unit_amount": 1300}]	\N	\N
c7f3109a-e66b-46f8-8ed6-112b7ca5ff4a	ce691bdf-681e-43de-ba03-971fefaa797a	370c8c2c-fa6f-4e92-a664-a8c75f9231f8	65c694f5-9509-4ee0-9458-3a4112369afc	1105.00	195.00	0.00	1300.00	USD	succeeded	["Facebook", "Instagram"]	initial	pi_3S3vIpPr4feoR0CM1l7CgwxC	ch_3S3vIpPr4feoR0CM1OTIpO2G	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKKHH6sUGMgYfeCi92xA6LBaWVUnxaVrb0e8oHlY8tfv-JpEZcNT0f20BLw-vqSuZXhwjLh28NmnfksBo	\N	\N	\N	{"orgId": "ce691bdf-681e-43de-ba03-971fefaa797a", "orgName": "zero org", "createdBy": "13021275-88df-4d55-99f4-88e7b2b8076a", "campaignId": "370c8c2c-fa6f-4e92-a664-a8c75f9231f8", "createdByName": "Mansh Soni", "insertionOrderId": "65c694f5-9509-4ee0-9458-3a4112369afc", "checkoutSessionId": "cs_test_b1KMtCrF777EaNGl8xoMyWEDfCSCl9Xq5iP2HF8z42e5XKJJssJn1UZExt", "platformBreakdown": [{"budget": 500, "platform": "Facebook"}, {"budget": 800, "platform": "Instagram"}]}	2025-09-05 08:47:31.764+00	2025-09-05 08:47:04.29+00	2025-09-05 08:47:31.765+00	\N	\N	\N
ad76cc3f-6343-4bd3-a09a-9b471a3db53c	ce691bdf-681e-43de-ba03-971fefaa797a	41af3f95-231b-4b07-bca3-97f4c97093a0	65c694f5-9509-4ee0-9458-3a4112369afc	425.00	75.00	0.00	500.00	USD	succeeded	["Facebook"]	initial	pi_3S3vUYPr4feoR0CM1wlQbboc	ch_3S3vUYPr4feoR0CM1eSXMLoZ	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKPjM6sUGMgboqmcWnK06LBY8MAcXwK52dbdyl18F9eoiMmnmRVeWiPfUG1ZzDlFZk-8fpC5cJskIdXfA	\N	\N	\N	{"orgId": "ce691bdf-681e-43de-ba03-971fefaa797a", "orgName": "zero org", "createdBy": "13021275-88df-4d55-99f4-88e7b2b8076a", "campaignId": "41af3f95-231b-4b07-bca3-97f4c97093a0", "createdByName": "Mansh Soni", "insertionOrderId": "65c694f5-9509-4ee0-9458-3a4112369afc", "checkoutSessionId": "cs_test_a1GrjCeydimcrf38Mewj9rvKSlkopBYZa2BpovBT126BLXmFFOYhoOTBmr", "platformBreakdown": [{"budget": 500, "platform": "Facebook"}]}	2025-09-05 08:59:39.383+00	2025-09-05 08:59:19.752+00	2025-09-05 08:59:43.653+00	\N	https://d97fe8738aefb2595cf3b24811cccb19.r2.cloudflarestorage.com/cpulse-creatives/invoices/2025/09/user-13021275-88df-4d55-99f4-88e7b2b8076a/ad76cc3f-6343-4bd3-a09a-9b471a3db53c.pdf	\N
ba65363b-3821-4c08-8703-c24c498d5f16	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	de3a7eac-07ba-442e-bcc6-9dda2ad191bb	1.70	0.30	0.00	2.00	USD	pending	["OTT"]	initial	\N	\N	\N	\N	\N	\N	\N	{"orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "orgName": "test org", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "campaignId": "e4d73742-dbc1-4edf-9453-887ede8d77bf", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "de3a7eac-07ba-442e-bcc6-9dda2ad191bb", "checkoutSessionId": "cs_test_a1pq0EkeKT5yzm2qwVjxxLOVxvH6OA6k3M7vmhPJtNEOqkYUu1itGOwENU", "platformBreakdown": [{"budget": 2, "platform": "OTT"}]}	\N	2025-09-09 15:09:22.321+00	2025-09-09 15:09:26.221+00	\N	\N	\N
bbdf3463-78c9-4a98-9130-ed56a493d666	469f9695-140e-4627-9636-7d670617b454	022c7fda-8348-46b0-898c-7c855e5b0234	6f01c711-6ac7-47c5-956c-58471817ec7f	850.00	150.00	0.00	1000.00	USD	succeeded	["OTT"]	initial	pi_3S54D8Pr4feoR0CM0hRTaZI7	ch_3S54D8Pr4feoR0CM0NjAUj2P	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKNuY-8UGMgYeIv9Fbds6LBaJN3YXSlhA6sOeddoPVM25I9hVAKp8ogBKhYpaHPj1jUK62sC86vg0Jsvu	\N	\N	\N	{"orgId": "469f9695-140e-4627-9636-7d670617b454", "orgName": "Manash", "createdBy": "d1d62436-8860-4fdb-8ae5-dbbd586d1a66", "campaignId": "022c7fda-8348-46b0-898c-7c855e5b0234", "createdByName": "Manash Baruah", "insertionOrderId": "6f01c711-6ac7-47c5-956c-58471817ec7f", "checkoutSessionId": "cs_test_a1dlbMoPeDTZeSWMtjcT48IkJsc6JGKohK4zLJl9NPJdpVsujlOr9iVQgC", "platformBreakdown": [{"budget": 1000, "platform": "OTT"}]}	2025-09-08 12:30:43.376+00	2025-09-08 12:30:05.249+00	2025-09-08 12:30:47.544+00	\N	https://6e9b26324800a2461cb013c7141cf550.r2.cloudflarestorage.com/cpulse-creatives/invoices/2025/09/user-d1d62436-8860-4fdb-8ae5-dbbd586d1a66/bbdf3463-78c9-4a98-9130-ed56a493d666.pdf	\N
1b04cdcc-18fb-45d6-a397-ab5e04bff54c	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	de3a7eac-07ba-442e-bcc6-9dda2ad191bb	1.70	0.30	0.00	2.00	USD	pending	["OTT"]	initial	\N	\N	\N	\N	\N	\N	\N	{"orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "orgName": "test org", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "campaignId": "e4d73742-dbc1-4edf-9453-887ede8d77bf", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "de3a7eac-07ba-442e-bcc6-9dda2ad191bb", "checkoutSessionId": "cs_test_a1JvOWARF3EtgzYtESTPIS6Ncb1sdWw5Iim3Bp0jEQdQOvpIW6pMpIRQeA", "platformBreakdown": [{"budget": 2, "platform": "OTT"}]}	\N	2025-09-09 16:54:10.545+00	2025-09-09 16:54:29.863+00	\N	\N	\N
3e959831-bcba-4978-8588-8c7da571da8d	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	de3a7eac-07ba-442e-bcc6-9dda2ad191bb	1.70	0.30	0.00	2.00	USD	pending	["OTT"]	initial	\N	\N	\N	\N	\N	\N	\N	{"orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "orgName": "test org", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "campaignId": "e4d73742-dbc1-4edf-9453-887ede8d77bf", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "de3a7eac-07ba-442e-bcc6-9dda2ad191bb", "checkoutSessionId": "cs_test_a1EaqBRNUTj3pWFh4Y6bVy20UkKudztIz1GUrDQ2zNRaANZfxUTlo39Pek", "platformBreakdown": [{"budget": 2, "platform": "OTT"}]}	\N	2025-09-09 17:03:45.209+00	2025-09-09 17:03:53.179+00	\N	\N	\N
f4e5b635-92f3-4d67-a6a8-2dff24eb41da	ce691bdf-681e-43de-ba03-971fefaa797a	41af3f95-231b-4b07-bca3-97f4c97093a0	65c694f5-9509-4ee0-9458-3a4112369afc	1190.00	210.00	0.00	1400.00	USD	succeeded	["Facebook", "Instagram"]	initial	pi_3S3vekPr4feoR0CM2KKp9T09	ch_3S3vekPr4feoR0CM2ftUwt0X	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKPDR6sUGMgZfItiuP646LBYpBgmhxhoWwwnVFn5k0nlxVuRoCQXweRiX2JWxf3tzlN1baNIUOdbg26XS	\N	\N	\N	{"orgId": "ce691bdf-681e-43de-ba03-971fefaa797a", "orgName": "zero org", "createdBy": "13021275-88df-4d55-99f4-88e7b2b8076a", "campaignId": "41af3f95-231b-4b07-bca3-97f4c97093a0", "createdByName": "Mansh Soni", "insertionOrderId": "65c694f5-9509-4ee0-9458-3a4112369afc", "checkoutSessionId": "cs_test_b1MIoATMJhIcqtlo2XojaBFn8dnMjiQLkEQfr8w4GqxmgTKNhSUJbR36Ma", "platformBreakdown": [{"budget": 500, "platform": "Facebook"}, {"budget": 900, "platform": "Instagram"}]}	2025-09-05 09:10:11.352+00	2025-09-05 09:09:40.519+00	2025-09-05 09:10:17.291+00	\N	https://d97fe8738aefb2595cf3b24811cccb19.r2.cloudflarestorage.com/cpulse-creatives/invoices/2025/09/user-13021275-88df-4d55-99f4-88e7b2b8076a/f4e5b635-92f3-4d67-a6a8-2dff24eb41da.pdf	\N
e167cc15-e829-49df-8163-c613c29637ba	5de5079e-a9c8-4aa0-ae44-7f182424b700	75b2fbc6-41db-46d5-b553-19a349344809	48214b6f-e485-453f-923a-238bacef58bf	1017.45	179.55	0.00	1197.00	USD	succeeded	["Facebook", "Instagram"]	initial	pi_3S3wCxPr4feoR0CM2dQJwsNr	ch_3S3wCxPr4feoR0CM23BbwkVy	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKLni6sUGMgZU0s3i3JE6LBYPERIx4Ym-hKIRjEYjP9thJbfFgGMRVcMAgLTOLGINlgwGzZU66BnpDVXL	\N	\N	\N	{"orgId": "5de5079e-a9c8-4aa0-ae44-7f182424b700", "orgName": "wgsdxc", "createdBy": "773a847a-99cc-41e6-ba13-ffcfcb7e0028", "campaignId": "75b2fbc6-41db-46d5-b553-19a349344809", "createdByName": "Mansh Soni", "insertionOrderId": "48214b6f-e485-453f-923a-238bacef58bf", "checkoutSessionId": "cs_test_b13MPf7eKN2QFGYKZXjkOmC1cYObZOKnyV5Ft3JladcBEuQYPz6XPLWIBR", "platformBreakdown": [{"budget": 697, "platform": "Facebook"}, {"budget": 500, "platform": "Instagram"}]}	2025-09-05 09:45:35.374+00	2025-09-05 09:38:12.373+00	2025-09-05 09:45:40.457+00	\N	https://d97fe8738aefb2595cf3b24811cccb19.r2.cloudflarestorage.com/cpulse-creatives/invoices/2025/09/user-773a847a-99cc-41e6-ba13-ffcfcb7e0028/e167cc15-e829-49df-8163-c613c29637ba.pdf	\N
abbee937-1e8e-4797-b36d-7b0386d3dea4	469f9695-140e-4627-9636-7d670617b454	ca5c9dff-ba6f-460c-816b-18f97319d33c	6f01c711-6ac7-47c5-956c-58471817ec7f	2465.00	435.00	0.00	2900.00	USD	pending	["Facebook", "Instagram", "OTT"]	initial	\N	\N	\N	\N	\N	\N	\N	{"orgId": "469f9695-140e-4627-9636-7d670617b454", "orgName": "Manash", "createdBy": "d1d62436-8860-4fdb-8ae5-dbbd586d1a66", "campaignId": "ca5c9dff-ba6f-460c-816b-18f97319d33c", "createdByName": "Manash Baruah", "insertionOrderId": "6f01c711-6ac7-47c5-956c-58471817ec7f", "checkoutSessionId": "cs_test_b1ec5U5sPDM74t6i9Rmoyp56Uu1p9aJS1HvgkTaYdk7J3MCllVDt4D9nLi", "platformBreakdown": [{"budget": 200, "platform": "Facebook"}, {"budget": 1200, "platform": "Instagram"}, {"budget": 1500, "platform": "OTT"}]}	\N	2025-09-05 17:14:02.219+00	2025-09-05 17:14:04.608+00	\N	\N	\N
e65bca5f-ddef-4337-a936-1f3d9d3261b3	5de5079e-a9c8-4aa0-ae44-7f182424b700	75b2fbc6-41db-46d5-b553-19a349344809	48214b6f-e485-453f-923a-238bacef58bf	1017.45	179.55	0.00	1197.00	USD	succeeded	["Facebook", "Instagram"]	initial	pi_3S3wIzPr4feoR0CM0di9SWs0	ch_3S3wIzPr4feoR0CM0LIP1W4t	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKK7l6sUGMgbH9t-mp3Y6LBY2r2bJT0ffDkIwjl2FldVJ0ver0cYRGEZcA0WFbD0fxOmmM-cK2g-zUxKn	\N	\N	\N	{"orgId": "5de5079e-a9c8-4aa0-ae44-7f182424b700", "orgName": "wgsdxc", "createdBy": "773a847a-99cc-41e6-ba13-ffcfcb7e0028", "campaignId": "75b2fbc6-41db-46d5-b553-19a349344809", "createdByName": "Mansh Soni", "insertionOrderId": "48214b6f-e485-453f-923a-238bacef58bf", "checkoutSessionId": "cs_test_b1Cf8GIiePkTcGzvu5kfCp5CqvS5LXCNK46cYb0Maj8IqOmKhpso3ICtHg", "platformBreakdown": [{"budget": 697, "platform": "Facebook"}, {"budget": 500, "platform": "Instagram"}]}	2025-09-05 09:51:45.809+00	2025-09-05 09:51:24.452+00	2025-09-05 09:51:51.052+00	\N	https://d97fe8738aefb2595cf3b24811cccb19.r2.cloudflarestorage.com/cpulse-creatives/invoices/2025/09/user-773a847a-99cc-41e6-ba13-ffcfcb7e0028/e65bca5f-ddef-4337-a936-1f3d9d3261b3.pdf	\N
a4f63b64-235c-4bec-9994-7219d789ca87	469f9695-140e-4627-9636-7d670617b454	ca5c9dff-ba6f-460c-816b-18f97319d33c	6f01c711-6ac7-47c5-956c-58471817ec7f	2465.00	435.00	0.00	2900.00	USD	pending	["Facebook", "Instagram", "OTT"]	initial	\N	\N	\N	\N	\N	\N	\N	{"orgId": "469f9695-140e-4627-9636-7d670617b454", "orgName": "Manash", "createdBy": "d1d62436-8860-4fdb-8ae5-dbbd586d1a66", "campaignId": "ca5c9dff-ba6f-460c-816b-18f97319d33c", "createdByName": "Manash Baruah", "insertionOrderId": "6f01c711-6ac7-47c5-956c-58471817ec7f", "checkoutSessionId": "cs_test_b1m2g2sKA1elYMBnwMtSC7oixCH3JWezOqVAUcyJEzcEJYyDudwPe59mOW", "platformBreakdown": [{"budget": 200, "platform": "Facebook"}, {"budget": 1200, "platform": "Instagram"}, {"budget": 1500, "platform": "OTT"}]}	\N	2025-09-05 17:18:55.018+00	2025-09-05 17:18:57.757+00	\N	\N	\N
baeae668-394e-4a1a-adec-ad2309afc0bd	469f9695-140e-4627-9636-7d670617b454	ca5c9dff-ba6f-460c-816b-18f97319d33c	6f01c711-6ac7-47c5-956c-58471817ec7f	1360.00	240.00	0.00	1600.00	USD	pending	["Facebook", "Instagram", "OTT"]	initial	\N	\N	\N	\N	\N	\N	\N	{"orgId": "469f9695-140e-4627-9636-7d670617b454", "orgName": "Manash", "createdBy": "d1d62436-8860-4fdb-8ae5-dbbd586d1a66", "campaignId": "ca5c9dff-ba6f-460c-816b-18f97319d33c", "createdByName": "Manash Baruah", "insertionOrderId": "6f01c711-6ac7-47c5-956c-58471817ec7f", "checkoutSessionId": "cs_test_b1kajPgmKUDPB9cgBSWIAwnXdbQM0kfEUOj5MPQmYQKJgYb9RjpPXOE98K", "platformBreakdown": [{"budget": 200, "platform": "Facebook"}, {"budget": 1200, "platform": "Instagram"}, {"budget": 200, "platform": "OTT"}]}	\N	2025-09-05 18:43:19.589+00	2025-09-05 18:43:22.094+00	\N	\N	\N
73edf1b7-1e46-4de6-8b00-d245ab30773e	469f9695-140e-4627-9636-7d670617b454	ca5c9dff-ba6f-460c-816b-18f97319d33c	6f01c711-6ac7-47c5-956c-58471817ec7f	1360.00	240.00	0.00	1600.00	USD	pending	["Facebook", "Instagram", "OTT"]	initial	\N	\N	\N	\N	\N	\N	\N	{"orgId": "469f9695-140e-4627-9636-7d670617b454", "orgName": "Manash", "createdBy": "d1d62436-8860-4fdb-8ae5-dbbd586d1a66", "campaignId": "ca5c9dff-ba6f-460c-816b-18f97319d33c", "createdByName": "Manash Baruah", "insertionOrderId": "6f01c711-6ac7-47c5-956c-58471817ec7f", "checkoutSessionId": "cs_test_b1XAvUObf7hczgv2hNkKSCHuGP3cWKRclvcBsm1Gp8yfuEkqPtK06Cx8Hy", "platformBreakdown": [{"budget": 200, "platform": "Facebook"}, {"budget": 1200, "platform": "Instagram"}, {"budget": 200, "platform": "OTT"}]}	\N	2025-09-05 18:52:39.663+00	2025-09-05 18:52:42.51+00	\N	\N	\N
51b92504-62c4-421a-aa45-99e1e52116e4	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	de3a7eac-07ba-442e-bcc6-9dda2ad191bb	1.70	0.30	0.00	2.00	USD	pending	["OTT"]	initial	\N	\N	\N	\N	\N	\N	\N	{"orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "orgName": "test org", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "campaignId": "e4d73742-dbc1-4edf-9453-887ede8d77bf", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "de3a7eac-07ba-442e-bcc6-9dda2ad191bb", "checkoutSessionId": "cs_test_a1L6wT03oXS3xPIeTcX9GNgO9mKyOYCiGh2zNTREEi8xFk2Hw1X6SjvCMj", "platformBreakdown": [{"budget": 2, "platform": "OTT"}]}	\N	2025-09-09 16:47:53.657+00	2025-09-09 16:48:10.213+00	\N	\N	\N
81b02565-1c53-4bd5-aca9-c11171702579	469f9695-140e-4627-9636-7d670617b454	ca5c9dff-ba6f-460c-816b-18f97319d33c	6f01c711-6ac7-47c5-956c-58471817ec7f	1360.00	240.00	0.00	1600.00	USD	succeeded	["Facebook", "Instagram", "OTT"]	initial	pi_3S450RPr4feoR0CM02tnbIxl	ch_3S450RPr4feoR0CM09tQfcCr	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKNXq7MUGMgYnlOPk57g6LBZnEIg4Mx0ljrw4hnUk9Hdei-KFDwfgqLQcbZDcz3ZEXbj0yXv16_GqJUDR	\N	\N	\N	{"orgId": "469f9695-140e-4627-9636-7d670617b454", "orgName": "Manash", "createdBy": "d1d62436-8860-4fdb-8ae5-dbbd586d1a66", "campaignId": "ca5c9dff-ba6f-460c-816b-18f97319d33c", "createdByName": "Manash Baruah", "insertionOrderId": "6f01c711-6ac7-47c5-956c-58471817ec7f", "checkoutSessionId": "cs_test_b1e01vwM3lZcADpa61QORlYmA7uiCjFEfusG0eE7wKDoRfQHplyqmtJKFR", "platformBreakdown": [{"budget": 200, "platform": "Facebook"}, {"budget": 1200, "platform": "Instagram"}, {"budget": 200, "platform": "OTT"}]}	2025-09-05 19:09:12.606+00	2025-09-05 19:08:41.203+00	2025-09-05 19:09:19.341+00	\N	https://d97fe8738aefb2595cf3b24811cccb19.r2.cloudflarestorage.com/cpulse-creatives/invoices/2025/09/user-d1d62436-8860-4fdb-8ae5-dbbd586d1a66/81b02565-1c53-4bd5-aca9-c11171702579.pdf	\N
1df6ad5b-29f5-4220-bc83-290cf980d39e	469f9695-140e-4627-9636-7d670617b454	4f3c9f4a-ec1c-4ab9-b635-0de65a86a7dc	6f01c711-6ac7-47c5-956c-58471817ec7f	2720.00	480.00	0.00	3200.00	USD	succeeded	["OTT", "Facebook", "Instagram"]	initial	pi_3S457EPr4feoR0CM1nNpWFGS	ch_3S457EPr4feoR0CM1Q7Axr8n	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKPrt7MUGMgZ4p1QO-bY6LBYnqLKpvjRo5W4IpKAdZtqQ0BqsEslb67t48HCg3cS8fZBDYIt5dyJoUYTg	\N	\N	\N	{"orgId": "469f9695-140e-4627-9636-7d670617b454", "orgName": "Manash", "createdBy": "d1d62436-8860-4fdb-8ae5-dbbd586d1a66", "campaignId": "4f3c9f4a-ec1c-4ab9-b635-0de65a86a7dc", "createdByName": "Manash Baruah", "insertionOrderId": "6f01c711-6ac7-47c5-956c-58471817ec7f", "checkoutSessionId": "cs_test_b1FtaLo8LetNllg4je9tX2GJxLlnJxmBMubQ7CxNKeT3o1b9Pq3Zdx86fV", "platformBreakdown": [{"budget": 1000, "platform": "OTT"}, {"budget": 200, "platform": "Facebook"}, {"budget": 2000, "platform": "Instagram"}]}	2025-09-05 19:16:13.389+00	2025-09-05 19:15:39.27+00	2025-09-05 19:16:44.764+00	\N	https://d97fe8738aefb2595cf3b24811cccb19.r2.cloudflarestorage.com/cpulse-creatives/invoices/2025/09/user-d1d62436-8860-4fdb-8ae5-dbbd586d1a66/1df6ad5b-29f5-4220-bc83-290cf980d39e.pdf	\N
d2e3c6c0-7ccb-45ce-9327-9c2ac7a47aee	1d133e85-37ec-411c-8cf2-84f80888e8a6	0d98b402-52f8-4d29-bb2b-c58202fc9f3c	36ead118-cca6-4c97-abdc-11522fd6e9cc	85.00	15.00	0.00	100.00	USD	succeeded	["OTT"]	initial	pi_3S51DEPr4feoR0CM1sDySazr	ch_3S51DEPr4feoR0CM17AoDLYh	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKNa--sUGMgZu33q86Zg6LBbVuEfpSTk-4e-08lKoJtLn9d9yeN_O7e-PzCJUeJIAZkRU3sHGi_mAEWsp	\N	\N	\N	{"orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "orgName": "test org", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "campaignId": "0d98b402-52f8-4d29-bb2b-c58202fc9f3c", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "36ead118-cca6-4c97-abdc-11522fd6e9cc", "checkoutSessionId": "cs_test_a1Rldl70Pn976YSnzoVWvYgr5AtpJ0ZpiD4MkOuirqPDsEjRnDPSs6O5fc", "platformBreakdown": [{"budget": 100, "platform": "OTT"}]}	2025-09-08 09:18:18.559+00	2025-09-08 09:17:51.439+00	2025-09-08 09:18:24.733+00	\N	https://d97fe8738aefb2595cf3b24811cccb19.r2.cloudflarestorage.com/cpulse-creatives/invoices/2025/09/user-3bbf6631-ff9d-492f-8245-1196174d2ae8/d2e3c6c0-7ccb-45ce-9327-9c2ac7a47aee.pdf	\N
3e20b716-c7f3-4ccb-a82b-e3b1b6ea6cbb	1d133e85-37ec-411c-8cf2-84f80888e8a6	0d98b402-52f8-4d29-bb2b-c58202fc9f3c	36ead118-cca6-4c97-abdc-11522fd6e9cc	85.00	15.00	0.00	100.00	USD	succeeded	["OTT"]	initial	pi_3S51FLPr4feoR0CM0i27yTna	ch_3S51FLPr4feoR0CM0kRlRf8B	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKNm_-sUGMgZ6uRjNYyg6LBYyJrCo6m_-QLA9pEWCsDWYwev8FlL9j1V08yvTiAhN65p5YgRFdIbHTYzx	\N	\N	\N	{"orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "orgName": "test org", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "campaignId": "0d98b402-52f8-4d29-bb2b-c58202fc9f3c", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "36ead118-cca6-4c97-abdc-11522fd6e9cc", "checkoutSessionId": "cs_test_a17QJszmey1rBDkej6wofbLXJUBanIQJAitDPf1POPZkQLR9M3wDIzEyVc", "platformBreakdown": [{"budget": 100, "platform": "OTT"}]}	2025-09-08 09:20:28.376+00	2025-09-08 09:20:08.804+00	2025-09-08 09:20:31.79+00	\N	https://d97fe8738aefb2595cf3b24811cccb19.r2.cloudflarestorage.com/cpulse-creatives/invoices/2025/09/user-3bbf6631-ff9d-492f-8245-1196174d2ae8/3e20b716-c7f3-4ccb-a82b-e3b1b6ea6cbb.pdf	\N
1fe55fd9-9b78-484d-bac4-066f47565412	1d133e85-37ec-411c-8cf2-84f80888e8a6	0d98b402-52f8-4d29-bb2b-c58202fc9f3c	36ead118-cca6-4c97-abdc-11522fd6e9cc	85.00	15.00	0.00	100.00	USD	succeeded	["OTT"]	initial	pi_3S52PDPr4feoR0CM1t06LUBA	ch_3S52PDPr4feoR0CM1q33GlY6	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKMHi-sUGMgY7N3BNmOQ6LBaMPFcuXmNOtQrYDWuABhKkPOVgyIP2FpCstedY9Ry0xNPn7DBxZx2PQ34b	\N	\N	\N	{"orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "orgName": "test org", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "campaignId": "0d98b402-52f8-4d29-bb2b-c58202fc9f3c", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "36ead118-cca6-4c97-abdc-11522fd6e9cc", "checkoutSessionId": "cs_test_a1GgAV79JFVEfreeqxu5DODd8l1u8YTcXfXNbFeZzKTgpbUiLSAxHa21oi", "platformBreakdown": [{"budget": 100, "platform": "OTT"}]}	2025-09-08 10:34:44.981+00	2025-09-08 10:32:40.736+00	2025-09-08 10:34:50.34+00	\N	https://d97fe8738aefb2595cf3b24811cccb19.r2.cloudflarestorage.com/cpulse-creatives/invoices/2025/09/user-3bbf6631-ff9d-492f-8245-1196174d2ae8/1fe55fd9-9b78-484d-bac4-066f47565412.pdf	\N
a5358382-1542-45ad-995f-4945bf69c530	1d133e85-37ec-411c-8cf2-84f80888e8a6	e7e2082d-a8e3-4f97-a743-38f334bf0ad7	36ead118-cca6-4c97-abdc-11522fd6e9cc	850.00	150.00	0.00	1000.00	USD	succeeded	["OTT"]	initial	pi_3S52xnPr4feoR0CM1zwu95Q6	ch_3S52xnPr4feoR0CM1xa2JX0B	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKKHz-sUGMgbZuVYweZ06LBZFg9X-RhOF2yJGZ7oq5-9wuy26lVNbr9h9yb2vcVjzE78MwDfxEqfY28zN	\N	\N	\N	{"orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "orgName": "test org", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "campaignId": "e7e2082d-a8e3-4f97-a743-38f334bf0ad7", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "36ead118-cca6-4c97-abdc-11522fd6e9cc", "checkoutSessionId": "cs_test_a1PjWkvL4gPrh6MUqxTbllvxxOAH3FpvyG5QkgwifTLILJhx0gdSz05Pwq", "platformBreakdown": [{"budget": 1000, "platform": "OTT"}]}	2025-09-08 11:10:31.12+00	2025-09-08 11:09:59.04+00	2025-09-08 11:10:37.94+00	\N	https://d97fe8738aefb2595cf3b24811cccb19.r2.cloudflarestorage.com/cpulse-creatives/invoices/2025/09/user-3bbf6631-ff9d-492f-8245-1196174d2ae8/a5358382-1542-45ad-995f-4945bf69c530.pdf	\N
3f865346-e2c9-4916-9779-66f698f0bf0d	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	3bbbb122-293a-4be4-bb94-79dbd0da4f31	38610fdf-1b14-4126-8ad1-ffaafabb9268	85.00	15.00	0.00	100.00	USD	succeeded	["OTT"]	initial	pi_3S55CSPr4feoR0CM1lOqB5eG	ch_3S55CSPr4feoR0CM1i0Amzu6	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKLW2-8UGMgYojLBdHoA6LBbw_7e7Bcs8PFha2RIrHAbQNGgZ3lwBHoOQ54QVqJdnMCcMZzH0w91YJbsF	\N	\N	\N	{"orgId": "b67d4fa5-128b-4252-8a8e-cd4ddf17b40e", "orgName": "test43", "createdBy": "68791c34-6384-4d8f-b544-5188033fa7ac", "campaignId": "3bbbb122-293a-4be4-bb94-79dbd0da4f31", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "38610fdf-1b14-4126-8ad1-ffaafabb9268", "checkoutSessionId": "cs_test_a1YUZH192XicNL0El1UOjhzP9a2HYCib9DJe57J8vw6391GJvxO0wZyho3", "platformBreakdown": [{"budget": 100, "platform": "OTT"}]}	2025-09-08 13:33:46.825+00	2025-09-08 13:33:28.948+00	2025-09-08 13:33:52.179+00	\N	https://d97fe8738aefb2595cf3b24811cccb19.r2.cloudflarestorage.com/cpulse-creatives/invoices/2025/09/user-68791c34-6384-4d8f-b544-5188033fa7ac/3f865346-e2c9-4916-9779-66f698f0bf0d.pdf	\N
94f957c9-55ac-44dc-bda7-eb177a44eaa7	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	de3a7eac-07ba-442e-bcc6-9dda2ad191bb	1.70	0.30	0.00	2.00	USD	succeeded	["OTT"]	initial	pi_3S571uPr4feoR0CM17odBU9E	ch_3S571uPr4feoR0CM16jLrZzq	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKLDt-8UGMga6NgDh6c46LBYGWMXc4vOskMhNXKhImkm8VT4XHcBVgyxMwvR5ANCTeRUkEXxAWrW2C5WT	\N	\N	\N	{"orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "orgName": "test org", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "campaignId": "e4d73742-dbc1-4edf-9453-887ede8d77bf", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "de3a7eac-07ba-442e-bcc6-9dda2ad191bb", "checkoutSessionId": "cs_test_a1WobJKsi5e6S0KA2aPJcJVkblQ99prwyNQ0yc6YMwPTl2njBeNUYzvH7K", "platformBreakdown": [{"budget": 2, "platform": "OTT"}]}	2025-09-08 15:31:01.311+00	2025-09-08 15:30:19.388+00	2025-09-08 15:31:06.373+00	\N	https://d97fe8738aefb2595cf3b24811cccb19.r2.cloudflarestorage.com/cpulse-creatives/invoices/2025/09/user-3bbf6631-ff9d-492f-8245-1196174d2ae8/94f957c9-55ac-44dc-bda7-eb177a44eaa7.pdf	\N
9bea198a-ed27-41de-8ab2-c4fbb8f5e7bb	469f9695-140e-4627-9636-7d670617b454	221e470e-01bd-4c83-8f23-096aaa45beaf	6f01c711-6ac7-47c5-956c-58471817ec7f	1020.00	180.00	0.00	1200.00	USD	succeeded	["OTT", "Facebook"]	initial	pi_3S574pPr4feoR0CM1pgvj5T6	ch_3S574pPr4feoR0CM1kTq8s4Y	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKOXu-8UGMgY4xnmxoQo6LBZvxnnVG0OboOWvNz8dtUjsT2NQgESMk1D11mIh7mrd9pq8lOzV3us3AuQM	\N	\N	\N	{"orgId": "469f9695-140e-4627-9636-7d670617b454", "orgName": "Manash", "createdBy": "d1d62436-8860-4fdb-8ae5-dbbd586d1a66", "campaignId": "221e470e-01bd-4c83-8f23-096aaa45beaf", "createdByName": "Manash Baruah", "insertionOrderId": "6f01c711-6ac7-47c5-956c-58471817ec7f", "checkoutSessionId": "cs_test_b1n9mSJQT2MhtsermE0inBLT807NIqMWLyJzgokqMbprE5EcZrVmnHaQDo", "platformBreakdown": [{"budget": 1000, "platform": "OTT"}, {"budget": 200, "platform": "Facebook"}]}	2025-09-08 15:34:00.875+00	2025-09-08 15:33:19.357+00	2025-09-08 15:34:04.35+00	\N	https://d97fe8738aefb2595cf3b24811cccb19.r2.cloudflarestorage.com/cpulse-creatives/invoices/2025/09/user-d1d62436-8860-4fdb-8ae5-dbbd586d1a66/9bea198a-ed27-41de-8ab2-c4fbb8f5e7bb.pdf	\N
3a60863c-12c3-483d-96dd-4301dbddb441	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	de3a7eac-07ba-442e-bcc6-9dda2ad191bb	1.70	0.30	0.00	2.00	USD	succeeded	["OTT"]	initial	pi_3S575pPr4feoR0CM0POLP7ua	ch_3S575pPr4feoR0CM0gRe6XS8	\N	https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVCenVQcjRmZW9SMENNKKLv-8UGMgZNX6eetf06LBZaWyYnmca23t3X11ZzEos37ijbAUVQ0f0rWFe1PKNEtsJr8J1vOQXg7xyI	\N	\N	\N	{"orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "orgName": "test org", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "campaignId": "e4d73742-dbc1-4edf-9453-887ede8d77bf", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "de3a7eac-07ba-442e-bcc6-9dda2ad191bb", "checkoutSessionId": "cs_test_a1VfXa45XaHUArEwJ96CjQOUaJOZtyqP25KEe7rwX3go1oGAqZ7S4CIgV4", "platformBreakdown": [{"budget": 2, "platform": "OTT"}]}	2025-09-08 15:35:02+00	2025-09-08 15:34:41.452+00	2025-09-08 15:35:05.563+00	\N	https://d97fe8738aefb2595cf3b24811cccb19.r2.cloudflarestorage.com/cpulse-creatives/invoices/2025/09/user-3bbf6631-ff9d-492f-8245-1196174d2ae8/3a60863c-12c3-483d-96dd-4301dbddb441.pdf	\N
a7690bf0-7388-4d20-81d0-e80ccfa40d59	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	de3a7eac-07ba-442e-bcc6-9dda2ad191bb	1.70	0.30	0.00	2.00	USD	pending	["OTT"]	initial	\N	\N	\N	\N	\N	\N	\N	{"orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "orgName": "test org", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "campaignId": "e4d73742-dbc1-4edf-9453-887ede8d77bf", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "de3a7eac-07ba-442e-bcc6-9dda2ad191bb", "checkoutSessionId": "cs_test_a17hdraL7mzkqE8el0yyPt9eMPcVODwkyfiiAkMCqyiCRhKhX4llsFyywD", "platformBreakdown": [{"budget": 2, "platform": "OTT"}]}	\N	2025-09-09 14:47:15+00	2025-09-09 14:47:19.254+00	\N	\N	\N
99f911c8-5bf0-44c6-be4e-79bb225e17d6	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	de3a7eac-07ba-442e-bcc6-9dda2ad191bb	1.70	0.30	0.00	2.00	USD	pending	["OTT"]	initial	\N	\N	\N	\N	\N	\N	\N	{"orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "orgName": "test org", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "campaignId": "e4d73742-dbc1-4edf-9453-887ede8d77bf", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "de3a7eac-07ba-442e-bcc6-9dda2ad191bb", "checkoutSessionId": "cs_test_a1efB9wOg7j0REzA54p9qHeSgqApGLGreLjzVeTaH3qPkq3fHujhJcvKJt", "platformBreakdown": [{"budget": 2, "platform": "OTT"}]}	\N	2025-09-09 14:54:16.238+00	2025-09-09 14:54:18.207+00	\N	\N	\N
102be69b-0950-4e76-85f0-92a8886c4ebc	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	de3a7eac-07ba-442e-bcc6-9dda2ad191bb	1.70	0.30	0.00	2.00	USD	pending	["OTT"]	initial	\N	\N	\N	\N	\N	\N	\N	{"orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "orgName": "test org", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "campaignId": "e4d73742-dbc1-4edf-9453-887ede8d77bf", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "de3a7eac-07ba-442e-bcc6-9dda2ad191bb", "checkoutSessionId": "cs_test_a1tw3O1fMru13Qnms5NY6MoTE8GWaJCCwVcTESjBephRVKTuJz0iTVwKyn", "platformBreakdown": [{"budget": 2, "platform": "OTT"}]}	\N	2025-09-09 14:58:01.999+00	2025-09-09 14:58:04.803+00	\N	\N	\N
24186675-d4eb-4164-b561-b14f31bd7e9b	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	de3a7eac-07ba-442e-bcc6-9dda2ad191bb	1.70	0.30	0.00	2.00	USD	pending	["OTT"]	initial	\N	\N	\N	\N	\N	\N	\N	{"orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "orgName": "test org", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "campaignId": "e4d73742-dbc1-4edf-9453-887ede8d77bf", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "de3a7eac-07ba-442e-bcc6-9dda2ad191bb", "checkoutSessionId": "cs_test_a1q8saFr45blMV2OOyRQHCSIYUZc80PidpKdDCam5bQA2kzqTCQRBkjUqH", "platformBreakdown": [{"budget": 2, "platform": "OTT"}]}	\N	2025-09-09 15:01:43.834+00	2025-09-09 15:01:45.891+00	\N	\N	\N
4df21cfb-8de6-42a8-ba85-59c641c0f860	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	de3a7eac-07ba-442e-bcc6-9dda2ad191bb	1.70	0.30	0.00	2.00	USD	pending	["OTT"]	initial	\N	\N	\N	\N	\N	\N	\N	{"orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "orgName": "test org", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "campaignId": "e4d73742-dbc1-4edf-9453-887ede8d77bf", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "de3a7eac-07ba-442e-bcc6-9dda2ad191bb", "checkoutSessionId": "cs_test_a1iyfRufEi8Mbq2YaPT2xhqZUpGJp0p73ORo8ZQ15ERWL59qmLQZUG09WC", "platformBreakdown": [{"budget": 2, "platform": "OTT"}]}	\N	2025-09-09 15:05:01.339+00	2025-09-09 15:05:03.974+00	\N	\N	\N
64c731df-1d72-4c55-af5f-3be2d3547c20	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	de3a7eac-07ba-442e-bcc6-9dda2ad191bb	1.70	0.30	0.00	2.00	USD	pending	["OTT"]	initial	\N	\N	\N	\N	\N	\N	\N	{"orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "orgName": "test org", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "campaignId": "e4d73742-dbc1-4edf-9453-887ede8d77bf", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "de3a7eac-07ba-442e-bcc6-9dda2ad191bb", "checkoutSessionId": "cs_test_a1A6GEe76SeENA8As1LDDpBBhn9SJbom2SyS1adg8d6K1wodFl9y3IMQPV", "platformBreakdown": [{"budget": 2, "platform": "OTT"}]}	\N	2025-09-09 16:56:57.011+00	2025-09-09 16:57:05.14+00	\N	\N	\N
5cc3ff0e-8e79-42ce-8b07-a3d28472c095	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	de3a7eac-07ba-442e-bcc6-9dda2ad191bb	1.70	0.30	0.00	2.00	USD	pending	["OTT"]	initial	\N	\N	\N	\N	\N	\N	\N	{"orgId": "1d133e85-37ec-411c-8cf2-84f80888e8a6", "orgName": "test org", "createdBy": "3bbf6631-ff9d-492f-8245-1196174d2ae8", "campaignId": "e4d73742-dbc1-4edf-9453-887ede8d77bf", "createdByName": "Soumya Ranjan Behera", "insertionOrderId": "de3a7eac-07ba-442e-bcc6-9dda2ad191bb", "checkoutSessionId": "cs_test_a1XHUu6Dvo6vBAniDfaFAUz0HDsdU8WyPNYlYKaDLr7jv0IdK85nehJUIm", "platformBreakdown": [{"budget": 2, "platform": "OTT"}]}	\N	2025-09-09 17:10:33.326+00	2025-09-09 17:10:46.279+00	\N	\N	\N
\.


--
-- Data for Name: payment_allocations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."payment_allocations" ("id", "payment_log_id", "org_id", "campaign_id", "insertion_order_id", "amount_media", "fee_cpg", "tax_amount", "amount_total", "currency", "status", "payment_type", "processed_at", "created_at", "updated_at") FROM stdin;
3f5795d3-a3a2-4386-9f67-15219e004d07	d07f7b47-01ff-4e8d-a0c7-462a55a212d3	ce691bdf-681e-43de-ba03-971fefaa797a	4b81e203-deb5-4890-833b-06293b8ec37c	65c694f5-9509-4ee0-9458-3a4112369afc	2975.00	525.00	0.00	3500.00	USD	succeeded	initial	2025-09-05 04:13:46.397+00	2025-09-05 04:13:46.408+00	2025-09-05 04:13:46.408+00
2ee06afd-5499-4c7e-95c1-600f9cd18ee6	af836841-a736-4d5c-8f0d-45176de6ed6c	ce691bdf-681e-43de-ba03-971fefaa797a	adb287bf-7f2f-41af-9b7a-6f89e78357cf	65c694f5-9509-4ee0-9458-3a4112369afc	1105.00	195.00	0.00	1300.00	USD	succeeded	initial	2025-09-05 04:28:18.158+00	2025-09-05 04:28:18.16+00	2025-09-05 04:28:18.16+00
f7a18a0c-84b4-415c-8dc3-d0c9486c4669	c7f3109a-e66b-46f8-8ed6-112b7ca5ff4a	ce691bdf-681e-43de-ba03-971fefaa797a	370c8c2c-fa6f-4e92-a664-a8c75f9231f8	65c694f5-9509-4ee0-9458-3a4112369afc	1105.00	195.00	0.00	1300.00	USD	succeeded	initial	2025-09-05 08:47:32.313+00	2025-09-05 08:47:32.314+00	2025-09-05 08:47:32.314+00
d4fcc8bd-d3f9-4d0d-a1f7-fc58f8b8ac51	e880911d-02a8-48ed-9b8e-b615cb0d8460	ce691bdf-681e-43de-ba03-971fefaa797a	41af3f95-231b-4b07-bca3-97f4c97093a0	65c694f5-9509-4ee0-9458-3a4112369afc	425.00	75.00	0.00	500.00	USD	succeeded	initial	2025-09-05 08:54:33.928+00	2025-09-05 08:54:33.93+00	2025-09-05 08:54:33.93+00
5e419e01-c306-4c6d-b096-ab3b7a910152	ad76cc3f-6343-4bd3-a09a-9b471a3db53c	ce691bdf-681e-43de-ba03-971fefaa797a	41af3f95-231b-4b07-bca3-97f4c97093a0	65c694f5-9509-4ee0-9458-3a4112369afc	425.00	75.00	0.00	500.00	USD	succeeded	initial	2025-09-05 08:59:39.999+00	2025-09-05 08:59:40.002+00	2025-09-05 08:59:40.002+00
3640eb79-6dc0-49b9-b1c2-775d89191535	f4e5b635-92f3-4d67-a6a8-2dff24eb41da	ce691bdf-681e-43de-ba03-971fefaa797a	41af3f95-231b-4b07-bca3-97f4c97093a0	65c694f5-9509-4ee0-9458-3a4112369afc	1190.00	210.00	0.00	1400.00	USD	succeeded	initial	2025-09-05 09:10:11.968+00	2025-09-05 09:10:11.969+00	2025-09-05 09:10:11.969+00
66b8daac-370c-44fe-9026-77dc4024e7a0	e167cc15-e829-49df-8163-c613c29637ba	5de5079e-a9c8-4aa0-ae44-7f182424b700	75b2fbc6-41db-46d5-b553-19a349344809	48214b6f-e485-453f-923a-238bacef58bf	1017.45	179.55	0.00	1197.00	USD	succeeded	initial	2025-09-05 09:45:36.19+00	2025-09-05 09:45:36.191+00	2025-09-05 09:45:36.191+00
0088e3e0-dbb5-43dd-b5a2-f39c4a8abdad	e65bca5f-ddef-4337-a936-1f3d9d3261b3	5de5079e-a9c8-4aa0-ae44-7f182424b700	75b2fbc6-41db-46d5-b553-19a349344809	48214b6f-e485-453f-923a-238bacef58bf	1017.45	179.55	0.00	1197.00	USD	succeeded	initial	2025-09-05 09:51:46.374+00	2025-09-05 09:51:46.388+00	2025-09-05 09:51:46.388+00
0ca45c5c-d603-4736-8ae2-2a34a79d4193	81b02565-1c53-4bd5-aca9-c11171702579	469f9695-140e-4627-9636-7d670617b454	ca5c9dff-ba6f-460c-816b-18f97319d33c	6f01c711-6ac7-47c5-956c-58471817ec7f	1360.00	240.00	0.00	1600.00	USD	succeeded	initial	2025-09-05 19:09:13.119+00	2025-09-05 19:09:13.121+00	2025-09-05 19:09:13.121+00
b9067510-e26e-45f7-a7d2-20daea8430c5	1df6ad5b-29f5-4220-bc83-290cf980d39e	469f9695-140e-4627-9636-7d670617b454	4f3c9f4a-ec1c-4ab9-b635-0de65a86a7dc	6f01c711-6ac7-47c5-956c-58471817ec7f	2720.00	480.00	0.00	3200.00	USD	succeeded	initial	2025-09-05 19:16:14.153+00	2025-09-05 19:16:14.154+00	2025-09-05 19:16:14.154+00
f965b13c-8c19-4175-8c9b-c1d32b5fc4b6	d2e3c6c0-7ccb-45ce-9327-9c2ac7a47aee	1d133e85-37ec-411c-8cf2-84f80888e8a6	0d98b402-52f8-4d29-bb2b-c58202fc9f3c	36ead118-cca6-4c97-abdc-11522fd6e9cc	85.00	15.00	0.00	100.00	USD	succeeded	initial	2025-09-08 09:18:19.546+00	2025-09-08 09:18:19.549+00	2025-09-08 09:18:19.549+00
cc7e8a8b-2c5d-48c1-b572-a957ce5f3729	3e20b716-c7f3-4ccb-a82b-e3b1b6ea6cbb	1d133e85-37ec-411c-8cf2-84f80888e8a6	0d98b402-52f8-4d29-bb2b-c58202fc9f3c	36ead118-cca6-4c97-abdc-11522fd6e9cc	85.00	15.00	0.00	100.00	USD	succeeded	initial	2025-09-08 09:20:28.848+00	2025-09-08 09:20:28.85+00	2025-09-08 09:20:28.85+00
f1339801-a117-42df-8bd2-dd38e837cec0	1fe55fd9-9b78-484d-bac4-066f47565412	1d133e85-37ec-411c-8cf2-84f80888e8a6	0d98b402-52f8-4d29-bb2b-c58202fc9f3c	36ead118-cca6-4c97-abdc-11522fd6e9cc	85.00	15.00	0.00	100.00	USD	succeeded	initial	2025-09-08 10:34:45.543+00	2025-09-08 10:34:45.545+00	2025-09-08 10:34:45.545+00
47a96e49-f243-4b04-9f6e-0618ef8c083e	a5358382-1542-45ad-995f-4945bf69c530	1d133e85-37ec-411c-8cf2-84f80888e8a6	e7e2082d-a8e3-4f97-a743-38f334bf0ad7	36ead118-cca6-4c97-abdc-11522fd6e9cc	850.00	150.00	0.00	1000.00	USD	succeeded	initial	2025-09-08 11:10:31.765+00	2025-09-08 11:10:31.766+00	2025-09-08 11:10:31.766+00
2bd9cf2d-660d-4e1b-b6f2-d58418bbfc0f	bbdf3463-78c9-4a98-9130-ed56a493d666	469f9695-140e-4627-9636-7d670617b454	022c7fda-8348-46b0-898c-7c855e5b0234	6f01c711-6ac7-47c5-956c-58471817ec7f	850.00	150.00	0.00	1000.00	USD	succeeded	initial	2025-09-08 12:30:43.918+00	2025-09-08 12:30:43.919+00	2025-09-08 12:30:43.919+00
831c052a-ad69-43f9-b6cc-dee134f4530e	3f865346-e2c9-4916-9779-66f698f0bf0d	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	3bbbb122-293a-4be4-bb94-79dbd0da4f31	38610fdf-1b14-4126-8ad1-ffaafabb9268	85.00	15.00	0.00	100.00	USD	succeeded	initial	2025-09-08 13:33:47.579+00	2025-09-08 13:33:47.58+00	2025-09-08 13:33:47.58+00
c585de66-3168-4bbb-a8bb-3f4002adc4f7	94f957c9-55ac-44dc-bda7-eb177a44eaa7	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	de3a7eac-07ba-442e-bcc6-9dda2ad191bb	1.70	0.30	0.00	2.00	USD	succeeded	initial	2025-09-08 15:31:01.973+00	2025-09-08 15:31:01.976+00	2025-09-08 15:31:01.976+00
171c15d9-5138-4b0f-9219-6fba826d9683	9bea198a-ed27-41de-8ab2-c4fbb8f5e7bb	469f9695-140e-4627-9636-7d670617b454	221e470e-01bd-4c83-8f23-096aaa45beaf	6f01c711-6ac7-47c5-956c-58471817ec7f	1020.00	180.00	0.00	1200.00	USD	succeeded	initial	2025-09-08 15:34:01.43+00	2025-09-08 15:34:01.431+00	2025-09-08 15:34:01.431+00
61f7bace-1eaf-4df3-a404-7fa168d93a2b	3a60863c-12c3-483d-96dd-4301dbddb441	1d133e85-37ec-411c-8cf2-84f80888e8a6	e4d73742-dbc1-4edf-9453-887ede8d77bf	de3a7eac-07ba-442e-bcc6-9dda2ad191bb	1.70	0.30	0.00	2.00	USD	succeeded	initial	2025-09-08 15:35:02.486+00	2025-09-08 15:35:02.488+00	2025-09-08 15:35:02.488+00
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."payments" ("id", "org_id", "type", "amount", "currency", "payment_data", "processed_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: performance_metrics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."performance_metrics" ("id", "org_id", "environment", "service", "operation", "trace_id", "response_time_ms", "db_query_time_ms", "external_api_time_ms", "memory_usage_mb", "cpu_usage_percent", "request_size", "response_size", "concurrent_requests", "success_count", "error_count", "timeout_count", "region", "server_instance", "minute_bucket", "hour_bucket", "day_bucket", "created_at") FROM stdin;
\.


--
-- Data for Name: permission_audit_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."permission_audit_logs" ("id", "org_id", "target_user_id", "changed_by", "role_id", "module_id", "permission_id", "action", "previous_value", "new_value", "reason", "created_at") FROM stdin;
b4cc07df-12f1-4630-a413-e125d52f535c	0e86bc51-138a-498b-8e6a-1d30d380baa5	099365f9-7db0-4118-95cd-66d72b17e252	099365f9-7db0-4118-95cd-66d72b17e252	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d	4636adf0-3103-4121-9286-e7c4426bf2db	a72c907a-47be-43be-8089-3e1429c11b34	revoked	f	f	Testing with real Clerk token	2025-09-05 10:29:49.721+00
8470e41b-48e2-4ebb-bc36-0681f560d465	0e86bc51-138a-498b-8e6a-1d30d380baa5	099365f9-7db0-4118-95cd-66d72b17e252	099365f9-7db0-4118-95cd-66d72b17e252	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d	4636adf0-3103-4121-9286-e7c4426bf2db	a72c907a-47be-43be-8089-3e1429c11b34	granted	f	t	Testing with real Clerk token	2025-09-05 10:57:18.326+00
e292dedd-9f2b-49a3-aa5f-def8b1c13f5a	0e86bc51-138a-498b-8e6a-1d30d380baa5	099365f9-7db0-4118-95cd-66d72b17e252	099365f9-7db0-4118-95cd-66d72b17e252	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d	4636adf0-3103-4121-9286-e7c4426bf2db	a72c907a-47be-43be-8089-3e1429c11b34	revoked	t	f	Testing with real Clerk token	2025-09-05 11:14:12.843+00
66f62073-c810-4102-81be-8f451909d4df	0e86bc51-138a-498b-8e6a-1d30d380baa5	099365f9-7db0-4118-95cd-66d72b17e252	099365f9-7db0-4118-95cd-66d72b17e252	73c170fb-9448-49aa-8837-1e639a4eeaa8	4636adf0-3103-4121-9286-e7c4426bf2db	a72c907a-47be-43be-8089-3e1429c11b34	revoked	f	f	Testing with real Clerk token	2025-09-05 13:59:06.778+00
21e8f84b-1e49-4f0a-94d5-3ddd6d38881b	0e86bc51-138a-498b-8e6a-1d30d380baa5	099365f9-7db0-4118-95cd-66d72b17e252	099365f9-7db0-4118-95cd-66d72b17e252	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d	4636adf0-3103-4121-9286-e7c4426bf2db	a72c907a-47be-43be-8089-3e1429c11b34	granted	f	t	Testing with real Clerk token	2025-09-05 14:06:10.116+00
f7d38f8c-b1f6-4a3b-9eb9-92095a4f4f9b	0e86bc51-138a-498b-8e6a-1d30d380baa5	099365f9-7db0-4118-95cd-66d72b17e252	099365f9-7db0-4118-95cd-66d72b17e252	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d	4636adf0-3103-4121-9286-e7c4426bf2db	a72c907a-47be-43be-8089-3e1429c11b34	revoked	t	f	Disabled by admin via permission management	2025-09-05 15:13:02.168+00
112a45f2-8a90-4976-8a59-6a59811e588b	0e86bc51-138a-498b-8e6a-1d30d380baa5	099365f9-7db0-4118-95cd-66d72b17e252	099365f9-7db0-4118-95cd-66d72b17e252	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d	4636adf0-3103-4121-9286-e7c4426bf2db	a72c907a-47be-43be-8089-3e1429c11b34	granted	f	t	Enabled by admin via permission management	2025-09-05 15:21:20.671+00
e2a032fb-74eb-4aa3-999a-6f656c574fd5	0e86bc51-138a-498b-8e6a-1d30d380baa5	099365f9-7db0-4118-95cd-66d72b17e252	099365f9-7db0-4118-95cd-66d72b17e252	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d	4636adf0-3103-4121-9286-e7c4426bf2db	a72c907a-47be-43be-8089-3e1429c11b34	revoked	t	f	Disabled by admin via permission management	2025-09-05 15:59:13.74+00
94b58338-a55f-4dfa-896f-3944d1c12579	0e86bc51-138a-498b-8e6a-1d30d380baa5	099365f9-7db0-4118-95cd-66d72b17e252	099365f9-7db0-4118-95cd-66d72b17e252	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d	4636adf0-3103-4121-9286-e7c4426bf2db	a72c907a-47be-43be-8089-3e1429c11b34	granted	f	t	Enabled by admin via permission management	2025-09-05 16:10:22.227+00
a5c0773f-5375-438e-9c83-d39be69a5f9a	0e86bc51-138a-498b-8e6a-1d30d380baa5	099365f9-7db0-4118-95cd-66d72b17e252	099365f9-7db0-4118-95cd-66d72b17e252	b9a94477-a95b-4d4a-b7d9-f0bc0a1f0d7d	d68be727-e3de-4cbd-b045-df3344b94e7c	63a284c4-3270-452a-8ef8-3f401234fdde	granted	f	t	Enabled by admin via permission management	2025-09-05 16:17:11.527+00
c3eaf880-00eb-44fa-841d-4c36838ede21	0e86bc51-138a-498b-8e6a-1d30d380baa5	099365f9-7db0-4118-95cd-66d72b17e252	099365f9-7db0-4118-95cd-66d72b17e252	73c170fb-9448-49aa-8837-1e639a4eeaa8	4636adf0-3103-4121-9286-e7c4426bf2db	a72c907a-47be-43be-8089-3e1429c11b34	granted	f	t	Enabled by admin via permission management	2025-09-09 15:12:19.482+00
\.


--
-- Data for Name: phone_numbers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."phone_numbers" ("id", "user_id", "phone_number", "verification_status", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: platform_creatives; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."platform_creatives" ("id", "creative_id", "platform", "platform_creative_id", "status", "platform_status", "platform_specific_data", "last_synced_at", "created_at", "updated_at", "assigned_by", "campaign_id", "is_active", "org_id", "position", "sync_logs", "variations") FROM stdin;
7b00f825-9072-444b-8706-d9fb46e9701e	513301c2-e384-4320-9a72-330e6078f8bd	iqm	212179	pending	pending	{"failedData": {}, "successData": {"I001": "212179"}}	\N	2025-09-05 10:02:26.69+00	2025-09-05 10:02:26.69+00	\N	\N	t	1d133e85-37ec-411c-8cf2-84f80888e8a6	0	[]	\N
ff844291-9703-4fb5-a554-9adbf6ec57d0	6ca076de-312e-4af5-baaa-f4f04572af06	iqm	212180	pending	pending	{"failedData": {}, "successData": {"I001": "212180"}}	\N	2025-09-05 11:51:17.553+00	2025-09-05 11:51:17.553+00	\N	\N	t	469f9695-140e-4627-9636-7d670617b454	0	[]	\N
e240090e-8d58-4b84-be7c-480c23792189	6021a6ef-201b-479a-b8c6-9098c8144494	iqm	212182	pending	pending	{"failedData": {}, "successData": {"I001": "212182"}}	\N	2025-09-05 16:44:14.464+00	2025-09-05 16:44:14.464+00	\N	\N	t	f4ae3849-725c-4323-b4fb-83d10ca38ce9	0	[]	\N
c414f0ac-8437-4f00-9a88-77282ae8e591	0bfc6241-251b-4273-85dc-b100b9261ede	iqm	212183	pending	pending	{"failedData": {}, "successData": {"I001": "212183"}}	\N	2025-09-05 16:50:45.564+00	2025-09-05 16:50:45.564+00	\N	\N	t	f4ae3849-725c-4323-b4fb-83d10ca38ce9	0	[]	\N
ca85578a-c607-4dd9-bfea-678df0116927	62b7b36c-4430-433a-9c9e-81774965a4bb	iqm	212243	pending	pending	{"failedData": {}, "successData": {"I001": "212243"}}	\N	2025-09-08 12:01:11.616+00	2025-09-08 12:01:11.616+00	\N	\N	t	1d133e85-37ec-411c-8cf2-84f80888e8a6	0	[]	\N
93ae4c65-ff0a-4556-b739-7598c38b9f99	838300ea-6a6a-4d14-b44c-cf02ee3669f7	iqm	212244	pending	pending	{"failedData": {}, "successData": {"I001": "212244"}}	\N	2025-09-08 12:25:54.274+00	2025-09-08 12:25:54.274+00	\N	\N	t	469f9695-140e-4627-9636-7d670617b454	0	[]	\N
67b8e9e7-0b69-451f-a6f5-812b61bddc01	fb12956e-b6f9-4f3c-bbe8-7623d184cf8d	iqm	212253	pending	pending	{"failedData": {}, "successData": {"I001": "212253"}}	\N	2025-09-08 13:32:35.251+00	2025-09-08 13:32:35.251+00	\N	\N	t	b67d4fa5-128b-4252-8a8e-cd4ddf17b40e	0	[]	\N
927670c6-dfb7-475e-b452-86a878db2353	369f65d4-b89b-4144-9a8e-9931d6f69bf3	iqm	212343	pending	pending	{"failedData": {}, "successData": {"I001": "212343"}}	\N	2025-09-09 12:47:14.954+00	2025-09-09 12:47:14.954+00	\N	\N	t	f4ae3849-725c-4323-b4fb-83d10ca38ce9	0	[]	\N
\.


--
-- Data for Name: platform_credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."platform_credentials" ("id", "org_id", "platform", "type", "credentials", "status", "expires_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: real_time_metrics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."real_time_metrics" ("id", "org_id", "campaign_id", "insertion_order_id", "platform", "metric_type", "value", "timestamp", "hour_bucket", "day_bucket") FROM stdin;
\.


--
-- Data for Name: refunds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."refunds" ("id", "payment_log_id", "payment_allocation_id", "campaign_id", "amount_media", "fee_cpg", "amount_total", "currency", "reason", "status", "description", "stripe_refund_id", "metadata", "failure_reason", "refunded_by", "processed_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."reports" ("id", "org_id", "created_by", "name", "description", "report_type", "status", "format", "parameters", "file_path", "download_url", "scheduled_at", "generated_at", "expires_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."settings" ("id", "scope", "scope_id", "key", "value", "category", "metadata", "created_by", "updated_by", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sidebar_sections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."sidebar_sections" ("id", "section_id", "heading_text", "section_icon", "tooltip_text", "roles", "is_active", "created_at", "updated_at") FROM stdin;
11eaa5f2-f210-4a3e-b5bf-5895aa890529	1	Dashboard	solar:layers-line-duotone	Dashboards	{admin,manager,agency_admin,agency_member,viewer}	t	2025-09-05 04:03:51.499	2025-09-05 04:03:51.499
5272ffb4-20f5-47f8-b80e-bd2e0d9ed704	2	Insertion Order	solar:mirror-left-line-duotone	Insertion Order	{admin,manager,agency_admin,agency_member}	t	2025-09-05 04:03:53.862	2025-09-05 04:03:53.862
7f76c9c3-e18f-414c-928f-131bac1fe417	3	Analytics	solar:graph-new-up-line-duotone	Analytics	{admin,manager,agency_admin,agency_member}	t	2025-09-05 04:03:56.435	2025-09-05 04:03:56.435
bbed85a9-93de-467b-8ef0-2be27cf4293f	4	Reports	solar:document-text-line-duotone	Reports	{admin,manager,agency_admin}	t	2025-09-05 04:03:58.98	2025-09-05 04:03:58.98
1c7c5032-4d38-49a2-b018-5fa25b84c3cc	5	Settings	solar:settings-minimalistic-line-duotone	Settings	{admin,manager,agency_admin,agency_member,viewer}	t	2025-09-05 04:04:01.215	2025-09-05 04:04:01.215
\.


--
-- Data for Name: stripe_webhook_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."stripe_webhook_events" ("id", "stripe_event_id", "event_type", "processed", "processed_at", "attempts", "event_data", "error_message", "created_at") FROM stdin;
\.


--
-- Data for Name: targeting_criteria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."targeting_criteria" ("id", "platform_specific_campaign_id", "line_item_id", "platform_targeting_id", "targeting_type", "targeting_value", "operator_type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."transactions" ("id", "org_id", "payment_id", "type", "amount", "currency", "status", "reference", "metadata", "processed_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: unified_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."unified_logs" ("id", "log_type", "status", "level", "trace_id", "org_id", "user_id", "session_id", "environment", "source_service", "source_function", "source_file", "third_party_service", "api_endpoint", "http_method", "http_status_code", "function_name", "region", "runtime", "is_cold_start", "request_data", "response_data", "duration_ms", "memory_usage_mb", "error_message", "error_code", "error_type", "stack_trace", "campaign_id", "insertion_order_id", "operation_type", "message", "metadata", "rate_limit_remaining", "quota_used", "retry_attempt", "initiated_at", "completed_at", "created_at") FROM stdin;
\.


--
-- Data for Name: user_email_preferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_email_preferences" ("id", "user_id", "org_id", "enable_campaign_alerts", "enable_onboarding_emails", "enable_marketing_emails", "enable_system_emails", "alert_frequency", "unsubscribe_token", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: user_preferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_preferences" ("user_id", "theme", "notification_settings", "dashboard_layout", "timezone", "currency", "created_at", "updated_at") FROM stdin;
a9b07853-cb7a-4e03-89af-74aaa93ddeaa	dark	{"sms": false, "push": true, "email": true}	\N	America/Los_Angeles	AUD	2025-09-08 13:48:38.815+00	2025-09-08 14:32:39.412+00
\.


--
-- Data for Name: wallets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."wallets" ("id", "org_id", "balance", "currency", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: wallet_transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."wallet_transactions" ("id", "wallet_id", "transaction_type", "amount", "status", "description", "reference", "metadata", "processed_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: web3_wallets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."web3_wallets" ("id", "user_id", "wallet_address", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: x_configurations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."x_configurations" ("id", "org_id", "account_id", "api_credentials", "default_settings", "funding_instruments", "status", "last_sync_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: x_campaigns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."x_campaigns" ("id", "campaign_id", "x_configuration_id", "platform_campaign_id", "funding_instrument_id", "daily_budget_amount_local_micro", "total_budget_amount_local_micro", "budget_optimization", "standard_delivery", "frequency_cap", "status", "platform_status", "server_logs", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: x_line_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."x_line_items" ("id", "x_campaign_id", "platform_line_item_id", "name", "product_type", "placements", "bid_amount_local_micro", "bid_strategy", "goal", "advertiser_domain", "status", "platform_status", "server_logs", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: x_analytics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."x_analytics" ("id", "x_campaign_id", "x_line_item_id", "date", "impressions", "clicks", "spend", "engagements", "retweets", "likes", "follows", "replies", "card_engagements", "url_clicks", "qualified_impressions", "video_views", "raw_data", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
whitelabelled-agency	whitelabelled-agency	\N	2025-06-10 10:15:13.019445+00	2025-06-10 10:15:13.019445+00	t	f	2097152	\N	\N	STANDARD
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("id", "type", "format", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata", "level") FROM stdin;
07f0920a-4b16-4351-9d8d-d3776763e869	whitelabelled-agency	whitelabelled-agency/897ac16e-d693-4787-a60f-e4a6ca9528ef/logo/agency-logo-1750265124496-z2vhdb.png	\N	2025-06-18 16:45:26.320231+00	2025-08-28 13:19:46.314777+00	2025-06-18 16:45:26.320231+00	{"eTag": "\\"4612de734af31d3f108812dd471ce532\\"", "size": 48700, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-06-18T16:45:26.000Z", "contentLength": 48700, "httpStatusCode": 200}	04b6e4b0-f81b-46ab-a1a6-e55fe98e9835	\N	{}	4
f32f0a0a-96bc-4385-a217-2a322649d6a0	whitelabelled-agency	whitelabelled-agency/temp-1749553680527-ax1wwuso/logo/logo-1749553680527-xbs3d9-star.png	\N	2025-06-10 11:18:27.720711+00	2025-08-28 13:19:46.314777+00	2025-06-10 11:18:27.720711+00	{"eTag": "\\"0c8b0ed09d9a66e364f4937626d96be0\\"", "size": 27678, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-06-10T11:18:28.000Z", "contentLength": 27678, "httpStatusCode": 200}	714b6d2e-0834-4d46-bfc9-455f7f54e501	\N	{}	4
1655ccb9-b376-4bf7-aa8e-4d6bd73b0c3d	whitelabelled-agency	whitelabelled-agency/temp-1749576368355-agjseoea/logo/logo-1749576368355-cwzzhw-image__2_.png	\N	2025-06-10 17:26:09.149198+00	2025-08-28 13:19:46.314777+00	2025-06-10 17:26:09.149198+00	{"eTag": "\\"47249c61b197c178dec8e018e19d7488\\"", "size": 9246, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-06-10T17:26:10.000Z", "contentLength": 9246, "httpStatusCode": 200}	e1933b99-0b0c-497e-917e-25fe0ba23c51	\N	{}	4
ccc61289-08c6-42aa-8eeb-0acea527b884	whitelabelled-agency	whitelabelled-agency/temp-1749639957663-jcx48q3w/logo/logo-1749639957664-lszool-ai.png	\N	2025-06-11 11:05:58.537438+00	2025-08-28 13:19:46.314777+00	2025-06-11 11:05:58.537438+00	{"eTag": "\\"ed6134451cdc9ea68d740f13c94cd17f\\"", "size": 13917, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-06-11T11:05:59.000Z", "contentLength": 13917, "httpStatusCode": 200}	499cf5d4-7e40-4944-a90a-ae801ade2c29	\N	{}	4
906bc1e1-396b-4116-9434-cf02baf7c010	whitelabelled-agency	whitelabelled-agency/temp-1749835292638-5amfg1eh/logo/logo-1749835292638-v2t9z7-panda_transparent.png	\N	2025-06-13 17:21:36.268963+00	2025-08-28 13:19:46.314777+00	2025-06-13 17:21:36.268963+00	{"eTag": "\\"52801182ef722963f0c9644fc9b7b27d\\"", "size": 291082, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-06-13T17:21:37.000Z", "contentLength": 291082, "httpStatusCode": 200}	a6c3cf9f-a8ec-4983-a601-7ccf8d82342f	\N	{}	4
3f480af0-51e7-4beb-b847-2e1e0d58ac28	whitelabelled-agency	whitelabelled-agency/temp-1751562358450-i9h232cq/logo/logo-1751562358450-aefp0s-mistral-color.png	\N	2025-07-03 17:06:00.67585+00	2025-08-28 13:19:46.314777+00	2025-07-03 17:06:00.67585+00	{"eTag": "\\"19bbbfd42e24304cc9424eccff999286\\"", "size": 12560, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-07-03T17:06:01.000Z", "contentLength": 12560, "httpStatusCode": 200}	732c133a-1685-4ae2-933a-d8719cf65b0d	\N	{}	4
5bb3e39d-1d22-48f9-b033-9d816497a020	whitelabelled-agency	whitelabelled-agency/temp-1751562364339-rli2o6al/logo/logo-1751562364339-vvo4ug-mistral-color.png	\N	2025-07-03 17:06:05.897839+00	2025-08-28 13:19:46.314777+00	2025-07-03 17:06:05.897839+00	{"eTag": "\\"19bbbfd42e24304cc9424eccff999286\\"", "size": 12560, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-07-03T17:06:06.000Z", "contentLength": 12560, "httpStatusCode": 200}	0c8e5b44-5479-44a6-bb23-239d02f8db62	\N	{}	4
a647ecac-316f-4672-b70e-7ec25d7eaf4a	whitelabelled-agency	whitelabelled-agency/temp-1751562370031-osa1hioa/logo/logo-1751562370031-wkhxgu-mistral-color.png	\N	2025-07-03 17:06:11.69537+00	2025-08-28 13:19:46.314777+00	2025-07-03 17:06:11.69537+00	{"eTag": "\\"19bbbfd42e24304cc9424eccff999286\\"", "size": 12560, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-07-03T17:06:12.000Z", "contentLength": 12560, "httpStatusCode": 200}	de64c8a9-b1e3-468a-ac3d-3e8396ba829d	\N	{}	4
1ecf939c-ec75-43f1-ba75-2a50bb1f7edb	whitelabelled-agency	whitelabelled-agency/temp-1751906275508-r1g6vh8t/logo/logo-1751906275509-q59d9g-IshvaraTech.png	\N	2025-07-07 16:37:56.636916+00	2025-08-28 13:19:46.314777+00	2025-07-07 16:37:56.636916+00	{"eTag": "\\"45a0c89f6558176eced073a1b6737afd\\"", "size": 18742, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-07-07T16:37:57.000Z", "contentLength": 18742, "httpStatusCode": 200}	7c89a22b-653b-4825-bff9-6613d23a6d13	\N	{}	4
1a8ca239-540f-47c0-ab18-5e2fa20ecdc8	whitelabelled-agency	whitelabelled-agency/temp-1751907149081-8tbi5e1n/logo/logo-1751907149081-3ed52b-IshvaraTech.png	\N	2025-07-07 16:52:30.162005+00	2025-08-28 13:19:46.314777+00	2025-07-07 16:52:30.162005+00	{"eTag": "\\"45a0c89f6558176eced073a1b6737afd\\"", "size": 18742, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-07-07T16:52:31.000Z", "contentLength": 18742, "httpStatusCode": 200}	c4ca6f71-09b7-4e11-bc84-378390c64d2a	\N	{}	4
dadd8b4f-14f2-4a00-98ea-bbee196e5beb	whitelabelled-agency	whitelabelled-agency/org_31Vh5UQFJC9axrlWVn4CWQ29CFk/logo/logo-1756482193856-u4u35g-test.jpg	\N	2025-08-29 15:43:15.931057+00	2025-08-29 15:43:15.931057+00	2025-08-29 15:43:15.931057+00	{"eTag": "\\"cdb0ef0be8ce0de767fa3ef24331ebd1\\"", "size": 110049, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-08-29T15:43:16.000Z", "contentLength": 110049, "httpStatusCode": 200}	9ae5dfe3-31da-4f39-b59e-94c77906d74a	\N	{}	4
30582be7-097a-4c6b-b5ea-1c3a98f9350e	whitelabelled-agency	whitelabelled-agency/temp-1753692483197-pnvgyqov/logo/logo-1753692483197-n1y9vk-IshvaraTech.png	\N	2025-07-28 08:48:03.30931+00	2025-08-28 13:19:46.314777+00	2025-07-28 08:48:03.30931+00	{"eTag": "\\"45a0c89f6558176eced073a1b6737afd\\"", "size": 18742, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-07-28T08:48:04.000Z", "contentLength": 18742, "httpStatusCode": 200}	4fe90489-f4df-4d60-98fe-410826138483	\N	{}	4
bbbe2e29-7678-48bb-8ede-8e9550d78310	whitelabelled-agency	whitelabelled-agency/temp-1753704990110-om5kevpo/logo/logo-1753704990110-l9muue-mistral-color.png	\N	2025-07-28 12:16:30.820965+00	2025-08-28 13:19:46.314777+00	2025-07-28 12:16:30.820965+00	{"eTag": "\\"19bbbfd42e24304cc9424eccff999286\\"", "size": 12560, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-07-28T12:16:31.000Z", "contentLength": 12560, "httpStatusCode": 200}	2cf18c83-1aad-4d2b-bf41-2f5010e8b11f	\N	{}	4
f6657666-4d04-44fe-ba88-797f0ed0bd6d	whitelabelled-agency	whitelabelled-agency/temp-1753785374122-9yv75n4t/logo/logo-1753785374122-tbeh03-mistral-color.png	\N	2025-07-29 10:36:16.238112+00	2025-08-28 13:19:46.314777+00	2025-07-29 10:36:16.238112+00	{"eTag": "\\"19bbbfd42e24304cc9424eccff999286\\"", "size": 12560, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-07-29T10:36:17.000Z", "contentLength": 12560, "httpStatusCode": 200}	7f642a7b-ac39-4d46-a748-76cc07f06359	\N	{}	4
4cf01f5c-2713-4c4f-9930-bb34710dfe62	whitelabelled-agency	whitelabelled-agency/temp-1753790736913-gokyhtmy/logo/logo-1753790736913-jkzp6y-mistral-color.png	\N	2025-07-29 12:05:38.248476+00	2025-08-28 13:19:46.314777+00	2025-07-29 12:05:38.248476+00	{"eTag": "\\"19bbbfd42e24304cc9424eccff999286\\"", "size": 12560, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-07-29T12:05:39.000Z", "contentLength": 12560, "httpStatusCode": 200}	4317606f-433c-49bd-b7ec-123c86341e36	\N	{}	4
89f94553-81ce-4d3a-af39-125c0510a479	whitelabelled-agency	whitelabelled-agency/temp-1753798255627-al9hpsk0/logo/logo-1753798255627-67owk2-mistral-color.png	\N	2025-07-29 14:11:00.477156+00	2025-08-28 13:19:46.314777+00	2025-07-29 14:11:00.477156+00	{"eTag": "\\"19bbbfd42e24304cc9424eccff999286\\"", "size": 12560, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-07-29T14:11:01.000Z", "contentLength": 12560, "httpStatusCode": 200}	b7f51651-2c4c-4cab-b175-9bad721ea005	\N	{}	4
5f267b38-11d5-4982-8a29-854988343b4d	whitelabelled-agency	whitelabelled-agency/temp-1755613924184-d6wdebpb/logo/logo-1755613924185-4z6fw7-Screenshot__8_.png	\N	2025-08-19 14:32:06.897768+00	2025-08-28 13:19:46.314777+00	2025-08-19 14:32:06.897768+00	{"eTag": "\\"584d4ea52fe5c6011fcb0ff51c310136\\"", "size": 1041421, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-08-19T14:32:07.000Z", "contentLength": 1041421, "httpStatusCode": 200}	94bfa7de-bfc6-4d6e-8354-d18e6d7e9b51	\N	{}	4
130827e5-c037-4cf0-98ab-ae5c479315f2	whitelabelled-agency	whitelabelled-agency/temp-1755615666299-s39sjw9e/logo/logo-1755615666300-chasf9-test.jpg	\N	2025-08-19 15:01:07.038772+00	2025-08-28 13:19:46.314777+00	2025-08-19 15:01:07.038772+00	{"eTag": "\\"cdb0ef0be8ce0de767fa3ef24331ebd1\\"", "size": 110049, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-08-19T15:01:07.000Z", "contentLength": 110049, "httpStatusCode": 200}	0383900b-2faa-4492-890d-0ca6862da62c	\N	{}	4
70810740-0ca8-4410-a5f9-a4898ee96952	whitelabelled-agency	whitelabelled-agency/temp-1755773851932-jwfnirc4/logo/logo-1755773851933-2jutx5-IshvaraTech.png	\N	2025-08-21 10:57:33.224875+00	2025-08-28 13:19:46.314777+00	2025-08-21 10:57:33.224875+00	{"eTag": "\\"45a0c89f6558176eced073a1b6737afd\\"", "size": 18742, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-08-21T10:57:34.000Z", "contentLength": 18742, "httpStatusCode": 200}	34dbddc9-9f01-42be-b947-77296d841156	\N	{}	4
d2865860-8f2e-4328-9a40-375403cb37a9	whitelabelled-agency	whitelabelled-agency/org_31Vh5UQFJC9axrlWVn4CWQ29CFk/logo/logo-1756474558756-5jvwys-biswajit.jfif	\N	2025-08-29 13:36:00.547064+00	2025-08-29 13:36:00.547064+00	2025-08-29 13:36:00.547064+00	{"eTag": "\\"e7a049d49fde086bef1617bf18d7b310\\"", "size": 7549, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-08-29T13:36:01.000Z", "contentLength": 7549, "httpStatusCode": 200}	2afbd216-9040-4b69-9c77-86f75b50343f	\N	{}	4
57ed4d10-04ec-483e-bee7-ca9392dee1f7	whitelabelled-agency	whitelabelled-agency/org_31Vh5UQFJC9axrlWVn4CWQ29CFk/logo/logo-1756474873044-7kb216-download__1_.png	\N	2025-08-29 13:41:15.092986+00	2025-08-29 13:41:15.092986+00	2025-08-29 13:41:15.092986+00	{"eTag": "\\"691f616a45c35d6267a63ded28dd8ea6\\"", "size": 316, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-08-29T13:41:16.000Z", "contentLength": 316, "httpStatusCode": 200}	8cee9727-606b-4e9a-a9d7-924405f1b179	\N	{}	4
3b426817-77b2-4fd6-ae6c-7a4d531a8858	whitelabelled-agency	whitelabelled-agency/org_31Vh5UQFJC9axrlWVn4CWQ29CFk/logo/logo-1756477912356-u6bgqh-biswajit.jfif	\N	2025-08-29 14:31:54.189183+00	2025-08-29 14:31:54.189183+00	2025-08-29 14:31:54.189183+00	{"eTag": "\\"e7a049d49fde086bef1617bf18d7b310\\"", "size": 7549, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-08-29T14:31:55.000Z", "contentLength": 7549, "httpStatusCode": 200}	84edfb71-701a-4a1a-914b-225e8ad38ea4	\N	{}	4
5d20aa36-73b3-40b1-9237-7627e5e03576	whitelabelled-agency	whitelabelled-agency/org_31Vh5UQFJC9axrlWVn4CWQ29CFk/logo/logo-1756482225174-p7qlkh-biswajit.jfif	\N	2025-08-29 15:43:46.210078+00	2025-08-29 15:43:46.210078+00	2025-08-29 15:43:46.210078+00	{"eTag": "\\"e7a049d49fde086bef1617bf18d7b310\\"", "size": 7549, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-08-29T15:43:47.000Z", "contentLength": 7549, "httpStatusCode": 200}	54e6f232-b2d9-4b75-b9a3-96daf35568c4	\N	{}	4
f99c939e-37f4-43ab-a067-84c3879be58e	whitelabelled-agency	whitelabelled-agency/org_31uru1bLIfZGrkIm0zE35OzQynN/logo/logo-1756736873165-3iihyf-concert-7424190_1920.jpg	\N	2025-09-01 14:27:55.683755+00	2025-09-01 14:27:55.683755+00	2025-09-01 14:27:55.683755+00	{"eTag": "\\"1f99681127e44711986417d05872e343\\"", "size": 582545, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-09-01T14:27:56.000Z", "contentLength": 582545, "httpStatusCode": 200}	1a473034-322b-4322-abf6-ac7df66d6f1a	\N	{}	4
307cb00c-4f04-48ec-bfbd-5cfe9442b6e5	whitelabelled-agency	whitelabelled-agency/temp-1756814261851-d3zofctv/logo/logo-1756814261851-q6nhbz-IshvaraTech.png	\N	2025-09-02 11:57:43.817632+00	2025-09-02 11:57:43.817632+00	2025-09-02 11:57:43.817632+00	{"eTag": "\\"45a0c89f6558176eced073a1b6737afd\\"", "size": 18742, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-09-02T11:57:44.000Z", "contentLength": 18742, "httpStatusCode": 200}	1aa6f3f8-0d96-4bb3-9039-d73bc42240f9	\N	{}	4
\.


--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."prefixes" ("bucket_id", "name", "created_at", "updated_at") FROM stdin;
whitelabelled-agency	whitelabelled-agency	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/897ac16e-d693-4787-a60f-e4a6ca9528ef	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/897ac16e-d693-4787-a60f-e4a6ca9528ef/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1749553680527-ax1wwuso	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1749553680527-ax1wwuso/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1749576368355-agjseoea	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1749576368355-agjseoea/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1749639957663-jcx48q3w	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1749639957663-jcx48q3w/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1749835292638-5amfg1eh	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1749835292638-5amfg1eh/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1751562358450-i9h232cq	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1751562358450-i9h232cq/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1751562364339-rli2o6al	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1751562364339-rli2o6al/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1751562370031-osa1hioa	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1751562370031-osa1hioa/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1751906275508-r1g6vh8t	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1751906275508-r1g6vh8t/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1751907149081-8tbi5e1n	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1751907149081-8tbi5e1n/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1753692483197-pnvgyqov	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1753692483197-pnvgyqov/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1753704990110-om5kevpo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1753704990110-om5kevpo/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1753785374122-9yv75n4t	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1753785374122-9yv75n4t/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1753790736913-gokyhtmy	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1753790736913-gokyhtmy/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1753798255627-al9hpsk0	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1753798255627-al9hpsk0/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1755613924184-d6wdebpb	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1755613924184-d6wdebpb/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1755615666299-s39sjw9e	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1755615666299-s39sjw9e/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1755773851932-jwfnirc4	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/temp-1755773851932-jwfnirc4/logo	2025-08-28 13:19:46.142718+00	2025-08-28 13:19:46.142718+00
whitelabelled-agency	whitelabelled-agency/org_31Vh5UQFJC9axrlWVn4CWQ29CFk	2025-08-29 13:36:00.547064+00	2025-08-29 13:36:00.547064+00
whitelabelled-agency	whitelabelled-agency/org_31Vh5UQFJC9axrlWVn4CWQ29CFk/logo	2025-08-29 13:36:00.547064+00	2025-08-29 13:36:00.547064+00
whitelabelled-agency	whitelabelled-agency/org_31uru1bLIfZGrkIm0zE35OzQynN	2025-09-01 14:27:55.683755+00	2025-09-01 14:27:55.683755+00
whitelabelled-agency	whitelabelled-agency/org_31uru1bLIfZGrkIm0zE35OzQynN/logo	2025-09-01 14:27:55.683755+00	2025-09-01 14:27:55.683755+00
whitelabelled-agency	whitelabelled-agency/temp-1756814261851-d3zofctv	2025-09-02 11:57:43.817632+00	2025-09-02 11:57:43.817632+00
whitelabelled-agency	whitelabelled-agency/temp-1756814261851-d3zofctv/logo	2025-09-02 11:57:43.817632+00	2025-09-02 11:57:43.817632+00
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict h9RCO3INDTIBddNXDmdy2GsLKt1tEAb3pm2iBfbJJpvHYsOArl40LeuTcabdkX1

RESET ALL;
