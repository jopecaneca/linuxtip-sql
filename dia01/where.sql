-- Databricks notebook source
SELECT * FROM silver_olist.pedido
where descSituacao = 'delivered'
limit 100

-- COMMAND ----------

SELECT * FROM silver_olist.pedido
where (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'
limit 100

-- COMMAND ----------

SELECT *

FROM silver_olist.pedido

where descSituacao IN ('shipped','canceled')

AND DATEDIFF(dtEstimativaEntrega, dtAprovado) > 30

-- COMMAND ----------


