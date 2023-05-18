--  *********************************************************************
--  SQL to roll back currently unexecuted changes
--  *********************************************************************
--  Change Log: db-changelog.xml
--  Ran at: 5/18/23, 5:22 PM
--  Against: root@localhost@jdbc:mysql://localhost:3306/prueba
--  Liquibase version: 4.22.0
--  *********************************************************************

--  Lock Database
UPDATE prueba.DATABASECHANGELOGLOCK SET `LOCKED` = 1, LOCKEDBY = 'JGONZALESA-NH02 (10.89.30.59)', LOCKGRANTED = NOW() WHERE ID = 1 AND `LOCKED` = 0;

--  Rolling Back ChangeSet: db-changelog.xml::Add PRO_GENDER column::Juan Gonzales
ALTER TABLE prueba.PROFILES DROP COLUMN PRO_GENDER;

DELETE FROM prueba.DATABASECHANGELOG WHERE ID = 'Add PRO_GENDER column' AND AUTHOR = 'Juan Gonzales' AND FILENAME = 'db-changelog.xml';

--  Release Database Lock
UPDATE prueba.DATABASECHANGELOGLOCK SET `LOCKED` = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

