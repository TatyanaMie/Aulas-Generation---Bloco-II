create database db_rh;
use db_rh;
create table tb_funcionaries(
id bigint not null,
nome varchar(255),
idade bigint not null,
sexo enum ("feminino","masculino") ,
salario decimal(10,2),
primary key(id)
);

insert into tb_funcionaries (id,nome,idade,sexo,salario) values (356472512,"João Pedro",25,"masculino",3250.90);
insert into tb_funcionaries (id,nome,idade,sexo,salario) values (659742503,"Maria Aparecida",29,"feminino",4280.90);
insert into tb_funcionaries (id,nome,idade,sexo,salario) values (562742503,"Joana Silva",35,"feminino",3359);
insert into tb_funcionaries (id,nome,idade,sexo,salario) values (862315458,"Pedro Joaquim",19,"masculino",490.90);
insert into tb_funcionaries (id,nome,idade,sexo,salario) values (658920157,"Henrique Colucci",16,"masculino",420.50);
insert into tb_funcionaries (id,nome,idade,sexo,salario) values (647852356,"Emilia Benfica",26,"feminino",900);
insert into tb_funcionaries (id,nome,idade,sexo,salario) values (458963215,"Aline Freitine",45,"feminino",5260);
insert into tb_funcionaries (id,nome,idade,sexo,salario) values (759742512,"Maria Joaquina",18,"feminino",350.99);


select*from tb_funcionaries where salario>2000;
select*from tb_funcionaries where salario<2000;
update tb_funcionaries set salario = 7500 where id=562742503;