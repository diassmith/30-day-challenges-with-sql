-- Databricks notebook source
-- MAGIC %md
-- MAGIC # Por favor tente resolver o desafio sozinho, não pegue atalhos, tu consegue, é só colocar a cabeça para funcionar.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC Neste desafio precisamos criar uma nova tabela chamada `default.sqlite_track2` oriunda da transformação das tabelas: `default.sqlite_track`, `default.sqlite_album`, `Artist` e `default.sqlite_genre`. Vale lembrar que a tabela `default.sqlite_track` é a tabela da esquerda que será a base para realizarmos os relacionamentos. Utilize JOIN para resolver este problema.
-- MAGIC 
-- MAGIC Critério:  
-- MAGIC Escreva essa transformação em apenas uma query. Boa sorte!
-- MAGIC 
-- MAGIC resultado esperado:  
-- MAGIC 
-- MAGIC |TrackId|artista             |musica                                      |compositor                                                                 |genero            |size_mb
-- MAGIC |-------:|-------------------:|-------------------------------------------:|-------------------------------------------------------------------------:|-----------------:|-------
-- MAGIC |      1|AC/DC               |For Those About To Rock (We Salute You)     |Angus Young, Malcolm Young, Brian Johnson                                  |Rock              |  10908
-- MAGIC |      2|Accept              |Balls to the Wall                           |                                                                           |Rock              |   5381
-- MAGIC |      3|Accept              |Fast As a Shark                             |F. Baltes, S. Kaufman, U. Dirkscneider & W. Hoffman                        |Rock              |   3897
-- MAGIC |     4|Accept              |Restless and Wild                           |F. Baltes, R.A. Smith-Diesel, S. Kaufman, U. Dirkscneider & W. Hoffman     |Rock              |   4230
-- MAGIC |      5|Accept              |Princess of the Dawn                        |Deaffy & R.A. Smith-Diesel                                                 |Rock              |   6143
-- MAGIC |      6|AC/DC               |Put The Finger On You                       |Angus Young, Malcolm Young, Brian Johnson                                  |Rock              |   6556
-- MAGIC |      7|AC/DC               |Let's Get It Up                             |Angus Young, Malcolm Young, Brian Johnson                                  |Rock              |   7457
-- MAGIC |      8|AC/DC               |Inject The Venom                            |Angus Young, Malcolm Young, Brian Johnson                                  |Rock              |   6692
-- MAGIC |      9|AC/DC               |Snowballed                                  |Angus Young, Malcolm Young, Brian Johnson                                  |Rock              |   6444
-- MAGIC |     10|AC/DC               |Evil Walks                                  |Angus Young, Malcolm Young, Brian Johnson                                  |Rock              |   8409
-- MAGIC |     11|AC/DC               |C.O.D.                                      |Angus Young, Malcolm Young, Brian Johnson                                  |Rock              |   6412
-- MAGIC |     12|AC/DC               |Breaking The Rules                          |Angus Young, Malcolm Young, Brian Johnson                                  |Rock              |   8395
-- MAGIC |     13|AC/DC               |Night Of The Long Knives                    |Angus Young, Malcolm Young, Brian Johnson                                  |Rock              |   6549
-- MAGIC |     14|AC/DC               |Spellbound                                  |Angus Young, Malcolm Young, Brian Johnson                                  |Rock              |   8610
-- MAGIC |     15|AC/DC               |Go Down                                     |AC/DC                                                                      |Rock              |  10593
-- MAGIC |     16|AC/DC               |Dog Eat Dog                                 |AC/DC                                                                      |Rock              |   6867
-- MAGIC |     17|AC/DC               |Let There Be Rock                           |AC/DC                                                                      |Rock              |  11739
-- MAGIC |     18|AC/DC               |Bad Boy Boogie                              |AC/DC                                                                      |Rock              |   8570
-- MAGIC |     19|AC/DC               |Problem Child                               |AC/DC                                                                      |Rock              |  10368
-- MAGIC |     20|AC/DC               |Overdose                                    |AC/DC                                                                      |Rock              |  11783
-- MAGIC |     21|AC/DC               |Hell Ain't A Bad Place To Be                |AC/DC                                                                      |Rock              |   8136
-- MAGIC 
-- MAGIC Para resolução utilize esse link: https://spark.apache.org/docs/latest/api/sql/index.html  
-- MAGIC 
-- MAGIC 
-- MAGIC **exemplo de query:**
-- MAGIC ```sql
-- MAGIC SELECT * from default.sqlite_customer
-- MAGIC ```

-- COMMAND ----------

SELECT  sqlite_Artist.Name as Artista, 
sqlite_track.Name as Album, 
Composer as compositor,
sqlite_genre.Name as Genero, 
CAST(Bytes/1024 AS INT) as size_mb
FROM sqlite_track
LEFT JOIN sqlite_album
ON sqlite_track.AlbumId = sqlite_album.AlbumId
LEFT JOIN sqlite_Artist
ON sqlite_album.ArtistId = sqlite_Artist.ArtistId 
LEFT JOIN sqlite_genre
ON sqlite_track.GenreId = sqlite_genre.GenreId 
