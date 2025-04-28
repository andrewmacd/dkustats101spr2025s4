mr.beast <- read.csv("~/Desktop/mr beast videos/MrBeast_youtube_stats.csv")


mr.beast <- mr.beast %>% 
  mutate(publishTime = ymd_hms(publishTime, tz = "UTC"))


mr.beast.mar.2025 <- mr.beast %>% 
  filter(year(publishTime) == 2025 & month(publishTime) == 3)

library(tidyverse)

mrbeast1 <- mr.beast %>% 
  slice_sample(n=300)

mrbeast2 <- mr.beast %>% 
  slice_sample(n=300)

mrbeast3 <- mr.beast %>% 
  slice_sample(n=300)

mrbeast4 <- mr.beast %>% 
  slice_sample(n=300)

mr.beast <- mr.beast %>% 
  arrange(desc(publishTime)) %>% 
  distinct(id, .keep_all = TRUE) %>% 
  select(id:commentCount, pull_date)

write.csv(mr.beast, "~/Desktop/mr.beast.videos.csv")