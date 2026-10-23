create database loja;
use loja;

create table Clientes (
idcliente int primary key auto_increment,
nome varchar(45) not null,
email varchar(45),
cidade varchar(45) not null
);

insert into Clientes (nome,email,cidade)
values ('João','joao@gmail.com','Rio de Janeiro'),
('Edieno','edieno@gmail.com','Salvador'),
('Julia','julia@gmail.com','São Paulo');

insert into Clientes(nome,cidade)
values ('Francisco','Jacobina');

select * from Clientes;

delete from Clientes
where idcliente =3;

update Clientes 
set nome = 'Paulo',
email = 'paulo@gmail.com',
cidade = 'Feira de santana'
where idcliente = 6;

alter table Clientes
modify cidade varchar(100);

alter table Clientes
add idade int not null;
 
alter table Clientes
add telefone int;

alter table Clientes
drop column telefone;
