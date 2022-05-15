-- Databricks notebook source
-- MAGIC %md
-- MAGIC # Por favor tente resolver o desafio sozinho, não pegue atalhos, tu consegue, é só colocar a cabeça para funcionar.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC Neste desafio precisamos que agrupe os dados da tabela `default.sqlite_invoice` e exiba apenas os maiores valores para cada `default.sqlite_customer.CustomerId` do "Brazil". Utilize funções como: `ROW_NUMBER e PARTITION` para resolver este problema.
-- MAGIC 
-- MAGIC Critério:  
-- MAGIC Escreva essa transformação em apenas uma query. Boa sorte!
-- MAGIC 
-- MAGIC resultado esperado:  
-- MAGIC 
-- MAGIC |CustomerId|FirstName|LastName |country|total
-- MAGIC |----------:|--------:|--------:|------:|----
-- MAGIC |         1|Luís     |Gonçalves|Brazil |13.86
-- MAGIC |        10|Eduardo  |Martins  |Brazil |13.86
-- MAGIC |        11|Alexandre|Rocha    |Brazil |13.86
-- MAGIC |        12|Roberto  |Almeida  |Brazil |13.86
-- MAGIC |        13|Fernanda |Ramos    |Brazil |13.86
-- MAGIC 
-- MAGIC Para resolução utilize esse link: https://spark.apache.org/docs/latest/api/sql/index.html  
-- MAGIC 
-- MAGIC 
-- MAGIC **exemplo de query:**
-- MAGIC ```sql
-- MAGIC SELECT * from default.sqlite_customer
-- MAGIC ```

-- COMMAND ----------


