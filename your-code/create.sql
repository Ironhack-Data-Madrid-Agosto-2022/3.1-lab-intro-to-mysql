-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `lab_mysql` ;

-- -----------------------------------------------------
-- Table `lab_mysql`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Cars` (
  `idcars` INT NOT NULL,
  `VIN` VARCHAR(30) NULL,
  `Manufacturer` VARCHAR(30) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` INT NULL,
  `Color` VARCHAR(45) NULL,
  PRIMARY KEY (`idcars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`customers` (
  `idcustomers` INT NOT NULL,
  `Customer ID` INT NULL,
  `Name` VARCHAR(45) NULL,
  `Phone` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State/Province` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Postal` INT NULL,
  PRIMARY KEY (`idcustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Salesperson` (
  `idsales` INT NOT NULL,
  `Staff ID` INT NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`idsales`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Invoices` (
  `idinvoice` INT NOT NULL,
  `invoice number` INT NULL,
  `Date` VARCHAR(45) NULL,
  `Salesperson_idsales` INT NOT NULL,
  `Cars_idcars` INT NOT NULL,
  `customers_idcustomers` INT NOT NULL,
  PRIMARY KEY (`idinvoice`),
  INDEX `fk_Invoices_Salesperson1_idx` (`Salesperson_idsales` ASC) VISIBLE,
  INDEX `fk_Invoices_Cars1_idx` (`Cars_idcars` ASC) VISIBLE,
  INDEX `fk_Invoices_customers1_idx` (`customers_idcustomers` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Salesperson1`
    FOREIGN KEY (`Salesperson_idsales`)
    REFERENCES `lab_mysql`.`Salesperson` (`idsales`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars_idcars`)
    REFERENCES `lab_mysql`.`Cars` (`idcars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_customers1`
    FOREIGN KEY (`customers_idcustomers`)
    REFERENCES `lab_mysql`.`customers` (`idcustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
