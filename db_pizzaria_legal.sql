create database db_pizzaria_legal;
use db_pizzaria_legal;
create table  tb_categoria (
id bigint auto_increment,
salgado boolean,
tamanho enum ('P','M','G'),
primary key(id)
);

insert into tb_categoria (salgado,tamanho) value (true,'P');
insert into tb_categoria (salgado,tamanho) value (false,'M');
insert into tb_categoria (salgado,tamanho) value (false,'G');
insert into tb_categoria (salgado,tamanho) value (true,'M');
insert into tb_categoria (salgado,tamanho) value (false,'P');

create table tb_pizza (
id bigint auto_increment,
nome varchar(455) not null,
preco decimal(5,2) not null,
borda boolean,
categoria_id bigint not null,

primary key(id),
foreign key(categoria_id)references tb_categoria(id)
);

insert into tb_pizza (nome,preco,borda,categoria_id) value ("Portuguesa",50.70,true,4);
insert into tb_pizza (nome,preco,borda,categoria_id) value ("Carolina",30.20,false,5);
insert into tb_pizza (nome,preco,borda,categoria_id) value ("Tradicional",125.70,true,3);
insert into tb_pizza (nome,preco,borda,categoria_id) value ("4 Queijos",45.60,true,1);
insert into tb_pizza (nome,preco,borda,categoria_id) value ("Calabresa",55.90,true,1);
insert into tb_pizza (nome,preco,borda,categoria_id) value ("Diamante",19.25,false,2);
insert into tb_pizza (nome,preco,borda,categoria_id) value ("Escarola",25.67,true,1);
insert into tb_pizza (nome,preco,borda,categoria_id) value ("Shot",88.69,true,2);

select*from tb_pizza where preco>45;
select*from tb_pizza where preco>29 and preco<60;
select*from tb_pizza where nome like "%C%";
select*from tb_pizza inner join tb_categoria on tb_categoria.id=tb_pizza.categoria_id;
select*from tb_pizza inner join tb_categoria on tb_categoria.id=tb_pizza.categoria_id where salgado=false;

