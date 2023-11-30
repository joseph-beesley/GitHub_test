library(tidyverse)
library(terra)
library(usethis)

use_git()

japan = vect("JPN_adm1.shp")

plot(japan, "NAME_1")