-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Manolo_Motors
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Manolo_Motors
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Manolo_Motors` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `Manolo_Motors` ;

-- -----------------------------------------------------
-- Table `Manolo_Motors`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Manolo_Motors`.`cars` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `VIN` CHAR(17) NULL DEFAULT NULL,
  `Manufacturer` VARCHAR(20) NULL DEFAULT NULL,
  `Model` VARCHAR(10) NULL DEFAULT NULL,
  `Year` YEAR NULL DEFAULT NULL,
  `Color` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Manolo_Motors`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Manolo_Motors`.`Customers` (
  `customer ID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NULL,
  `phone number` VARCHAR(20) NULL,
  `email` VARCHAR(20) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(15) NULL,
  `state/province` VARCHAR(20) NULL,
  `country` VARCHAR(10) NULL,
  `zip/postal code` VARCHAR(10) NULL,
  PRIMARY KEY (`customer ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Manolo_Motors`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Manolo_Motors`.`Salespersons` (
  `staff ID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NULL,
  `store` VARCHAR(15) NULL,
  PRIMARY KEY (`staff ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Manolo_Motors`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Manolo_Motors`.`Invoices` (
  `invoice ID` INT NOT NULL AUTO_INCREMENT,
  `invoice number` INT NULL,
  `date` DATE NULL,
  `Salespersons_staff ID` INT NOT NULL,
  `Customers_customer ID` INT NOT NULL,
  `cars_ID` INT NOT NULL,
  PRIMARY KEY (`invoice ID`, `Salespersons_staff ID`, `Customers_customer ID`, `cars_ID`),
  INDEX `fk_Invoices_Salespersons_idx` (`Salespersons_staff ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_customer ID` ASC) VISIBLE,
  INDEX `fk_Invoices_cars1_idx` (`cars_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Salespersons`
    FOREIGN KEY (`Salespersons_staff ID`)
    REFERENCES `Manolo_Motors`.`Salespersons` (`staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_customer ID`)
    REFERENCES `Manolo_Motors`.`Customers` (`customer ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_cars1`
    FOREIGN KEY (`cars_ID`)
    REFERENCES `Manolo_Motors`.`cars` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
