## wczytaj plik zadanie_paid_nonpaid.csv

df = read.table('zadanie_paid_nonpaid.csv', sep=';', stringsAsFactors = F)
df2 = Filter(function(x) is.numeric(x), df)
correlation = cor(df2)

library(dplyr)
view(correlation)

## pokaz pierwsze 6 wierszy
head(df)

## zrob krotkie podsumowanie
summary(df)
## sprawdz ile jest stron (fan_page_id)

## zrob krotkie podsumowanie, ktore pokaze ktore strony maja najwiecej lajkow


## zrob tabele korelacji miedzy zmiennymi (funkcja cor())

## zrob podsumowanie, ktore pokaze jak dane roznia sie miedzy dni platne i dni bezplatne (np. srednia)


## zrob histogramy dla zmiennych likes, comments i engaged_fans

## zrob wykresy opisujace relacje miedzy zmienna engaged_fans a pozostalymi zmiennymi,
## ktore beda uwzglednialy podzial na dni platne i bezplatne

## doloz do tych wykresow kolejny wymiar - liczbe fanow

## sprawdz czy strony roznia sie miedzy soba pod wzgledem liczby dni platnych
## mozesz tego dokonac wykorzystujac pakiet dplyr. Chcemy uzyskac kolumny:
## n - liczba postow, perc - procent postow
# fan_page_id was_paid   n      perc
# 1           3        0 250 0.6849315
# 2           3        1 115 0.3150685
# 3           5        0 245 0.6712329
# 4           5        1 120 0.3287671
# 5           7        0 279 0.7643836
# 6           7        1  86 0.2356164

## teraz sprawdz, ktore roznia sie najbardziej (np. filturjac uzyskana tabele po was_paid 
## i sortujac wg perc)

## wczytaj tabele category_table.csv

## polacz tabele (chcemy uzyskac kolumne, ktora pokaze nam do jakiej kategorii nalezy dana strona)


## dolacz dwie dodatkowe kolumny - jedna, ktora pokaze w jaki to dzien tygodnia oraz druga,
## ktora pokaze miesiac

## sprawdz, w ktorych dniach tygodnia bylo najwyzsze zaangazowanie pod postami - w tym celu 
## stworz 2 wykresy slupkowe:
## jeden, na ktorym bedziemy widziec przecietne wartosci comments, likes i shares w roznych dniach tygodnia
## drugi, na ktorym bedziemy widziec przecietna liczbe zaangazowanych ze wzgledu na dzien tygodnia 
## i zmienna was_paid


## a teraz to samo dla miesiecy

## pokaz na wykresie jak w kolejnych miesiacach zmieniala sie relacja miedzy engaged_fans i 
## engaged_newly_fans miedzy dniami platnymi i nieplatnymi
## wykorzystaj panele


## zapisz wszystkie wykresy jako pliki png













