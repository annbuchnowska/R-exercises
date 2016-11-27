data(iris)
standarize = function(wektor){
  standarized = (wektor-median(wektor))/sd(wektor)
  return(standarized)
}

# summarise ---------------------------------------------------------------
# pogrupowane (Split-Apply-Combine)
iris %>%
  group_by(Species) %>%
  summarise(mean.Sepal.Length=mean(Sepal.Length))

# niepogrupowane
iris %>%
  summarise(mean.Sepal.Length=mean(Sepal.Length))


# mutate ------------------------------------------------------------------
#pogrupowane
iris %>%
  group_by(Species) %>%
  mutate(standarized.Sepal.Length=standarize(Sepal.Length)) %>%
  head()

#niepogrupowane
iris %>%
  mutate(standarized.Sepal.Length=standarize(Sepal.Length)) %>%
  head()


# arrange -----------------------------------------------------------------
# pogrupowane
iris %>%
  group_by(Species) %>%
  arrange(desc(Sepal.Length)) %>%
  head()

#niepogrupowane
iris %>%
  arrange(desc(Sepal.Length)) %>%
  head()



# filter ------------------------------------------------------------------

iris %>%
  filter(Sepal.Length>7)

iris %>%
  filter(Sepal.Length>7, Sepal.Width<3)

iris %>%
  filter(Sepal.Length>7 & Sepal.Width<3)


# select ------------------------------------------------------------------

iris %>%
  select(Species, Sepal.Length) %>%
  head()

iris %>%
  select_('Species', 'Sepal.Length') %>%
  head()


# przyklad ze standaryzacja -----------------------------------------------

standarize = function(wektor){
  standarized = (wektor-median(wektor))/sd(wektor)
  return(standarized)
}
iris = iris %>%
  group_by(Species) %>%
  mutate(standarized.Sepal.Length=standarize(Sepal.Length))

hist(iris$standarized.Sepal.Length[iris$Species=='setosa'], breaks=100)
hist(iris$Sepal.Length[iris$Species=='setosa'], breaks=100)
