install.packages("")
library("readxl")
library("tidyverse")
obitos <- read_xlsx("C:\\Users\\aluno.ENAP\\Downloads\\OBITOS.xlsx")
gov_temer <- read_xlsx("C:\\Users\\aluno.ENAP\\Downloads\\governismo_temer.xlsx")
coligacoes <- read_xlsx("C:\\Users\\aluno.ENAP\\Downloads\\coligacoes.xlsx")
bancadas <-  read_rds("C:\\Users\\aluno.ENAP\\Downloads\\bancadas.rds")
gov_temer %>% 
  select(coligacoes$partypresid, bancadas$size, gov_temer$governismo) %>% 
  left_join(coligacoes, bancadas, "party")

total <- 
  governismo <- read_xlsx("C:\\Users\\aluno.ENAP\\Downloads\\governismo_temer.xlsx") %>%
                    left_join(
                      read_rds("C:\\Users\\aluno.ENAP\\Downloads\\bancadas.rds") 
                      ) %>%
                    left_join(
                      read_xlsx("C:\\Users\\aluno.ENAP\\Downloads\\coligacoes.xlsx")
                              ) 
governismo
