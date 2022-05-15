-- Databricks notebook source
-- MAGIC %md
-- MAGIC # Por favor tente resolver o desafio sozinho, não pegue atalhos, tu consegue, é só colocar a cabeça para funcionar.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC Nesse desafio precisamos da idade das pessoas que estão na tabela `default.sqlite_Employee`. Use a coluna `default.sqlite_Employee.BithDate` para calcular.
-- MAGIC 
-- MAGIC Critério:  
-- MAGIC Escreva essa transformação em apenas uma query. Boa sorte!
-- MAGIC 
-- MAGIC resultado esperado:  
-- MAGIC 
-- MAGIC |LastName|ano_de_nascimento|idade
-- MAGIC |--------:|----------------:|-----
-- MAGIC |Adams   |1962             |   60
-- MAGIC |Edwards |1958             |   64
-- MAGIC |Peacock |1973             |   49
-- MAGIC |Park    |1947             |   75
-- MAGIC |Johnson |1965             |   57
-- MAGIC |Mitchell|1973             |   49
-- MAGIC |King    |1970             |   52
-- MAGIC |Callahan|1968             |   54
-- MAGIC 
-- MAGIC Para resolução utilize esse link: https://spark.apache.org/docs/latest/api/sql/index.html  
-- MAGIC 
-- MAGIC 
-- MAGIC **exemplo de query:**
-- MAGIC ```sql
-- MAGIC SELECT * from default.sqlite_customer
-- MAGIC ```

-- COMMAND ----------


