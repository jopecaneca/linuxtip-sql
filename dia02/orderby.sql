-- Databricks notebook source
SELECT 
    descUF,
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
FROM silver_olist.cliente
GROUP BY descUF
ORDER BY descUF

-- COMMAND ----------

-- Primeira Formsa
SELECT 
    descUF,
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
FROM silver_olist.cliente
GROUP BY descUF
ORDER BY 2

-- COMMAND ----------

-- Segunda Formsa
SELECT 
    descUF,
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
FROM silver_olist.cliente
GROUP BY descUF
ORDER BY qtClienteEstado

-- COMMAND ----------

-- TErceira Formsa
SELECT 
    descUF,
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY  COUNT(DISTINCT idClienteUnico)

-- COMMAND ----------

-- TErceira Formsa
SELECT 
    descUF,
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY  qtClienteEstado DESC
LIMIT 1

-- COMMAND ----------


