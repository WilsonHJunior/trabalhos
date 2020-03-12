CREATE DATABASE provaProg;

USE provaProg;

create table prog(
codigo int auto_increment primary key,
descricao varchar(45),
dataVenda date,
valorUnitario double,
quantidade int
);

insert into prog(descricao, dataVenda, valorUnitario, quantidade)
 values ("Teclado","2003-03-27", 15, 3),
		("Mouse","2003-03-27", 15, 5),
		("Monitor","2004-04-28", 50, 10),
		("TV","2020-09-10", 120, 23),
		("PC","1999-12-30", 30, 3);
 
 select * from prog;
 
 drop table prog;
 
create table aluno(
matricula int auto_increment primary key,
nome varchar(45),
nota1 double,
nota2 double,
nota3 double);

insert into aluno(nome, nota1, nota2, nota3)
values  ("Wilson", 10, 9, 8),
		("Murilo", 8, 9, 10),
		("Julia Fitzlaff", 1, 9, 7),
		("Julia Samp", 4, 5, 7),
		("Gabriel", 0, 10, 2);
	
select AVG(DISTINCT nota1) from aluno;


drop table aluno;

create table saltos(
codigo int auto_increment primary key,
nome varchar(25),
nota1 double,
nota2 double,
nota3 double,
nota4 double,
nota5 double);

insert into saltos(nome, nota1, nota2, nota3, nota4, nota5)
values ("Wilson", 10, 8, 9, 7, 6),
		("Murilo", 7.5, 9, 10, 5, 4),
        ("Gabriel", 5, 3, 4, 2, 1),
        ("Julia F", 1.3, 3.7, 8, 10, 2),
        ("Juia S", 8.9, 7.3, 10, 9, 8);
        
select * from saltos;

create table Estado(
codigo int auto_increment primary key,
nome varchar(45),
sigla varchar(2));

insert into Estado(nome, sigla)
values ("Santa Catarina","SC"),
		("Rio Grande do Sul","RS"),
        ("Paraná","PR"),
        ("Rio de Janeiro","RJ"),
        ("São Paulo","SP");
        
create table Cliente(
codigo int auto_increment primary key,
nome varchar(45),
email varchar(45),
telefone varchar(20));

insert into Cliente(nome, email, telefone)
values ("Wilson","wilson@gmail.com", "999281276"),
		("Gabriel","gabriel@ifc.edu.br", "991166166"),
        ("Murilo","murilo@hotmail.com", "995211013"),
        ("Julia F","julia@yahoo.com", "35216530"),
        ("Julia S","julia@gmail.com", "33332222");
        
create table Pais(
codigo int auto_increment primary key,
nome varchar(45),
sigla varchar(3),
continente varchar(20));

insert into Pais(nome, sigla, continente)
values ("Estados Unidos","EUA","América"),
		("Brasil","BR","América"),
        ("Alemanha","GER","Europa"),
        ("Hong Kong","HKG","Ásia"),
        ("Paquistão","PAK","Europa");
        
create table Esporte(
codigo int auto_increment primary key,
nome varchar(45),
numeroPraticantes int);

insert into Esporte(nome, numeroPraticantes)
values ("Futebol", 1000),
		("Basquete", 2000),
        ("Volei", 1500),
        ("Tenis", 870),
        ("Badmington", 720);
        
create table Bicicleta(
codigo int auto_increment primary key,
fabricante varchar(45),
numeroMarchas int,
formacaoQuadro varchar(40));

insert into Bicicleta(fabricante, numeroMarchas, formacaoQuadro)
values ("Mania", 2, "Tubo Superior"),
		("Track", 4,"Tubo Inferior"),
        ("Verden", 3,"Não avaliado"),
        ("Groove", 5,"Tubo do Canote"),
        ("Caloi", 8,"Indefinido");
        
create table clinica(
codigo int auto_increment primary key,
paciente varchar(45),
medico varchar(45),
dataConsulta date,
tipoConsulta varchar(20),
valor double);

insert into clinica(paciente, medico, dataConsulta, tipoConsulta, valor)
values ("Virginia Starosky", "Herbert Pessoa", "2019-10-22", "SUS", 350.00),
		("Anthony Santarittaneto", "Quentin Troncon", "2019-10-23", "Plano de Saúde", 208.54),
        ("Batista Seixas", "Valter Foster", "2019-10-24", "Particular", 123.76),
        ("Virginia Starosky", "Reginaldo Padilha", "2019-10-25", "Social", 400.98),
        ("Melissa Kuhn", "Dionisio Fischer", "2019-10-26", "Social", 397.54);

select * from clinica;

truncate table clinica;

create table Marca1(
codigo int auto_increment primary key,
descricao varchar(34));

insert into Marca1(descricao)
 values ("Teclado"),
		("Mouse"),
		("Monitor"),
		("TV"),
		("PC");

drop table Marca1;

create table Produto1(
codigo int auto_increment primary key,
descricao varchar(50),
valor int,
QEstoque int);

insert into Produto1(descricao, valor, QEstoque)
 values ("Teclado", 10, 3),
		("Mouse", 20, 7),
		("Monitor", 40, 8),
		("TV", 15, 2),
		("PC", 30, 1);

drop table Produto1;



#-----------------GADO DEMAIS-------------------#

create table Veterinario(
codigo int auto_increment primary key,
nome varchar(45),
CRMV varchar(45),
telefone varchar(15));

insert into Veterinario(nome, CRMV, telefone)
 values ("Ricardão", "1", "991166166"),
		("Jhonas", "2", "999281276"),
		("Floquin", "3", "35211039"),
		("Jukes", "4", "988110646"),
		("REIDOGADO", "5", "988401457");

drop table Veterinario;

create table Raca(
codigo int auto_increment primary key,
nome varchar(45));

insert into Raca(nome)
 values ("Branco"),
		("Preto"),
		("Pardo"),
		("Indigena"),
		("Mulato");

drop table Raca;

create table Criador(
codigo int auto_increment primary key,
nome varchar(45),
nomePropriedade varchar(45));

insert into Criador(nome, nomePropriedade)
 values ("José","JOGARDEN"),
		("João","JOGARDENTWO"),
		("Plínio","PLANALTO"),
		("Cocáina","XIMBALAIE"),
		("Sebastian","FINLANDIA");

select * from Criador;
drop table Criador;

create table Gado(
codigo int auto_increment primary key,
nome varchar(45),
idade int,
peso DECIMAL(5,2),
Raca_codigo int,
Criador_codigo int,
foreign key (Raca_codigo) references Raca(codigo),
foreign key (Criador_codigo) references Criador(codigo));

insert into Gado(nome, idade, peso, Raca_codigo, Criador_codigo)
 values ("Biru", 10, 103.53, 1, 1),
		("Xanba", 9, 204.72, 2, 2),
		("Milk", 8, 168.26, 3, 3),
		("Bele", 7, 181.98, 4, 4),
		("Dirol", 6, 156.67, 5, 5);
        
select * from Gado;
drop table Gado;

create table Gado_has_Veterinario(
Gado_codigo int,
Veterinario_codigo int,
ultimaConsulta DATE,
tratamento varchar(45),
foreign key (Gado_codigo) references Gado(codigo),
foreign key (Veterinario_codigo) references Veterinario(codigo));

insert into Gado_has_Veterinario(Gado_codigo, Veterinario_codigo, ultimaConsulta, tratamento)
 values (1, 1, "2003-03-27", "À base de porrada"),
		(2, 2, "2004-02-20", "De filosofia"),
		(3, 3, "2007-06-18", "Na água"),
		(4, 4, "2010-03-28", "À peteleco"),
		(5, 5, "2001-10-09", "À chute na bunda");
        
select * from Gado_has_Veterinario;
drop table Gado_has_Veterinario;



