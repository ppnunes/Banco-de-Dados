create database bd_livro_noite;

use bd_livro_noite;

create table tb_genero(
	cd_genero int not null primary key,
	genero char (30));

create table tb_editora(
	cd_editora int not null primary key,
	editora char (30));

create table tb_livro(
	isbn int not null primary key,
	titulo char (50),
	cd_editora int,
	cd_genero int,
	preco decimal (12,2));

alter table tb_livro
	add constraint fk_genero foreign key (cd_genero)
	references tb_genero(cd_genero);

alter table tb_livro
	add constraint fk_editora foreign key (cd_editora)
	references tb_editora (cd_editora);

alter table tb_livro
	add dt_livro date;

insert into tb_genero 
(cd_genero, genero) 
values
(1, 'Computacao'),
(2, 'Medicina'),
(3, 'Engenharia'),
(4, 'Juridico'),
(5 , 'Arquitetura'), 
(6, 'Biologia'), 
(7, 'Mecatronica');

insert into tb_editora 
(cd_editora, editora) 
values
(1, 'novatec'),
(2, 'amazon'), 
(3, 'coopmed'), 
(4, 'livraria florence'), 
(5 , 'blucher'), 
(6,'Mundial'), 
(7,'saraiva'), 
(8,'Editora Forum'),
(9, 'Dickens');

insert into tb_livro 
(isbn, titulo, cd_editora, cd_genero, preco, dt_livro) 
values
(1,'banco de dados',1,1, 300, '10-02-2019'), 
(2,'Engenharia de Software',1,1, 350, '10-03-2019'), 
(3,'Ortopedia',3,2, 310, '10-04-2019'), 
(4,'Cardiologia',4,2, 320, '10-05-2019'), 
(5,'Estrutura Predial',5,3, 200, '10-06-2019'), 
(6,'Estrutura Hidraulica',6,3, 300, '10-07-2019'), 
(7,'Direito Penal',7,4, 150, '10-08-2019'), 
(8,'Direito Civil',8,4, 200, '10-09-2019'), 
(9,'Cores ',7,5, 200, '10-10-2019'), 
(10, 'Paisagismo ',8,5, 250, '10-11-2019'), 
(11,'Virus',9,6, 300, '10-12-2019'), 
(12,'Bacteria',9,6, 300, '10-12-2019');