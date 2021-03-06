CREATE TABLE `rapc`.`cas` ( `ID_Cas` INT NOT NULL AUTO_INCREMENT , `ID_Description` INT NOT NULL , `ID_Traitement` INT NOT NULL , PRIMARY KEY (`ID_Cas`)) ENGINE = InnoDB;

CREATE TABLE `rapc`.`description` ( `ID_Description` INT NOT NULL AUTO_INCREMENT , `Age` INT NOT NULL , `Poids` FLOAT NOT NULL , `Sexe` VARCHAR(20) NOT NULL , `Temperature` FLOAT NOT NULL , `Toux` BOOLEAN NOT NULL , `MalDeTete` BOOLEAN NOT NULL , `MalDeGorge` BOOLEAN NOT NULL , `MalDeVentre` DOUBLE NOT NULL , PRIMARY KEY (`ID_Description`)) ENGINE = InnoDB;

CREATE TABLE `rapc`.`traitements` ( `ID_Traitement` INT NOT NULL AUTO_INCREMENT , `Med1` VARCHAR(256) NOT NULL , `Dur1` INT NOT NULL , `Quant1` FLOAT NOT NULL , `Freq1` INT NOT NULL , `Med2` VARCHAR(256) NULL , `Dur2` INT NULL , `Quant2` FLOAT NULL , `Freq2` INT NULL , `Med3` VARCHAR(256) NULL , `Dur3` INT NULL , `Quat3` FLOAT NULL , `Freq3` INT NULL , PRIMARY KEY (`ID_Traitement`)) ENGINE = InnoDB;

ALTER TABLE `cas` ADD CONSTRAINT `ct1` FOREIGN KEY (`ID_Description`) REFERENCES `description`(`ID_Description`) ON DELETE RESTRICT ON UPDATE RESTRICT;
