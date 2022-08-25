-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema labcoches
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema labcoches
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `labcoches` DEFAULT CHARACTER SET utf8 ;
USE `labcoches` ;

-- -----------------------------------------------------
-- Table `labcoches`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `labcoches`.`cars` (
  `id_car` INT NOT NULL,
  `vin_number` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  `year` DATE NULL,
  `manufacturer` VARCHAR(45) NULL,
  PRIMARY KEY (`id_car`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `labcoches`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `labcoches`.`customers` (
  `id_customer` INT NOT NULL,
  `id_number` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `email` VARCHAR(100) NULL,
  `phone_number` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `address` VARCHAR(200) NULL,
  `province` VARCHAR(45) NULL,
  `postal_code` VARCHAR(45) NULL,
  PRIMARY KEY (`id_customer`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `labcoches`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `labcoches`.`salesperson` (
  `id_staff` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `store` VARCHAR(45) NULL,
  `salespersoncol` VARCHAR(45) NULL,
  PRIMARY KEY (`id_staff`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `labcoches`.`invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `labcoches`.`invoice` (
  `id_invoice` INT NOT NULL,
  `invoice_number` INT NULL,
  `date` DATE NULL,
  `cars_id_car` INT NOT NULL,
  `customers_id_customer` INT NOT NULL,
  `salesperson_id_staff` INT NOT NULL,
  PRIMARY KEY (`id_invoice`, `cars_id_car`, `customers_id_customer`, `salesperson_id_staff`),
  INDEX `fk_invoice_cars_idx` (`cars_id_car` ASC) VISIBLE,
  INDEX `fk_invoice_customers1_idx` (`customers_id_customer` ASC) VISIBLE,
  INDEX `fk_invoice_salesperson1_idx` (`salesperson_id_staff` ASC) VISIBLE,
  CONSTRAINT `fk_invoice_cars`
    FOREIGN KEY (`cars_id_car`)
    REFERENCES `labcoches`.`cars` (`id_car`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_customers1`
    FOREIGN KEY (`customers_id_customer`)
    REFERENCES `labcoches`.`customers` (`id_customer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_salesperson1`
    FOREIGN KEY (`salesperson_id_staff`)
    REFERENCES `labcoches`.`salesperson` (`id_staff`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
