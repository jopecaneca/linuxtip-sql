-- Databricks notebook source
-- 6 Lista de pedidos feitos em dezembro de 2017 e entregues com atraso
SELECT *
FROM silver_olist.pedido

WHERE YEAR(dtPedido) = 2017
AND MONTH(dtPedido) = 12
AND descSituacao = 'delivered'
AND date(dtEntregue) > date(dtEstimativaEntrega)

-- COMMAND ----------

-- Lista de pedidos co 2 ou mais parcelas meenores que 2

SELECT *,
       ROUND (vlPagamento /  nrPacelas, 2) AS vlParcela
FROM silver_olist.pagamento_pedido

WHERE nrPacelas >= 2
AND vlPagamento / nrPacelas < 20

-- COMMAND ----------

-- case o2
SELECT *, 
        vlPreco + vlFrete AS vlTotal,
        vlFrete / (vlPreco + vlFrete) AS porcFrete,
        
        
        
        CASE
          WHEN vlFrete / (vlPreco + vlFrete) <= 0.1 then '10%'
          WHEN vlFrete / (vlPreco + vlFrete) <= 0.25 then '10 a 25%'
          WHEN vlFrete / (vlPreco + vlFrete) <= 0.5 then '25% A 50%'
          ELSE '50%'
          END AS descFrete
        
FROM silver_olist.item_pedido

-- COMMAND ----------


