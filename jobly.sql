\ECHO 'Delete and recreate jobly db?'
\PROMPT 'Return for yes or control-C to cancel > ' FOO

DROP DATABASE JOBLY;

CREATE DATABASE JOBLY;

\CONNECT JOBLY
\I JOBLY-SCHEMA.SQL
\I JOBLY-SEED.SQL
\ECHO 'Delete and recreate jobly_test db?'
\PROMPT 'Return for yes or control-C to cancel > ' FOO

DROP DATABASE JOBLY_TEST;

CREATE DATABASE JOBLY_TEST;

\CONNECT JOBLY_TEST
\I JOBLY-SCHEMA.SQL