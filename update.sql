--  Lock Database
UPDATE prueba.DATABASECHANGELOGLOCK SET `LOCKED` = 1, LOCKEDBY = 'JGONZALESA-NH02 (10.89.30.59)', LOCKGRANTED = NOW() WHERE ID = 1 AND `LOCKED` = 0;

--  *********************************************************************
--  Update Database Script
--  *********************************************************************
--  Change Log: db-changelog.xml
--  Ran at: 5/18/23, 5:19 PM
--  Against: root@localhost@jdbc:mysql://localhost:3306/prueba
--  Liquibase version: 4.22.0
--  *********************************************************************

--  Release Database Lock
UPDATE prueba.DATABASECHANGELOGLOCK SET `LOCKED` = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

