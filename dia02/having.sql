-- Databricks notebook source
SELECT 
    descUF,
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY  qtClienteEstado DESC
LIMIT 1
