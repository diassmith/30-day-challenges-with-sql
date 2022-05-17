-- Databricks notebook source
-- MAGIC %md
-- MAGIC # Por favor tente resolver o desafio sozinho, não pegue atalhos, tu consegue, é só colocar a cabeça para funcionar.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC Neste desafio precisamos que seja criado uma `VIEW`com as colunas `AlbumId,Title,ArtistId` da tabela `default.sqlite_album`
-- MAGIC 
-- MAGIC Critério:  
-- MAGIC Escreva essa transformação em apenas uma query. Boa sorte!
-- MAGIC 
-- MAGIC resultado esperado:  
-- MAGIC 
-- MAGIC |AlbumId|Title                                                          |ArtistId                     
-- MAGIC |------:|--------------------------------------------------------------:|-------
-- MAGIC |      1|For Those About To Rock We Salute You                          |       1                        
-- MAGIC |      2|Balls to the Wall                                              |       2                       
-- MAGIC |      3|Restless and Wild                                              |       2                         
-- MAGIC |      4|Let There Be Rock                                              |       1                          
-- MAGIC |      5|Big Ones                                                       |       3                      
-- MAGIC |      6|Jagged Little Pill                                             |       4              
-- MAGIC |      7|Facelift                                                       |       5                
-- MAGIC |      8|Warner 25 Anos                                                 |       6           
-- MAGIC |      9|Plays Metallica By Four Cellos                                 |       7                   
-- MAGIC |     10|Audioslave                                                     |       8                     
-- MAGIC |     11|Out Of Exile                                                   |       8                     
-- MAGIC |     12|BackBeat Soundtrack                                            |       9                     
-- MAGIC 
-- MAGIC Para resolução utilize esse link: https://spark.apache.org/docs/latest/api/sql/index.html  
-- MAGIC 
-- MAGIC 
-- MAGIC **exemplo de query:**
-- MAGIC ```sql
-- MAGIC SELECT * from default.sqlite_customer
-- MAGIC ```

-- COMMAND ----------

Create VIEW vTabela AS
SELECT AlbumId, Title, ArtistId from default.sqlite_album

-- COMMAND ----------

Select * from vTabela
