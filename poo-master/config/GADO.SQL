create database gado;
# drop database gado;
use gado;

create table veterinario(
id integer primary key auto_increment,
imagem varchar(45),
nome varchar(45),
crmv varchar(45),
telefone varchar(15)
);

#select * from veterinario;

create table criador(
id integer auto_increment primary key,
nome varchar(45),
nomePropriedade varchar(45));

create table raca(
id integer auto_increment primary key,
nome varchar(45)
);

create table gado(
id integer primary key auto_increment,
nome varchar(45),
idade integer,
peso decimal(5,2),
raca_id integer,
criador_id integer,
foreign key(raca_id) references raca(id),
foreign key(criador_id) references criador(id)
);

create table gado_veterinario(
gado_id integer,
veterinario_id integer,
ultimaConsulta date,
tratamento varchar(45),
foreign key (gado_id) references gado(id),
foreign key (veterinario_id) references veterinario(id),
primary key (gado_id, veterinario_id)
);
       
select * from gado_veterinario;
#drop table gado_veterinario;
select * from raca;





