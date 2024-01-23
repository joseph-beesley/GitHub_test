library(tidyverse)
library(terra)
library(tidyterra)
library(viridis)

japan = vect("JPN_adm1.shp")
df.japan = read.csv("Jpn_liveBirth-perf2.csv")

colnames(df.japan)[1] = "NAME_1"

japan = terra::merge(japan, df.japan)

ggplot(japan)+
  geom_spatvector(aes(fill = X_2011),
                  col = 'black') +
  scale_fill_viridis() +
  labs(title = "Japanese Population Density by CC. AA. (2011)",
       fill = "Population Density") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))