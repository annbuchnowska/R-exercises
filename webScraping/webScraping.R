
install.packages('rvest')
library(rvest)
library(dplyr)


#params
count = 100
release_data = 2017

#budowa url
base.url = 'http://www.imdb.com/search/title?'
release_data.param = paste0('release_data=', release_data)
count.param = paste0('count=', count)
url = paste0(base.url, count.param, '&', release_data.param, ',' , release_data, '&title_type=feature')
url

#rank_data_html = html_nodes(webpage, 'a')
rank_data_html = html_nodes(webpage, '.lister-item-header')
rank_data_html
rank_data = html_text(rank_data_html)
rank_data

#czyszczenie danych - wyrzucanie regexem niepotrzebnych danych
#gsub 
rank_data.parsed = gsub('\\n', '', rank_data)
rank_data.parsed = gsub('\\([0-9]+\\)', '', rank_data.parsed) #w R kazdy \ musi byc poprzedzony \
rank_data.parsed = gsub('^ +[0-9]+\\. +', '', rank_data.parsed) #+ wez wszystko az napotkasz inny znak
rank_data.parsed = gsub(' +$', '', rank_data.parsed)
rank_data.parsed
#https://regexr.com/

#inaczej
#rank_data = webpage %>%
#  html_nodes('.ister-item-header') %>%
#  html_text() %>%
#  gsub('\\n', '', .) %>%
#  gsub('\\([0-9]+\\)', '', .) %>%

#pozycja i ocene jaka uzyska³ film
rank_number_data = webpage %>%
  html_nodes('.text-primary') %>%
  html_text() %>%
  as.numeric()

rank_number_data

#ocena filmu
grade_data = webpage %>%
  html_nodes('.ratings-imdb-rating') %>%
  html_text() %>%
  gsub('\\n', '', .) %>%
  gsub(' +', '', .)

grade_data


#skladanie tabeli (problem - brak node jesli film nie jest oceniony)
output.table = data_frame(title = rank_data,
                          rank = rank_number_data)

output.table



#url z ktorego s¹ œci¹gane dane
#url = 'http://www.imdb.com/search/title?count=100&release_date=2017,2017&title_type=feature'

#wczytanie kodu html
webpage = read_html(url)

#wybierany konkretny node i bierzemy z niego wszystkie dane
rank_data_html 
