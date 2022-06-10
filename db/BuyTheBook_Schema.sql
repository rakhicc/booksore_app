/**
On your local machine, replace 'zm03bn07x5wf2337' with 'bookstore_db'
**/

-- Use JAWS_DB Database
USE zm03bn07x5wf2337;

-- Create Table Author on DB
CREATE TABLE `bookstore_db`.`Author` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(45) NOT NULL,
  `lastName` VARCHAR(45) NOT NULL,
  `createdAt` VARCHAR(45),
  `updatedAt` VARCHAR(45),
  PRIMARY KEY (`id`));

-- Create Table Book after Author because of FK constraint to Author Tbl
CREATE TABLE `bookstore_db`.`Book` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `genre` VARCHAR(255) NOT NULL,
  `pubYear` INT NOT NULL,
  `price` DECIMAL(13,2) NOT NULL,
  `inventory` INT NOT NULL,
  `bookDescription` TEXT NOT NULL,
  `createdAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AuthorId` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `AuthorId_idx` (`AuthorId` ASC),
  CONSTRAINT `AuthorId`
    FOREIGN KEY (`AuthorId`)
    REFERENCES `bookstore_db`.`Author` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



-- Create Table Cart
CREATE TABLE `bookstore_db`.`Cart` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `quantity` INT NOT NULL,
  `price` DECIMAL(13,2) NOT NULL,
  `createdAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));
