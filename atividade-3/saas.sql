-- -----------------------------------------------------
-- Schema saas
-- -----------------------------------------------------
-- Bando de dados de Sistema de Apoio a Amigo Secreto.

-- -----------------------------------------------------
-- Schema saas
--
-- Bando de dados de sistema de Apoio a Amigo Secreto.
-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `saas` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `saas` ;

-- -----------------------------------------------------
-- Table `saas`.`avaliacao`
-- -----------------------------------------------------
CREATE TABLE avaliacao
(
	Id serial primary key,
  	IdSugestoes integer
);


-- -----------------------------------------------------
-- Table `saas`.`sugestoes`
-- -----------------------------------------------------
CREATE TABLE sugestoes
(
	Id serial primary key,
  	IdParticipantes integer
);


-- -----------------------------------------------------
-- Table `saas`.`participantes`
-- -----------------------------------------------------
CREATE TABLE participantes
(
	Id serial primary key,
  	participantes integer,
    IdListas integer
);


-- -----------------------------------------------------
-- Table `saas`.`sorteio`
-- -----------------------------------------------------
CREATE TABLE sorteio
(
	Id serial primary key,
  	IdAmigoSecreto integer,
    IdNotificacao integer
);


-- -----------------------------------------------------
-- Table `saas`.`sugestoesDePresente`
-- -----------------------------------------------------
CREATE TABLE sugestoesDePresente
(
	Id serial primary key,
  	nome varchar(255),
    IdParticipantes integer,
    IdListas integer
);


-- -----------------------------------------------------
-- Table `saas`.`listas`
-- -----------------------------------------------------
CREATE TABLE listas
(
	Id serial primary key,
  	nome varchar(255),
    IdParticipantes integer,
    IdSorteio integer
);


-- -----------------------------------------------------
-- Table `saas`.`amigoSecreto`
-- -----------------------------------------------------
CREATE TABLE amigoSecreto
(
	Id serial primary key,
  	IdParticipantes integer
);


-- -----------------------------------------------------
-- Table `saas`.`notificacao`
-- -----------------------------------------------------
CREATE TABLE notificacao
(
	Id serial primary key,
  	IdAmigoSecreto integer
);


-- -----------------------------------------------------
-- Table `saas`.`trocaDeMensagens`
-- -----------------------------------------------------
CREATE TABLE trocaDeMensagens
(
	Id serial primary key,
  	IdAmigoSecreto integer
);


-- -----------------------------------------------------
-- Table `saas`.`edicoesPassadas`
-- -----------------------------------------------------
CREATE TABLE edicoesPassadas
(
	Id serial primary key,
  	nome varchar(255),
    IdParticipantes integer
);



-- -----------------------------------------------------
-- Insert - Table `saas`.`avaliacao`
-- -----------------------------------------------------
insert into avaliacao(IdSugestoes) 
values 
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);


-- -----------------------------------------------------
-- Insert - Table `saas`.`sugestoes`
-- -----------------------------------------------------
insert into sugestoes(IdParticipantes) 
values 
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);


-- -----------------------------------------------------
-- Insert - Table `saas`.`participantes`
-- -----------------------------------------------------
insert into participantes(participantes, IdListas) 
values 
(10, 1),
(20, 1),
(30, 1),
(40, 1),
(50, 1),
(60, 1),
(70, 1),
(80, 1),
(90, 1),
(100, 1);


-- -----------------------------------------------------
-- Insert - Table `saas`.`sorteio`
-- -----------------------------------------------------
insert into sorteio(IdAmigoSecreto, IdNotificacao) 
values 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);


-- -----------------------------------------------------
-- Insert - Table `saas`.`sugestoesDePresente`
-- -----------------------------------------------------
insert into sugestoesDePresente(nome, IdParticipantes, IdListas) 
values 
('Camisetas divertidas', 1, 1),
('Livros', 2, 2),
('Porta retrato', 3, 3),
('Almofadas decorativas', 4, 4),
('Caneca de vidro Jack Daniels', 5, 5),
('Jogo Cassino Roleta Shot', 6, 6),
('Copo Térmico', 7, 7),
('Vinho', 8, 8),
('Colar', 9, 9),
('Carregador portátil', 10, 10);


-- -----------------------------------------------------
-- Insert - Table `saas`.`listas`
-- -----------------------------------------------------
insert into listas(nome, IdParticipantes, IdSorteio) 
values 
('Felipe', 1, 1),
('Davi', 2, 2),
('Giovanna', 3, 3),
('Murilo', 4, 4),
('Melissa', 5, 5),
('Lucca', 6, 6),
('Isabella', 7, 7),
('Theo', 8, 8),
('Rebeca', 9, 9),
('Beto', 10, 10);


-- -----------------------------------------------------
-- Insert - Table `saas`.`amigoSecreto`
-- -----------------------------------------------------
insert into amigoSecreto(IdParticipantes) 
values 
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);


-- -----------------------------------------------------
-- Insert - Table `saas`.`notificacao`
-- -----------------------------------------------------
insert into notificacao(IdAmigoSecreto) 
values 
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);


-- -----------------------------------------------------
-- Insert - Table `saas`.`trocaDeMensagens`
-- -----------------------------------------------------
insert into trocaDeMensagens(IdAmigoSecreto) 
values 
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);


-- -----------------------------------------------------
-- Insert - Table `saas`.`edicoesPassadas`
-- -----------------------------------------------------
insert into edicoesPassadas(nome, IdParticipantes) 
values 
('Felipe', 1),
('Davi', 2),
('Giovanna', 3),
('Murilo', 4),
('Melissa', 5),
('Lucca', 6),
('Isabella', 7),
('Theo', 8),
('Rebeca', 9),
('Beto', 10);



-- -----------------------------------------------------
-- Show - Table `saas`
-- -----------------------------------------------------
show tables;



-- -----------------------------------------------------
-- Select - Table `saas`.`avaliacao`
-- -----------------------------------------------------
select * from avaliacao;


-- -----------------------------------------------------
-- Select - Table `saas`.`sugestoes`
-- -----------------------------------------------------
select * from sugestoes;


-- -----------------------------------------------------
-- Select - Table `saas`.`participantes`
-- -----------------------------------------------------
select * from participantes;


-- -----------------------------------------------------
-- Select - Table `saas`.`sorteio`
-- -----------------------------------------------------
select * from sorteio;


-- -----------------------------------------------------
-- Select - Table `saas`.`sugestoesDePresente`
-- -----------------------------------------------------
select * from sugestoesDePresente;


-- -----------------------------------------------------
-- Select - Table `saas`.`listas`
-- -----------------------------------------------------
select * from listas;


-- -----------------------------------------------------
-- Select - Table `saas`.`amigoSecreto`
-- -----------------------------------------------------
select * from amigoSecreto;


-- -----------------------------------------------------
-- Select - Table `saas`.`notificacao`
-- -----------------------------------------------------
select * from notificacao;


-- -----------------------------------------------------
-- Select - Table `saas`.`trocaDeMensagens`
-- -----------------------------------------------------
select * from trocaDeMensagens;


-- -----------------------------------------------------
-- Select - Table `saas`.`edicoesPassadas`
-- -----------------------------------------------------
select * from edicoesPassadas;
