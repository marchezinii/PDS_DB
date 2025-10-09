create table clientes 
(
cpf int not null primary key,
nome varchar(60) not null,
dtnasc date
);

create table modelos 
(
codmod int not null primary key,
desc2 varchar(40)
);

create table patios 
(
num int not null primary key,
ender varchar(40),
capacidade int not null
);

create table veiculos 
(
placa varchar(8) primary key not null,
modelo_codmod int not null,
cliente_cpf int not null, 
cor varchar(20),
foreign key (modelo_codmod) references modelos(codmod),
foreign key (cliente_cpf) references clientes(cpf)
);

create table estaciona
(
cod int not null primary key auto_increment,
patio_num int not null,
veiculo_placa varchar(8) not null,
dtentrada varchar(10) not null,
dtsaida varchar(10) not null, 
hsentrada varchar(10),
hssaida varchar(10),
foreign key (patio_num) references patios(num),
foreign key (veiculo_placa) references veiculos(placa)
);

insert into clientes(cpf, nome, dtnasc)
values (1111111111, "guilherme", "2000-01-01");

insert into clientes(cpf, nome, dtnasc)
values (222222222, "kevin", "2001-02-02");

insert into clientes(cpf, nome, dtnasc)
values (333333333, "pires", "2002-03-03");

insert into clientes(cpf, nome, dtnasc)
values (444444444, "emanuel", "2003-04-04");


insert into modelos(codmod, desc2)
values (1, "corolla");

insert into modelos(codmod, desc2)
values (2, "jeep");

insert into modelos(codmod, desc2)
values (3, "fusca");

insert into modelos(codmod, desc2)
values (4, "chevete");