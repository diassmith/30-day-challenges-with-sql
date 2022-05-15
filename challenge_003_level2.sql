-- Databricks notebook source
-- MAGIC %md
-- MAGIC 
-- MAGIC # Por favor tente resolver o desafio sozinho, não pegue atalhos, tu consegue, é só colocar a cabeça para funcionar.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC Neste desafio super fácil, precisamos da contagem dos dados da coluna `default.sqlite_customer.City` onde a contagem é >= a 2 linhas e por ordem alfabetica. 
-- MAGIC 
-- MAGIC resultado esperado:  
-- MAGIC 
-- MAGIC | City | numero_de_linhas 
-- MAGIC |--------------:|--------------
-- MAGIC | Berlin        |          2                  
-- MAGIC | London        |          2                  
-- MAGIC | Mountain View |          2                      
-- MAGIC | Paris         |          2                
-- MAGIC | Prague        |          2                
-- MAGIC | São Paulo     |          2   
-- MAGIC 
-- MAGIC Para resolução utilize esse link: https://spark.apache.org/docs/latest/api/sql/index.html  
-- MAGIC 
-- MAGIC 
-- MAGIC **exemplo de query:**
-- MAGIC ```sql
-- MAGIC SELECT * from default.sqlite_customer
-- MAGIC ```

-- COMMAND ----------


