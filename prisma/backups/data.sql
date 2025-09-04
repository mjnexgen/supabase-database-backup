SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

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
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."users" ("id", "clerk_user_id", "email", "first_name", "last_name", "username", "image_url", "profile_image_url", "external_id", "password_enabled", "two_factor_enabled", "last_sign_in_at", "created_at", "updated_at", "primary_email_address_id", "primary_phone_number_id", "primary_web3_wallet_id", "all_step_completed", "user_role_id") FROM stdin;
9c9f2092-a974-4d9d-9321-9c0aa2984b52	user_30VUxwbo1DtZwBDp2sid5ONXjlI	graygenetic@mechanicspedia.com	Chales	Gray	\N	https://img.clerk.com/eyJ0eXBlIjoiZGVmYXVsdCIsImlpZCI6Imluc18yeTJqZ0p4UHo1UlZvSWtEaFF2MVNwQkh4Zm4iLCJyaWQiOiJ1c2VyXzMwVlV4d2JvMUR0WndCRHAyc2lkNU9OWGpsSSIsImluaXRpYWxzIjoiQ0cifQ	\N	\N	t	f	\N	2025-09-04 18:39:23.388+00	2025-09-04 18:39:23.388+00	\N	\N	\N	f	\N
\.


--
-- Data for Name: organizations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."organizations" ("id", "slug", "type", "parent_org_id", "created_by", "display_name", "organization_settings", "default_timezone", "default_currency", "billing_address", "tax_information", "created_at", "updated_at", "vendor_org_id") FROM stdin;
\.


--
-- Data for Name: WhiteLabelSettings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."WhiteLabelSettings" ("orgId", "userId", "customDomain", "subdomain", "faviconUrl", "logoUrl", "loginBackgroundUrl", "termsUrl", "privacyUrl", "supportUrl", "primaryColor", "secondaryColor", "description", "supportEmail", "contactEmail", "contactPhone", "address", "companyName", "websiteUrl", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: campaign_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."campaign_categories" ("name", "id") FROM stdin;
\.


--
-- Data for Name: insertion_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insertion_orders" ("id", "org_id", "created_by", "name", "description", "start_date", "end_date", "timezone_id", "total_budget", "budget_type", "budget_distribution_method", "status", "iqm_io_id", "iqm_budget_day", "iqm_performance_goal", "iqm_distribution_method_id", "platform_references", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: campaigns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."campaigns" ("id", "org_id", "created_by", "name", "description", "objective", "start_date", "end_date", "timezone_id", "currency", "actualBudget", "budget", "daily_budget", "status", "enabled_platforms", "created_at", "updated_at", "insertion_order_id", "category_id", "tags", "bid_strategy", "day_parting", "draft_data", "flighting_schedule", "kpi_targets", "last_edited_at", "last_edited_by", "last_edited_step", "platform_budgets", "step_completed", "submitted_at", "submitted_by", "campaign_funding_status", "current_balance") FROM stdin;
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
\.


--
-- Data for Name: audiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."audiences" ("id", "org_id", "created_by", "name", "description", "type", "start_date", "end_date", "period", "source", "status", "targeting_data", "size", "created_at", "updated_at") FROM stdin;
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
\.


--
-- Data for Name: campaign_steps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."campaign_steps" ("id", "org_id", "campaign_id", "step_name", "step_order", "is_completed", "completed_by", "step_data", "completed_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: platform_campaigns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."platform_campaigns" ("id", "campaign_id", "platform", "platform_campaign_id", "platform_data", "status", "error_message", "last_sync_at", "created_at", "updated_at") FROM stdin;
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
\.


--
-- Data for Name: iqm_campaigns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."iqm_campaigns" ("id", "campaign_id", "iqm_configuration_id", "platform_campaign_id", "platform_audience_id", "advertiser_domain", "creative_type", "campaign_type", "total_budget_pacing", "is_tv_ad", "budget_day", "budget_total", "max_bid", "dsp_margin", "platform_margin", "user_deal_margin", "targeting", "status", "server_logs", "created_at", "updated_at", "scheduling", "demographics", "bid_pacing", "impression_capping", "max_day_impressions", "total_impressions", "max_day_clicks", "total_clicks", "max_day_conversions", "total_conversions", "deviceSettings") FROM stdin;
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
\.


--
-- Data for Name: module_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."module_permissions" ("id", "module_id", "name", "displayName", "description", "isActive", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: onboarding_steps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."onboarding_steps" ("id", "org_id", "is_completed", "completed_at", "step_data", "created_at", "updated_at", "step_type", "user_id") FROM stdin;
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
\.


--
-- Data for Name: organization_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."organization_members" ("id", "org_id", "user_id", "role_id") FROM stdin;
\.


--
-- Data for Name: organization_role_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."organization_role_permissions" ("id", "org_id", "role_id", "module_id", "permission_id", "isGranted", "granted_by", "granted_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: payment_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."payment_logs" ("id", "org_id", "campaign_id", "insertion_order_id", "amount_media", "fee_cpg", "tax_amount", "amount_total", "currency", "status", "paidPlatforms", "payment_type", "stripe_payment_intent_id", "stripe_charge_id", "stripe_invoice_id", "receipt_url", "processor_fees", "failure_reason", "failure_code", "metadata", "processed_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: payment_allocations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."payment_allocations" ("id", "payment_log_id", "org_id", "campaign_id", "insertion_order_id", "amount_media", "fee_cpg", "tax_amount", "amount_total", "currency", "status", "payment_type", "processed_at", "created_at", "updated_at") FROM stdin;
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

RESET ALL;
