
\restrict JqXUElobhdPEe5kyRKuZaAsQf3komt62r0w1D2eyNi5a5930PApzvoiv8eSdrhm


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


CREATE EXTENSION IF NOT EXISTS "pg_cron" WITH SCHEMA "pg_catalog";








ALTER SCHEMA "public" OWNER TO "postgres";


CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "wrappers" WITH SCHEMA "extensions";






CREATE TYPE "public"."PriorityStatus" AS ENUM (
    'pending',
    'sent',
    'completed',
    'failed'
);


ALTER TYPE "public"."PriorityStatus" OWNER TO "postgres";


CREATE TYPE "public"."access_level" AS ENUM (
    'full',
    'read_only',
    'none'
);


ALTER TYPE "public"."access_level" OWNER TO "postgres";


CREATE TYPE "public"."agency_customer_status" AS ENUM (
    'active',
    'paused',
    'terminated'
);


ALTER TYPE "public"."agency_customer_status" OWNER TO "postgres";


CREATE TYPE "public"."alert_severity" AS ENUM (
    'low',
    'medium',
    'high',
    'critical'
);


ALTER TYPE "public"."alert_severity" OWNER TO "postgres";


CREATE TYPE "public"."alert_type" AS ENUM (
    'budget_overspend',
    'performance_decline',
    'campaign_error',
    'creative_rejected',
    'bid_adjustment'
);


ALTER TYPE "public"."alert_type" OWNER TO "postgres";


CREATE TYPE "public"."api_call_status" AS ENUM (
    'pending',
    'success',
    'error',
    'timeout',
    'rate_limited',
    'unauthorized',
    'forbidden',
    'not_found',
    'server_error'
);


ALTER TYPE "public"."api_call_status" OWNER TO "postgres";


CREATE TYPE "public"."application_status" AS ENUM (
    'pending',
    'approved',
    'rejected'
);


ALTER TYPE "public"."application_status" OWNER TO "postgres";


CREATE TYPE "public"."asset_type" AS ENUM (
    'image',
    'video',
    'html',
    'audio'
);


ALTER TYPE "public"."asset_type" OWNER TO "postgres";


CREATE TYPE "public"."audience_source" AS ENUM (
    'upload',
    'website',
    'engagement',
    'app_activity',
    'customer_list'
);


ALTER TYPE "public"."audience_source" OWNER TO "postgres";


CREATE TYPE "public"."audience_status" AS ENUM (
    'draft',
    'ready',
    'processing',
    'error'
);


ALTER TYPE "public"."audience_status" OWNER TO "postgres";


CREATE TYPE "public"."audience_type" AS ENUM (
    'segmented',
    'contextual',
    'geofarmed',
    'retargeted',
    'lookalike'
);


ALTER TYPE "public"."audience_type" OWNER TO "postgres";


CREATE TYPE "public"."audit_status" AS ENUM (
    'success',
    'failure',
    'pending',
    'timeout'
);


ALTER TYPE "public"."audit_status" OWNER TO "postgres";


CREATE TYPE "public"."budget_distribution_method" AS ENUM (
    'manual',
    'auto'
);


ALTER TYPE "public"."budget_distribution_method" OWNER TO "postgres";


CREATE TYPE "public"."budget_type" AS ENUM (
    'currency',
    'impressions'
);


ALTER TYPE "public"."budget_type" OWNER TO "postgres";


CREATE TYPE "public"."campaign_objective" AS ENUM (
    'awareness',
    'consideration',
    'conversion',
    'traffic',
    'engagement',
    'app_installs',
    'video_views',
    'lead_generation'
);


ALTER TYPE "public"."campaign_objective" OWNER TO "postgres";


CREATE TYPE "public"."campaign_status" AS ENUM (
    'draft',
    'active',
    'paused',
    'completed',
    'cancelled'
);


ALTER TYPE "public"."campaign_status" OWNER TO "postgres";


CREATE TYPE "public"."campaign_step_type" AS ENUM (
    'basic_info',
    'platforms',
    'creatives',
    'audiences',
    'budget_schedule',
    'targeting',
    'review_submit'
);


ALTER TYPE "public"."campaign_step_type" OWNER TO "postgres";


CREATE TYPE "public"."commission_structure" AS ENUM (
    'percentage',
    'flat_fee',
    'hybrid'
);


ALTER TYPE "public"."commission_structure" OWNER TO "postgres";


CREATE TYPE "public"."creative_status" AS ENUM (
    'pending',
    'approved',
    'rejected',
    'active'
);


ALTER TYPE "public"."creative_status" OWNER TO "postgres";


CREATE TYPE "public"."creative_type" AS ENUM (
    'image',
    'video',
    'carousel',
    'html',
    'audio'
);


ALTER TYPE "public"."creative_type" OWNER TO "postgres";


CREATE TYPE "public"."credential_status" AS ENUM (
    'active',
    'expired',
    'revoked'
);


ALTER TYPE "public"."credential_status" OWNER TO "postgres";


CREATE TYPE "public"."credential_type" AS ENUM (
    'api_key',
    'oauth',
    'bearer_token',
    'custom'
);


ALTER TYPE "public"."credential_type" OWNER TO "postgres";


CREATE TYPE "public"."email_event_type" AS ENUM (
    'sent',
    'delivered',
    'opened',
    'clicked',
    'bounced',
    'spam_complaint',
    'unsubscribed',
    'failed'
);


ALTER TYPE "public"."email_event_type" OWNER TO "postgres";


CREATE TYPE "public"."email_priority" AS ENUM (
    'low',
    'normal',
    'high',
    'urgent'
);


ALTER TYPE "public"."email_priority" OWNER TO "postgres";


CREATE TYPE "public"."email_status" AS ENUM (
    'queued',
    'sending',
    'sent',
    'delivered',
    'bounced',
    'failed',
    'rejected',
    'spam_complaint',
    'unsubscribed'
);


ALTER TYPE "public"."email_status" OWNER TO "postgres";


CREATE TYPE "public"."email_template_type" AS ENUM (
    'campaign_submission_confirmation',
    'onboarding_abandonment_reminder',
    'payment_method_follow_up',
    'campaign_alert',
    'campaign_performance_update',
    'agency_welcome',
    'user_invitation',
    'password_reset',
    'system_notification',
    'custom'
);


ALTER TYPE "public"."email_template_type" OWNER TO "postgres";


CREATE TYPE "public"."execution_environment" AS ENUM (
    'backend_api',
    'edge_function',
    'frontend_client',
    'webhook',
    'cron_job',
    'background_task'
);


ALTER TYPE "public"."execution_environment" OWNER TO "postgres";


CREATE TYPE "public"."invoice_status" AS ENUM (
    'draft',
    'sent',
    'paid',
    'overdue',
    'cancelled'
);


ALTER TYPE "public"."invoice_status" OWNER TO "postgres";


CREATE TYPE "public"."io_funding_status" AS ENUM (
    'draft',
    'awaiting_payment',
    'funded',
    'partially_refunded',
    'refunded',
    'canceled',
    'refund_pending'
);


ALTER TYPE "public"."io_funding_status" OWNER TO "postgres";


CREATE TYPE "public"."log_level" AS ENUM (
    'debug',
    'info',
    'warn',
    'error',
    'critical'
);


ALTER TYPE "public"."log_level" OWNER TO "postgres";


CREATE TYPE "public"."log_status" AS ENUM (
    'pending',
    'success',
    'error',
    'timeout',
    'rate_limited',
    'unauthorized',
    'forbidden',
    'not_found',
    'server_error'
);


ALTER TYPE "public"."log_status" OWNER TO "postgres";


CREATE TYPE "public"."log_type" AS ENUM (
    'third_party_api',
    'edge_function',
    'system_event',
    'database_operation',
    'auth_event'
);


ALTER TYPE "public"."log_type" OWNER TO "postgres";


CREATE TYPE "public"."metric_type" AS ENUM (
    'impressions',
    'clicks',
    'conversions',
    'spend',
    'cpm',
    'cpc',
    'ctr',
    'conversion_rate',
    'reach',
    'frequency'
);


ALTER TYPE "public"."metric_type" OWNER TO "postgres";


CREATE TYPE "public"."notification_channel" AS ENUM (
    'in_app',
    'email',
    'push',
    'sms'
);


ALTER TYPE "public"."notification_channel" OWNER TO "postgres";


CREATE TYPE "public"."notification_log_action" AS ENUM (
    'created',
    'sent',
    'delivered',
    'read',
    'failed',
    'retry',
    'cancelled'
);


ALTER TYPE "public"."notification_log_action" OWNER TO "postgres";


CREATE TYPE "public"."notification_log_status" AS ENUM (
    'pending',
    'processing',
    'completed',
    'failed',
    'cancelled'
);


ALTER TYPE "public"."notification_log_status" OWNER TO "postgres";


CREATE TYPE "public"."notification_priority" AS ENUM (
    'low',
    'normal',
    'high',
    'urgent'
);


ALTER TYPE "public"."notification_priority" OWNER TO "postgres";


CREATE TYPE "public"."notification_trigger_type" AS ENUM (
    'campaign_submitted',
    'onboarding_started_not_completed',
    'payment_method_missing',
    'campaign_performance_alert',
    'user_invited',
    'manual_send'
);


ALTER TYPE "public"."notification_trigger_type" OWNER TO "postgres";


CREATE TYPE "public"."notification_type" AS ENUM (
    'io_created',
    'campaign_draft_created',
    'campaign_activated',
    'campaign_submitted',
    'payment_succeeded',
    'payment_failed',
    'payment_requires_action',
    'campaign_budget_alert',
    'system_announcement'
);


ALTER TYPE "public"."notification_type" OWNER TO "postgres";


CREATE TYPE "public"."onboarding_step_type" AS ENUM (
    'personal_info',
    'campaign_preferences',
    'platform_preferences',
    'agency_info',
    'agency_branding',
    'client_information',
    'payment_integration',
    'organization_setup',
    'password_reset'
);


ALTER TYPE "public"."onboarding_step_type" OWNER TO "postgres";


CREATE TYPE "public"."organization_type" AS ENUM (
    'main',
    'agency',
    'customer'
);


ALTER TYPE "public"."organization_type" OWNER TO "postgres";


CREATE TYPE "public"."payment_log_type" AS ENUM (
    'initial',
    'topup',
    'adjustment'
);


ALTER TYPE "public"."payment_log_type" OWNER TO "postgres";


CREATE TYPE "public"."payment_status" AS ENUM (
    'pending',
    'requires_action',
    'processing',
    'succeeded',
    'failed',
    'canceled',
    'refunded'
);


ALTER TYPE "public"."payment_status" OWNER TO "postgres";


CREATE TYPE "public"."payment_type" AS ENUM (
    'card',
    'bank_account',
    'wallet'
);


ALTER TYPE "public"."payment_type" OWNER TO "postgres";


CREATE TYPE "public"."permission_action" AS ENUM (
    'granted',
    'revoked'
);


ALTER TYPE "public"."permission_action" OWNER TO "postgres";


CREATE TYPE "public"."platform" AS ENUM (
    'iqm',
    'facebook',
    'instagram',
    'x',
    'threads'
);


ALTER TYPE "public"."platform" OWNER TO "postgres";


CREATE TYPE "public"."platform_campaign_status" AS ENUM (
    'pending',
    'active',
    'paused',
    'completed',
    'error'
);


ALTER TYPE "public"."platform_campaign_status" OWNER TO "postgres";


CREATE TYPE "public"."refund_reason" AS ENUM (
    'requested_by_customer',
    'duplicate',
    'fraudulent',
    'campaign_cancelled',
    'io_cancelled',
    'unused_budget',
    'service_issue'
);


ALTER TYPE "public"."refund_reason" OWNER TO "postgres";


CREATE TYPE "public"."refund_status" AS ENUM (
    'pending',
    'processing',
    'succeeded',
    'failed',
    'cancelled'
);


ALTER TYPE "public"."refund_status" OWNER TO "postgres";


CREATE TYPE "public"."relationship_type" AS ENUM (
    'agency_customer',
    'main_agency',
    'subsidiary'
);


ALTER TYPE "public"."relationship_type" OWNER TO "postgres";


CREATE TYPE "public"."report_format" AS ENUM (
    'pdf',
    'csv',
    'excel',
    'json'
);


ALTER TYPE "public"."report_format" OWNER TO "postgres";


CREATE TYPE "public"."report_status" AS ENUM (
    'generating',
    'completed',
    'failed',
    'scheduled'
);


ALTER TYPE "public"."report_status" OWNER TO "postgres";


CREATE TYPE "public"."report_type" AS ENUM (
    'campaign',
    'creative',
    'audience',
    'financial'
);


ALTER TYPE "public"."report_type" OWNER TO "postgres";


CREATE TYPE "public"."setting_scope" AS ENUM (
    'PLATFORM',
    'ORGANIZATION',
    'USER'
);


ALTER TYPE "public"."setting_scope" OWNER TO "postgres";


CREATE TYPE "public"."third_party_service" AS ENUM (
    'clerk',
    'supabase',
    'iqm',
    'meta_facebook',
    'meta_instagram',
    'meta_threads',
    'x_twitter',
    'stripe',
    'sendgrid',
    'aws_s3',
    'cloudflare',
    'vercel',
    'netlify',
    'other'
);


ALTER TYPE "public"."third_party_service" OWNER TO "postgres";


CREATE TYPE "public"."transaction_status" AS ENUM (
    'pending',
    'completed',
    'failed',
    'refunded'
);


ALTER TYPE "public"."transaction_status" OWNER TO "postgres";


CREATE TYPE "public"."transaction_type" AS ENUM (
    'deposit',
    'withdrawal',
    'transfer',
    'fee',
    'refund',
    'campaign_spend'
);


ALTER TYPE "public"."transaction_type" OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_user_rbac_data"("p_clerk_user_id" "text", "p_clerk_org_id" "text") RETURNS TABLE("user_id" "uuid", "org_id" "uuid", "role_id" "uuid", "role_name" character varying, "module_permissions" "jsonb")
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  RETURN QUERY
  WITH user_rbac AS (
    SELECT 
      u.id as user_id,
      o.id as org_id,
      om.role_id,
      r.name as role_name
    FROM users u
    INNER JOIN organization_members om ON om.user_id = u.id
    INNER JOIN organizations o ON o.id = om.org_id
    INNER JOIN roles r ON r.id = om.role_id
    WHERE u.clerk_user_id = p_clerk_user_id
      AND o.vendor_org_id = p_clerk_org_id
    LIMIT 1
  ),
  module_perms AS (
    SELECT 
      sm.name as module_name,
      COALESCE(orp.is_granted, true) as is_granted
    FROM system_modules sm
    CROSS JOIN user_rbac ur
    LEFT JOIN module_permissions mp ON mp.module_id = sm.id AND mp.name = 'module_access'
    LEFT JOIN organization_role_permissions orp ON 
      orp.module_id = sm.id 
      AND orp.permission_id = mp.id
      AND orp.org_id = ur.org_id
      AND orp.role_id = ur.role_id
  )
  SELECT 
    ur.user_id,
    ur.org_id,
    ur.role_id,
    ur.role_name,
    COALESCE(
      json_object_agg(mp.module_name, mp.is_granted) FILTER (WHERE mp.module_name IS NOT NULL),
      '{}'::json
    )::jsonb as module_permissions
  FROM user_rbac ur
  LEFT JOIN module_perms mp ON true
  GROUP BY ur.user_id, ur.org_id, ur.role_id, ur.role_name;
END;
$$;


ALTER FUNCTION "public"."get_user_rbac_data"("p_clerk_user_id" "text", "p_clerk_org_id" "text") OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."ad_sets" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "platform_specific_campaign_id" "uuid" NOT NULL,
    "platform" "public"."platform" NOT NULL,
    "platform_ad_set_id" "text",
    "name" "text" NOT NULL,
    "targeting" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "optimization_goal" "text",
    "bid_strategy" "text",
    "bid_amount" numeric(15,2),
    "budget" numeric(15,2),
    "daily_budget" numeric(15,2),
    "status" "public"."platform_campaign_status" DEFAULT 'pending'::"public"."platform_campaign_status" NOT NULL,
    "platform_specific_fields" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "server_logs" "jsonb" DEFAULT '[]'::"jsonb" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."ad_sets" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."ads" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "ad_set_id" "uuid" NOT NULL,
    "creative_id" "uuid" NOT NULL,
    "platform_ad_id" "text",
    "name" "text" NOT NULL,
    "status" "public"."platform_campaign_status" DEFAULT 'pending'::"public"."platform_campaign_status" NOT NULL,
    "tracking_specs" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "server_logs" "jsonb" DEFAULT '[]'::"jsonb" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."ads" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."agency_applications" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid",
    "created_by" "uuid" NOT NULL,
    "company_name" "text" NOT NULL,
    "contact_info" "text",
    "status" "public"."application_status" DEFAULT 'pending'::"public"."application_status" NOT NULL,
    "submitted_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "reviewed_at" timestamp(6) with time zone,
    "reviewed_by" "uuid",
    "notes" "text",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "address" "jsonb",
    "contact_email" "text",
    "contact_phone" "text",
    "description" "text",
    "logo_url" "text",
    "preferred_domain" "text",
    "primary_color" "text",
    "privacy_url" "text",
    "secondary_color" "text",
    "support_email" "text",
    "terms_url" "text"
);


ALTER TABLE "public"."agency_applications" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."agency_customers" (
    "agency_org_id" "uuid" NOT NULL,
    "customer_org_id" "uuid" NOT NULL,
    "status" "public"."agency_customer_status" DEFAULT 'active'::"public"."agency_customer_status" NOT NULL,
    "commission_rate" numeric(5,2) NOT NULL,
    "commission_structure" "public"."commission_structure" DEFAULT 'percentage'::"public"."commission_structure" NOT NULL,
    "contract_start_date" timestamp(6) with time zone,
    "contract_end_date" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."agency_customers" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."agency_fees" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid",
    "fee_percentage" numeric(5,2) NOT NULL,
    "min_fee_amount" numeric(10,2),
    "effective_from" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "effective_to" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."agency_fees" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."agency_platform_access" (
    "agency_org_id" "uuid" NOT NULL,
    "customer_org_id" "uuid" NOT NULL,
    "platform" "public"."platform" NOT NULL,
    "access_level" "public"."access_level" DEFAULT 'full'::"public"."access_level" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."agency_platform_access" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."analytics_aggregated" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "campaign_id" "uuid",
    "insertion_order_id" "uuid",
    "platform" "public"."platform" NOT NULL,
    "date" "date" NOT NULL,
    "hour" integer,
    "impressions" bigint DEFAULT 0 NOT NULL,
    "clicks" bigint DEFAULT 0 NOT NULL,
    "conversions" bigint DEFAULT 0 NOT NULL,
    "spend" numeric(15,4) DEFAULT 0 NOT NULL,
    "reach" bigint DEFAULT 0,
    "frequency" numeric(10,4) DEFAULT 0,
    "cpm" numeric(10,4) DEFAULT 0,
    "cpc" numeric(10,4) DEFAULT 0,
    "ctr" numeric(10,6) DEFAULT 0,
    "conversion_rate" numeric(10,6) DEFAULT 0,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."analytics_aggregated" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."analytics_data" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "campaign_id" "uuid",
    "platform" "public"."platform" NOT NULL,
    "date" "date" NOT NULL,
    "metrics" "jsonb" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "insertion_order_id" "uuid"
);


ALTER TABLE "public"."analytics_data" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."assets" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "creative_id" "uuid" NOT NULL,
    "type" "public"."asset_type" NOT NULL,
    "url" "text" NOT NULL,
    "metadata" "jsonb",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."assets" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."audiences" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "created_by" "uuid" NOT NULL,
    "name" "text" NOT NULL,
    "description" "text",
    "type" "public"."audience_type" NOT NULL,
    "start_date" timestamp(3) without time zone,
    "end_date" timestamp(3) without time zone,
    "period" "text",
    "source" "public"."audience_source" NOT NULL,
    "status" "public"."audience_status" DEFAULT 'draft'::"public"."audience_status" NOT NULL,
    "targeting_data" "jsonb",
    "size" integer,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."audiences" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."campaign_alerts" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "campaign_id" "uuid" NOT NULL,
    "alert_type" "public"."alert_type" NOT NULL,
    "severity" "public"."alert_severity" NOT NULL,
    "title" "text" NOT NULL,
    "message" "text" NOT NULL,
    "is_read" boolean DEFAULT false NOT NULL,
    "is_resolved" boolean DEFAULT false NOT NULL,
    "resolved_by" "uuid",
    "resolved_at" timestamp(6) with time zone,
    "metadata" "jsonb",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."campaign_alerts" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."campaign_audiences" (
    "campaign_id" "uuid" NOT NULL,
    "audience_id" "uuid" NOT NULL,
    "assigned_by" "uuid" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "is_active" boolean DEFAULT true NOT NULL,
    "org_id" "uuid" NOT NULL,
    "platform_assignment" "jsonb",
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "weight" numeric(5,2) DEFAULT 1.0
);


ALTER TABLE "public"."campaign_audiences" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."campaign_categories" (
    "name" "text" NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);


ALTER TABLE "public"."campaign_categories" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."campaign_creatives" (
    "campaign_id" "uuid" NOT NULL,
    "creative_id" "uuid" NOT NULL,
    "assigned_by" "uuid" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "is_active" boolean DEFAULT true NOT NULL,
    "org_id" "uuid" NOT NULL,
    "platform_assignment" "jsonb",
    "position" integer DEFAULT 0 NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "variations" "jsonb"
);


ALTER TABLE "public"."campaign_creatives" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."campaign_priorities" (
    "priority_id" "uuid" NOT NULL,
    "io_id" "uuid",
    "priority" integer NOT NULL,
    "campaign_ids" "text"[],
    "status" "public"."PriorityStatus" DEFAULT 'pending'::"public"."PriorityStatus" NOT NULL,
    "platform_request" "jsonb",
    "platform_response" "jsonb",
    "created_by" "uuid" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone NOT NULL
);


ALTER TABLE "public"."campaign_priorities" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."campaign_steps" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "campaign_id" "uuid" NOT NULL,
    "step_name" "text" NOT NULL,
    "step_order" integer NOT NULL,
    "is_completed" boolean DEFAULT false NOT NULL,
    "completed_by" "uuid",
    "step_data" "jsonb",
    "completed_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."campaign_steps" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."campaign_transactions" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "insertion_order_id" "uuid" NOT NULL,
    "campaign_id" "uuid" NOT NULL,
    "platform_campaign_id" "uuid",
    "amount" numeric(15,2) NOT NULL,
    "currency" "text" DEFAULT 'USD'::"text" NOT NULL,
    "source_platform" "public"."platform",
    "description" "text",
    "external_reference" "text",
    "metadata" "jsonb",
    "occurred_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "synced_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."campaign_transactions" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."campaigns" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "created_by" "uuid" NOT NULL,
    "name" "text" NOT NULL,
    "description" "text",
    "objective" "public"."campaign_objective",
    "start_date" timestamp(6) with time zone,
    "end_date" timestamp(6) with time zone,
    "timezone_id" "text",
    "currency" "text" DEFAULT 'USD'::"text",
    "actualBudget" numeric(15,2),
    "budget" numeric(15,2),
    "daily_budget" numeric(15,2),
    "status" "public"."campaign_status" DEFAULT 'draft'::"public"."campaign_status" NOT NULL,
    "enabled_platforms" "jsonb" DEFAULT '[]'::"jsonb",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "insertion_order_id" "uuid",
    "category_id" "uuid" NOT NULL,
    "tags" "text"[] DEFAULT ARRAY[]::"text"[],
    "bid_strategy" "text",
    "day_parting" "jsonb",
    "draft_data" "jsonb",
    "flighting_schedule" "jsonb",
    "kpi_targets" "jsonb",
    "last_edited_at" timestamp(6) with time zone,
    "last_edited_by" "uuid",
    "last_edited_step" "text",
    "platform_budgets" "jsonb",
    "step_completed" integer DEFAULT 0,
    "submitted_at" timestamp(6) with time zone,
    "submitted_by" "uuid",
    "campaign_funding_status" "public"."io_funding_status" DEFAULT 'awaiting_payment'::"public"."io_funding_status" NOT NULL,
    "current_balance" numeric(15,2) DEFAULT 0 NOT NULL,
    "total_commision" numeric(15,2)
);


ALTER TABLE "public"."campaigns" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."creative_assets" (
    "creative_id" "uuid" NOT NULL,
    "enhanced_asset_id" "uuid" NOT NULL,
    "position" integer DEFAULT 0 NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."creative_assets" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."creatives" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "created_by" "uuid" NOT NULL,
    "name" "text" NOT NULL,
    "description" "text",
    "type" "public"."creative_type" NOT NULL,
    "status" "public"."creative_status" DEFAULT 'pending'::"public"."creative_status" NOT NULL,
    "creative_data" "jsonb" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "is_variant" boolean DEFAULT false NOT NULL,
    "parent_creative_id" "uuid",
    "platform_compatibility" "jsonb",
    "variant_type" "text"
);


ALTER TABLE "public"."creatives" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."domain_alias" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "host" "text" NOT NULL,
    "redirect_to_host" "text" NOT NULL,
    "active_until" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."domain_alias" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."email_addresses" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid" NOT NULL,
    "email_address" "text" NOT NULL,
    "verification_status" "text" NOT NULL,
    "verification_strategy" "text" NOT NULL,
    "created_at" timestamp(6) with time zone NOT NULL,
    "updated_at" timestamp(6) with time zone NOT NULL
);


ALTER TABLE "public"."email_addresses" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."email_automation_rules" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "email_template_id" "uuid" NOT NULL,
    "name" "text" NOT NULL,
    "description" "text",
    "trigger_type" "public"."notification_trigger_type" NOT NULL,
    "trigger_conditions" "jsonb" NOT NULL,
    "delay_minutes" integer DEFAULT 0,
    "is_active" boolean DEFAULT true NOT NULL,
    "last_triggered_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."email_automation_rules" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."email_configurations" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "from_domain" "text",
    "from_name" "text",
    "from_email" "text",
    "reply_to_email" "text",
    "logo_url" "text",
    "primary_color" "text",
    "footer_text" "text",
    "enable_notifications" boolean DEFAULT true NOT NULL,
    "enable_marketing_emails" boolean DEFAULT false NOT NULL,
    "business_hours_start" integer DEFAULT 9,
    "business_hours_end" integer DEFAULT 17,
    "timezone" "text" DEFAULT 'UTC'::"text",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."email_configurations" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."email_events" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "email_notification_id" "uuid" NOT NULL,
    "event_type" "public"."email_event_type" NOT NULL,
    "timestamp" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "user_agent" "text",
    "ip_address" "text",
    "location" "jsonb",
    "provider_event_id" "text",
    "provider_data" "jsonb",
    "clicked_url" "text",
    "link_id" "text",
    "bounce_type" "text",
    "bounce_reason" "text",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."email_events" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."email_notifications" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "email_configuration_id" "uuid",
    "email_template_id" "uuid" NOT NULL,
    "to_email" "text" NOT NULL,
    "to_name" "text",
    "user_id" "uuid",
    "subject" "text" NOT NULL,
    "html_content" "text" NOT NULL,
    "text_content" "text",
    "from_email" "text" NOT NULL,
    "from_name" "text",
    "reply_to_email" "text",
    "status" "public"."email_status" DEFAULT 'queued'::"public"."email_status" NOT NULL,
    "priority" "public"."email_priority" DEFAULT 'normal'::"public"."email_priority" NOT NULL,
    "scheduled_at" timestamp(6) with time zone,
    "sent_at" timestamp(6) with time zone,
    "delivered_at" timestamp(6) with time zone,
    "trigger_type" "public"."notification_trigger_type",
    "trigger_entity_id" "uuid",
    "trigger_entity_type" "text",
    "provider_message_id" "text",
    "provider_data" "jsonb",
    "error_message" "text",
    "retry_count" integer DEFAULT 0 NOT NULL,
    "max_retries" integer DEFAULT 3 NOT NULL,
    "metadata" "jsonb",
    "template_variables" "jsonb",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."email_notifications" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."email_templates" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid",
    "email_configuration_id" "uuid",
    "template_type" "public"."email_template_type" NOT NULL,
    "name" "text" NOT NULL,
    "description" "text",
    "subject" "text" NOT NULL,
    "html_content" "text" NOT NULL,
    "text_content" "text",
    "variables" "jsonb",
    "is_system" boolean DEFAULT false NOT NULL,
    "is_active" boolean DEFAULT true NOT NULL,
    "version" integer DEFAULT 1 NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."email_templates" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."enhanced_assets" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "created_by" "uuid" NOT NULL,
    "name" "text" NOT NULL,
    "description" "text",
    "asset_type" "public"."asset_type" NOT NULL,
    "url" "text" NOT NULL,
    "mime_type" "text" NOT NULL,
    "size_bytes" bigint NOT NULL,
    "width" integer,
    "height" integer,
    "duration_seconds" numeric(10,2),
    "metadata" "jsonb",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."enhanced_assets" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."external_accounts" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid" NOT NULL,
    "provider_type" "text" NOT NULL,
    "provider_user_id" "text" NOT NULL,
    "created_at" timestamp(6) with time zone NOT NULL,
    "updated_at" timestamp(6) with time zone NOT NULL
);


ALTER TABLE "public"."external_accounts" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."history_log" (
    "id" "text" NOT NULL,
    "userId" "text" NOT NULL,
    "entityType" "text" NOT NULL,
    "entityId" "text" NOT NULL,
    "orgId" "text" NOT NULL,
    "action" "text" NOT NULL,
    "previousData" "jsonb" NOT NULL,
    "newData" "jsonb" NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."history_log" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."insertion_orders" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "created_by" "uuid" NOT NULL,
    "name" "text" NOT NULL,
    "description" "text",
    "start_date" timestamp(6) with time zone NOT NULL,
    "end_date" timestamp(6) with time zone,
    "timezone_id" integer NOT NULL,
    "total_budget" numeric(15,2) NOT NULL,
    "budget_type" "public"."budget_type" NOT NULL,
    "budget_distribution_method" "public"."budget_distribution_method" NOT NULL,
    "status" "public"."campaign_status" DEFAULT 'draft'::"public"."campaign_status" NOT NULL,
    "iqm_io_id" integer,
    "iqm_budget_day" numeric(15,2),
    "iqm_performance_goal" "text",
    "iqm_distribution_method_id" integer,
    "platform_references" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."insertion_orders" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."invoices" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "invoice_number" "text" NOT NULL,
    "amount" numeric(15,2) NOT NULL,
    "currency" "text" DEFAULT 'USD'::"text" NOT NULL,
    "status" "public"."invoice_status" DEFAULT 'draft'::"public"."invoice_status" NOT NULL,
    "due_date" "date" NOT NULL,
    "paid_at" timestamp(6) with time zone,
    "invoice_data" "jsonb" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."invoices" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."iqm_analytics" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "iqm_campaign_id" "uuid" NOT NULL,
    "date" "date" NOT NULL,
    "impressions" bigint DEFAULT 0 NOT NULL,
    "clicks" bigint DEFAULT 0 NOT NULL,
    "conversions" bigint DEFAULT 0 NOT NULL,
    "spend" numeric(15,4) DEFAULT 0 NOT NULL,
    "viewability_rate" numeric(10,6) DEFAULT 0,
    "completion_rate" numeric(10,6) DEFAULT 0,
    "iqm_specific_metrics" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "raw_data" "jsonb",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."iqm_analytics" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."iqm_campaigns" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "campaign_id" "uuid" NOT NULL,
    "iqm_configuration_id" "uuid" NOT NULL,
    "platform_campaign_id" "text",
    "platform_audience_id" "text",
    "advertiser_domain" "text",
    "creative_type" integer,
    "campaign_type" integer,
    "total_budget_pacing" boolean DEFAULT false NOT NULL,
    "is_tv_ad" boolean DEFAULT false NOT NULL,
    "budget_day" numeric(15,2),
    "budget_total" numeric(15,2),
    "max_bid" numeric(15,2),
    "dsp_margin" integer,
    "platform_margin" integer,
    "user_deal_margin" integer,
    "targeting" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "status" "public"."platform_campaign_status" DEFAULT 'pending'::"public"."platform_campaign_status" NOT NULL,
    "server_logs" "jsonb" DEFAULT '[]'::"jsonb" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "scheduling" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "demographics" "jsonb" DEFAULT '{}'::"jsonb",
    "bid_pacing" boolean DEFAULT false,
    "impression_capping" integer,
    "max_day_impressions" integer,
    "total_impressions" integer,
    "max_day_clicks" integer,
    "total_clicks" integer,
    "max_day_conversions" integer,
    "total_conversions" integer,
    "deviceSettings" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "actual_budget" numeric(15,2),
    "commision_budget" numeric(15,2)
);


ALTER TABLE "public"."iqm_campaigns" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."iqm_configurations" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "workspace_id" "text" NOT NULL,
    "api_credentials" "jsonb" NOT NULL,
    "default_settings" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "viewability_settings" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "status" "public"."credential_status" DEFAULT 'active'::"public"."credential_status" NOT NULL,
    "last_sync_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."iqm_configurations" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."line_items" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "platform_specific_campaign_id" "uuid" NOT NULL,
    "platform_line_item_id" "text",
    "name" "text" NOT NULL,
    "product_type" "text",
    "goal" "text",
    "bid_strategy" "text",
    "bid_amount" numeric(15,2),
    "status" "public"."platform_campaign_status" DEFAULT 'pending'::"public"."platform_campaign_status" NOT NULL,
    "platform_specific_fields" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "server_logs" "jsonb" DEFAULT '[]'::"jsonb" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."line_items" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."meta_ad_sets" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "meta_campaign_id" "uuid" NOT NULL,
    "platform_ad_set_id" "text",
    "name" "text" NOT NULL,
    "optimization_goal" "text",
    "billing_event" "text",
    "bid_amount" numeric(15,2),
    "budget" numeric(15,2),
    "daily_budget" numeric(15,2),
    "targeting" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "status" "public"."platform_campaign_status" DEFAULT 'pending'::"public"."platform_campaign_status" NOT NULL,
    "platform_status" "text",
    "server_logs" "jsonb" DEFAULT '[]'::"jsonb" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."meta_ad_sets" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."meta_ads" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "meta_ad_set_id" "uuid" NOT NULL,
    "creative_id" "uuid" NOT NULL,
    "platform_ad_id" "text",
    "name" "text" NOT NULL,
    "status" "public"."platform_campaign_status" DEFAULT 'pending'::"public"."platform_campaign_status" NOT NULL,
    "platform_status" "text",
    "ad_creative_data" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "tracking_specs" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "server_logs" "jsonb" DEFAULT '[]'::"jsonb" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."meta_ads" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."meta_campaigns" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "campaign_id" "uuid" NOT NULL,
    "meta_configuration_id" "uuid" NOT NULL,
    "platform_campaign_id" "text",
    "objective" "text",
    "buying_type" "text",
    "budget" numeric(15,2),
    "daily_budget" numeric(15,2),
    "bid_strategy" "text",
    "bid_amount" numeric(15,2),
    "targeting" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "status" "public"."platform_campaign_status" DEFAULT 'pending'::"public"."platform_campaign_status" NOT NULL,
    "platform_status" "text",
    "server_logs" "jsonb" DEFAULT '[]'::"jsonb" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."meta_campaigns" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."meta_configurations" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "ad_account_id" "text" NOT NULL,
    "business_manager_id" "text",
    "api_credentials" "jsonb" NOT NULL,
    "default_settings" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "pixel_id" "text",
    "status" "public"."credential_status" DEFAULT 'active'::"public"."credential_status" NOT NULL,
    "last_sync_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."meta_configurations" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."module_permissions" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "module_id" "uuid" NOT NULL,
    "name" "text" NOT NULL,
    "displayName" "text" NOT NULL,
    "description" "text",
    "isActive" boolean DEFAULT true NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."module_permissions" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."notification_logs" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "notification_id" "uuid" NOT NULL,
    "org_id" "uuid" NOT NULL,
    "user_id" "uuid" NOT NULL,
    "action" "public"."notification_log_action" NOT NULL,
    "status" "public"."notification_log_status" NOT NULL,
    "channel" "public"."notification_channel" NOT NULL,
    "details" "jsonb",
    "error_message" "text",
    "retry_count" integer DEFAULT 0 NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "processed_at" timestamp(6) with time zone
);


ALTER TABLE "public"."notification_logs" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."notification_preferences" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid" NOT NULL,
    "io_notifications" boolean DEFAULT true NOT NULL,
    "campaign_notifications" boolean DEFAULT true NOT NULL,
    "payment_notifications" boolean DEFAULT true NOT NULL,
    "email_io_notifications" boolean DEFAULT true NOT NULL,
    "email_campaign_notifications" boolean DEFAULT true NOT NULL,
    "email_payment_notifications" boolean DEFAULT true NOT NULL,
    "push_enabled" boolean DEFAULT false NOT NULL,
    "sound_enabled" boolean DEFAULT true NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."notification_preferences" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."notifications" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "user_id" "uuid" NOT NULL,
    "type" "public"."notification_type" NOT NULL,
    "title" "text" NOT NULL,
    "message" "text" NOT NULL,
    "entity_type" "text",
    "entity_id" "uuid",
    "metadata" "jsonb",
    "action_url" "text",
    "is_read" boolean DEFAULT false NOT NULL,
    "read_at" timestamp(6) with time zone,
    "priority" "public"."notification_priority" DEFAULT 'normal'::"public"."notification_priority" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "expires_at" timestamp(6) with time zone
);


ALTER TABLE "public"."notifications" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."onboarding_steps" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "is_completed" boolean DEFAULT false NOT NULL,
    "completed_at" timestamp(6) with time zone,
    "step_data" "jsonb",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "step_type" "public"."onboarding_step_type" NOT NULL,
    "user_id" "uuid" NOT NULL
);


ALTER TABLE "public"."onboarding_steps" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."organization_branding" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "payment_header_text" "text",
    "payment_footer_text" "text",
    "trust_badges" "jsonb",
    "payment_success_url" "text",
    "payment_cancel_url" "text",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."organization_branding" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."organization_details" (
    "org_id" "uuid" NOT NULL,
    "name" "text" NOT NULL,
    "description" "text",
    "logo_url" "text",
    "primary_color" "text",
    "secondary_color" "text",
    "contact_email" "text",
    "contact_phone" "text",
    "address" "jsonb",
    "timezone" "text" DEFAULT 'UTC'::"text",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."organization_details" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."organization_hierarchy" (
    "parent_org_id" "uuid" NOT NULL,
    "child_org_id" "uuid" NOT NULL,
    "relationship_type" "public"."relationship_type" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."organization_hierarchy" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."organization_invites" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "invite_code" "text" NOT NULL,
    "created_by" "uuid" NOT NULL,
    "invited_email" "text" NOT NULL,
    "role_id" "uuid" NOT NULL,
    "used_by" "uuid",
    "used_at" timestamp(6) with time zone,
    "expires_at" timestamp(6) with time zone,
    "is_active" boolean DEFAULT true NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "temporary_password_hash" "text",
    "invitee_first_name" "text" NOT NULL,
    "invitee_last_name" "text" NOT NULL
);


ALTER TABLE "public"."organization_invites" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."organization_members" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "user_id" "uuid" NOT NULL,
    "role_id" "uuid" NOT NULL
);


ALTER TABLE "public"."organization_members" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."organization_role_permissions" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "role_id" "uuid" NOT NULL,
    "module_id" "uuid" NOT NULL,
    "permission_id" "uuid" NOT NULL,
    "isGranted" boolean DEFAULT false NOT NULL,
    "granted_by" "uuid" NOT NULL,
    "granted_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."organization_role_permissions" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."organizations" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "slug" "text" NOT NULL,
    "type" "public"."organization_type" NOT NULL,
    "parent_org_id" "uuid",
    "created_by" "uuid",
    "display_name" "text",
    "organization_settings" "jsonb" DEFAULT '{}'::"jsonb",
    "default_timezone" "text" DEFAULT 'UTC'::"text",
    "default_currency" "text" DEFAULT 'USD'::"text",
    "billing_address" "jsonb",
    "tax_information" "jsonb",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "vendor_org_id" "text",
    "agencyMailed" boolean DEFAULT false NOT NULL,
    "agencySetup" boolean DEFAULT false NOT NULL
);


ALTER TABLE "public"."organizations" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."payment_allocations" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "payment_log_id" "uuid" NOT NULL,
    "org_id" "uuid" NOT NULL,
    "campaign_id" "uuid" NOT NULL,
    "insertion_order_id" "uuid",
    "amount_media" numeric(15,2) NOT NULL,
    "fee_cpg" numeric(15,2) NOT NULL,
    "tax_amount" numeric(15,2),
    "amount_total" numeric(15,2) NOT NULL,
    "currency" "text" DEFAULT 'USD'::"text" NOT NULL,
    "status" "public"."payment_status" DEFAULT 'pending'::"public"."payment_status" NOT NULL,
    "payment_type" "public"."payment_log_type" DEFAULT 'initial'::"public"."payment_log_type" NOT NULL,
    "processed_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."payment_allocations" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."payment_logs" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "campaign_id" "uuid",
    "insertion_order_id" "uuid",
    "amount_media" numeric(15,2) NOT NULL,
    "fee_cpg" numeric(15,2) NOT NULL,
    "tax_amount" numeric(15,2),
    "amount_total" numeric(15,2) NOT NULL,
    "currency" "text" DEFAULT 'USD'::"text" NOT NULL,
    "status" "public"."payment_status" DEFAULT 'pending'::"public"."payment_status" NOT NULL,
    "paidPlatforms" "jsonb" NOT NULL,
    "payment_type" "public"."payment_log_type" DEFAULT 'initial'::"public"."payment_log_type" NOT NULL,
    "stripe_payment_intent_id" "text",
    "stripe_charge_id" "text",
    "stripe_invoice_id" "text",
    "receipt_url" "text",
    "processor_fees" numeric(15,2),
    "failure_reason" "text",
    "failure_code" "text",
    "metadata" "jsonb",
    "processed_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "invoice_line_items" "jsonb",
    "invoice_pdf_url" "text",
    "r2_invoice_url" "text"
);


ALTER TABLE "public"."payment_logs" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."payments" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "type" "public"."payment_type" NOT NULL,
    "amount" numeric(15,2) NOT NULL,
    "currency" "text" DEFAULT 'USD'::"text" NOT NULL,
    "payment_data" "jsonb" NOT NULL,
    "processed_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."payments" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."performance_metrics" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid",
    "environment" "public"."execution_environment" NOT NULL,
    "service" "text" NOT NULL,
    "operation" "text" NOT NULL,
    "trace_id" "text",
    "response_time_ms" integer NOT NULL,
    "db_query_time_ms" integer,
    "external_api_time_ms" integer,
    "memory_usage_mb" double precision,
    "cpu_usage_percent" double precision,
    "request_size" integer,
    "response_size" integer,
    "concurrent_requests" integer,
    "success_count" integer DEFAULT 1 NOT NULL,
    "error_count" integer DEFAULT 0 NOT NULL,
    "timeout_count" integer DEFAULT 0 NOT NULL,
    "region" "text",
    "server_instance" "text",
    "minute_bucket" timestamp(6) with time zone NOT NULL,
    "hour_bucket" timestamp(6) with time zone NOT NULL,
    "day_bucket" "date" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."performance_metrics" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."permission_audit_logs" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "target_user_id" "uuid" NOT NULL,
    "changed_by" "uuid" NOT NULL,
    "role_id" "uuid" NOT NULL,
    "module_id" "uuid" NOT NULL,
    "permission_id" "uuid" NOT NULL,
    "action" "public"."permission_action" NOT NULL,
    "previous_value" boolean,
    "new_value" boolean NOT NULL,
    "reason" "text",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."permission_audit_logs" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."phone_numbers" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid" NOT NULL,
    "phone_number" "text" NOT NULL,
    "verification_status" "text" NOT NULL,
    "created_at" timestamp(6) with time zone NOT NULL,
    "updated_at" timestamp(6) with time zone NOT NULL
);


ALTER TABLE "public"."phone_numbers" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."platform_campaigns" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "campaign_id" "uuid" NOT NULL,
    "platform" "public"."platform" NOT NULL,
    "platform_campaign_id" "text",
    "platform_data" "jsonb",
    "status" "public"."platform_campaign_status" DEFAULT 'pending'::"public"."platform_campaign_status" NOT NULL,
    "error_message" "text",
    "last_sync_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."platform_campaigns" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."platform_configurations" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "platform" "public"."platform" NOT NULL,
    "account_id" "text",
    "workspace_id" "text",
    "business_manager_id" "text",
    "api_credentials" "jsonb" NOT NULL,
    "default_settings" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "status" "public"."credential_status" DEFAULT 'active'::"public"."credential_status" NOT NULL,
    "last_sync_at" timestamp(6) with time zone,
    "expires_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."platform_configurations" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."platform_creatives" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "creative_id" "uuid" NOT NULL,
    "platform" "public"."platform" NOT NULL,
    "platform_creative_id" "text",
    "status" "public"."creative_status" DEFAULT 'pending'::"public"."creative_status" NOT NULL,
    "platform_status" "text",
    "platform_specific_data" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "last_synced_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "assigned_by" "uuid",
    "campaign_id" "uuid",
    "is_active" boolean DEFAULT true NOT NULL,
    "org_id" "uuid" NOT NULL,
    "position" integer DEFAULT 0,
    "sync_logs" "jsonb" DEFAULT '[]'::"jsonb" NOT NULL,
    "variations" "jsonb"
);


ALTER TABLE "public"."platform_creatives" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."platform_credentials" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid",
    "platform" "public"."platform" NOT NULL,
    "type" "public"."credential_type" NOT NULL,
    "credentials" "jsonb" NOT NULL,
    "status" "public"."credential_status" DEFAULT 'active'::"public"."credential_status" NOT NULL,
    "expires_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."platform_credentials" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."platform_specific_campaigns" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "campaign_id" "uuid" NOT NULL,
    "platform_configuration_id" "uuid" NOT NULL,
    "platform" "public"."platform" NOT NULL,
    "platform_campaign_id" "text",
    "status" "public"."platform_campaign_status" DEFAULT 'pending'::"public"."platform_campaign_status" NOT NULL,
    "platform_status" "text",
    "budget" numeric(15,2) NOT NULL,
    "daily_budget" numeric(15,2),
    "platform_specific_data" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "error_message" "text",
    "last_synced_at" timestamp(6) with time zone,
    "server_logs" "jsonb" DEFAULT '[]'::"jsonb" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."platform_specific_campaigns" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."real_time_metrics" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "campaign_id" "uuid",
    "insertion_order_id" "uuid",
    "platform" "public"."platform" NOT NULL,
    "metric_type" "public"."metric_type" NOT NULL,
    "value" numeric(15,4) NOT NULL,
    "timestamp" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "hour_bucket" timestamp(6) with time zone NOT NULL,
    "day_bucket" "date" NOT NULL
);


ALTER TABLE "public"."real_time_metrics" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."refunds" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "payment_log_id" "uuid" NOT NULL,
    "payment_allocation_id" "uuid",
    "campaign_id" "uuid",
    "amount_media" numeric(15,2) NOT NULL,
    "fee_cpg" numeric(15,2) NOT NULL,
    "amount_total" numeric(15,2) NOT NULL,
    "currency" "text" DEFAULT 'USD'::"text" NOT NULL,
    "reason" "public"."refund_reason" NOT NULL,
    "status" "public"."refund_status" DEFAULT 'pending'::"public"."refund_status" NOT NULL,
    "description" "text",
    "stripe_refund_id" "text",
    "metadata" "jsonb",
    "failure_reason" "text",
    "refunded_by" "uuid",
    "processed_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."refunds" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."reports" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "created_by" "uuid" NOT NULL,
    "name" "text" NOT NULL,
    "description" "text",
    "report_type" "public"."report_type" NOT NULL,
    "status" "public"."report_status" DEFAULT 'generating'::"public"."report_status" NOT NULL,
    "format" "public"."report_format" NOT NULL,
    "parameters" "jsonb" NOT NULL,
    "file_path" "text",
    "download_url" "text",
    "scheduled_at" timestamp(6) with time zone,
    "generated_at" timestamp(6) with time zone,
    "expires_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."reports" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."roles" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL
);


ALTER TABLE "public"."roles" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."settings" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "scope" "public"."setting_scope" DEFAULT 'PLATFORM'::"public"."setting_scope" NOT NULL,
    "scope_id" "uuid",
    "key" "text" NOT NULL,
    "value" "jsonb" NOT NULL,
    "category" "text",
    "metadata" "jsonb",
    "created_by" "uuid",
    "updated_by" "uuid",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."settings" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."sidebar_sections" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "section_id" integer NOT NULL,
    "heading_text" character varying(100) NOT NULL,
    "section_icon" character varying(100) NOT NULL,
    "tooltip_text" character varying(100) NOT NULL,
    "roles" "text"[],
    "is_active" boolean DEFAULT true NOT NULL,
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."sidebar_sections" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."stripe_webhook_events" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "stripe_event_id" "text" NOT NULL,
    "event_type" "text" NOT NULL,
    "processed" boolean DEFAULT false NOT NULL,
    "processed_at" timestamp(6) with time zone,
    "attempts" integer DEFAULT 0 NOT NULL,
    "event_data" "jsonb" NOT NULL,
    "error_message" "text",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."stripe_webhook_events" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."system_modules" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "displayName" "text" NOT NULL,
    "description" "text",
    "category" "text",
    "isActive" boolean DEFAULT true NOT NULL,
    "sortOrder" integer DEFAULT 0 NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."system_modules" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."targeting_criteria" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "platform_specific_campaign_id" "uuid",
    "line_item_id" "uuid",
    "platform_targeting_id" "text",
    "targeting_type" "text" NOT NULL,
    "targeting_value" "text" NOT NULL,
    "operator_type" "text" DEFAULT 'EQ'::"text" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."targeting_criteria" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."transactions" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "payment_id" "uuid",
    "type" "public"."transaction_type" NOT NULL,
    "amount" numeric(15,2) NOT NULL,
    "currency" "text" DEFAULT 'USD'::"text" NOT NULL,
    "status" "public"."transaction_status" DEFAULT 'pending'::"public"."transaction_status" NOT NULL,
    "reference" "text",
    "metadata" "jsonb",
    "processed_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."transactions" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."unified_logs" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "log_type" "public"."log_type" NOT NULL,
    "status" "public"."log_status" DEFAULT 'pending'::"public"."log_status" NOT NULL,
    "level" "public"."log_level" DEFAULT 'info'::"public"."log_level" NOT NULL,
    "trace_id" "text" NOT NULL,
    "org_id" "uuid",
    "user_id" "uuid",
    "session_id" "text",
    "environment" "public"."execution_environment" DEFAULT 'backend_api'::"public"."execution_environment" NOT NULL,
    "source_service" "text" NOT NULL,
    "source_function" "text",
    "source_file" "text",
    "third_party_service" "text",
    "api_endpoint" "text",
    "http_method" "text",
    "http_status_code" integer,
    "function_name" "text",
    "region" "text",
    "runtime" "text",
    "is_cold_start" boolean,
    "request_data" "jsonb",
    "response_data" "jsonb",
    "duration_ms" integer,
    "memory_usage_mb" double precision,
    "error_message" "text",
    "error_code" "text",
    "error_type" "text",
    "stack_trace" "text",
    "campaign_id" "uuid",
    "insertion_order_id" "uuid",
    "operation_type" "text",
    "message" "text",
    "metadata" "jsonb",
    "rate_limit_remaining" integer,
    "quota_used" integer,
    "retry_attempt" integer DEFAULT 0 NOT NULL,
    "initiated_at" timestamp(6) with time zone,
    "completed_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."unified_logs" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_email_preferences" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid" NOT NULL,
    "org_id" "uuid",
    "enable_campaign_alerts" boolean DEFAULT true NOT NULL,
    "enable_onboarding_emails" boolean DEFAULT true NOT NULL,
    "enable_marketing_emails" boolean DEFAULT false NOT NULL,
    "enable_system_emails" boolean DEFAULT true NOT NULL,
    "alert_frequency" "text" DEFAULT 'immediate'::"text",
    "unsubscribe_token" "text",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."user_email_preferences" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_preferences" (
    "user_id" "uuid" NOT NULL,
    "theme" "text" DEFAULT 'light'::"text",
    "notification_settings" "jsonb" DEFAULT '{"sms": false, "push": true, "email": true}'::"jsonb",
    "dashboard_layout" "jsonb",
    "timezone" "text" DEFAULT 'UTC'::"text",
    "currency" "text" DEFAULT 'USD'::"text",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "onboarding_data" "jsonb" DEFAULT '[]'::"jsonb" NOT NULL
);


ALTER TABLE "public"."user_preferences" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."users" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "clerk_user_id" "text" NOT NULL,
    "email" "text",
    "first_name" "text",
    "last_name" "text",
    "username" "text",
    "image_url" "text",
    "profile_image_url" "text",
    "external_id" "text",
    "password_enabled" boolean DEFAULT true NOT NULL,
    "two_factor_enabled" boolean DEFAULT false NOT NULL,
    "last_sign_in_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "primary_email_address_id" "text",
    "primary_phone_number_id" "uuid",
    "primary_web3_wallet_id" "uuid",
    "all_step_completed" boolean DEFAULT false NOT NULL,
    "user_role_id" "uuid"
);


ALTER TABLE "public"."users" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."wallet_transactions" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "wallet_id" "uuid" NOT NULL,
    "transaction_type" "public"."transaction_type" NOT NULL,
    "amount" numeric(15,2) NOT NULL,
    "status" "public"."transaction_status" DEFAULT 'pending'::"public"."transaction_status" NOT NULL,
    "description" "text",
    "reference" "text",
    "metadata" "jsonb",
    "processed_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."wallet_transactions" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."wallets" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "balance" numeric(15,2) DEFAULT 0 NOT NULL,
    "currency" "text" DEFAULT 'USD'::"text" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."wallets" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."web3_wallets" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid" NOT NULL,
    "wallet_address" "text" NOT NULL,
    "created_at" timestamp(6) with time zone NOT NULL,
    "updated_at" timestamp(6) with time zone NOT NULL
);


ALTER TABLE "public"."web3_wallets" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."white_label_settings" (
    "orgId" "uuid" NOT NULL,
    "userId" "uuid" NOT NULL,
    "customDomain" "text",
    "subdomain" "text",
    "faviconUrl" "text",
    "logoUrl" "text",
    "loginBackgroundUrl" "text",
    "termsUrl" "text",
    "privacyUrl" "text",
    "supportUrl" "text",
    "primaryColor" "text",
    "secondaryColor" "text",
    "description" "text",
    "supportEmail" "text",
    "contactEmail" "text",
    "contactPhone" "text",
    "address" "jsonb",
    "companyName" "text" NOT NULL,
    "websiteUrl" "text" NOT NULL,
    "config" "jsonb",
    "whitelabel_config_id" "uuid",
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."white_label_settings" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."whitelabel_config" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "config" "jsonb",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."whitelabel_config" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."x_analytics" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "x_campaign_id" "uuid",
    "x_line_item_id" "uuid",
    "date" "date" NOT NULL,
    "impressions" bigint DEFAULT 0 NOT NULL,
    "clicks" bigint DEFAULT 0 NOT NULL,
    "spend" numeric(15,4) DEFAULT 0 NOT NULL,
    "engagements" bigint DEFAULT 0 NOT NULL,
    "retweets" bigint DEFAULT 0 NOT NULL,
    "likes" bigint DEFAULT 0 NOT NULL,
    "follows" bigint DEFAULT 0 NOT NULL,
    "replies" bigint DEFAULT 0 NOT NULL,
    "card_engagements" bigint DEFAULT 0 NOT NULL,
    "url_clicks" bigint DEFAULT 0 NOT NULL,
    "qualified_impressions" bigint DEFAULT 0 NOT NULL,
    "video_views" bigint DEFAULT 0 NOT NULL,
    "raw_data" "jsonb",
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."x_analytics" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."x_campaigns" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "campaign_id" "uuid" NOT NULL,
    "x_configuration_id" "uuid" NOT NULL,
    "platform_campaign_id" "text",
    "funding_instrument_id" "text" NOT NULL,
    "daily_budget_amount_local_micro" bigint,
    "total_budget_amount_local_micro" bigint,
    "budget_optimization" "text",
    "standard_delivery" boolean DEFAULT true NOT NULL,
    "frequency_cap" "jsonb",
    "status" "public"."platform_campaign_status" DEFAULT 'pending'::"public"."platform_campaign_status" NOT NULL,
    "platform_status" "text",
    "server_logs" "jsonb" DEFAULT '[]'::"jsonb" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."x_campaigns" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."x_configurations" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "org_id" "uuid" NOT NULL,
    "account_id" "text" NOT NULL,
    "api_credentials" "jsonb" NOT NULL,
    "default_settings" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "funding_instruments" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "status" "public"."credential_status" DEFAULT 'active'::"public"."credential_status" NOT NULL,
    "last_sync_at" timestamp(6) with time zone,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."x_configurations" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."x_line_items" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "x_campaign_id" "uuid" NOT NULL,
    "platform_line_item_id" "text",
    "name" "text" NOT NULL,
    "product_type" "text",
    "placements" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "bid_amount_local_micro" bigint,
    "bid_strategy" "text",
    "goal" "text",
    "advertiser_domain" "text",
    "status" "public"."platform_campaign_status" DEFAULT 'pending'::"public"."platform_campaign_status" NOT NULL,
    "platform_status" "text",
    "server_logs" "jsonb" DEFAULT '[]'::"jsonb" NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(6) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."x_line_items" OWNER TO "postgres";


ALTER TABLE ONLY "public"."ad_sets"
    ADD CONSTRAINT "ad_sets_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."ads"
    ADD CONSTRAINT "ads_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."agency_applications"
    ADD CONSTRAINT "agency_applications_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."agency_customers"
    ADD CONSTRAINT "agency_customers_pkey" PRIMARY KEY ("agency_org_id", "customer_org_id");



ALTER TABLE ONLY "public"."agency_fees"
    ADD CONSTRAINT "agency_fees_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."agency_platform_access"
    ADD CONSTRAINT "agency_platform_access_pkey" PRIMARY KEY ("agency_org_id", "customer_org_id", "platform");



ALTER TABLE ONLY "public"."analytics_aggregated"
    ADD CONSTRAINT "analytics_aggregated_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."analytics_data"
    ADD CONSTRAINT "analytics_data_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."assets"
    ADD CONSTRAINT "assets_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."audiences"
    ADD CONSTRAINT "audiences_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."campaign_alerts"
    ADD CONSTRAINT "campaign_alerts_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."campaign_audiences"
    ADD CONSTRAINT "campaign_audiences_pkey" PRIMARY KEY ("org_id", "campaign_id", "audience_id");



ALTER TABLE ONLY "public"."campaign_categories"
    ADD CONSTRAINT "campaign_categories_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."campaign_creatives"
    ADD CONSTRAINT "campaign_creatives_pkey" PRIMARY KEY ("org_id", "campaign_id", "creative_id");



ALTER TABLE ONLY "public"."campaign_priorities"
    ADD CONSTRAINT "campaign_priorities_pkey" PRIMARY KEY ("priority_id");



ALTER TABLE ONLY "public"."campaign_steps"
    ADD CONSTRAINT "campaign_steps_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."campaign_transactions"
    ADD CONSTRAINT "campaign_transactions_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."campaigns"
    ADD CONSTRAINT "campaigns_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."creative_assets"
    ADD CONSTRAINT "creative_assets_pkey" PRIMARY KEY ("creative_id", "enhanced_asset_id");



ALTER TABLE ONLY "public"."creatives"
    ADD CONSTRAINT "creatives_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."domain_alias"
    ADD CONSTRAINT "domain_alias_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."email_addresses"
    ADD CONSTRAINT "email_addresses_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."email_automation_rules"
    ADD CONSTRAINT "email_automation_rules_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."email_configurations"
    ADD CONSTRAINT "email_configurations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."email_events"
    ADD CONSTRAINT "email_events_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."email_notifications"
    ADD CONSTRAINT "email_notifications_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."email_templates"
    ADD CONSTRAINT "email_templates_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."enhanced_assets"
    ADD CONSTRAINT "enhanced_assets_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."external_accounts"
    ADD CONSTRAINT "external_accounts_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."history_log"
    ADD CONSTRAINT "history_log_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."insertion_orders"
    ADD CONSTRAINT "insertion_orders_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."invoices"
    ADD CONSTRAINT "invoices_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."iqm_analytics"
    ADD CONSTRAINT "iqm_analytics_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."iqm_campaigns"
    ADD CONSTRAINT "iqm_campaigns_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."iqm_configurations"
    ADD CONSTRAINT "iqm_configurations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."line_items"
    ADD CONSTRAINT "line_items_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."meta_ad_sets"
    ADD CONSTRAINT "meta_ad_sets_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."meta_ads"
    ADD CONSTRAINT "meta_ads_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."meta_campaigns"
    ADD CONSTRAINT "meta_campaigns_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."meta_configurations"
    ADD CONSTRAINT "meta_configurations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."module_permissions"
    ADD CONSTRAINT "module_permissions_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."notification_logs"
    ADD CONSTRAINT "notification_logs_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."notification_preferences"
    ADD CONSTRAINT "notification_preferences_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."notifications"
    ADD CONSTRAINT "notifications_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."onboarding_steps"
    ADD CONSTRAINT "onboarding_steps_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."organization_branding"
    ADD CONSTRAINT "organization_branding_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."organization_details"
    ADD CONSTRAINT "organization_details_pkey" PRIMARY KEY ("org_id");



ALTER TABLE ONLY "public"."organization_hierarchy"
    ADD CONSTRAINT "organization_hierarchy_pkey" PRIMARY KEY ("parent_org_id", "child_org_id");



ALTER TABLE ONLY "public"."organization_invites"
    ADD CONSTRAINT "organization_invites_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."organization_members"
    ADD CONSTRAINT "organization_members_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."organization_role_permissions"
    ADD CONSTRAINT "organization_role_permissions_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."organizations"
    ADD CONSTRAINT "organizations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."payment_allocations"
    ADD CONSTRAINT "payment_allocations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."payment_logs"
    ADD CONSTRAINT "payment_logs_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."payments"
    ADD CONSTRAINT "payments_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."performance_metrics"
    ADD CONSTRAINT "performance_metrics_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."permission_audit_logs"
    ADD CONSTRAINT "permission_audit_logs_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."phone_numbers"
    ADD CONSTRAINT "phone_numbers_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."platform_campaigns"
    ADD CONSTRAINT "platform_campaigns_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."platform_configurations"
    ADD CONSTRAINT "platform_configurations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."platform_creatives"
    ADD CONSTRAINT "platform_creatives_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."platform_credentials"
    ADD CONSTRAINT "platform_credentials_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."platform_specific_campaigns"
    ADD CONSTRAINT "platform_specific_campaigns_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."real_time_metrics"
    ADD CONSTRAINT "real_time_metrics_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."refunds"
    ADD CONSTRAINT "refunds_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."reports"
    ADD CONSTRAINT "reports_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."roles"
    ADD CONSTRAINT "roles_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."settings"
    ADD CONSTRAINT "settings_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."sidebar_sections"
    ADD CONSTRAINT "sidebar_sections_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."stripe_webhook_events"
    ADD CONSTRAINT "stripe_webhook_events_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."system_modules"
    ADD CONSTRAINT "system_modules_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."targeting_criteria"
    ADD CONSTRAINT "targeting_criteria_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."transactions"
    ADD CONSTRAINT "transactions_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."unified_logs"
    ADD CONSTRAINT "unified_logs_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."user_email_preferences"
    ADD CONSTRAINT "user_email_preferences_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."user_preferences"
    ADD CONSTRAINT "user_preferences_pkey" PRIMARY KEY ("user_id");



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."wallet_transactions"
    ADD CONSTRAINT "wallet_transactions_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."wallets"
    ADD CONSTRAINT "wallets_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."web3_wallets"
    ADD CONSTRAINT "web3_wallets_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."white_label_settings"
    ADD CONSTRAINT "white_label_settings_pkey" PRIMARY KEY ("orgId");



ALTER TABLE ONLY "public"."whitelabel_config"
    ADD CONSTRAINT "whitelabel_config_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."x_analytics"
    ADD CONSTRAINT "x_analytics_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."x_campaigns"
    ADD CONSTRAINT "x_campaigns_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."x_configurations"
    ADD CONSTRAINT "x_configurations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."x_line_items"
    ADD CONSTRAINT "x_line_items_pkey" PRIMARY KEY ("id");



CREATE UNIQUE INDEX "agency_applications_created_by_company_name_key" ON "public"."agency_applications" USING "btree" ("created_by", "company_name");



CREATE INDEX "analytics_aggregated_campaign_id_platform_idx" ON "public"."analytics_aggregated" USING "btree" ("campaign_id", "platform");



CREATE INDEX "analytics_aggregated_date_hour_idx" ON "public"."analytics_aggregated" USING "btree" ("date", "hour");



CREATE UNIQUE INDEX "analytics_aggregated_org_id_campaign_id_platform_date_hour_key" ON "public"."analytics_aggregated" USING "btree" ("org_id", "campaign_id", "platform", "date", "hour");



CREATE INDEX "analytics_aggregated_org_id_date_idx" ON "public"."analytics_aggregated" USING "btree" ("org_id", "date");



CREATE UNIQUE INDEX "analytics_data_org_id_campaign_id_platform_date_key" ON "public"."analytics_data" USING "btree" ("org_id", "campaign_id", "platform", "date");



CREATE INDEX "campaign_alerts_campaign_id_severity_idx" ON "public"."campaign_alerts" USING "btree" ("campaign_id", "severity");



CREATE INDEX "campaign_alerts_created_at_idx" ON "public"."campaign_alerts" USING "btree" ("created_at");



CREATE INDEX "campaign_alerts_org_id_is_read_idx" ON "public"."campaign_alerts" USING "btree" ("org_id", "is_read");



CREATE INDEX "campaign_audiences_org_id_campaign_id_is_active_idx" ON "public"."campaign_audiences" USING "btree" ("org_id", "campaign_id", "is_active");



CREATE INDEX "campaign_audiences_org_id_is_active_idx" ON "public"."campaign_audiences" USING "btree" ("org_id", "is_active");



CREATE UNIQUE INDEX "campaign_categories_name_key" ON "public"."campaign_categories" USING "btree" ("name");



CREATE INDEX "campaign_creatives_org_id_campaign_id_position_idx" ON "public"."campaign_creatives" USING "btree" ("org_id", "campaign_id", "position");



CREATE INDEX "campaign_creatives_org_id_is_active_idx" ON "public"."campaign_creatives" USING "btree" ("org_id", "is_active");



CREATE UNIQUE INDEX "campaign_steps_org_id_campaign_id_step_name_key" ON "public"."campaign_steps" USING "btree" ("org_id", "campaign_id", "step_name");



CREATE INDEX "campaign_steps_org_id_campaign_id_step_order_idx" ON "public"."campaign_steps" USING "btree" ("org_id", "campaign_id", "step_order");



CREATE INDEX "campaign_steps_org_id_is_completed_idx" ON "public"."campaign_steps" USING "btree" ("org_id", "is_completed");



CREATE INDEX "campaign_transactions_campaign_id_occurred_at_idx" ON "public"."campaign_transactions" USING "btree" ("campaign_id", "occurred_at");



CREATE INDEX "campaign_transactions_insertion_order_id_occurred_at_idx" ON "public"."campaign_transactions" USING "btree" ("insertion_order_id", "occurred_at");



CREATE INDEX "domain_alias_active_until_idx" ON "public"."domain_alias" USING "btree" ("active_until");



CREATE UNIQUE INDEX "domain_alias_host_key" ON "public"."domain_alias" USING "btree" ("host");



CREATE INDEX "domain_alias_org_idx" ON "public"."domain_alias" USING "btree" ("org_id");



CREATE UNIQUE INDEX "email_addresses_user_id_email_address_key" ON "public"."email_addresses" USING "btree" ("user_id", "email_address");



CREATE UNIQUE INDEX "email_configurations_org_id_key" ON "public"."email_configurations" USING "btree" ("org_id");



CREATE INDEX "email_events_email_notification_id_event_type_idx" ON "public"."email_events" USING "btree" ("email_notification_id", "event_type");



CREATE INDEX "email_events_event_type_timestamp_idx" ON "public"."email_events" USING "btree" ("event_type", "timestamp");



CREATE INDEX "email_events_timestamp_idx" ON "public"."email_events" USING "btree" ("timestamp");



CREATE INDEX "email_notifications_org_id_status_scheduled_at_idx" ON "public"."email_notifications" USING "btree" ("org_id", "status", "scheduled_at");



CREATE INDEX "email_notifications_scheduled_at_status_idx" ON "public"."email_notifications" USING "btree" ("scheduled_at", "status");



CREATE INDEX "email_notifications_to_email_status_idx" ON "public"."email_notifications" USING "btree" ("to_email", "status");



CREATE INDEX "email_notifications_trigger_type_trigger_entity_id_idx" ON "public"."email_notifications" USING "btree" ("trigger_type", "trigger_entity_id");



CREATE INDEX "email_notifications_user_id_status_idx" ON "public"."email_notifications" USING "btree" ("user_id", "status");



CREATE UNIQUE INDEX "email_templates_org_id_template_type_version_key" ON "public"."email_templates" USING "btree" ("org_id", "template_type", "version");



CREATE UNIQUE INDEX "external_accounts_provider_type_provider_user_id_key" ON "public"."external_accounts" USING "btree" ("provider_type", "provider_user_id");



CREATE INDEX "insertion_orders_created_at_idx" ON "public"."insertion_orders" USING "btree" ("created_at" DESC);



CREATE INDEX "insertion_orders_created_by_created_at_idx" ON "public"."insertion_orders" USING "btree" ("created_by", "created_at" DESC);



CREATE INDEX "insertion_orders_created_by_idx" ON "public"."insertion_orders" USING "btree" ("created_by");



CREATE INDEX "insertion_orders_org_id_idx" ON "public"."insertion_orders" USING "btree" ("org_id");



CREATE UNIQUE INDEX "invoices_invoice_number_key" ON "public"."invoices" USING "btree" ("invoice_number");



CREATE INDEX "iqm_analytics_date_idx" ON "public"."iqm_analytics" USING "btree" ("date");



CREATE UNIQUE INDEX "iqm_analytics_iqm_campaign_id_date_key" ON "public"."iqm_analytics" USING "btree" ("iqm_campaign_id", "date");



CREATE UNIQUE INDEX "iqm_campaigns_campaign_id_key" ON "public"."iqm_campaigns" USING "btree" ("campaign_id");



CREATE UNIQUE INDEX "iqm_configurations_workspace_id_key" ON "public"."iqm_configurations" USING "btree" ("workspace_id");



CREATE UNIQUE INDEX "meta_campaigns_campaign_id_key" ON "public"."meta_campaigns" USING "btree" ("campaign_id");



CREATE UNIQUE INDEX "meta_configurations_org_id_ad_account_id_key" ON "public"."meta_configurations" USING "btree" ("org_id", "ad_account_id");



CREATE UNIQUE INDEX "module_permissions_module_id_name_key" ON "public"."module_permissions" USING "btree" ("module_id", "name");



CREATE INDEX "notification_logs_notification_id_idx" ON "public"."notification_logs" USING "btree" ("notification_id");



CREATE INDEX "notification_logs_org_id_created_at_idx" ON "public"."notification_logs" USING "btree" ("org_id", "created_at");



CREATE INDEX "notification_logs_status_channel_idx" ON "public"."notification_logs" USING "btree" ("status", "channel");



CREATE INDEX "notification_logs_user_id_created_at_idx" ON "public"."notification_logs" USING "btree" ("user_id", "created_at");



CREATE UNIQUE INDEX "notification_preferences_user_id_key" ON "public"."notification_preferences" USING "btree" ("user_id");



CREATE INDEX "notifications_entity_type_entity_id_idx" ON "public"."notifications" USING "btree" ("entity_type", "entity_id");



CREATE INDEX "notifications_org_id_created_at_idx" ON "public"."notifications" USING "btree" ("org_id", "created_at");



CREATE INDEX "notifications_user_id_is_read_created_at_idx" ON "public"."notifications" USING "btree" ("user_id", "is_read", "created_at");



CREATE UNIQUE INDEX "onboarding_steps_org_id_user_id_step_type_key" ON "public"."onboarding_steps" USING "btree" ("org_id", "user_id", "step_type");



CREATE UNIQUE INDEX "organization_branding_org_id_key" ON "public"."organization_branding" USING "btree" ("org_id");



CREATE UNIQUE INDEX "organization_invites_invite_code_key" ON "public"."organization_invites" USING "btree" ("invite_code");



CREATE UNIQUE INDEX "organization_members_org_id_user_id_key" ON "public"."organization_members" USING "btree" ("org_id", "user_id");



CREATE INDEX "organization_role_permissions_org_id_role_id_idx" ON "public"."organization_role_permissions" USING "btree" ("org_id", "role_id");



CREATE UNIQUE INDEX "organization_role_permissions_org_id_role_id_module_id_perm_key" ON "public"."organization_role_permissions" USING "btree" ("org_id", "role_id", "module_id", "permission_id");



CREATE UNIQUE INDEX "organizations_slug_key" ON "public"."organizations" USING "btree" ("slug");



CREATE INDEX "payment_allocations_campaign_id_status_idx" ON "public"."payment_allocations" USING "btree" ("campaign_id", "status");



CREATE INDEX "payment_allocations_org_id_campaign_id_status_idx" ON "public"."payment_allocations" USING "btree" ("org_id", "campaign_id", "status");



CREATE INDEX "payment_allocations_payment_log_id_idx" ON "public"."payment_allocations" USING "btree" ("payment_log_id");



CREATE INDEX "payment_logs_campaign_id_idx" ON "public"."payment_logs" USING "btree" ("campaign_id");



CREATE INDEX "payment_logs_insertion_order_id_idx" ON "public"."payment_logs" USING "btree" ("insertion_order_id");



CREATE INDEX "payment_logs_org_id_status_idx" ON "public"."payment_logs" USING "btree" ("org_id", "status");



CREATE UNIQUE INDEX "payment_logs_stripe_charge_id_key" ON "public"."payment_logs" USING "btree" ("stripe_charge_id");



CREATE UNIQUE INDEX "payment_logs_stripe_invoice_id_key" ON "public"."payment_logs" USING "btree" ("stripe_invoice_id");



CREATE UNIQUE INDEX "payment_logs_stripe_payment_intent_id_key" ON "public"."payment_logs" USING "btree" ("stripe_payment_intent_id");



CREATE INDEX "performance_metrics_day_bucket_service_idx" ON "public"."performance_metrics" USING "btree" ("day_bucket", "service");



CREATE UNIQUE INDEX "performance_metrics_org_id_environment_service_operation_mi_key" ON "public"."performance_metrics" USING "btree" ("org_id", "environment", "service", "operation", "minute_bucket");



CREATE INDEX "performance_metrics_response_time_ms_idx" ON "public"."performance_metrics" USING "btree" ("response_time_ms");



CREATE INDEX "performance_metrics_service_operation_hour_bucket_idx" ON "public"."performance_metrics" USING "btree" ("service", "operation", "hour_bucket");



CREATE INDEX "permission_audit_logs_created_at_idx" ON "public"."permission_audit_logs" USING "btree" ("created_at");



CREATE INDEX "permission_audit_logs_org_id_target_user_id_idx" ON "public"."permission_audit_logs" USING "btree" ("org_id", "target_user_id");



CREATE UNIQUE INDEX "phone_numbers_user_id_phone_number_key" ON "public"."phone_numbers" USING "btree" ("user_id", "phone_number");



CREATE UNIQUE INDEX "platform_campaigns_campaign_id_platform_key" ON "public"."platform_campaigns" USING "btree" ("campaign_id", "platform");



CREATE UNIQUE INDEX "platform_configurations_org_id_platform_key" ON "public"."platform_configurations" USING "btree" ("org_id", "platform");



CREATE INDEX "platform_creatives_org_id_campaign_id_platform_idx" ON "public"."platform_creatives" USING "btree" ("org_id", "campaign_id", "platform");



CREATE UNIQUE INDEX "platform_creatives_org_id_creative_id_platform_key" ON "public"."platform_creatives" USING "btree" ("org_id", "creative_id", "platform");



CREATE INDEX "platform_creatives_org_id_platform_status_idx" ON "public"."platform_creatives" USING "btree" ("org_id", "platform", "status");



CREATE INDEX "platform_creatives_platform_creative_id_idx" ON "public"."platform_creatives" USING "btree" ("platform_creative_id");



CREATE UNIQUE INDEX "platform_credentials_org_id_platform_type_key" ON "public"."platform_credentials" USING "btree" ("org_id", "platform", "type");



CREATE UNIQUE INDEX "platform_specific_campaigns_campaign_id_platform_key" ON "public"."platform_specific_campaigns" USING "btree" ("campaign_id", "platform");



CREATE INDEX "real_time_metrics_campaign_id_platform_idx" ON "public"."real_time_metrics" USING "btree" ("campaign_id", "platform");



CREATE INDEX "real_time_metrics_day_bucket_idx" ON "public"."real_time_metrics" USING "btree" ("day_bucket");



CREATE UNIQUE INDEX "real_time_metrics_org_id_campaign_id_platform_metric_type_h_key" ON "public"."real_time_metrics" USING "btree" ("org_id", "campaign_id", "platform", "metric_type", "hour_bucket");



CREATE INDEX "real_time_metrics_timestamp_idx" ON "public"."real_time_metrics" USING "btree" ("timestamp");



CREATE INDEX "refunds_campaign_id_idx" ON "public"."refunds" USING "btree" ("campaign_id");



CREATE INDEX "refunds_payment_allocation_id_idx" ON "public"."refunds" USING "btree" ("payment_allocation_id");



CREATE INDEX "refunds_payment_log_id_idx" ON "public"."refunds" USING "btree" ("payment_log_id");



CREATE INDEX "refunds_status_idx" ON "public"."refunds" USING "btree" ("status");



CREATE UNIQUE INDEX "refunds_stripe_refund_id_key" ON "public"."refunds" USING "btree" ("stripe_refund_id");



CREATE UNIQUE INDEX "roles_name_key" ON "public"."roles" USING "btree" ("name");



CREATE INDEX "settings_category_idx" ON "public"."settings" USING "btree" ("category");



CREATE INDEX "settings_key_idx" ON "public"."settings" USING "btree" ("key");



CREATE INDEX "settings_scope_scope_id_idx" ON "public"."settings" USING "btree" ("scope", "scope_id");



CREATE UNIQUE INDEX "settings_scope_scope_id_key_key" ON "public"."settings" USING "btree" ("scope", "scope_id", "key");



CREATE INDEX "sidebar_sections_roles_idx" ON "public"."sidebar_sections" USING "btree" ("roles");



CREATE INDEX "sidebar_sections_section_id_idx" ON "public"."sidebar_sections" USING "btree" ("section_id");



CREATE UNIQUE INDEX "sidebar_sections_section_id_key" ON "public"."sidebar_sections" USING "btree" ("section_id");



CREATE INDEX "stripe_webhook_events_created_at_idx" ON "public"."stripe_webhook_events" USING "btree" ("created_at");



CREATE INDEX "stripe_webhook_events_event_type_processed_idx" ON "public"."stripe_webhook_events" USING "btree" ("event_type", "processed");



CREATE UNIQUE INDEX "stripe_webhook_events_stripe_event_id_key" ON "public"."stripe_webhook_events" USING "btree" ("stripe_event_id");



CREATE UNIQUE INDEX "system_modules_name_key" ON "public"."system_modules" USING "btree" ("name");



CREATE INDEX "unified_logs_duration_ms_idx" ON "public"."unified_logs" USING "btree" ("duration_ms");



CREATE INDEX "unified_logs_error_type_created_at_idx" ON "public"."unified_logs" USING "btree" ("error_type", "created_at");



CREATE INDEX "unified_logs_function_name_status_idx" ON "public"."unified_logs" USING "btree" ("function_name", "status");



CREATE INDEX "unified_logs_log_type_status_created_at_idx" ON "public"."unified_logs" USING "btree" ("log_type", "status", "created_at");



CREATE INDEX "unified_logs_org_id_log_type_created_at_idx" ON "public"."unified_logs" USING "btree" ("org_id", "log_type", "created_at");



CREATE INDEX "unified_logs_third_party_service_status_idx" ON "public"."unified_logs" USING "btree" ("third_party_service", "status");



CREATE INDEX "unified_logs_trace_id_idx" ON "public"."unified_logs" USING "btree" ("trace_id");



CREATE UNIQUE INDEX "user_email_preferences_unsubscribe_token_key" ON "public"."user_email_preferences" USING "btree" ("unsubscribe_token");



CREATE UNIQUE INDEX "user_email_preferences_user_id_org_id_key" ON "public"."user_email_preferences" USING "btree" ("user_id", "org_id");



CREATE UNIQUE INDEX "users_clerk_user_id_key" ON "public"."users" USING "btree" ("clerk_user_id");



CREATE UNIQUE INDEX "users_email_key" ON "public"."users" USING "btree" ("email");



CREATE UNIQUE INDEX "users_external_id_key" ON "public"."users" USING "btree" ("external_id");



CREATE UNIQUE INDEX "users_username_key" ON "public"."users" USING "btree" ("username");



CREATE UNIQUE INDEX "wallets_org_id_currency_key" ON "public"."wallets" USING "btree" ("org_id", "currency");



CREATE UNIQUE INDEX "web3_wallets_user_id_wallet_address_key" ON "public"."web3_wallets" USING "btree" ("user_id", "wallet_address");



CREATE UNIQUE INDEX "white_label_settings_customDomain_key" ON "public"."white_label_settings" USING "btree" ("customDomain");



CREATE UNIQUE INDEX "white_label_settings_subdomain_key" ON "public"."white_label_settings" USING "btree" ("subdomain");



CREATE INDEX "x_analytics_date_idx" ON "public"."x_analytics" USING "btree" ("date");



CREATE UNIQUE INDEX "x_analytics_x_campaign_id_x_line_item_id_date_key" ON "public"."x_analytics" USING "btree" ("x_campaign_id", "x_line_item_id", "date");



CREATE UNIQUE INDEX "x_campaigns_campaign_id_key" ON "public"."x_campaigns" USING "btree" ("campaign_id");



CREATE UNIQUE INDEX "x_configurations_org_id_account_id_key" ON "public"."x_configurations" USING "btree" ("org_id", "account_id");



ALTER TABLE ONLY "public"."ad_sets"
    ADD CONSTRAINT "ad_sets_platform_specific_campaign_id_fkey" FOREIGN KEY ("platform_specific_campaign_id") REFERENCES "public"."platform_specific_campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."ads"
    ADD CONSTRAINT "ads_ad_set_id_fkey" FOREIGN KEY ("ad_set_id") REFERENCES "public"."ad_sets"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."ads"
    ADD CONSTRAINT "ads_creative_id_fkey" FOREIGN KEY ("creative_id") REFERENCES "public"."creatives"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."agency_applications"
    ADD CONSTRAINT "agency_applications_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."agency_applications"
    ADD CONSTRAINT "agency_applications_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."agency_customers"
    ADD CONSTRAINT "agency_customers_agency_org_id_fkey" FOREIGN KEY ("agency_org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."agency_customers"
    ADD CONSTRAINT "agency_customers_customer_org_id_fkey" FOREIGN KEY ("customer_org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."agency_fees"
    ADD CONSTRAINT "agency_fees_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."agency_platform_access"
    ADD CONSTRAINT "agency_platform_access_agency_org_id_fkey" FOREIGN KEY ("agency_org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."agency_platform_access"
    ADD CONSTRAINT "agency_platform_access_customer_org_id_fkey" FOREIGN KEY ("customer_org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."analytics_aggregated"
    ADD CONSTRAINT "analytics_aggregated_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."analytics_aggregated"
    ADD CONSTRAINT "analytics_aggregated_insertion_order_id_fkey" FOREIGN KEY ("insertion_order_id") REFERENCES "public"."insertion_orders"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."analytics_aggregated"
    ADD CONSTRAINT "analytics_aggregated_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."analytics_data"
    ADD CONSTRAINT "analytics_data_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."analytics_data"
    ADD CONSTRAINT "analytics_data_insertion_order_id_fkey" FOREIGN KEY ("insertion_order_id") REFERENCES "public"."insertion_orders"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."analytics_data"
    ADD CONSTRAINT "analytics_data_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."assets"
    ADD CONSTRAINT "assets_creative_id_fkey" FOREIGN KEY ("creative_id") REFERENCES "public"."creatives"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."audiences"
    ADD CONSTRAINT "audiences_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."audiences"
    ADD CONSTRAINT "audiences_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."campaign_alerts"
    ADD CONSTRAINT "campaign_alerts_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."campaign_alerts"
    ADD CONSTRAINT "campaign_alerts_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."campaign_alerts"
    ADD CONSTRAINT "campaign_alerts_resolved_by_fkey" FOREIGN KEY ("resolved_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."campaign_audiences"
    ADD CONSTRAINT "campaign_audiences_assigned_by_fkey" FOREIGN KEY ("assigned_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."campaign_audiences"
    ADD CONSTRAINT "campaign_audiences_audience_id_fkey" FOREIGN KEY ("audience_id") REFERENCES "public"."audiences"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."campaign_audiences"
    ADD CONSTRAINT "campaign_audiences_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."campaign_audiences"
    ADD CONSTRAINT "campaign_audiences_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."campaign_creatives"
    ADD CONSTRAINT "campaign_creatives_assigned_by_fkey" FOREIGN KEY ("assigned_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."campaign_creatives"
    ADD CONSTRAINT "campaign_creatives_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."campaign_creatives"
    ADD CONSTRAINT "campaign_creatives_creative_id_fkey" FOREIGN KEY ("creative_id") REFERENCES "public"."creatives"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."campaign_creatives"
    ADD CONSTRAINT "campaign_creatives_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."campaign_priorities"
    ADD CONSTRAINT "campaign_priorities_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."campaign_priorities"
    ADD CONSTRAINT "campaign_priorities_io_id_fkey" FOREIGN KEY ("io_id") REFERENCES "public"."insertion_orders"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."campaign_steps"
    ADD CONSTRAINT "campaign_steps_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."campaign_steps"
    ADD CONSTRAINT "campaign_steps_completed_by_fkey" FOREIGN KEY ("completed_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."campaign_steps"
    ADD CONSTRAINT "campaign_steps_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."campaign_transactions"
    ADD CONSTRAINT "campaign_transactions_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."campaign_transactions"
    ADD CONSTRAINT "campaign_transactions_insertion_order_id_fkey" FOREIGN KEY ("insertion_order_id") REFERENCES "public"."insertion_orders"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."campaign_transactions"
    ADD CONSTRAINT "campaign_transactions_platform_campaign_id_fkey" FOREIGN KEY ("platform_campaign_id") REFERENCES "public"."platform_campaigns"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."campaigns"
    ADD CONSTRAINT "campaigns_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "public"."campaign_categories"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."campaigns"
    ADD CONSTRAINT "campaigns_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."campaigns"
    ADD CONSTRAINT "campaigns_insertion_order_id_fkey" FOREIGN KEY ("insertion_order_id") REFERENCES "public"."insertion_orders"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."campaigns"
    ADD CONSTRAINT "campaigns_last_edited_by_fkey" FOREIGN KEY ("last_edited_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."campaigns"
    ADD CONSTRAINT "campaigns_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."campaigns"
    ADD CONSTRAINT "campaigns_submitted_by_fkey" FOREIGN KEY ("submitted_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."creative_assets"
    ADD CONSTRAINT "creative_assets_creative_id_fkey" FOREIGN KEY ("creative_id") REFERENCES "public"."creatives"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."creative_assets"
    ADD CONSTRAINT "creative_assets_enhanced_asset_id_fkey" FOREIGN KEY ("enhanced_asset_id") REFERENCES "public"."enhanced_assets"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."creatives"
    ADD CONSTRAINT "creatives_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."creatives"
    ADD CONSTRAINT "creatives_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."creatives"
    ADD CONSTRAINT "creatives_parent_creative_id_fkey" FOREIGN KEY ("parent_creative_id") REFERENCES "public"."creatives"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."domain_alias"
    ADD CONSTRAINT "domain_alias_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."email_addresses"
    ADD CONSTRAINT "email_addresses_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."email_automation_rules"
    ADD CONSTRAINT "email_automation_rules_email_template_id_fkey" FOREIGN KEY ("email_template_id") REFERENCES "public"."email_templates"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."email_automation_rules"
    ADD CONSTRAINT "email_automation_rules_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."email_configurations"
    ADD CONSTRAINT "email_configurations_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."email_events"
    ADD CONSTRAINT "email_events_email_notification_id_fkey" FOREIGN KEY ("email_notification_id") REFERENCES "public"."email_notifications"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."email_notifications"
    ADD CONSTRAINT "email_notifications_email_configuration_id_fkey" FOREIGN KEY ("email_configuration_id") REFERENCES "public"."email_configurations"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."email_notifications"
    ADD CONSTRAINT "email_notifications_email_template_id_fkey" FOREIGN KEY ("email_template_id") REFERENCES "public"."email_templates"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."email_notifications"
    ADD CONSTRAINT "email_notifications_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."email_notifications"
    ADD CONSTRAINT "email_notifications_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."email_templates"
    ADD CONSTRAINT "email_templates_email_configuration_id_fkey" FOREIGN KEY ("email_configuration_id") REFERENCES "public"."email_configurations"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."email_templates"
    ADD CONSTRAINT "email_templates_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."enhanced_assets"
    ADD CONSTRAINT "enhanced_assets_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."enhanced_assets"
    ADD CONSTRAINT "enhanced_assets_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."external_accounts"
    ADD CONSTRAINT "external_accounts_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."insertion_orders"
    ADD CONSTRAINT "insertion_orders_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."insertion_orders"
    ADD CONSTRAINT "insertion_orders_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."invoices"
    ADD CONSTRAINT "invoices_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."iqm_analytics"
    ADD CONSTRAINT "iqm_analytics_iqm_campaign_id_fkey" FOREIGN KEY ("iqm_campaign_id") REFERENCES "public"."iqm_campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."iqm_campaigns"
    ADD CONSTRAINT "iqm_campaigns_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."iqm_campaigns"
    ADD CONSTRAINT "iqm_campaigns_iqm_configuration_id_fkey" FOREIGN KEY ("iqm_configuration_id") REFERENCES "public"."iqm_configurations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."line_items"
    ADD CONSTRAINT "line_items_platform_specific_campaign_id_fkey" FOREIGN KEY ("platform_specific_campaign_id") REFERENCES "public"."platform_specific_campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."meta_ad_sets"
    ADD CONSTRAINT "meta_ad_sets_meta_campaign_id_fkey" FOREIGN KEY ("meta_campaign_id") REFERENCES "public"."meta_campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."meta_ads"
    ADD CONSTRAINT "meta_ads_creative_id_fkey" FOREIGN KEY ("creative_id") REFERENCES "public"."creatives"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."meta_ads"
    ADD CONSTRAINT "meta_ads_meta_ad_set_id_fkey" FOREIGN KEY ("meta_ad_set_id") REFERENCES "public"."meta_ad_sets"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."meta_campaigns"
    ADD CONSTRAINT "meta_campaigns_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."meta_campaigns"
    ADD CONSTRAINT "meta_campaigns_meta_configuration_id_fkey" FOREIGN KEY ("meta_configuration_id") REFERENCES "public"."meta_configurations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."meta_configurations"
    ADD CONSTRAINT "meta_configurations_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."module_permissions"
    ADD CONSTRAINT "module_permissions_module_id_fkey" FOREIGN KEY ("module_id") REFERENCES "public"."system_modules"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."notification_logs"
    ADD CONSTRAINT "notification_logs_notification_id_fkey" FOREIGN KEY ("notification_id") REFERENCES "public"."notifications"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."notification_logs"
    ADD CONSTRAINT "notification_logs_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."notification_logs"
    ADD CONSTRAINT "notification_logs_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."notification_preferences"
    ADD CONSTRAINT "notification_preferences_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."notifications"
    ADD CONSTRAINT "notifications_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."notifications"
    ADD CONSTRAINT "notifications_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."onboarding_steps"
    ADD CONSTRAINT "onboarding_steps_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."onboarding_steps"
    ADD CONSTRAINT "onboarding_steps_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."organization_branding"
    ADD CONSTRAINT "organization_branding_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."organization_details"
    ADD CONSTRAINT "organization_details_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."organization_hierarchy"
    ADD CONSTRAINT "organization_hierarchy_child_org_id_fkey" FOREIGN KEY ("child_org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."organization_hierarchy"
    ADD CONSTRAINT "organization_hierarchy_parent_org_id_fkey" FOREIGN KEY ("parent_org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."organization_invites"
    ADD CONSTRAINT "organization_invites_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."organization_invites"
    ADD CONSTRAINT "organization_invites_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."organization_invites"
    ADD CONSTRAINT "organization_invites_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "public"."roles"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."organization_invites"
    ADD CONSTRAINT "organization_invites_used_by_fkey" FOREIGN KEY ("used_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."organization_members"
    ADD CONSTRAINT "organization_members_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."organization_members"
    ADD CONSTRAINT "organization_members_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "public"."roles"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."organization_members"
    ADD CONSTRAINT "organization_members_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."organization_role_permissions"
    ADD CONSTRAINT "organization_role_permissions_granted_by_fkey" FOREIGN KEY ("granted_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."organization_role_permissions"
    ADD CONSTRAINT "organization_role_permissions_module_id_fkey" FOREIGN KEY ("module_id") REFERENCES "public"."system_modules"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."organization_role_permissions"
    ADD CONSTRAINT "organization_role_permissions_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."organization_role_permissions"
    ADD CONSTRAINT "organization_role_permissions_permission_id_fkey" FOREIGN KEY ("permission_id") REFERENCES "public"."module_permissions"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."organization_role_permissions"
    ADD CONSTRAINT "organization_role_permissions_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "public"."roles"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."organizations"
    ADD CONSTRAINT "organizations_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."organizations"
    ADD CONSTRAINT "organizations_parent_org_id_fkey" FOREIGN KEY ("parent_org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."payment_allocations"
    ADD CONSTRAINT "payment_allocations_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payment_allocations"
    ADD CONSTRAINT "payment_allocations_insertion_order_id_fkey" FOREIGN KEY ("insertion_order_id") REFERENCES "public"."insertion_orders"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."payment_allocations"
    ADD CONSTRAINT "payment_allocations_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payment_allocations"
    ADD CONSTRAINT "payment_allocations_payment_log_id_fkey" FOREIGN KEY ("payment_log_id") REFERENCES "public"."payment_logs"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payment_logs"
    ADD CONSTRAINT "payment_logs_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."payment_logs"
    ADD CONSTRAINT "payment_logs_insertion_order_id_fkey" FOREIGN KEY ("insertion_order_id") REFERENCES "public"."insertion_orders"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."payment_logs"
    ADD CONSTRAINT "payment_logs_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payments"
    ADD CONSTRAINT "payments_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."performance_metrics"
    ADD CONSTRAINT "performance_metrics_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."permission_audit_logs"
    ADD CONSTRAINT "permission_audit_logs_changed_by_fkey" FOREIGN KEY ("changed_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."permission_audit_logs"
    ADD CONSTRAINT "permission_audit_logs_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."permission_audit_logs"
    ADD CONSTRAINT "permission_audit_logs_target_user_id_fkey" FOREIGN KEY ("target_user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."phone_numbers"
    ADD CONSTRAINT "phone_numbers_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."platform_campaigns"
    ADD CONSTRAINT "platform_campaigns_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."platform_configurations"
    ADD CONSTRAINT "platform_configurations_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."platform_creatives"
    ADD CONSTRAINT "platform_creatives_assigned_by_fkey" FOREIGN KEY ("assigned_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."platform_creatives"
    ADD CONSTRAINT "platform_creatives_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."platform_creatives"
    ADD CONSTRAINT "platform_creatives_creative_id_fkey" FOREIGN KEY ("creative_id") REFERENCES "public"."creatives"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."platform_creatives"
    ADD CONSTRAINT "platform_creatives_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."platform_credentials"
    ADD CONSTRAINT "platform_credentials_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."platform_specific_campaigns"
    ADD CONSTRAINT "platform_specific_campaigns_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."platform_specific_campaigns"
    ADD CONSTRAINT "platform_specific_campaigns_platform_configuration_id_fkey" FOREIGN KEY ("platform_configuration_id") REFERENCES "public"."platform_configurations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."real_time_metrics"
    ADD CONSTRAINT "real_time_metrics_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."real_time_metrics"
    ADD CONSTRAINT "real_time_metrics_insertion_order_id_fkey" FOREIGN KEY ("insertion_order_id") REFERENCES "public"."insertion_orders"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."real_time_metrics"
    ADD CONSTRAINT "real_time_metrics_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."refunds"
    ADD CONSTRAINT "refunds_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."refunds"
    ADD CONSTRAINT "refunds_payment_allocation_id_fkey" FOREIGN KEY ("payment_allocation_id") REFERENCES "public"."payment_allocations"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."refunds"
    ADD CONSTRAINT "refunds_payment_log_id_fkey" FOREIGN KEY ("payment_log_id") REFERENCES "public"."payment_logs"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."reports"
    ADD CONSTRAINT "reports_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."reports"
    ADD CONSTRAINT "reports_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."targeting_criteria"
    ADD CONSTRAINT "targeting_criteria_line_item_id_fkey" FOREIGN KEY ("line_item_id") REFERENCES "public"."line_items"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."targeting_criteria"
    ADD CONSTRAINT "targeting_criteria_platform_specific_campaign_id_fkey" FOREIGN KEY ("platform_specific_campaign_id") REFERENCES "public"."platform_specific_campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."transactions"
    ADD CONSTRAINT "transactions_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."transactions"
    ADD CONSTRAINT "transactions_payment_id_fkey" FOREIGN KEY ("payment_id") REFERENCES "public"."payments"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."unified_logs"
    ADD CONSTRAINT "unified_logs_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."unified_logs"
    ADD CONSTRAINT "unified_logs_insertion_order_id_fkey" FOREIGN KEY ("insertion_order_id") REFERENCES "public"."insertion_orders"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."unified_logs"
    ADD CONSTRAINT "unified_logs_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."unified_logs"
    ADD CONSTRAINT "unified_logs_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."user_email_preferences"
    ADD CONSTRAINT "user_email_preferences_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."user_email_preferences"
    ADD CONSTRAINT "user_email_preferences_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."user_preferences"
    ADD CONSTRAINT "user_preferences_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_user_role_id_fkey" FOREIGN KEY ("user_role_id") REFERENCES "public"."roles"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."wallet_transactions"
    ADD CONSTRAINT "wallet_transactions_wallet_id_fkey" FOREIGN KEY ("wallet_id") REFERENCES "public"."wallets"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."wallets"
    ADD CONSTRAINT "wallets_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."web3_wallets"
    ADD CONSTRAINT "web3_wallets_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."white_label_settings"
    ADD CONSTRAINT "white_label_settings_orgId_fkey" FOREIGN KEY ("orgId") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."white_label_settings"
    ADD CONSTRAINT "white_label_settings_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."white_label_settings"
    ADD CONSTRAINT "white_label_settings_whitelabel_config_id_fkey" FOREIGN KEY ("whitelabel_config_id") REFERENCES "public"."whitelabel_config"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."x_analytics"
    ADD CONSTRAINT "x_analytics_x_campaign_id_fkey" FOREIGN KEY ("x_campaign_id") REFERENCES "public"."x_campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."x_analytics"
    ADD CONSTRAINT "x_analytics_x_line_item_id_fkey" FOREIGN KEY ("x_line_item_id") REFERENCES "public"."x_line_items"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."x_campaigns"
    ADD CONSTRAINT "x_campaigns_campaign_id_fkey" FOREIGN KEY ("campaign_id") REFERENCES "public"."campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."x_campaigns"
    ADD CONSTRAINT "x_campaigns_x_configuration_id_fkey" FOREIGN KEY ("x_configuration_id") REFERENCES "public"."x_configurations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."x_configurations"
    ADD CONSTRAINT "x_configurations_org_id_fkey" FOREIGN KEY ("org_id") REFERENCES "public"."organizations"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."x_line_items"
    ADD CONSTRAINT "x_line_items_x_campaign_id_fkey" FOREIGN KEY ("x_campaign_id") REFERENCES "public"."x_campaigns"("id") ON UPDATE CASCADE ON DELETE CASCADE;



CREATE POLICY "Allow all for testing" ON "public"."campaigns" TO "authenticated", "anon", "service_role" USING (true) WITH CHECK (true);



CREATE POLICY "Allow all for testing" ON "public"."insertion_orders" TO "authenticated", "anon", "service_role" USING (true) WITH CHECK (true);



CREATE POLICY "Allow all for testing" ON "public"."organizations" TO "authenticated", "anon", "service_role" USING (true) WITH CHECK (true);



CREATE POLICY "Allow all for testing" ON "public"."users" TO "authenticated", "anon", "service_role" USING (true) WITH CHECK (true);



CREATE POLICY "Service role bypass" ON "public"."campaigns" USING (("auth"."role"() = 'service_role'::"text"));



CREATE POLICY "Service role bypass" ON "public"."insertion_orders" USING (("auth"."role"() = 'service_role'::"text"));



CREATE POLICY "Service role bypass" ON "public"."organizations" USING (("auth"."role"() = 'service_role'::"text"));



CREATE POLICY "Service role bypass" ON "public"."users" USING (("auth"."role"() = 'service_role'::"text"));



ALTER TABLE "public"."campaigns" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."insertion_orders" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."organizations" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."users" ENABLE ROW LEVEL SECURITY;




ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";






ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."notifications";






REVOKE USAGE ON SCHEMA "public" FROM PUBLIC;
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "service_role";



































































































































































































































































































GRANT ALL ON FUNCTION "public"."get_user_rbac_data"("p_clerk_user_id" "text", "p_clerk_org_id" "text") TO "service_role";



























GRANT ALL ON TABLE "public"."ad_sets" TO "anon";



GRANT ALL ON TABLE "public"."ads" TO "anon";



GRANT ALL ON TABLE "public"."agency_applications" TO "anon";



GRANT ALL ON TABLE "public"."agency_customers" TO "anon";



GRANT ALL ON TABLE "public"."agency_fees" TO "anon";



GRANT ALL ON TABLE "public"."agency_platform_access" TO "anon";



GRANT ALL ON TABLE "public"."analytics_aggregated" TO "anon";



GRANT ALL ON TABLE "public"."analytics_data" TO "anon";



GRANT ALL ON TABLE "public"."assets" TO "anon";



GRANT ALL ON TABLE "public"."audiences" TO "anon";



GRANT ALL ON TABLE "public"."campaign_alerts" TO "anon";



GRANT ALL ON TABLE "public"."campaign_audiences" TO "anon";



GRANT ALL ON TABLE "public"."campaign_categories" TO "anon";



GRANT ALL ON TABLE "public"."campaign_creatives" TO "anon";



GRANT ALL ON TABLE "public"."campaign_priorities" TO "anon";



GRANT ALL ON TABLE "public"."campaign_steps" TO "anon";



GRANT ALL ON TABLE "public"."campaign_transactions" TO "anon";



GRANT ALL ON TABLE "public"."campaigns" TO "anon";



GRANT ALL ON TABLE "public"."creative_assets" TO "anon";



GRANT ALL ON TABLE "public"."creatives" TO "anon";



GRANT ALL ON TABLE "public"."domain_alias" TO "anon";



GRANT ALL ON TABLE "public"."email_addresses" TO "anon";
GRANT ALL ON TABLE "public"."email_addresses" TO "service_role";



GRANT ALL ON TABLE "public"."email_automation_rules" TO "anon";



GRANT ALL ON TABLE "public"."email_configurations" TO "anon";



GRANT ALL ON TABLE "public"."email_events" TO "anon";



GRANT ALL ON TABLE "public"."email_notifications" TO "anon";



GRANT ALL ON TABLE "public"."email_templates" TO "anon";



GRANT ALL ON TABLE "public"."enhanced_assets" TO "anon";



GRANT ALL ON TABLE "public"."external_accounts" TO "anon";
GRANT ALL ON TABLE "public"."external_accounts" TO "service_role";



GRANT ALL ON TABLE "public"."history_log" TO "anon";



GRANT ALL ON TABLE "public"."insertion_orders" TO "anon";



GRANT ALL ON TABLE "public"."invoices" TO "anon";



GRANT ALL ON TABLE "public"."iqm_analytics" TO "anon";



GRANT ALL ON TABLE "public"."iqm_campaigns" TO "anon";



GRANT ALL ON TABLE "public"."iqm_configurations" TO "anon";



GRANT ALL ON TABLE "public"."line_items" TO "anon";



GRANT ALL ON TABLE "public"."meta_ad_sets" TO "anon";



GRANT ALL ON TABLE "public"."meta_ads" TO "anon";



GRANT ALL ON TABLE "public"."meta_campaigns" TO "anon";



GRANT ALL ON TABLE "public"."meta_configurations" TO "anon";



GRANT ALL ON TABLE "public"."module_permissions" TO "anon";
GRANT ALL ON TABLE "public"."module_permissions" TO "service_role";



GRANT ALL ON TABLE "public"."notification_logs" TO "anon";



GRANT ALL ON TABLE "public"."notification_preferences" TO "anon";



GRANT ALL ON TABLE "public"."notifications" TO "anon";



GRANT ALL ON TABLE "public"."onboarding_steps" TO "anon";



GRANT ALL ON TABLE "public"."organization_branding" TO "anon";



GRANT ALL ON TABLE "public"."organization_details" TO "anon";
GRANT ALL ON TABLE "public"."organization_details" TO "service_role";



GRANT ALL ON TABLE "public"."organization_hierarchy" TO "anon";



GRANT ALL ON TABLE "public"."organization_invites" TO "anon";



GRANT ALL ON TABLE "public"."organization_members" TO "anon";
GRANT ALL ON TABLE "public"."organization_members" TO "service_role";



GRANT ALL ON TABLE "public"."organization_role_permissions" TO "anon";
GRANT ALL ON TABLE "public"."organization_role_permissions" TO "service_role";



GRANT ALL ON TABLE "public"."organizations" TO "anon";
GRANT ALL ON TABLE "public"."organizations" TO "service_role";



GRANT ALL ON TABLE "public"."payment_allocations" TO "anon";



GRANT ALL ON TABLE "public"."payment_logs" TO "anon";



GRANT ALL ON TABLE "public"."payments" TO "anon";



GRANT ALL ON TABLE "public"."performance_metrics" TO "anon";



GRANT ALL ON TABLE "public"."permission_audit_logs" TO "anon";



GRANT ALL ON TABLE "public"."phone_numbers" TO "anon";
GRANT ALL ON TABLE "public"."phone_numbers" TO "service_role";



GRANT ALL ON TABLE "public"."platform_campaigns" TO "anon";



GRANT ALL ON TABLE "public"."platform_configurations" TO "anon";



GRANT ALL ON TABLE "public"."platform_creatives" TO "anon";



GRANT ALL ON TABLE "public"."platform_credentials" TO "anon";



GRANT ALL ON TABLE "public"."platform_specific_campaigns" TO "anon";



GRANT ALL ON TABLE "public"."real_time_metrics" TO "anon";



GRANT ALL ON TABLE "public"."refunds" TO "anon";



GRANT ALL ON TABLE "public"."reports" TO "anon";



GRANT ALL ON TABLE "public"."roles" TO "anon";
GRANT ALL ON TABLE "public"."roles" TO "service_role";



GRANT ALL ON TABLE "public"."settings" TO "anon";



GRANT ALL ON TABLE "public"."sidebar_sections" TO "anon";



GRANT ALL ON TABLE "public"."stripe_webhook_events" TO "anon";



GRANT ALL ON TABLE "public"."system_modules" TO "anon";
GRANT ALL ON TABLE "public"."system_modules" TO "service_role";



GRANT ALL ON TABLE "public"."targeting_criteria" TO "anon";



GRANT ALL ON TABLE "public"."transactions" TO "anon";



GRANT ALL ON TABLE "public"."unified_logs" TO "anon";



GRANT ALL ON TABLE "public"."user_email_preferences" TO "anon";



GRANT ALL ON TABLE "public"."user_preferences" TO "anon";



GRANT ALL ON TABLE "public"."users" TO "anon";
GRANT ALL ON TABLE "public"."users" TO "service_role";



GRANT ALL ON TABLE "public"."wallet_transactions" TO "anon";



GRANT ALL ON TABLE "public"."wallets" TO "anon";



GRANT ALL ON TABLE "public"."web3_wallets" TO "anon";
GRANT ALL ON TABLE "public"."web3_wallets" TO "service_role";



GRANT ALL ON TABLE "public"."x_analytics" TO "anon";



GRANT ALL ON TABLE "public"."x_campaigns" TO "anon";



GRANT ALL ON TABLE "public"."x_configurations" TO "anon";



GRANT ALL ON TABLE "public"."x_line_items" TO "anon";

































\unrestrict JqXUElobhdPEe5kyRKuZaAsQf3komt62r0w1D2eyNi5a5930PApzvoiv8eSdrhm

RESET ALL;
