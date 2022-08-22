-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mecagoenturaza
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema concesionario
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema concesionario
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `concesionario` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `concesionario` ;

-- -----------------------------------------------------
-- Table `concesionario`.`Coches`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionario`.`Coches` (
  `VIN` VARCHAR(20) NOT NULL,
  `Fabricante` VARCHAR(40) NOT NULL,
  `Modelo` VARCHAR(40) NOT NULL,
  `Año` YEAR NOT NULL,
  `Color` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`VIN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `concesionario`.`Comprador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionario`.`Comprador` (
  `DNI` CHAR(9) NOT NULL,
  `Nombre` VARCHAR(40) NOT NULL,
  `Telefono` VARCHAR(20) NOT NULL,
  `Email` VARCHAR(40) NOT NULL,
  `Direccion` VARCHAR(80) NOT NULL,
  `Ciudad` VARCHAR(40) NOT NULL,
  `Provincia` VARCHAR(40) NOT NULL,
  `Pais` VARCHAR(40) NOT NULL,
  `CP` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`DNI`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `concesionario`.`Vendedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionario`.`Vendedor` (
  `ID` SMALLINT NOT NULL,
  `Nombre` VARCHAR(40) NOT NULL,
  `Tienda` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `concesionario`.`Factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionario`.`Factura` (
  `Nº ID` INT NOT NULL,
  `Fecha` DATETIME NOT NULL,
  `Coches_VIN` CHAR(20) NOT NULL,
  `Vendedor_ID` SMALLINT NOT NULL,
  `Comprador_DNI` CHAR(9) NOT NULL,
  PRIMARY KEY (`Nº ID`),
  UNIQUE INDEX `Nº ID_UNIQUE` (`Nº ID` ASC) VISIBLE,
  INDEX `fk_Factura_Coches_idx` (`Coches_VIN` ASC) VISIBLE,
  INDEX `fk_Factura_Vendedor1_idx` (`Vendedor_ID` ASC) VISIBLE,
  INDEX `fk_Factura_Comprador1_idx` (`Comprador_DNI` ASC) VISIBLE,
  CONSTRAINT `fk_Factura_Coches`
    FOREIGN KEY (`Coches_VIN`)
    REFERENCES `concesionario`.`Coches` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Factura_Vendedor1`
    FOREIGN KEY (`Vendedor_ID`)
    REFERENCES `concesionario`.`Vendedor` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Factura_Comprador1`
    FOREIGN KEY (`Comprador_DNI`)
    REFERENCES `concesionario`.`Comprador` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
