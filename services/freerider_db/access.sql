-- Create user 'freerider' and grant all privileges over database 'FREERIDER_DB'
-- using:
--  -username: freerider
--  -password: free.ride
CREATE USER 'freerider'@'%' IDENTIFIED BY 'free.ride';
CREATE DATABASE IF NOT EXISTS FREERIDER_DB;
GRANT ALL PRIVILEGES ON FREERIDER_DB.* to 'freerider'@'%';

-- test user has been created:
-- SELECT host, user FROM mysql.user;
-- +-----------+------------------+
-- | host      | user             |
-- +-----------+------------------+
-- | %         | freerider        | <-- add user 'freerider'
-- | %         | root             | <-- add user 'root'
-- | localhost | mysql.infoschema |
-- | localhost | mysql.session    |
-- | localhost | mysql.sys        |
-- | localhost | root             |
-- +-----------+------------------+
-- 6 rows in set (0.00 sec)
-- 
-- see:
-- https://dev.mysql.com/doc/refman/8.0/en/creating-accounts.html
-- https://github.com/docker-library/mysql/issues/275
