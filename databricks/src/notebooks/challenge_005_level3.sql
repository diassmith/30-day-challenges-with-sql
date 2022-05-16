-- Databricks notebook source
-- MAGIC %md
-- MAGIC 
-- MAGIC # Por favor tente resolver o desafio sozinho, não pegue atalhos, tu consegue, é só colocar a cabeça para funcionar.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC Neste desafio precisaremos fazer uma transformação completa na tabela `default.sqlite_customer`! 
-- MAGIC 1.Concatene as colunas `default.sqlite_customer.FirstName` e `default.sqlite_customer.LastName`, gerando uma coluna `nome` onde apenas a primeira letra do nome seja Maiúscula. Exemplo: Fernanda Ramos    
-- MAGIC 2.Concatene as colunas `default.sqlite_customer.City` e `default.sqlite_customer.State`, e gerando uma coluna com a descrição `cidade` onde apenas a coluna `default.sqlite_customer.State` seja Maiúscula. Exemplo: belém-PA.     
-- MAGIC 3.Crie uma nova coluna chamada `cep` a partir da coluna `default.sqlite_customer.PostalCode` removendo todos os caracteres e convertendo o tipo de dados para Integer. 
-- MAGIC 4.Filtre a tabela para apresentear somente dados do país "BRAZIL" e cep <> 0
-- MAGIC 
-- MAGIC Critério:  
-- MAGIC Escreva essa transformação em apenas uma query. Boa sorte!
-- MAGIC 
-- MAGIC resultado esperado:  
-- MAGIC 
-- MAGIC |codigo|nome|endereco|cidade|pais|cep|telefone|Email
-- MAGIC |-----:|-----:|-----:|-----:|-----:|-----:|-----:|-----
-- MAGIC |1|Luís gonçalves|av. brigadeiro faria lima, 2170|são josé dos campos-SP|BRAZIL|12227000|551239235555|luisg@embraer.com.br
-- MAGIC |10|Eduardo martins|rua dr. falcão filho, 155|são paulo-SP|BRAZIL|1007010|551130335446|eduardo@woodstock.com.br
-- MAGIC |11|Alexandre rocha|av. paulista, 2022|são paulo-SP|BRAZIL|1310200|551130553278|alero@uol.com.br
-- MAGIC |12|Roberto almeida|praça pio x, 119|rio de janeiro-RJ|BRAZIL|20040020|552122717000|roberto.almeida@riotur.gov.br
-- MAGIC |13|Fernanda ramos|qe 7 bloco g|brasília-DF|BRAZIL|71020677|556133635547|fernadaramos4@uol.com.br
-- MAGIC 
-- MAGIC Para resolução utilize esse link: https://spark.apache.org/docs/latest/api/sql/index.html  
-- MAGIC 
-- MAGIC 
-- MAGIC **exemplo de query:**
-- MAGIC ```sql
-- MAGIC SELECT * from default.sqlite_customer
-- MAGIC ```

-- COMMAND ----------

SELECT CustomerId, concat(FirstName,' ',lower(LastName)) as nome, lower(Address) as endereco, Concat(City,'-',State) as cidade, upper(Country) AS pais, cast(replace(replace(PostalCode,'-',''),' ','') AS INT) as cep, replace(replace(replace(replace(replace(Phone,'+',''),' ',''),'(',''),')',''),'-','') as telefone, Email as email  from default.sqlite_customer where Country = 'Brazil' AND PostalCode <> '0'

