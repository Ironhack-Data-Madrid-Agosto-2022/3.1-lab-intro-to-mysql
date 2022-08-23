SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema concesionario
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema concesionario
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `concesionario` DEFAULT CHARACTER SET utf8 ;
USE `concesionario` ;

-- -----------------------------------------------------
-- Table `concesionario`.`Coches`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionario`.`Coches` (
  `id_coche` INT NOT NULL,
  `VIN` VARCHAR(45) NULL,
  `Modelo` VARCHAR(45) NULL,
  `Fabricante` VARCHAR(45) NULL,
  `Color` VARCHAR(45) NULL,
  `Año` VARCHAR(45) NULL,
  PRIMARY KEY (`id_coche`))