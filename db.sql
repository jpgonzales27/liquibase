CREATE SCHEMA `dating`;
CREATE USER 'webuser'@'localhost' IDENTIFIED BY 'aSecretPass';
GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE, SHOW VIEW, CREATE, ALTER, REFERENCES, INDEX, CREATE VIEW, CREATE ROUTINE,
	ALTER ROUTINE, EVENT, DROP, TRIGGER ON `dating`.* TO 'webuser'@'localhost';
FLUSH PRIVILEGES;


USE `dating`;

CREATE TABLE `breeds` (
  `BRE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BRE_NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`BRE_ID`)
);

INSERT INTO `breeds` (BRE_NAME)
VALUES ('Golden Retriever'),
    ('American Staffordshire Terrier'),
    ('German Shepherd Doger');

CREATE TABLE `profiles` (
  `PRO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRO_NAME` varchar(100) NOT NULL,
  `PRO_BRE_ID` int(11) DEFAULT NULL,
  `PRO_HEIGHT` int(11) DEFAULT NULL,
  `PRO_WEIGHT` int(11) DEFAULT NULL,
  `PRO_DESCRIPTION` varchar(4000) DEFAULT NULL,
  `PRO_IMAGE_URL` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRO_ID`)
);

CREATE INDEX `IX_PRO_BRE_ID` ON `profiles` (`PRO_BRE_ID`);

ALTER TABLE `profiles` ADD CONSTRAINT `FK_PRO_BRE_ID` FOREIGN KEY (`PRO_BRE_ID`) REFERENCES `breeds` (`BRE_ID`);