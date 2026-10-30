create database if not exists Empresa;
use Empresa;

create table Cliente (
idcliente int primary key auto_increment,
nome varchar(100) not null,
datadenascimento date not null,
cidade varchar(100) not null
);

create table Produtos (
idproduto int primary key auto_increment,
nomep varchar(100) not null,
estoque int not null,
preco float not null
);

create table Pedidos (
idpedidos int primary key auto_increment,
id_cliente int,
id_produto int,
valortotal float,
quantidade int,
datadopedido date default current_timestamp,
foreign key (id_cliente) references Cliente(idcliente),
foreign key (id_produto) references Produtos(idproduto)
);

show tables;

insert into Cliente(nome,datadenascimento,cidade)
values ('Ana','2002-01-02','São Paulo'),
('Carlos','1995-02-22','Rio de Janeiro'),
('Caio','1980-05','Salvador');

select * from Cliente;

insert into Produtos(nomep,estuque,preco)
values ('Mouse',15,20.00),
('Teclado',50,120.00),
('Monitor',10,700.00);

select * from Produtos;

insert into Pedidos(id_cliente,id_produto,valortotal,quantidade)
values (1,1,40.00,2),
(2,3,700.00,1);

select * from Pedidos;

alter table Cliente
rename to Clientes;