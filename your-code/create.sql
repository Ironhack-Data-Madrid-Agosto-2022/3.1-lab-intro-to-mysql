-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema dealership
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dealership
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dealership` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `dealership` ;

-- -----------------------------------------------------
-- Table `dealership`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dealership`.`cars` (
  `id` INT NOT NULL,
  `vin_number` CHAR(17) NOT NULL,
  `manufacturer` VARCHAR(20) NOT NULL,
  `model` VARCHAR(20) NOT NULL,
  `year_model` YEAR NOT NULL,
  `color` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dealership`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dealership`.`customers` (
  `id_customers` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(35) NOT NULL,
  `phone_number` VARCHAR(15) NOT NULL,
  `email` VARCHAR(40) NULL DEFAULT NULL,
  `adress` VARCHAR(45) NULL,
  `city` VARCHAR(20) NULL DEFAULT NULL,
  `province` VARCHAR(20) NULL DEFAULT NULL,
  `country` VARCHAR(30) NULL DEFAULT NULL,
  `postal_code` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id_customers`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dealership`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dealership`.`salespersons` (
  `id_staff` INT NOT NULL AUTO_INCREMENT,
  `name_staff` VARCHAR(35) NOT NULL,
  `store` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_staff`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dealership`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dealership`.`invoices` (
  `id_invoice` INT NOT NULL AUTO_INCREMENT,
  `invoice_number` VARCHAR(10) NOT NULL,
  `date_number` DATE NULL DEFAULT NULL,
  `Customers_id_customers` INT NOT NULL,
  `Cars_id1` INT NOT NULL,
  `Salespersons_id_staff` INT NOT NULL,
  PRIMARY KEY (`id_invoice`),
  INDEX `fk_Invoices_Customers_idx` (`Customers_id_customers` ASC) VISIBLE,
  INDEX `fk_Invoices_Cars2_idx` (`Cars_id1` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_id_staff` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars2`
    FOREIGN KEY (`Cars_id1`)
    REFERENCES `dealership`.`cars` (`id`),
  CONSTRAINT `fk_Invoices_Customers`
    FOREIGN KEY (`Customers_id_customers`)
    REFERENCES `dealership`.`customers` (`id_customers`),
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_id_staff`)
    REFERENCES `dealership`.`salespersons` (`id_staff`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
