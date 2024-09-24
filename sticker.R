library(hexSticker)
library(magick)
library(tidyverse)

logo <- image_read("slides/01_uvod/slike/logo.png")

set.seed(123)
N <- 1000
logo <- tibble(
  id = 1:N,
  TA = rnorm(N, mean = 120, sd = 10)
) %>% 
  ggplot(aes(x = TA)) +
  geom_histogram(aes(y = after_stat(density)), 
                 bins = 30, fill = "#01364C", color = "white", size = 0.1) +
  theme_void() +
  ggdist::theme_ggdist(base_size=15) +
  theme_void()

sticker(
  subplot = logo,
  package = "MSI",
  s_height = 0.8,
  s_width = 1,
  s_x = 1,
  s_y = 0.75,
  p_size = 32,
  p_color = "#01364C",
  h_fill = "#F4BA02",
  h_color = "#01364C",
  spotlight = T,
  l_y = 0.6,
  l_x = 1.1,
  l_alpha = 0.3
) %>% print()
