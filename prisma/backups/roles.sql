
\restrict ZEyHMO6L4MwHTU7AHXi3zFW1cS3rpbA47LCrmi4j8J6N6lcTcikpZopZraMHKIq

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict ZEyHMO6L4MwHTU7AHXi3zFW1cS3rpbA47LCrmi4j8J6N6lcTcikpZopZraMHKIq

RESET ALL;
