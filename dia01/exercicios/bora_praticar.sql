-- Databricks notebook source
-- 01 Selecione todos os clientes paulistanos
select *
from silver_olist.cliente
where descCidade = 'sao paulo'

-- COMMAND ----------

-- 02 selecione   todos os clientes pau;liatas

select *
from silver_olist.cliente
where descUF = 'SP'

-- COMMAND ----------

-- 03 Selecione todos os vendedores cariocas e paulistas
select *
from silver_olist.vendedor

where descCidade = 'rio de janeiro'

or descUF = 'SP'

-- COMMAND ----------

-- 04 selecione todos os produtos de perfumaria e bebes com altura mair que 5cm
select *

from silver_olist.produto

where descCategoria IN ('perfumaria', 'bebes')
and vlAlturaCm > 5

-- COMMAND ----------


