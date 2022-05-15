-- Databricks notebook source
-- MAGIC %md
-- MAGIC 
-- MAGIC ## Por favor tente resolver o desafio sozinho, não pegue atalhos, tu consegue, é só colocar a cabeça para funcionar.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC Neste primeiro desafio super fácil, precisamos apenas dos registros do campo `default.sqlite_customer.Email` da tabela Customers onde o domínio seja da `apple`.
-- MAGIC Crie uma query que retorne esse resultado e escreva uma breve explicação do código implementado:
-- MAGIC 
-- MAGIC 
-- MAGIC Resultado esperado:  
-- MAGIC 
-- MAGIC Email |
-- MAGIC -|
-- MAGIC astrid.gruber@apple.at| 
-- MAGIC daan_peeters@apple.be| 
-- MAGIC tgoyer@apple.com| 
-- MAGIC isabelle_mercier@apple.fr| 
-- MAGIC terhi.hamalainen@apple.fi| 
-- MAGIC ladislav_kovacs@apple.hu| 
-- MAGIC hughoreilly@apple.ie| 
-- MAGIC 
-- MAGIC Para resolução utilize esse link: https://spark.apache.org/docs/latest/api/sql/index.html  
-- MAGIC 
-- MAGIC 
-- MAGIC **exemplo de query:**
-- MAGIC ```sql
-- MAGIC SELECT * from default.sqlite_customer
-- MAGIC ```

-- COMMAND ----------


