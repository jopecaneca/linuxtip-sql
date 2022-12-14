-- Databricks notebook source
SELECT * FROM silver_olist.pedido

-- leia-se selecione TUDO da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,
        descSituacao
FROM silver_olist.pedido
limit 5

-- leia-se selecione a coluna idPedido

-- COMMAND ----------

SELECT *,
        DATEDIFF(dtEstimativaEntrega, dtEntregue)

FROM SILVER_olist.pedido

-- COMMAND ----------


