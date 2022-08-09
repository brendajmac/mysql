-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema site
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema site
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `site` DEFAULT CHARACTER SET utf8 ;
USE `site` ;

-- -----------------------------------------------------
-- Table `site`.`cadastro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `site`.`cadastro` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `senha` VARCHAR(1000) NOT NULL,
  `email` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `site`.`postagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `site`.`postagens` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(1000) NOT NULL,
  `texto` VARCHAR(1000) NOT NULL,
  `foto` VARCHAR(1000) NOT NULL,
  `cadastro_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_postagens_cadastro_idx` (`cadastro_id` ASC) VISIBLE,
  CONSTRAINT `fk_postagens_cadastro`
    FOREIGN KEY (`cadastro_id`)
    REFERENCES `site`.`cadastro` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
