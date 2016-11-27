# Data Import -------------------------------------------------------------

# wczytaj plik zadanie1.txt jako zmienna facebook_ads
facebook_ads = read.table('zadanie1.txt')

# wczytaj plik zadanie2.csv jako zmienna facebook_stats
facebook_stats = read.table('zadanie2.csv', sep=';')
facebook_stats = read.csv('zadanie2.csv', sep=';')

# zapisz plik zadanie1.txt jako zadanie.rds w twoim folderze roboczym
saveRDS(facebook_ads, 'C:/Users/user/Documents/datascience2/zadanie1.rds')

# zapisz plik zadanie1.txt jako plik zadanie1_srednik.txt rozdzielany srednikiem
write.table(facebook_ads, 'C:/Users/user/Documents/datascience2/zadanie1_srednik.txt',
            sep=';')

# zapisz tabele z zadanie1.txt i tabele z zadanie2.csv do pliku facebook_tabele.RData 
save(facebook_ads, facebook_stats, file='facebook_tabele.RData')

# wyczysc srodowisko i wczytaj obie tabele
load('facebook_tabele.RData')


# FUNCTIONS ---------------------------------------------------------------
#zbuduj funkcje, ktora zwroci sume trzech dowolnych wartosci numerycznych
suma_trzech = function(x,y,z){
  result=x+y+z
  return(result)
}

# pocwiczmy funkcje z tabela facebook_stats
# zbuduj funkcje, ktora bedzie obliczac liczbe postow admina oraz zwroci jaki procent
# uzytkownikow to nowi uzytkownicy (dla kazdego dnia; innymi slowy funkcja ma dodac do 
# tabeli dwie nowe kolumny)
liczba_postow_admina = facebook_stats$posts-facebook_stats$posts_fan
nowi_uzytkownicy = facebook_stats$engaged_newly_fans/facebook_stats$engaged_fans

oblicz = function(dataframe){
  
  liczba_postow_admina = dataframe$posts-dataframe$posts_fan
  nowi_uzytkownicy = dataframe$engaged_newly_fans/dataframe$engaged_fans
  
  dataframe$liczba_postow_admina = liczba_postow_admina
  dataframe$nowi_uzytkownicy = nowi_uzytkownicy
  
  return(dataframe)
}

facebook_stats_with_new_columns = oblicz(facebook_stats)
iris_with_new_columns = oblicz(iris)

# LOOPS AND CONDITIONAL STATEMENTS ----------------------------------------
# zbuduj skrypt, ktory zwroci wartosc bezwzgledna z danej liczby
x = -10
abs <- x
if (x < 0) {
  abs = -x
}

# w oparciu o ten skrypt stworz funkcje, ktora bedzie brala jako argument
# dana liczbe i zwracala wartosc bezwzgledna

wartoscBezwzglêdna = function(x) {
  
  abs = x
  if (x<0) {
    abs = -x
  }
  return(abs)
  
}

wartoscBezwzglêdna(-10)


# teraz dodaj do niej warunek: jesli wartosc jest inna niz numeric niech zwroci nam blad
# z komunikatem "To nie jest wektor numeric"

wartoscBezwzglêdna = function(x) {
  
  abs = x
  if (x<0) {
    abs = -x
  }else if (class(x) != 'numeric') {
    stop('to nie liczba')
  }
  return(abs)
  
}

wartoscBezwzglêdna('blab')

# w obiekcie facebook_stats stworz kolumne "increase" typu logical, ktora powie nam
# czy w danym dniu spadla liczba fanow
# uzyj funkcji ifelse

facebook_stats=read.table('zadanie2.csv', sep=';')
increase = ifelse(facebook_stats$fans_change>0, T, F)
facebook_stats$increase=increase

#starac sie nie uzywac petli (czas, implementacja...)
#normalnie:
for (i in 1:length(wektor)){
  wektor[i] = wektor[i] * 2
}

wektor*2

#WAZNE !!!

#lepiej:
wektor = c(1,2,3,4,5,6,7,8)
ifelse(wektor>5, 'true', 'false' )

ifelse(wektor>5, 'true', 
       ifelse(wektor<3, 'mniejszy niz 3', '') )
wektor[wektor>5] = 'wieksze niz piec'
wektor[wektor<5] = 'mniejsze niz trzy'






## petle for ##
x = 2

for(i in c(1:10)) {
  print('iteracja nr: ', i)
  wynik = x*i
  print('wynik:', wynik)
  
}

wektor1 = c(1,2,3,4,5,67,8)
for(i in seq_along(wektor1)){
  wynik = wektor1[i]*2
  print(wynik)
}

# stworz liste data.frame'ow
multidata <- list(mtcars, USArrests, rock)

# PRZYKLAD: skrypt sluzacy do wyciagania z listy pierwszych 5 wierszy tabel z listy

lista = list()    # tworzymy liste, do ktorej beda wpadaly wyniki
iterator = 1:length(multidata)    # wektor po ktorym bedzie sie wykonywac petla
for(i in iterator){
  print(i)    # sprawdzamy czy petla dobrze chodzi po iteratorze
  x = head(multidata[[1]])
  lista[[i]] = x
} 
lista

# stworz skrypt, ktory zwroci liste podsumowan (funkcja summary()) dla kazdej z tabel

lista2 = list()
iterator2 = 1:length(multidata)

for(i in iterator2) {
  print(i)
  x = summary(multidata[[i]])
  lista2[[i]] = x
}
lista2

# stworz taki sam skrypt, ale niech posiada warunek, ze bierze pod uwage tylko 
# obiekty typu data.frame
# jesli obiekt nie jest data.frame niech zwroci nam pusty data.frame
# pusty data.frame tworzymy w ten sposÃ³b:
pusty_data_frame = data.frame()

weird = 'weird'
logic = T
numer = numeric(0)
multidata = list(mtcars, USArrests, rock, weird, logic, numer)

lista = list()


iterator = 1:length(multidata)
for(i in iterator){
  print(i)
  data=multidata[[1]]
  ifelse(is.data.frame(data)){
    x = summary(multidata[[i]])
    } else {
    x = data.frame()
    }
  lista[[i]] = x
}

lista


# stworz skrypt, ktory obliczy, ktorego stopnia potega z 2 jest liczba 256
# uzyj petli "while"
x = 256
i = 0
while(x>=2){
  x=x/2
  i=i+1
}
print(i)
