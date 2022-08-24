-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema concesionario
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema concesionario
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `concesionario` DEFAULT CHARACTER SET utf8 ;
USE `concesionario` ;

-- -----------------------------------------------------
-- Table `concesionario`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionario`.`Clientes` (
  `id_Cliente` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL,
  `Num_Telf` VARCHAR(45) NULL DEFAULT NULL,
  `E-mail` VARCHAR(45) NULL DEFAULT NULL,
  `Dirección` VARCHAR(45) NULL DEFAULT NULL,
  `Ciudad` VARCHAR(45) NULL DEFAULT NULL,
  `Estado/Provincia` VARCHAR(45) NULL DEFAULT NULL,
  `País` VARCHAR(45) NULL DEFAULT NULL,
  `CP` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_Cliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `concesionario`.`Coches`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionario`.`Coches` (
  `id_coche` INT NOT NULL,
  `VIN` VARCHAR(45) NULL DEFAULT NULL,
  `Modelo` VARCHAR(45) NULL DEFAULT NULL,
  `Fabricante` VARCHAR(45) NULL DEFAULT NULL,
  `Color` VARCHAR(45) NULL DEFAULT NULL,
  `Año` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_coche`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `concesionario`.`Vendedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionario`.`Vendedores` (
  `id_Personal` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL,
  `Tienda` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_Personal`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `concesionario`.`INVOICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionario`.`INVOICES` (
  `id_Factura` INT NOT NULL,
  `Num_Factura` VARCHAR(45) NULL DEFAULT NULL,
  `Fecha` VARCHAR(45) NULL DEFAULT NULL,
  `Vendedores_id_Personal` INT NOT NULL,
  `Coches_id_coche` INT NOT NULL,
  `Clientes_id_Cliente` INT NOT NULL,
  PRIMARY KEY (`id_Factura`, `Vendedores_id_Personal`, `Coches_id_coche`, `Clientes_id_Cliente`),
  INDEX `fk_INVOICES_Vendedores_idx` (`Vendedores_id_Personal` ASC) VISIBLE,
  INDEX `fk_INVOICES_Coches1_idx` (`Coches_id_coche` ASC) VISIBLE,
  INDEX `fk_INVOICES_Clientes1_idx` (`Clientes_id_Cliente` ASC) VISIBLE,
  CONSTRAINT `fk_INVOICES_Vendedores`
    FOREIGN KEY (`Vendedores_id_Personal`)
    REFERENCES `concesionario`.`Vendedores` (`id_Personal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICES_Coches1`
    FOREIGN KEY (`Coches_id_coche`)
    REFERENCES `concesionario`.`Coches` (`id_coche`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICES_Clientes1`
    FOREIGN KEY (`Clientes_id_Cliente`)
    REFERENCES `concesionario`.`Clientes` (`id_Cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;