	CRIAÇÃO E ESTRUTURAÇÃO

1 - Acesse o MariaDB usando o usuário root.
	MariaDb -u root -p
	
2 - Liste todos os bancos de dados existentes.
	show databases;
	
3 - Crie um banco de dados chamado LOJA_VIRTUAL.
	create database LOJA_VIRTUAL;
	
4 - Acesse o banco LOJA_VIRTUAL.
	use LOJA_VIRTUAL;
	
5 - Crie uma tabela CLIENTES com os campos:
6 - NOME_COMPLETO (VARCHAR 200, obrigatório)
7 - CELULAR (VARCHAR 20, opcional)
	create table clientes(
    NOME_COMPLETO VARCHAR(200),
    CELULAR VARCHAR(20)
);  

8 - Crie uma tabela PRODUTOS com os campos:
9 - NOME (VARCHAR 150, obrigatório)
10 - CATEGORIA (VARCHAR 100, obrigatório)
11 - PRECO (DECIMAL 10,2, obrigatório)
	CREATE TABLE produtos(
    NOME VARCHAR(150),
    CATEGORIA VARCHAR(100),
    PRECO DECIMAL(10,2)
);

12 - Liste todas as tabelas criadas no banco.
	show tables;

13 - Mostre a estrutura das tabelas CLIENTES e PRODUTOS.
	desc clientes;
	desc produtos;


	INSERÇÃO E CONSULTA DOS DADOS
	
14 - Insira 3 clientes na tabela CLIENTES.
	insert into clientes(NOME_COMPLETO, CELULAR) VALUES("FELIPE", "46997327327327");
	insert into clientes(NOME_COMPLETO, CELULAR) VALUES("JOSÉ", "469121297913");
	insert into clientes(NOME_COMPLETO, CELULAR) VALUES("MARIA", "469S123232323");
	
15 - Insira 3 produtos na tabela PRODUTOS.
	insert into produtos(NOME, CATEGORIA, PRECO) VALUES("TIJOLO", "CONSTRUÇÃO", 1.50);
	insert into produtos(NOME, CATEGORIA, PRECO) VALUES("CIMENTO", "CONSTRUÇÃO", 4.53);
	insert into produtos(NOME, CATEGORIA, PRECO) VALUES("ABACAXI", "ALIMENTO", 8.99);
	
16 - Mostre todos os registros da tabela CLIENTES.
	select * from clientes;

17 - Mostre todos os registros da tabela PRODUTOS.
	select * from produtos;
	
18 - Mostre apenas os produtos com preço maior que 500.00.
	select * from produtos where PRECO >500;
	
19 - Mostre apenas os clientes cujo nome seja igual a um nome específico.
	select * from clientes where NOME_COMPLETO = "FELIPE";


	ATUALIZAÇÃO DE DADOS
	
20 - Atualize o celular de um cliente específico.
	update clientes set celular = 46999889933445 where NOME_COMPLETO = "FELIPE";
	
21 - Atualize a categoria de um produto específico.
	update produtos set categoria = "FRUTA" where NOME = "ABACAXI";
	
22 - Aumente o preço de um produto em 15%.
	update produtos set preco = 1.7225 where NOME = "TIJOLO";
	
23 - Altere o nome de um cliente para outro nome.
	update clientes set NOME_COMPLETO = "MARCOS" where NOME_COMPLETO = "FELIPE";
	
	
	EXCLUSAO DE DADOS
	
24 - Exclua um cliente específico da tabela CLIENTES.
	delete from clientes where NOME_COMPLETO = "MARCOS";
	
24 - Exclua um produto específico da tabela PRODUTOS.
	delete from produtos where NOME = "ABACAXI";
	
26 - Exclua todos os registros da tabela CLIENTES (sem apagar a tabela).
	delete from clientes;

27 - Alterações na Estrutura das Tabelas
28 - Adicione um novo campo CPF (VARCHAR 14) na tabela CLIENTES.
	alter table clientes add column CPF VARCHAR (14);
29 - Atualize os valores de CPF para os clientes existentes.
	insert into clientes(CPF) values ("111.111.111-11");
	
30 - Modifique o tipo do campo CPF para CHAR(11).
	update clientes set CPF = "11111111111" where CPF = "111.111.111-11";
	alter table clientes modify column CPF VARCHAR(11);
	
31 - Apague o campo CPF da tabela CLIENTES.
	alter table clientes drop column CPF;
	
32 - Adicione um campo ESTOQUE (INT) na tabela PRODUTOS.
	alter table produtos add column ESTOQUE INT;
	
33 - Liste novamente as tabelas para confirmar a alteração do nome.
	show tables;
	
	select * from clientes;
	select * from produtos;