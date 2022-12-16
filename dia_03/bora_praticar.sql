-- Databricks notebook source
--
SELECT idProduto,
      COUNT(*)     -- contagem de linhas de produto
FROM silver_olist.item_pedido -- tabela de vendas
GROUP BY idProduto

-- COMMAND ----------

SELECT T2.descCategoria,
COUNT(*)
FROM silver_olist.item_pedido AS T1 -- tabela de vendas

LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto
GROUP BY T2.descCategoria
ORDER BY COUNT(*) DESC

-- COMMAND ----------

-- Categoria produtos mais caros 
SELECT T2.descCategoria,
        AVG(T1.vlPreco)
FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto

GROUP BY T2.descCategoria
ORDER BY AVG(T1.vlPreco) DESC

-- COMMAND ----------

-- Clientes que pagam mais frete
SELECT T1.idPedido,
        T1.vlFrete,
        T2.idCliente,
        T3.descUF

FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.pedido AS T2
ON T1.idPedido = T2.idPedido

LEFT JOIN silver_olist.cliente AS T3
ON T2.idCliente = T3.idCliente


-- COMMAND ----------

-- Clientes que pagam mais frete
SELECT
        T3.descUF,
       AVG( T1.vlFrete) as avgFrete

FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.pedido AS T2
ON T1.idPedido = T2.idPedido

LEFT JOIN silver_olist.cliente AS T3
ON T2.idCliente = T3.idCliente

GROUP BY T3.descUF
HAVING avgFrete > 40
ORDER BY avgFrete DESC

-- COMMAND ----------


