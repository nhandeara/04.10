create database func_bd_1e;

create table funcionario(
cod_func int auto_increment primary key,
nome_func varchar(100) not null,
sexofunc varchar(50) not null,
bairrofunc varchar (50) not null,
salfunc decimal (10,2) not null,
setorfunc varchar(50) not null
);

insert into funcionario(nome_func, sexofunc, bairrofunc, salfunc, setorfunc)
values ("Larissa", "f","Jabaquara",1200.000, "Marketing"),
("Selma", "f","Grajau",3800.00,"Vendas"),
("Leandro Henrique", "M","Socorro",2950.00,"RH"),
("Amelia Jeremias", "F","Socorro", 4200.00,"Marketing"),
("Claudio Jorge da Silva","M", "Jabaquara", 1480.00, "Vendas"),
("Lucioano Souza", "M","Pedreira", 1000.00, "vendas"),
("Gabriela santos Nunes", "F","Jurubatuba", 4150.00, "RH"),
("Rafaela Vieira JR","F","Jabaquara", 700.00,"Marketing"),
("Suzana Crispim", "F","Grajau", 5600.00,"produção"),
("Sabrina Ol.iveira Castro","F","pedreira", 2900.00, "Masketing"),
("Jarbas Silvas nunes","M","Jarubatuba", 5300.00,"produçao"),
("Ralf Borges","m","Jabaquara", 1600.00,"Marketing");

select * from funcionario;

select sum(salfunc) AS Total_salario 
from funcionario;

select setorfunc, count(*) AS Total_func_Marketing
from funcionario 
where setorfunc = "Marketing";

select setorfunc,avg(salfunc) AS Media_salario
from funcionario
group by setorfunc
order by Media_Salario desc;

select count(*) AS func_socorro
from funcionario
where salfunc < 3000 and bairrofunc = "socorro";

select setorfunc, count(*) AS quantidades_funcionario
from funcionario 
group by setorfunc
having count(*) > 3;