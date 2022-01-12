create database db_ecommerce;
use db_ecommerce;
create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
preco decimal(10,2),
quantidade bigint not null,
cor varchar(255),
primary key(id)
);

insert into tb_produtos (nome,preco,quantidade,cor) values ("fogão",3000,5,"preto");
insert into tb_produtos (nome,preco,quantidade,cor) values ("notebook",1500,15,"prata");
insert into tb_produtos (nome,preco,quantidade,cor) values ("fone de ouvido",50.90,20,"branco");
insert into tb_produtos (nome,preco,quantidade,cor) values ("liquidificador",100,40,"vermelho");
insert into tb_produtos (nome,preco,quantidade,cor) values ("armario",700.30,13,"marrom");
insert into tb_produtos (nome,preco,quantidade,cor) values ("celular",450,1,"verde");
insert into tb_produtos (nome,preco,quantidade,cor) values ("mesa",350.25,18,"lilás");
insert into tb_produtos (nome,preco,quantidade,cor) values ("cadeira gamer",1245.70,23,"preto e vermelho");

select*from tb_produtos where preco>500;
select*from tb_produtos where preco<500;
update tb_produtos set quantidade = 1 where id=8;