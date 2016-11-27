# apply() -----------------------------------------------------------------

#dziala na macierzach i data.frame i zawsze zwraca macierz
#iteruje po kolumnach albo wierszach w zaleznosci od tego jaka wartosc przyjmie srgument srodkowy



# Two dimensional matrix
M <- matrix(seq(1,16), 4, 4)

# apply min to rows
apply(M, 1, min)

# apply max to columns
apply(M, 2, max)

# 3 dimensional array
M <- array( seq(32), dim = c(4,4,2))

# Apply sum across each M[*, , ] - i.e Sum across 2nd and 3rd dimension
apply(M, 1, sum)


# lapply ------------------------------------------------------------------

x <- list(a = 1, b = 1:3, c = 10:100) 
x
lapply(x, FUN = length) 
lapply(x, FUN = sum) 


# sapply() ----------------------------------------------------------------

x <- list(a = 1, b = 1:3, c = 10:100)
sapply(x, FUN = length)  
sapply(x, FUN = sum)  


# mapply ------------------------------------------------------------------

mapply(sum, 1:5, 1:5, 1:5) 
mapply(rep, 1:4, 4:1)  


# tapply() --------podsumowuje wektor po innym wektorze --------------------------------------

x <- 1:20
x
y <- factor(rep(letters[1:5], each = 4)) #okre�la poziomy
y
tapply(x, y, length)




# apply family ------------------------------------------------------------

# stworz liste data.frame'ow
multidata <- list(mtcars, USArrests, rock)

# dla kazdej tabeli zrob podsumowanie jedna komenda


# z tabeli facebook_stats stworz macierz, ktora bedzie zawierala wartosci wyrazone jako
# procent fanow (np. talkingabout/fans)


# podsumuj liczbę likes dla każdego fanpage'a





# SPLIT-APPLY-COMBINE -----------------------------------------------------
# rozbij tabele na liste data.frame'ow - niech kazdy fanpage ma osobny data.frame
rozbita = split(facebook_stats, facebook_stats$fan_page_id)

# przypisz do zmiennej temp_df pierwszy element z listy
temp_df = rozbita[[1]]

# zbuduj funkcje countLikes(temp_df), ktora zwroci data.frame zawierajacy dwie kolumny - fan_page_id
# oraz likes. Niech likes bedzie suma likes z calego roku.
# cala tabela bedzie miala jeden wiersz i bedzie on wygladal tak:
#   fan_page_id likes
# 1           3 34173
  
countLikes = function(temp_df) {
  
  likes = sum(temp_df(likes))
  fan_page_id = unique(temp_df$fan_page_id)
  result = data.frame(fan_page_id=fan_page_id,
                      likes=likes,
                      stringsAsFactors=F)
  return(result)
}


# wykonaj te funkcje na wszystkich data.frame z listy
  rozbitaApply = lapply(rozbita, countLikes)
  
# teraz sprobuj wykonac to samo, ale za pomoca funkcji anonimowej
rozbitaCombine = do.call('rbind', rozbitaApply)



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
# likes - liczba lajkow
# comments - liczba komentarzy
# response_median - mediane czasu odpowiedzi na pytanie
# median_realtive_likes - mediana z likes_relative
# day_of_high_viral_activity - dzien, w ktorym fanpage mial najwyzsza aktywnosc 
# i byla to aktywnosc wirusowa. Jesli fanpage nie mial ani razu aktywnosci wirusowej, 
# niech zmienna przyjmuje wartosc NA
# (przyjmujemy, ze aktywnosc wirusowa jest wtedy, kiedy wartosc dla likes_standarized
# wynosi wiecej niz 2.5)


## 4. posortujmy tabele od fanpage'a, ktory jest najwiekszy do fanpage'a, ktory jest najmniejszy
## 5. dodajmy kolumne "activities", ktora bedzie suma likes i comments
## 6. Wyrzucmy z tabeli kolumny likes i comments oraz wezmy tylko te fanpage ktore 
# mialy momenty "wirusowosci"




