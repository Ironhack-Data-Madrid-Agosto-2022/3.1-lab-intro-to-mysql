-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema lab_cars_mysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab_cars_mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_cars_mysql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `lab_cars_mysql` ;

-- -----------------------------------------------------
-- Table `lab_cars_mysql`.`CAR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_cars_mysql`.`CAR` (
  `VIN` INT NOT NULL,
  `MANUFACTURER` VARCHAR(45) NULL,
  `MODEL` VARCHAR(45) NULL,
  `YEAR` VARCHAR(45) NULL,
  `COLOR` VARCHAR(45) NULL,
  PRIMARY KEY (`VIN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_cars_mysql`.`SALESPERSON`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_cars_mysql`.`SALESPERSON` (
  `STAFF_ID` INT NOT NULL,
  `NAME` VARCHAR(45) NULL,
  `STORE` VARCHAR(45) NULL,
  PRIMARY KEY (`STAFF_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_cars_mysql`.`CUSTOMER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_cars_mysql`.`CUSTOMER` (
  `CUSTOMER_ID` INT NOT NULL,
  `NAME` VARCHAR(45) NOT NULL,
  `PHONE_NUMBER` VARCHAR(45) NULL,
  `EMAIL` VARCHAR(45) NULL,
  `ADDRESS` VARCHAR(45) NULL,
  `CITY` VARCHAR(45) NULL,
  `STATE` VARCHAR(45) NULL,
  `COUNTRY` VARCHAR(45) NULL,
  `ZIP` VARCHAR(45) NULL,
  PRIMARY KEY (`CUSTOMER_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_cars_mysql`.`Invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_cars_mysql`.`Invoice` (
  `INVOICE_ID` INT NOT NULL,
  `DATE` DATE NOT NULL,
  `CAR` VARCHAR(45) NOT NULL,
  `CUSTOMER` VARCHAR(45) NOT NULL,
  `SALESPERSON` VARCHAR(45) NOT NULL,
  `CAR_VIN` INT NOT NULL,
  `SALESPERSON_STAFF_ID` INT NOT NULL,
  `CUSTOMER_CUSTOMER_ID` INT NOT NULL,
  PRIMARY KEY (`INVOICE_ID`),
  INDEX `fk_Invoice_CAR_idx` (`CAR_VIN` ASC) VISIBLE,
  INDEX `fk_Invoice_SALESPERSON1_idx` (`SALESPERSON_STAFF_ID` ASC) VISIBLE,
  INDEX `fk_Invoice_CUSTOMER1_idx` (`CUSTOMER_CUSTOMER_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoice_CAR`
    FOREIGN KEY (`CAR_VIN`)
    REFERENCES `lab_cars_mysql`.`CAR` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoice_SALESPERSON1`
    FOREIGN KEY (`SALESPERSON_STAFF_ID`)
    REFERENCES `lab_cars_mysql`.`SALESPERSON` (`STAFF_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoice_CUSTOMER1`
    FOREIGN KEY (`CUSTOMER_CUSTOMER_ID`)
    REFERENCES `lab_cars_mysql`.`CUSTOMER` (`CUSTOMER_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
