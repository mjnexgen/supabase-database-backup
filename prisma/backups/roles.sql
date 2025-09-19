
\restrict 6dyfnL5ryhR3abzJN6mWfVWeRDVji8fEd1lJNS4gis9pZCUYG08wLF73nO9c320

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict 6dyfnL5ryhR3abzJN6mWfVWeRDVji8fEd1lJNS4gis9pZCUYG08wLF73nO9c320

RESET ALL;
