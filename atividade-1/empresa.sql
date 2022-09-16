-- Atividade 1
-- -----------------------------------------------------
-- Schema Empresa
-- -----------------------------------------------------
-- Bando de dados de empresa.

-- -----------------------------------------------------
-- Schema Empresa
--
-- Bando de dados de empresa.
-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `Empresa` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `Empresa` ;

-- -----------------------------------------------------
-- Table `Empresa`.`departamento`
-- -----------------------------------------------------
CREATE TABLE departamento 
(
	codigo serial primary key,
  	descricao varchar(255)
);


-- -----------------------------------------------------
-- Table `Empresa`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE funcionario 
(
	codigo serial primary key,
  	nome varchar(255),
  	endereco varchar(255),
  	telefone varchar(16),
  	cod_departamento integer,
  	constraint  funcionarioDepartamento foreign key (cod_departamento) references departamento(codigo)
);


-- -----------------------------------------------------
-- Table `Empresa`.`dependentes`
-- -----------------------------------------------------
CREATE TABLE dependentes 
(
  	codigo serial primary key,
  	nome varchar(255),
  	data_nasc varchar(10),
  	cod_funcionario integer,
  	constraint dependentesFuncionario foreign key (cod_funcionario) references funcionario(codigo)
);



-- Atividade 2

-- -----------------------------------------------------
-- Insert - Table `Empresa`.`departamento`
-- -----------------------------------------------------
insert into departamento(descricao) 
values 
("Administrativo"),
("Financeiro"),
("Recusos Humanos");


-- -----------------------------------------------------
-- Insert - Table `Empresa`.`funcionario`
-- -----------------------------------------------------
insert into funcionario(nome, endereco, telefone, cod_departamento) values ("Felipe", "Rua A", "(62) 9999-9999", 1);
insert into funcionario(nome, endereco, telefone, cod_departamento) values ("Fulano", "Rua B", "(62) 9999-9999", 2);
insert into funcionario(nome, endereco, telefone, cod_departamento) values ("Siclano", "Rua C", "(62) 9999-9999", 3);



-- Atividade 3

-- -----------------------------------------------------
-- Update - Table `Empresa`.`departamento`
-- -----------------------------------------------------
UPDATE
  funcionario
SET
  nome= 'Felipão da Nasa'
WHERE
  codigo = 3;


UPDATE
  funcionario
SET
  cod_departamento= 3
WHERE
  codigo = 1;


UPDATE
  funcionario
SET
  endereco= 'Rua Y'
WHERE
  codigo = 2;


-- -----------------------------------------------------
-- Insert - Table `Empresa`.`dependentes`
-- -----------------------------------------------------
insert into dependentes(nome, data_nasc, cod_funcionario) 
values 
("Filho", "09-01-2020", 1),
("Filho", "24-05-2019", 2),
("Filho", "16-09-2021", 3);


UPDATE
  dependentes
SET
  data_nasc= "09-01-2020";



-- Atividade 4

-- -----------------------------------------------------
-- Delete - Table `Empresa`.`departamento`
-- -----------------------------------------------------
delete from departamento where codigo = 1;


-- -----------------------------------------------------
-- Delete - Table `Empresa`.`funcionario`
-- -----------------------------------------------------
delete from funcionario where codigo = 1;


-- -----------------------------------------------------
-- Delete - Table `Empresa`.`dependentes`
-- -----------------------------------------------------
delete from dependentes where codigo = 1;



-- Atividade 5

-- -----------------------------------------------------
-- Select - Table `Empresa`.`departamento`
-- -----------------------------------------------------
select * from departamento;


-- -----------------------------------------------------
-- Select - Table `Empresa`.`funcionario`
-- -----------------------------------------------------
select * from funcionario;


-- -----------------------------------------------------
-- Select - Table `Empresa`.`dependentes`
-- -----------------------------------------------------
select * from dependentes;
