-- Databricks notebook source
select count(*) as nrLinhasNaoNulas -- linhas nao nulas
from silver_olist.cliente

-- COMMAND ----------

select 
  count(*) as nrLinhasNaoNulas, -- linhas nao nulas
  count (idCliente) AS nrIdCLienteNaoNulo
  
from silver_olist.cliente

-- COMMAND ----------

select 
  count(*) as nrLinhasNaoNulas, -- linhas nao nulas
  count (idCliente) AS nrIdCLienteNaoNulo, -- id de clientes nao nulos
  count(DISTINCT idCliente) AS nrIdClientesDistintos -- id de clientes distintos
  
from silver_olist.cliente

-- COMMAND ----------

select 
  count(*) as nrLinhasNaoNulas, -- linhas nao nulas
  count (idCliente) AS nrIdCLienteNaoNulo, -- id de clientes nao nulos
  count(DISTINCT idCliente) AS nrIdClientesDistintos, -- id de clientes distintos
  count(DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos -- id de clientes unicos distintos
  
from silver_olist.cliente

-- COMMAND ----------

-- quantos clientes s paulo
select 
  count (*) AS qtLinhas,
  count (distinct idCliente) AS qtClientes,
  count (distinct idClienteUnico) as qtClientesUnicos
from silver_olist.cliente

where descCidade = ('presidente prudente', 'curitiba')

-- COMMAND ----------

select 
      AVG(vlPreco), -- media da coluna vlPreco
      percentile(vlPreco, 0.5) AS medianPreco, -- preco mediano
      MAX(vlPreco) AS maxPreco, -- valor maximo
      AVG(vlFrete) AS avgFrete,-- media da coluna frete,
      MAX(vlFrete),
      MIN(vlFrete)
      
from silver_olist.item_pedido

-- COMMAND ----------


