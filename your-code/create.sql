
CREATE SCHEMA IF NOT EXISTS `lab2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `lab2` ;


CREATE TABLE IF NOT EXISTS `lab2`.`cars` (
  `carid` VARCHAR(20),
  `model` VARCHAR(30) NOT NULL,
  `year` int NOT NULL,
  `manufacturer` VARCHAR(20) NOT NULL,
  `vin` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`carid`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `lab2`.`customers` (
  `customerid` VARCHAR(20) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `adress` VARCHAR(100) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `postalc` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`customerid`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `lab2`.`salespersons` (
  `salespersonid` VARCHAR(20) NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  `store` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`salespersonid`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `lab2`.`invoice` (
  `invoiceID` VARCHAR(20) NOT NULL,
  `vin` VARCHAR(20) NOT NULL,
  `car` VARCHAR(45) NOT NULL,
  `customer` VARCHAR(45) NOT NULL,
  `salespersons_salespersonid` VARCHAR(20) NOT NULL,
  `cars_carid` VARCHAR(20),
  `customers_customerid` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`invoiceID`, `salespersons_salespersonid`, `cars_carid`, `customers_customerid`),
  INDEX `fk_invoice_salespersons_idx` (`salespersons_salespersonid` ASC) VISIBLE,
  INDEX `fk_invoice_cars1_idx` (`cars_carid` ASC) VISIBLE,
  INDEX `fk_invoice_customers1_idx` (`customers_customerid` ASC) VISIBLE,
  CONSTRAINT `fk_invoice_salespersons`
    FOREIGN KEY (`salespersons_salespersonid`)
    REFERENCES `lab2`.`salespersons` (`salespersonid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_cars1`
    FOREIGN KEY (`cars_carid`)
    REFERENCES `lab2`.`cars` (`carid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_customers1`
    FOREIGN KEY (`customers_customerid`)
    REFERENCES `lab2`.`customers` (`customerid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

