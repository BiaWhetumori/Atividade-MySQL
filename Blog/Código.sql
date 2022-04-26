-- MySQL Script generated by MySQL Workbench
-- Tue Apr 26 14:19:12 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_blog
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_blog
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_blog` DEFAULT CHARACTER SET utf8 ;
USE `db_blog` ;

-- -----------------------------------------------------
-- Table `db_blog`.`tb_temas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blog`.`tb_temas` (
  `Id` BIGINT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_blog`.`tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blog`.`tb_usuarios` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(255) NOT NULL,
  `Usuario` VARCHAR(255) NOT NULL,
  `Senha` VARCHAR(255) NOT NULL,
  `Foto` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_blog`.`tb_postagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blog`.`tb_postagens` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `Titulo` VARCHAR(100) NOT NULL,
  `Texto` VARCHAR(1000) NOT NULL,
  `Data` DATE NULL,
  `tb_temas_Id` BIGINT NOT NULL,
  `tb_usuarios_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_postagens_tb_temas_idx` (`tb_temas_Id` ASC) VISIBLE,
  INDEX `fk_tb_postagens_tb_usuarios1_idx` (`tb_usuarios_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_postagens_tb_temas`
    FOREIGN KEY (`tb_temas_Id`)
    REFERENCES `db_blog`.`tb_temas` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_postagens_tb_usuarios1`
    FOREIGN KEY (`tb_usuarios_id`)
    REFERENCES `db_blog`.`tb_usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
