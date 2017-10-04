install.packages("RCurl")
install.packages("jsonlite")
library(RCurl)
library(jsonlite)
library(dplyr)

# acces token
access.token = 'fb token'
# bazowu url
base.url = 'https://graph.facebook.com/'
api.version = 'v2.10'

# params
type = 'page'
fields = c('fan_count', 'about', 'awards', 'name')
q = 'American Assassin'

#budowa zapytania

query = paste0(base.url, api.version, '/search?',
                 'type=', type, '&',
                 'q=', q, '&',
                 'fields=', paste(fields, collapse = ','), '&',
                 'access_token=', access.token)

query = URLencode(query)

if(!file.exists("cancert.pem")) {
  download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile="cacert.pem")
}

# budowa zapytania

content = getURL(query, cainfo = "cacert.pem")
#wersja ubuntu
#concent = getURL(query)

#czyszczenie danych ze znaków specjalnych
content = gsub('\\n|\\t', '', content)

content


# parsowanie
require(jsonlite)
json = fromJSON(content)

#wczytywanie danych
data.output=json$data
data.output


#baza danych
install.packages("RPostgreSQL")
library(RPostgreSQL)

sql.user = 'user'
sql.pass = 'pass'
sql.name = 'test'
sql.host = "256.256.256.256"


#tworzenie po³¹czenia
require(RPostgreSQL)
#driver
drv = DBI::dbDriver('PostgreSQL')
#otiweranie po³aczenia
con = RPostgreSQL::dbConnect(drv, user = sql.user,
                             password = sql.pass,
                             host = sql.host,
                             dbname = sql.name,
                             port = 5432)

dbListTables(con)
dbWriteTable(con, 'test', data.output)
dbWriteTable(con, 'test', data.output, append = TRUE)

querySQL = function(sql.query) {
  #driver
  drv = DBI::dbDriver('PostgreSQL')
  #otiweranie po³aczenia
  con = RPostgreSQL::dbConnect(drv, user = sql.user,
                               password = sql.pass,
                               host = sql.host,
                               dbname = sql.name,
                               port = 5432)
  #wysy³anie zapytania
  output = RPostgreSQL::dbGetQuery(con, sql.query)
  #zamykanie po³aczenia
  dbDisconnect(con)
  #zwracanie danych
  return(output)
}


dane = querySQL('SELECT * FROM test')
view(dane)

updateSQLTable = function(dane, sql.table.name) {
  sql.query = paste0('SELECT * FROM ', sql.table.name)
  dane.from.sql = querySQL(sql.query)
  #spr które dane sie powarzaja
  dane.to.insert = dane.from.sql %>%
    anti_join(dane, by = 'id')
  # zapisywanie danych do tabeli
  # to nalezy przeniesc do innej funkcji
  dbWriteTable()
}

dane = querySQL('SELECT * FROM test' )
