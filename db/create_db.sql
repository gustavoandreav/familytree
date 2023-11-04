CREATE SCHEMA IF NOT EXISTS `Familytree` DEFAULT CHARACTER SET utf8 ;
USE `Familytree` ;

DROP TABLE IF EXISTS `Familytree`.`Person` ;

CREATE TABLE IF NOT EXISTS `Familytree`.`Person` (
  `person_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `birth_place` VARCHAR(100) NOT NULL,
  `gender` CHAR(1) NOT NULL,
  `pictures_folder` VARCHAR(100) NULL,
  PRIMARY KEY (`person_id`)
);

CREATE TABLE IF NOT EXISTS `Familytree`.`ParentRelationship` (
  `person_id` INT NOT NULL,
  `parent_id` INT NOT NULL,
  CONSTRAINT `person_id`
  FOREIGN KEY (`person_id`)
  REFERENCES `Familytree`.`Person` (`person_id`)
  ON DELETE RESTRICT,
  CONSTRAINT `parent_id`
  FOREIGN KEY (`parent_id`)
  REFERENCES `Familytree`.`Person` (`person_id`)
  ON DELETE RESTRICT
);