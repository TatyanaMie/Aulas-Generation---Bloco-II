create database db_generation_game_online;
use db_generation_game_online;
create table tb_classe (
id bigint auto_increment,
genero varchar(455) not null,
participantes bigint not null,
primary key(id)
);
insert into tb_classe (genero,participantes) values ("terror", 15);
insert into tb_classe (genero,participantes) values ("ação",20);
insert into tb_classe (genero,participantes) values ("aventura",5);
insert into tb_classe (genero,participantes) values ("fantasia",2);
insert into tb_classe (genero,participantes) values ("luta",2);


create table tb_personagem (
id bigint auto_increment,
ataque bigint not null,
defesa bigint not null,
nome varchar(455) not null,
vida bigint(10) not null,
classe_id bigint not null,

primary key(id),
foreign key(classe_id) references tb_classe(id)
);

insert into tb_personagem (ataque,defesa,nome,vida,classe_id) values (3000,1000,"Nick",10,1);
insert into tb_personagem (ataque,defesa,nome,vida,classe_id) values (2500,500,"Cinderella",5,2);
insert into tb_personagem (ataque,defesa,nome,vida,classe_id) values (1000,1900,"Mario",2,3);
insert into tb_personagem (ataque,defesa,nome,vida,classe_id) values (500,2000,"Luigi",10,4);
insert into tb_personagem (ataque,defesa,nome,vida,classe_id) values (3200,5000,"Mistica",3,5);
insert into tb_personagem (ataque,defesa,nome,vida,classe_id) values (5000,950,"Cyclope",5,2);
insert into tb_personagem (ataque,defesa,nome,vida,classe_id) values (7000,4500,"Jean Gray",1,2);
insert into tb_personagem (ataque,defesa,nome,vida,classe_id) values (5000,1150,"Papaleguas",10,3);

select*from tb_personagem where ataque>2000;
select*from tb_personagem where defesa<2000 and defesa>1000;
select*from tb_personagem where nome like "%C%";
select*from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
select*from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.genero = "ação";
