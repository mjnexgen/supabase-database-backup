
\restrict ztIrLUNA1kENzNbUXh61DgRkN32PoTXmyhrA17Kl3N23U3wPQvyj6W9zMyAhzeq

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict ztIrLUNA1kENzNbUXh61DgRkN32PoTXmyhrA17Kl3N23U3wPQvyj6W9zMyAhzeq

RESET ALL;
