-- revisão
-- perguntas


-- Contar o número total de clientes

-- Contar o número total de pedidos

--  Calcular o valor total de todos os pedidos

--  Calcular a média de preço dos produtos

--  Listar todos os clientes e seus pedidos

--  Listar todos os pedidos e seus produtos, incluindo pedidos sem produtos

--  Listar os produtos mais caros primeiro

--  Listar os produtos com menor estoque

--  Contar quantos pedidos foram feitos por cliente

--  Contar quantos produtos diferentes foram vendidos

--  Mostrar os clientes que não realizaram pedidos

--  Mostrar os produtos que nunca foram vendidos

--  Contar o número de pedidos feitos por dia

--  Listar os produtos mais vendidos

--  Encontrar o cliente que mais fez pedidos

--  Listar os pedidos e os clientes que os fizeram, incluindo pedidos sem clientes

--  Listar os produtos e o total de vendas por produto

--  Calcular a média de quantidade de produtos por pedido

--  Listar os pedidos ordenados por data (mais recentes primeiro)

--  Contar quantos clientes possuem telefone cadastrado

--  Encontrar o cliente que gastou mais dinheiro em pedidos.

-- Listar os 5 produtos mais vendidos.

-- Listar os clientes que já fizeram pedidos e o número de pedidos de cada um.

-- Encontrar a data com mais pedidos realizados

-- Calcular a média de valor gasto por pedido

-- 1
select count(*) from clientes;

-- 2
select count(*) from pedidos;

-- 3
SELECT SUM(p.quantidade * pr.preco) AS valor_total
FROM pedidos AS p
JOIN produtos AS pr ON p.produto_id = pr.id;

-- 4
select avg(produtos.preco) from produtos;

-- 5
select * from clientes as c 
join pedidos as p on
c.id = p.cliente_id;

-- 6 
select * from pedidos as p
join 
produtos as pr
on p.produto_id = pr.id;

-- 7
select * from produtos
order by preco desc;

 -- 8
 select * from produtos
 order by estoque;
 
 -- 9
 
select c.nome,count(*) from pedidos as p
join
clientes as c
on c.id=p.cliente_id
group by c.id,c.nome;

-- 10

select COUNT(DISTINCT pr.id) from produtos as pr
join 
pedidos as p
on p.produto_id = pr.id;

-- 11
select c.nome from clientes as c
left join 
pedidos as p
on c.id=p.cliente_id
where p.id is null;

-- 12
select * from produtos as pr
left join
pedidos as p
on pr.id=produto_id
where p.id is null;

-- 13
 
 select date(data_pedido) as dia, count(*) as total_pedidos
 from pedidos
 group by date(data_pedido);
 
-- 14
 select pr.nome, p.quantidade from produtos as pr
 join 
 pedidos as p
 on p.produto_id=pr.id
 order by quantidade desc;
 
-- 15

select  c.nome, count(p.id) as total_pedidos from clientes as c
join 
pedidos as p
on p.cliente_id=c.id
GROUP BY c.id
order by total_pedidos desc limit 1;

-- 16

select c.nome,p.id from pedidos as p
left join 
clientes as c
on c.id=p.cliente_id;

-- 17

select pr.nome,sum(p.quantidade * pr.preco) from produtos as pr
join
pedidos as p
on p.produto_id=pr.id
group by pr.id;

-- 18
select pr.nome,avg(p.quantidade) from pedidos as p
join 
produtos as pr
on p.produto_id=pr.id
group by pr.id;

-- 17
select p.data_pedido from pedidos as p
order by data_pedido desc;

-- 18

select count(*) from clientes as c
where telefone is not null;

-- 19

SELECT c.nome, SUM(p.quantidade * pr.preco) AS total_gasto
FROM clientes AS c
JOIN pedidos AS p ON c.id = p.cliente_id
JOIN produtos AS pr ON p.produto_id = pr.id
GROUP BY c.id
ORDER BY total_gasto DESC limit 1;

-- 20

select pr.nome from produtos as pr
join 
pedidos as p
on p.produto_id=pr.id
order by p.quantidade desc limit 5;

-- 21
select c.nome,count(p.id) from clientes as c
join 
pedidos as p
on c.id=p.cliente_id
group by c.id;

-- 22
select p.data_pedido,count(p.id) as pedidos_datas from pedidos as p
group by p.data_pedido
order by pedidos_datas limit 1;

-- 23

select avg(pr.preco * p.quantidade ) from produtos as pr
join
pedidos as p
on p.produto_id=pr.id;


