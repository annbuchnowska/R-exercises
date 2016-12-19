install.packages('dplyr')
install.packages('ggplot2')
library(dplyr)
library(ggplot2)
#dplyr::bind_rows(rozbitaApply)
#bind_rows(rozbitaApply)


# Data Import -------------------------------------------------------------

# wczytaj plik zadanie1.txt jako zmienna facebook_ads
facebook_ads = read.table('zadanie1.txt')

# wczytaj plik zadanie2.csv jako zmienna facebook_stats
facebook_stats = read.table('zadanie2.csv', sep=';', stringsAsFactors = F)
facebook_stats = readLines('zadanie2.csv')

# zapisz plik zadanie1.txt jako zadanie.rds w twoim folderze roboczym
saveRDS(facebook_stats, 'zadanie.rds')
x = readRDS('zadanie.rds')

# zapisz plik zadanie1.txt jako plik zadanie1_srednik.txt rozdzielany srednikiem
write.table(facebook_ads, 'zadanie1_srednik.txt', sep=';')

# zapisz tabele z zadanie1.txt i tabele z zadanie2.csv do pliku facebook_tabele.RData 
save(facebook_ads, facebook_stats, file='facebook_tabele.RData')

# wyczysc srodowisko i wczytaj obie tabele
load('facebook_tabele.RData')

# FUNCTIONS ---------------------------------------------------------------
#zbuduj funkcje, ktora zwroci sume trzech dowolnych wartosci numerycznych

kwadrat = function(x){
  wynik = x^2
  return(wynik)
}

y = 6

kwadrat = function(x, y=6){
  wynik = (x^2)*y
  if(wynik>90){
    warning('Uwaga za duzy wynik')
  }
  
  x = try(2*kol)
  if(class(x)=='try-error'){
    x = 10
  }
  
  return(wynik)
}


oblicz_sume = function(x,y){
  wynik = try(x/y, silent = T)
  if(class(wynik)=='try-error'){
    return(x)
  }
}


x= 2


if(x<2){
  print('x jest mniejsze od dwa')
}else if(x==3){
  print('x jest rowne dwa')
}else{
  print('lalala')
}

elif

# pocwiczmy funkcje z tabela facebook_stats



# zbuduj funkcje, ktora bedzie obliczac liczbe postow admina oraz zwroci jaki procent
# uzytkownikow to nowi uzytkownicy (dla kazdego dnia; innymi slowy funkcja ma dodac do 
# tabeli dwie nowe kolumny)


# LOOPS AND CONDITIONAL STATEMENTS ----------------------------------------
# zbuduj skrypt, ktory zwroci wartosc bezwzgledna z danej liczby
x = -10
abs <- x
if (x < 0) {
  abs = -x
}

# w oparciu o ten skrypt stworz funkcje, ktora bedzie brala jako argument
# dana liczbe i zwracala wartosc bezwzgledna
wartoscBezwzgledna = function(x){
  if (x < 0) {
    x = -x
  }
  return(x)
}


# teraz dodaj do niej warunek: jesli wartosc jest inna niz numeric niech zwroci nam blad
# z komunikatem "To nie jest wektor numeric"

wartoscBezwzgledna = function(x){
  
  if(!is.numeric(x)){
    stop("To nie jest wektor numeric")
  }
  if (x < 0) {
    x = -x
  }
  return(x)
}

# w obiekcie facebook_stats stworz kolumne "increase" typu logical, ktora powie nam
# czy w danym dniu spadla liczba fanow
# uzyj funkcji ifelse
increase = ifelse(facebook_stats$fans_change>0, T, F)
facebook_stats$increase = increase

facebook_stats_increase = facebook_stats[increase,]


## petle for ##

# stworz liste data.frame'ow
multidata <- list(mtcars, USArrests, rock)

# PRZYKLAD: skrypt sluzacy do wyciagania z listy pierwszych 5 wierszy tabel z listy
lista = list()    # tworzymy liste, do ktorej beda wpadaly wyniki
iterator = 1:length(multidata)    # wektor po ktorym bedzie sie wykonywac petla
for(i in iterator){
  print(i)    # sprawdzamy czy petla dobrze chodzi po iteratorze
  x = head(multidata[[i]])
  lista[[i]] = x
} 


# stworz skrypt, ktory zwroci liste podsumowan (funkcja summary()) dla kazdej z tabel
lista = list()    # tworzymy liste, do ktorej beda wpadaly wyniki
iterator = 1:length(multidata)    # wektor po ktorym bedzie sie wykonywac petla
for(i in iterator){
  print(i)    # sprawdzamy czy petla dobrze chodzi po iteratorze
  x = summary(multidata[[i]])
  lista[[i]] = x
} 



# stworz taki sam skrypt, ale niech posiada warunek, ze bierze pod uwage tylko 
# obiekty typu data.frame
# jesli obiekt nie jest data.frame niech zwroci nam pusty data.frame
# pusty data.frame tworzymy w ten sposÃ³b:
pusty_data_frame = data.frame()

weird = 'weird'
logic = T
numer = numeric(0)
multidata = list(mtcars, USArrests, rock, weird, logic, numer)


lista = list()    # tworzymy liste, do ktorej beda wpadaly wyniki
iterator = 1:length(multidata)    # wektor po ktorym bedzie sie wykonywac petla
for(i in iterator){
  print(i)    # sprawdzamy czy petla dobrze chodzi po iteratorze
  data = multidata[[i]]
  if(is.data.frame(data)){
    x = summary(multidata[[i]]) 
  }else{
    x = data.frame()
  }
  lista[[i]] = x
} 


# stworz skrypt, ktory obliczy, ktorego stopnia potega z 2 jest liczba 256
# uzyj petli "while"



# apply family ------------------------------------------------------------

# stworz liste data.frame'ow
multidata <- list(mtcars, USArrests, rock)

# dla kazdej tabeli zrob podsumowanie jedna komenda


# z tabeli facebook_stats stworz macierz, ktora bedzie zawierala wartosci wyrazone jako
# procent fanow (np. talkingabout/fans)


# podsumuj liczbÄ™ likes dla kaÅ¼dego fanpage'a





# SPLIT-APPLY-COMBINE -----------------------------------------------------
# rozbij tabele na liste data.frame'ow - niech kazdy fanpage ma osobny data.frame
facebook_stats <- read.table('zadanie2.csv', sep = ";", stringsAsFactors = FALSE)
rozbita = split(facebook_stats, facebook_stats$fan_page_id)

# przypisz do zmiennej temp_df pierwszy element z listy
#bierzemy pierwsz¹ tabelê testow¹
#operacja dla 1 tabeli a chcemy dla kazdej wiec ponizej....
temp_df = rozbita[[1]] 
suma = sum(temp_df$likes)
fan_page_id = temp_df$fan_page_id[1]
output = data.frame(fan_page_id=fan_page_id, 
                    likes=suma)

countLikes[[3]]



# zbuduj funkcje countLikes(temp_df), ktora zwroci data.frame zawierajacy dwie kolumny - fan_page_id
# oraz likes. Niech likes bedzie suma likes z calego roku.
# cala tabela bedzie miala jeden wiersz i bedzie on wygladal tak:
#   fan_page_id likes
# 1           3 34173
  

countLikes = function(temp_df){

  likes = sum(temp_df$likes)
  fan_page_id = temp_df$fan_page_id[1]
  
  result = data.frame(fan_page_id=fan_page_id,
                      likes=likes,
                      stringsAsFactors=F)
  return(result)
}
countLikes(rozbita[[2]])
countLikes(rozbita[[3]])
countLikes(rozbita[[4]])
countLikes(rozbita[[5]])
countLikes(rozbita[[6]])
countLikes(rozbita[[7]])
countLikes(rozbita[[8]])

#ale zamiast pojedynczo wykorzystuje sie lapply jak ponizej

# wykonaj te funkcje na wszystkich data.frame z listy
rozbitaApply = lapply(rozbita, countLikes)
rozbitaApply

#jest library('parallel') ktory wykonuje to na kilka rdzeniach na linuksie i wtedy
#rozbitaApply = lapply(rozbita, countLikes, mc.cores = 1)

#zlozenie wszystkich tabeli w jedn¹
# combine
rozbitaCombine = do.call('rbind', rozbitaApply)
#to samo ale szybciej dzieki dplyr
rozbitaCombine = bind_rows(rozbitaApply)

rozbitaCombine



# teraz sprobuj wykonac to samo, ale za pomoca funkcji anonimowej
rozbitaApply = lapply(rozbita, function(temp_df){
  likes = sum(temp_df$likes)
  fan_page_id = temp_df$fan_page_id[1]
  
  result = data.frame(fan_page_id=fan_page_id,
                      likes=likes,
                      stringsAsFactors=F)
  return(result)
  
  
})
rozbitaCombine = bind_rows(rozbitaApply)


#bind_rows - dplyr

library(dplyr)



facebook_stats %>%
  group_by(fan_page_id) %>%
  dplyr::summarise(likes=sum(likes))



facebook_stats %>% head %>% summary


# TAK !!PIPELINE
facebook_stats %>%
  group_by(day) %>%
  summarise(shares = sum(shares)) %>%
  arrange(shares)


# LUB to samo tAK, ale ... :(
facebook_stats2 = head(facebook_stats, day)
facebook_stats3 = summary(facebook_stats2, shares=sum(shares))
facebook_stats4 = arrange(facebook_stats3, shares)


facebook_stats %>%
  group_by(fan_page_id) %>%
  summarise(likes_dzinnie_mean = mean(likes))

#lub string

facebook_stats %>%
  group_by(fan_page_id) %>%
  summarise("likes_dzinnie_mean = mean(likes)")

#__________________________
facebook_stats %>%
  group_by(fan_page_id) %>%
  summarise(max(likes))

facebook_stats %>%
  mutate(likes_per_fan = likes / fans) -> perc

View(perc)


#------------

facebook_stats %>%
  arrange(likes) %>%
  head()

facebook_stats %>%
  arrange(desc(likes)) %>%
  head()

facebook_stats %>%
  group_by(fan_page_id)
  arrange(desc(likes)) %>%
  head() %>%
  as.data.frame()

  
facebook_stats %>%
  filter(likes>1000 & shares > 100) -> more_than_10k
  #lub
  salect(fan_page_id, likes) -> fanpagelikes
  #lub
  select(contains('likes')) -> fanpagelikes

more_than_10k




# ZADANIE -----------------------------------------------------------------

# wyniki zbierz w jedna tabele

## A teraz to samo, ale juz z sensem i samodzielnie
## zrzuc tabele, ktora bedzie zawierala podsumowane dane z calego roku:
# median_talkingabout - mediane talkingabout z calego roku
# nfans_from - poczatkowa liczbe fanow z roku
# nfans_to - koncowa liczbe fanow z roku
# fans_change - zmiana liczby fanow w calym roku
# likes - liczba lajkow
# comments - liczba komentarzy
# response_median - sredni czas odpowiedzi na pytanie



# dplyr -------------------------------------------------------------------

standarize = function(x) {
  wynik = (x-mean(x))/sd(x)
  return (wynik)
}


# a teraz zrobimy to samo, ale przy pomocy dplyra. Dodamy tez kilka operacji.
# Zanim podsumujemy tabele, dolozmy do niej jeszcze dwie kolumny:
## 1. dodajmy kolumne likes_relative, ktora okreslac bedzie liczbe likes w stosunku do liczby fanow
## 2. dodajmy kolumne likes_standarized, ktora wystandaryzuje nam liczbe comments w obrebie kazdego fanpage'a
# (chcemy odpowiedziec na pytanie, kiedy fanpage mial szczegolny skok aktywnosci)

## 3. zrzuc tabele, ktora bedzie zawierala podsumowane dane z calego roku:
# median_talkingabout - mediane talkingabout z calego roku
# nfans_from - poczatkowa liczbe fanow z roku
# nfans_to - koncowa liczbe fanow z roku
# fans_change - zmiana liczby fanow w calym roku
# #likes - liczba lajkow
# #comments - liczba komentarzy
# response_median - mediane czasu odpowiedzi na pytanie
# median_realtive_likes - mediana z likes_relative
# day_of_high_viral_activity - dzien, w ktorym fanpage mial najwyzsza aktywnosc 
# i byla to aktywnosc wirusowa. Jesli fanpage nie mial ani razu aktywnosci wirusowej, 
# niech zmienna przyjmuje wartosc NA
# (przyjmujemy, ze aktywnosc wirusowa jest wtedy, kiedy wartosc dla likes_standarized
# wynosi wiecej niz 2.5)


facebook_stats %>%
  mutate(likes_relative = likes/fans ) %>%
  group_by(fan_page_id) %>%
  mutate(likes_standarized = standarize(comments)) %>%
  summarise(median_talkingabout = median(talkingabout),
                    nfans_from = fans[day = min(day)],
                    nfans_to = fans[day = max(day)],
                    fans_change = sum(fans_change),
                    likes = sum(likes), 
                    comments = sum(comments), 
                    response_median = median(response_median, na.rm = TRUE),
                    median_realtive_likes = median(likes_relative),
                    day_of_high_viral_activity = ifelse(max(likes_standarized) > 2.5, 
                                                        day[likes_standarized == max(likes_standarized)],
                                                        NA)) -> sums











## 4. posortujmy tabele od fanpage'a, ktory jest najwiekszy do fanpage'a, ktory jest najmniejszy
## 5. dodajmy kolumne "activities", ktora bedzie suma likes i comments
## 6. Wyrzucmy z tabeli kolumny likes i comments oraz wezmy tylko te fanpage ktore 
# mialy momenty "wirusowosci"




