SIM_2020[SIM_2020=="-"] <- "0"
SIM_2020$ch_01 <- as.numeric(SIM_2020$ch_01)
SIM_2020$ch_02 <- as.numeric(SIM_2020$ch_02)
SIM_2020$ch_03 <- as.numeric(SIM_2020$ch_03)
SIM_2020$ch_04 <- as.numeric(SIM_2020$ch_04)
SIM_2020$ch_05 <- as.numeric(SIM_2020$ch_05)
SIM_2020$ch_06 <- as.numeric(SIM_2020$ch_06)
SIM_2020$ch_07 <- as.numeric(SIM_2020$ch_07)
SIM_2020$ch_08 <- as.numeric(SIM_2020$ch_08)
SIM_2020$ch_09 <- as.numeric(SIM_2020$ch_09)
SIM_2020$ch_10 <- as.numeric(SIM_2020$ch_10)
SIM_2020$ch_11 <- as.numeric(SIM_2020$ch_11)
SIM_2020$ch_12 <- as.numeric(SIM_2020$ch_12)
SIM_2020$ch_13 <- as.numeric(SIM_2020$ch_13)
SIM_2020$ch_14 <- as.numeric(SIM_2020$ch_14)
SIM_2020$ch_15 <- as.numeric(SIM_2020$ch_15)
SIM_2020$ch_16 <- as.numeric(SIM_2020$ch_16)
SIM_2020$ch_17 <- as.numeric(SIM_2020$ch_17)
SIM_2020$ch_18 <- as.numeric(SIM_2020$ch_18)
SIM_2020$ch_20 <- as.numeric(SIM_2020$ch_20)
SIM_2020 <- SIM_2020 %>%
  mutate(Total = select(., ch_01:ch_20) %>% rowSums(na.rm = TRUE))

plot1 <- SIM_2020 %>%
  ggplot(aes(x = Total)) +
  geom_histogram() +
  labs(title="Mortality Information By Municipality")

plot1
######
SIH_2020[SIH_2020=="-"] <- "0"
SIH_2020$ch_01 <- as.numeric(SIH_2020$ch_01)
SIH_2020$ch_02 <- as.numeric(SIH_2020$ch_02)
SIH_2020$ch_03 <- as.numeric(SIH_2020$ch_03)
SIH_2020$ch_04 <- as.numeric(SIH_2020$ch_04)
SIH_2020$ch_05 <- as.numeric(SIH_2020$ch_05)
SIH_2020$ch_06 <- as.numeric(SIH_2020$ch_06)
SIH_2020$ch_07 <- as.numeric(SIH_2020$ch_07)
SIH_2020$ch_08 <- as.numeric(SIH_2020$ch_08)
SIH_2020$ch_09 <- as.numeric(SIH_2020$ch_09)
SIH_2020$ch_10 <- as.numeric(SIH_2020$ch_10)
SIH_2020$ch_11 <- as.numeric(SIH_2020$ch_11)
SIH_2020$ch_12 <- as.numeric(SIH_2020$ch_12)
SIH_2020$ch_13 <- as.numeric(SIH_2020$ch_13)
SIH_2020$ch_14 <- as.numeric(SIH_2020$ch_14)
SIH_2020$ch_15 <- as.numeric(SIH_2020$ch_15)
SIH_2020$ch_16 <- as.numeric(SIH_2020$ch_16)
SIH_2020$ch_17 <- as.numeric(SIH_2020$ch_17)
SIH_2020$ch_18 <- as.numeric(SIH_2020$ch_18)
SIH_2020$ch_20 <- as.numeric(SIH_2020$ch_20)
SIH_2020 <- SIH_2020 %>%
  mutate(Total = select(., ch_01:ch_02) %>% rowSums(na.rm = TRUE))

plot2 <- SIH_2020 %>% 
  ggplot(aes(x = Total)) +
  geom_histogram()+
  labs(title="Hospitalization Information By Municipality")
