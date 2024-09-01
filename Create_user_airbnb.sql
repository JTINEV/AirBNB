rem
rem
rem Author: Juana Valentina Plaza Azcarate
rem Created at: Aug-31-2024
rem
rem

--Creating user--

CREATE USER airbnb IDENTIFIED BY koclark;

--Giving privileges--

GRANT CREATE SESSION, CREATE TABLE,CREATE SEQUENCE, CREATE VIEW, CREATE SYNONYM
TO airbnb;


--QUOTA Authorization--
ALTER USER airbnb QUOTA 10G ON USERS;
