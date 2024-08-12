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
    produto.nome as "nome PROD",
    marca.nome as "nome MARC",
    categoria.nome as "nome CAT"
from 
    produto
inner join 
    marca on produto.idMarca = marca.idMarca
inner join 
    categoria on produto.idCategoria = categoria.idCategoria
where 
    produto.nome like '%e%';
    
    
-- 6 - Listar o número do pedido, a data do pedido e nome do cliente dos pedidos com realizados no mês 08/2016.
select
	pedido.id as"numero PED",
    pedido.data_pedido as "Data PED",
    cliente.nome "CLI"
    from 
    pedido
    inner join 
    cliente on pedido.idcliente = cliente.id
    where
    pedido.data_pedido between '2016/08/01' and '2016/08/31';
    
        
-- 7 - Listar o número do pedido, a data do pedido, nome do cliente e nome do vendedor dos pedidos com realizados no mês 07/2016.
select
	pedido.id as"numero PED",
    pedido.data_pedido as "Data PED",
    cliente.nome as "CLI",
    vendedor.nome as "nome VEND"
    from 
    pedido
    inner join 
    cliente on pedido.idcliente = cliente.id
    inner join 
    vendedor on pedido.idvendedor = vendedor.id
     where
    pedido.data_pedido between '2016/07/01' and '2016/07/31';

    
-- 8 - Listar os nome e preço dos produtos comprados pelo cliente de id=1
select
	produto.nome as "nome PROD",
    produto.preco as "preco PROD"
    from 
    produto
    inner join 
    itens_pedido on produto.id = itens_pedido.id
    inner join
    pedido on itens_pedido.idpedido = pedido.id
    where 
    pedido.idcliente = 1;

  
-- 9 - Listar o número do pedido e o nome clientes que possuem pedidos e também dos que não possuem pedidos.
select
pedido.id as "numero PED",
cliente.nome as "nome CLI"
from
cliente
inner join
pedido on cliente.id = pedido.idcliente;

-- clientes sem pedidos
select "sem pedido" as numeropedido,
cliente.nome as nomecliente
from cliente
left join 
pedido on cliente.id = pedido.idcliente
where
pedido.id is null;


-- 10 - Listar o nome, preço, nome da categoria e nome da marca do produto mais caro.

select
    produto.nome as "nome PROD",
    produto.preco as "preco PROD",
    categoria.nome as "nome CATE",
    marca.nome as "nome MARC"
from 
	produto
inner join
    categoria on produto.idCategoria = categoria.id
inner join 
    marca on produto.idmarca = marca.id
where
    produto.preco = (select MAX(preco) from produto);


-- 11 - Listar o número do pedido, valor total e nome do cliente do pedido mais caro.
select
pedido.id




-- 12 - Listar o número do pedido, valor total e nome do vendedor do pedido mais barato.






