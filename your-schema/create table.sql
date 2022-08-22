-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema coches
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema coches
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `coches` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `coches` ;

-- -----------------------------------------------------
-- Table `coches`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`Customers` (
  `id` INT NOT NULL,
  `cus_id` VARCHAR(5) NULL,
  `cus_name` VARCHAR(45) NULL,
  `phone_number` VARCHAR(15) NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state_province` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip_postal_code` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coches`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`Salesperson` (
  `id` INT NOT NULL,
  `staff_id` VARCHAR(5) NULL,
  `staff_name` VARCHAR(45) NULL,
  `store` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coches`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`Invoices` (
  `id` INT NOT NULL,
  `invoice_num` INT NULL,
  `invoice_date` DATE NULL,
  `cars_id` INT NOT NULL,
  `cus_id` INT NOT NULL,
  `staff_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Invoices_Cars1_idx` (`cars_id` ASC) VISIBLE,
  INDEX `fk_Invoices_Salesperson2_idx` (`staff_id` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers2_idx` (`cus_id` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`cars_id`)
    REFERENCES `coches`.`Cars` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salesperson2`
    FOREIGN KEY (`staff_id`)
    REFERENCES `coches`.`Salesperson` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers2`
    FOREIGN KEY (`cus_id`)
    REFERENCES `coches`.`Customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coches`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`Cars` (
  `id` INT NOT NULL,
  `car_VIN` VARCHAR(17) NULL,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(20) NULL,
  `year` YEAR NULL,
  `color` VARCHAR(20) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coches`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`Invoices` (
  `id` INT NOT NULL,
  `invoice_num` INT NULL,
  `invoice_date` DATE NULL,
  `cars_id` INT NOT NULL,
  `cus_id` INT NOT NULL,
  `staff_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Invoices_Cars1_idx` (`cars_id` ASC) VISIBLE,
  INDEX `fk_Invoices_Salesperson2_idx` (`staff_id` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers2_idx` (`cus_id` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`cars_id`)
    REFERENCES `coches`.`Cars` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salesperson2`
    FOREIGN KEY (`staff_id`)
    REFERENCES `coches`.`Salesperson` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers2`
    FOREIGN KEY (`cus_id`)
    REFERENCES `coches`.`Customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
