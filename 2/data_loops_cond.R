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



# teraz dodaj do niej warunek: jesli wartosc jest inna niz numeric niech zwroci nam blad
# z komunikatem "To nie jest wektor numeric"


# w obiekcie facebook_stats stworz kolumne "increase" typu logical, ktora powie nam
# czy w danym dniu spadla liczba fanow
# uzyj funkcji ifelse


## petle for ##

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


# stworz skrypt, ktory zwroci liste podsumowan (funkcja summary()) dla kazdej z tabel


# stworz taki sam skrypt, ale niech posiada warunek, ze bierze pod uwage tylko 
# obiekty typu data.frame
# jesli obiekt nie jest data.frame niech zwroci nam pusty data.frame
# pusty data.frame tworzymy w ten sposób:
pusty_data_frame = data.frame()

weird = 'weird'
logic = T
numer = numeric(0)
multidata = list(mtcars, USArrests, rock, weird, logic, numer)


# stworz skrypt, ktory obliczy, ktorego stopnia potega z 2 jest liczba 256
# uzyj petli "while"
