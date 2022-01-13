create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria (
id bigint auto_increment,
generico boolean,
tipo enum ('uso via oral','uso via tópico'),
primary key(id)
);

insert into tb_categoria (generico,tipo) value (true,'uso via oral');
insert into tb_categoria (generico,tipo) value (true,'uso via tópico');
insert into tb_categoria (generico,tipo) value (false,'uso via tópico');
insert into tb_categoria (generico,tipo) value (true,'uso via oral');

create table tb_produto(
id bigint auto_increment,
nome varchar(455) not null,
preco bigint not null,
marca varchar(455) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome,preco,marca,categoria_id) value ("Dramil",59,"Bayer",1);
insert into tb_produto (nome,preco,marca,categoria_id) value ("Paracetamol",15,"Eurofarma",4);
insert into tb_produto (nome,preco,marca,categoria_id) value ("Betaconazol",80,"Elasa",2);
insert into tb_produto (nome,preco,marca,categoria_id) value ("Nizoral",25,"Cimed",3);
insert into tb_produto (nome,preco,marca,categoria_id) value ("Chelocal",2,"Citramil",4);
insert into tb_produto (nome,preco,marca,categoria_id) value ("Ixium",120,"Ache",2);
insert into tb_produto (nome,preco,marca,categoria_id) value ("Bimecap",14,"Pharma",3);

select*from tb_produto where preco>50;
select*from tb_produto where preco>3 and preco<60;
select*from tb_produto where nome like "%b%";

select*from tb_categoria inner join tb_produto on tb_categoria.id=tb_produto.categoria_id;
select*from tb_categoria inner join tb_produto on tb_categoria.id=tb_produto.categoria_id where tipo = 'uso via tópico';