library(dplyr)

sleep.data.cleaned <- sleep.data %>% 
  select(id, sex, age, race, ethnicity, starts_with("psqi"), 
         totalepworth, anxiety_clinical, 
         withdrawn_clinical, somatic_clinical, thought_clinical, 
         attention_clinical, aggressive_clinical, rule_clinical,
         intrusive_clinical, internalizing_clinical)