create database db_escola;
use db_escola;
create table tb_estudantes(
id bigint auto_increment,
nome varchar(255),
nota decimal(2,1),
serie bigint not null,
estatus varchar(255),
primary key(id)
);

insert into tb_estudantes (nome,nota,serie,estatus) values ("Caio Santiago",7,8,"aprovade");
insert into tb_estudantes (nome,nota,serie,estatus) values ("Pedro Jesus",8.9,7,"aprovade");
insert into tb_estudantes (nome,nota,serie,estatus) values ("Camila Silva",6.5,2,"reprovade");
insert into tb_estudantes (nome,nota,serie,estatus) values ("Josué Fernandes",5,6,"reprovade");
insert into tb_estudantes (nome,nota,serie,estatus) values ("Tiago Santos",8.2,9,"aprovade");
insert into tb_estudantes (nome,nota,serie,estatus) values ("Rodrigo Santiago",9.6,5,"aprovade");
insert into tb_estudantes (nome,nota,serie,estatus) values ("Mia Colucci",3,9,"reprovade");
insert into tb_estudantes (nome,nota,serie,estatus) values ("Michelle Queiroz",4,9,"reprovade");

select*from tb_estudantes where nota>7;
select*from tb_estudantes where nota<7;
update tb_estudantes set serie = 1 where id=1;
