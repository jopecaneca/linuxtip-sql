-- Databricks notebook source
SELECT *,
        CASE WHEN descUF = 'SP' THEN 'PAULISTA' 
          WHEN descUF = 'RJ' then 'Fluminense'
          WHEN descUF = 'PR' then 'paranaense'
          ELSE 'outros',
          END AS descNaciolnalidade,
          
         CASE 
           WHEN desCIdade
      
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *,
        CASE
          WHEN descUF IN ()
