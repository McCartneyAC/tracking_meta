source("data_import.R") 

tracking %>% 
  mutate(N = as.numeric(gsub('\\D+','', `Number of Participants (N)`))) %>% 
  mutate(K =  as.numeric(gsub('\\D+','', `Number of Participant Groups (if applicable) (K)`))) %>% 
  mutate(D1 =  as.numeric(gsub('\\D+','', `Main Effect Size (D1)`))) %>% 
  select(N,K, D1) %>% 
  psych::describe(fast = TRUE)
