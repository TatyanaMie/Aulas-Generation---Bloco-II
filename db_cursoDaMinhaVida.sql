create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
nivel enum ('avançado','intermediario','basico'),
tipo enum ('exatas','humanas','biologicas'),
primary key(id)
);

insert into tb_categoria (nivel,tipo) value ('avançado','exatas');
insert into tb_categoria (nivel,tipo) value ('avançado','humanas');
insert into tb_categoria (nivel,tipo) value ('intermediario','humanas');
insert into tb_categoria (nivel,tipo) value ('intermediario','biologicas');
insert into tb_categoria (nivel,tipo) value ('basico','exatas');

create table tb_curso(
id bigint auto_increment,
nome varchar(455) not null,
preco decimal(6,2) not null,
alunos int not null,
categoria_id bigint not null,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_curso (nome,preco,alunos,categoria_id) value ("Japonês",140,20,2);
insert into tb_curso (nome,preco,alunos,categoria_id) value ("Medicina Veterinária",2500.60,18,3);
insert into tb_curso (nome,preco,alunos,categoria_id) value ("Engenharia",3700.49,15,5);
insert into tb_curso (nome,preco,alunos,categoria_id) value ("Português",1250,7,3);
insert into tb_curso (nome,preco,alunos,categoria_id) value ("Física Quântica",4100,5,1);
insert into tb_curso (nome,preco,alunos,categoria_id) value ("Matematica I",50.99,35,1);
insert into tb_curso (nome,preco,alunos,categoria_id) value ("Enfermagem",45.99,70,4);

select*from tb_curso where preco>50;
select*from tb_curso where preco<60 and preco>3;

select*from tb_curso where nome like "%j%";
select*from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
select*from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tipo = 'exatas';