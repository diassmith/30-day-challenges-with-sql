-- Databricks notebook source
-- MAGIC %md
-- MAGIC 
-- MAGIC # Por favor tente resolver o desafio sozinho, não pegue atalhos, tu consegue, é só colocar a cabeça para funcionar.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC Neste desafio super fácil, precisamos dos registros da tabela `default.sqlite_customer` onde o primeiro caracter seja o "A" e o terceiro "e" da coluna `FirstName`
-- MAGIC Crie uma query que retorne esse resultado e escreva uma breve explicação do código implementado:
-- MAGIC 
-- MAGIC 
-- MAGIC FirstName |
-- MAGIC -|
-- MAGIC Alexandre| 
-- MAGIC 
-- MAGIC Para resolução utilize esse link: https://spark.apache.org/docs/latest/api/sql/index.html  
-- MAGIC 
-- MAGIC 
-- MAGIC **exemplo de query:**
-- MAGIC ```sql
-- MAGIC SELECT * from default.sqlite_customer
-- MAGIC ```

-- COMMAND ----------

-- MAGIC %md
-- MAGIC explicação da implementação do código
-- MAGIC ....

-- COMMAND ----------

SELECT FirstName from default.sqlite_customer where FirstName like "A%e"

-- COMMAND ----------


SELECT FirstName from default.sqlite_customer where SUBSTR(FirstName,1,1)='A' AND SUBSTR(FirstName,3,1)='e'
