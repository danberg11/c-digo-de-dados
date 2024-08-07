-- 1 - Listar o nome do cliente, email e nome da cidade.
select cliente.nome as "nome", 
       cliente.email as "email", 
       cidade.nome as "cidade"
from cliente
inner join cidade on cliente.idcidade = cidade.id;


-- 2 - Listar o nome do cliente, email, nome da cidade e nome do estado apenas das cidades do estado de SP.
select 
    cliente.nome as "nome CLI",
    cliente.email,
    cidade.nome as "nome CID",
    estado.nome as "nome EST"
from 
    cliente
inner join 
    cidade on cliente.idcidade = cidade.id
inner join 
    estado on cliente.idestado = estado.id
where 
    estado.nome = 'sp';



-- 3 - Listar o nome do cliente, email, nome da cidade e nome do estado apenas das cidades que tenham a letra "ó" no nome do cliente.
select 
    cliente.nome as "nome CLI",
    cliente.email,
    cidade.nome as "nome CID",
    estado.nome as "nome EST"
from 
    cliente
inner join 
    cidade on cliente.idcidade = cidade.id
inner join 
    estado on cliente.idestado = estado.id
where 
    cliente.nome like '%ó%';



-- 4 - Listar o nome do produto e nome da marca dos produtos que custem entre 1000 e 3000 reais.
select 
    produto.nome as "nome PROD", 
    marca.nome as "nome MARC"
from produto
inner join marca 
on produto.idMarca = marca.id
where produto.preco between 1000 and 3000;



-- 5 - Listar o nome do produto, nome da marca e nome da categoria dos produtos que tenham a letra "e" no nome do produto.
select 
    produto.nome as "nome_produto",
    marca.nome as "nome_marca",
    categoria.nome as "nome_categoria"
from 
    produto
inner join 
    marca on produto.idMarca = marca.idMarca
inner join 
    categoria on produto.idCategoria = categoria.idCategoria
where 
    produto.nome like '%e%';




