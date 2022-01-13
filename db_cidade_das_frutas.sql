create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria (
id bigint auto_increment,
origen varchar(455) not null,
vitamina varchar(455),
primary key(id)
);

insert into tb_categoria (origen,vitamina) value ("Amazônia","A");
insert into tb_categoria (origen,vitamina) value ("São Paulo","C");
insert into tb_categoria (origen,vitamina) value ("Pereira Barreto","B1");
insert into tb_categoria (origen,vitamina) value ("Santo André","K");
insert into tb_categoria (origen,vitamina) value ("Lins","B2");

create table tb_produto (
id bigint auto_increment,
nome varchar(455) not null,
preco decimal(5,2) not null,
peso decimal(6,3) not null,
categoria_id bigint not null,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome,preco,peso,categoria_id) value ("Açai",7.20,0.500,1);
insert into tb_produto (nome,preco,peso,categoria_id) value ("Pêssego",3.30,0.900,4);
insert into tb_produto (nome,preco,peso,categoria_id) value ("Banana",1.50,0.100,3);
insert into tb_produto (nome,preco,peso,categoria_id) value ("Blueberry",70,0.950,5);
insert into tb_produto (nome,preco,peso,categoria_id) value ("Tâmara",65.20,0.450,2);
insert into tb_produto (nome,preco,peso,categoria_id) value ("Morango",5.45,0.730,1);
insert into tb_produto (nome,preco,peso,categoria_id) value ("Lichia",69.40,0.800,3);

select*from tb_produto where preco>50;
select*from tb_produto where preco>3 and preco<60;

select*from tb_produto where nome like "%c%";

select*from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select*from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where origen = "Amazônia";
