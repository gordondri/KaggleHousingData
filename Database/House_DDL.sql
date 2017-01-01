-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema houseDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema houseDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `houseDB` DEFAULT CHARACTER SET utf8 ;
USE `houseDB` ;

-- -----------------------------------------------------
-- Table `houseDB`.`Waterfront`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `houseDB`.`Waterfront` (
  `Waterfront_ID` INT NOT NULL,
  `Description` VARCHAR(100) NULL,
  PRIMARY KEY (`Waterfront_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `houseDB`.`HouseView`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `houseDB`.`HouseView` (
  `View_ID` INT NOT NULL,
  `Description` VARCHAR(100) NULL,
  PRIMARY KEY (`View_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `houseDB`.`HouseCondition`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `houseDB`.`HouseCondition` (
  `Condition_ID` INT NOT NULL,
  `Description` VARCHAR(100) NULL,
  PRIMARY KEY (`Condition_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `houseDB`.`Grade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `houseDB`.`Grade` (
  `Grade_ID` INT NOT NULL,
  `Description` VARCHAR(100) NULL,
  PRIMARY KEY (`Grade_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `houseDB`.`Address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `houseDB`.`Address` (
  `Address_ID` INT NOT NULL,
  `Address` VARCHAR(100) NULL,
  `Zipcode` INT NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  PRIMARY KEY (`Address_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `houseDB`.`KingCountyHouseInformation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `houseDB`.`KingCountyHouseInformation` (
  `KCH_ID` INT NOT NULL AUTO_INCREMENT,
  `Transaction_ID` VARCHAR(100) NULL,
  `Date` DATETIME NULL,
  `Price` INT NULL,
  `Bedrooms` INT NULL,
  `Bathrooms` FLOAT NULL,
  `Sqft_Lot` INT NULL,
  `Floors` INT NULL,
  `Waterfront_ID` INT NULL,
  `View_ID` INT NULL,
  `Condition_ID` INT NULL,
  `Grade_ID` INT NULL,
  `Sqft_Above` INT NULL,
  `Sqft_Basement` INT NULL,
  `Yr_Built` INT NULL,
  `Yr_Renovated` INT NULL,
  `Address_ID` INT NULL,
  `Latitude` FLOAT NULL,
  `Longitude` FLOAT NULL,
  `Sqft_Living_15` INT NULL,
  `Sqft_Lot_15` INT NULL,
  PRIMARY KEY (`KCH_ID`),
  INDEX `Waterfront_ID_idx` (`Waterfront_ID` ASC),
  INDEX `View_ID_idx` (`View_ID` ASC),
  INDEX `Condition_ID_idx` (`Condition_ID` ASC),
  INDEX `Grade_ID_idx` (`Grade_ID` ASC),
  INDEX `Address_ID_idx` (`Address_ID` ASC),
  CONSTRAINT `Waterfront_ID`
    FOREIGN KEY (`Waterfront_ID`)
    REFERENCES `houseDB`.`Waterfront` (`Waterfront_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `View_ID`
    FOREIGN KEY (`View_ID`)
    REFERENCES `houseDB`.`HouseView` (`View_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Condition_ID`
    FOREIGN KEY (`Condition_ID`)
    REFERENCES `houseDB`.`HouseCondition` (`Condition_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Grade_ID`
    FOREIGN KEY (`Grade_ID`)
    REFERENCES `houseDB`.`Grade` (`Grade_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Address_ID`
    FOREIGN KEY (`Address_ID`)
    REFERENCES `houseDB`.`Address` (`Address_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
