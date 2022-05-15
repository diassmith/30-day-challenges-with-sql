-- Databricks notebook source
-- MAGIC %md
-- MAGIC 
-- MAGIC # Por favor tente resolver o desafio sozinho, não pegue atalhos, tu consegue, é só colocar a cabeça para funcionar.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC Neste desafio precisamos dos valores numéricos inteiros contidos na coluna `default.sqlite_customer.PostalCode`, que possuam 8 caracteres.
-- MAGIC 
-- MAGIC resultado esperado:  
-- MAGIC 
-- MAGIC |CustomerId|Address                        |State|Country|Postal_Code
-- MAGIC |----------:|------------------------------:|----:|------:|----------
-- MAGIC |         1|Av. Brigadeiro Faria Lima, 2170|SP   |Brazil |   12227000
-- MAGIC |        12|Praça Pio X, 119               |RJ   |Brazil |   20040020
-- MAGIC |        13|Qe 7 Bloco G                   |DF   |Brazil |   71020677
-- MAGIC |        20|541 Del Medio Avenue           |CA   |USA    |   94040111
-- MAGIC 
-- MAGIC Para resolução utilize esse link: https://spark.apache.org/docs/latest/api/sql/index.html  
-- MAGIC 
-- MAGIC 
-- MAGIC **exemplo de query:**
-- MAGIC ```sql
-- MAGIC SELECT * from default.sqlite_customer
-- MAGIC ```

-- COMMAND ----------


