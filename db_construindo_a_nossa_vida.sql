create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria (
id bigint auto_increment,
qualidade enum ('alto','medio','baixo'),
disponibilidade boolean,
primary key(id)
);

insert into tb_categoria (qualidade,disponibilidade) value ('alto',true);
insert into tb_categoria (qualidade,disponibilidade) value ('alto',false);
insert into tb_categoria (qualidade,disponibilidade) value ('medio',true);
insert into tb_categoria (qualidade,disponibilidade) value ('baixo',true);
insert into tb_categoria (qualidade,disponibilidade) value ('medio',false);

create table tb_produto(
id bigint auto_increment,
nome varchar(455) not null,
material varchar(455) not null,
preco decimal(6,2) not null,
categoria_id bigint not null,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome,material,preco,categoria_id) value ("Tijolo","barro",12.5,1);
insert into tb_produto (nome,material,preco,categoria_id) value ("Cadeado","ferro",80.36,3);
insert into tb_produto (nome,material,preco,categoria_id) value ("Cimento branco","calcio e argila",50,2);
insert into tb_produto (nome,material,preco,categoria_id) value ("Telhado","zinco",3.80,4);
insert into tb_produto (nome,material,preco,categoria_id) value ("Azulejo","porcelana",15,5);
insert into tb_produto (nome,material,preco,categoria_id) value ("Cubas","gesso",35.96,2);
insert into tb_produto (nome,material,preco,categoria_id) value ("Caixa d'agua","plastico",470.49,4);

select*from tb_produto where preco>50;
select*from tb_produto where preco>3 and preco<60;

select*from tb_produto where nome like "%c%";

select*from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select*from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where disponibilidade = true;
