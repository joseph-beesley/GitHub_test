library(tidyverse)
library(terra)
library(usethis)

use_git()

japan = vect("JPN_adm1.shp")
df.japan = read.csv("Jpn_liveBirth-perf2.csv")

colnames(df.japan)[1] = "NAME_1"
colnames(df.japan)[2] = "Population_2011"

japan = terra::merge(japan, df.japan)

plot(japan,
     "Population_2011",
     col = colorRampPalette(brewer.pal(9, "YlGnBu"))(18),
     main = "Japanese population density by CC.AA. (2011)")
