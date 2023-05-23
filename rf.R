#setting up data for RF

kmer5_df <- rbind(kmer5_x_testing, kmer5_x_training)

rf_df <- kmer5_df %>% 
  cbind(lepidoptera_lib) %>% 
  dplyr::select(-c(ID, DNA, Species))

unique(lepidoptera_lib$Family)

#testing for noc family first
noc <- rf_df %>% 
  filter(Family == "Noctuidae") %>% 
  mutate(id = row_number()) %>% 
  mutate(Genus = as.factor(Genus)) %>% 
  select(-Family) %>% 
  select(Genus, everything())

#split train and test
noc_train <- noc %>% 
  sample_frac(0.7)
noc_test <- anti_join(noc, noc_train, by = "id") %>% 
  dplyr::select(-id) %>% 
  as.data.frame()
noc_train <- noc_train %>% 
  dplyr::select(-id) %>% 
  as.data.frame()

#fit model
noc_rf <- randomForest(Genus ~. , data = noc_train)

#prediction
pred_noc <- predict(noc_rf, noc_test)

#performance
noc_rf_evals <- mean(as.character(noc_test$Genus) == pred_noc)
noc_rf_evals


#setting up data for other families
geo <- rf_df %>% 
  filter(Family == "Geometridae") %>% 
  mutate(id = row_number()) %>% 
  mutate(Genus = as.factor(Genus)) %>% 
  select(-Family) %>% 
  select(Genus, everything())

gel <- rf_df %>% 
  filter(Family == "Gelechiidae") %>% 
  mutate(id = row_number()) %>% 
  mutate(Genus = as.factor(Genus)) %>% 
  select(-Family) %>% 
  select(Genus, everything())

sph <- rf_df %>% 
  filter(Family == "Sphingidae") %>% 
  mutate(id = row_number()) %>% 
  mutate(Genus = as.factor(Genus)) %>% 
  select(-Family) %>% 
  select(Genus, everything())

tor <- rf_df %>% 
  filter(Family == "Tortricidae") %>% 
  mutate(id = row_number()) %>% 
  mutate(Genus = as.factor(Genus)) %>% 
  select(-Family) %>% 
  select(Genus, everything())

cra <- rf_df %>% 
  filter(Family == "Crambidae") %>% 
  mutate(id = row_number()) %>% 
  mutate(Genus = as.factor(Genus)) %>% 
  select(-Family) %>% 
  select(Genus, everything())

ere <- rf_df %>% 
  filter(Family == "Erebidae") %>% 
  mutate(id = row_number()) %>% 
  mutate(Genus = as.factor(Genus)) %>% 
  select(-Family) %>% 
  select(Genus, everything())

oec <- rf_df %>% 
  filter(Family == "Oecophoridae") %>% 
  mutate(id = row_number()) %>% 
  mutate(Genus = as.factor(Genus)) %>% 
  select(-Family) %>% 
  select(Genus, everything())

hes <- rf_df %>% 
  filter(Family == "Hesperiidae") %>% 
  mutate(id = row_number()) %>% 
  mutate(Genus = as.factor(Genus)) %>% 
  select(-Family) %>% 
  select(Genus, everything())

pyr <- rf_df %>% 
  filter(Family == "Pyralidae") %>% 
  mutate(id = row_number()) %>% 
  mutate(Genus = as.factor(Genus)) %>% 
  select(-Family) %>% 
  select(Genus, everything())

nym <- rf_df %>% 
  filter(Family == "Nymphalidae") %>% 
  mutate(id = row_number()) %>% 
  mutate(Genus = as.factor(Genus)) %>% 
  select(-Family) %>% 
  select(Genus, everything())

sat <- rf_df %>% 
  filter(Family == "Saturniidae") %>% 
  mutate(id = row_number()) %>% 
  mutate(Genus = as.factor(Genus)) %>% 
  select(-Family) %>% 
  select(Genus, everything())

#splitting test and train for all other families
geo_train <- geo %>% 
  sample_frac(0.7)
geo_test <- anti_join(geo, geo_train, by = "id") %>% 
  dplyr::select(-id) %>% 
  as.data.frame()
geo_train <- geo_train %>% 
  dplyr::select(-id) %>% 
  as.data.frame()

gel_train <- gel %>% 
  sample_frac(0.7)
gel_test <- anti_join(gel, gel_train, by = "id") %>% 
  dplyr::select(-id) %>% 
  as.data.frame()
gel_train <- gel_train %>% 
  dplyr::select(-id) %>% 
  as.data.frame()

sph_train <- sph %>% 
  sample_frac(0.7)
sph_test <- anti_join(sph, sph_train, by = "id") %>% 
  dplyr::select(-id) %>% 
  as.data.frame()
sph_train <- sph_train %>% 
  dplyr::select(-id) %>% 
  as.data.frame()

tor_train <- tor %>% 
  sample_frac(0.7)
tor_test <- anti_join(tor, tor_train, by = "id") %>% 
  dplyr::select(-id) %>% 
  as.data.frame()
tor_train <- tor_train %>% 
  dplyr::select(-id) %>% 
  as.data.frame()

cra_train <- cra %>% 
  sample_frac(0.7)
cra_test <- anti_join(cra, cra_train, by = "id") %>% 
  dplyr::select(-id) %>% 
  as.data.frame()
cra_train <- cra_train %>% 
  dplyr::select(-id) %>% 
  as.data.frame()

ere_train <- ere %>% 
  sample_frac(0.7)
ere_test <- anti_join(ere, ere_train, by = "id") %>% 
  dplyr::select(-id) %>% 
  as.data.frame()
ere_train <- ere_train %>% 
  dplyr::select(-id) %>% 
  as.data.frame()

oec_train <- oec %>% 
  sample_frac(0.7)
oec_test <- anti_join(oec, oec_train, by = "id") %>% 
  dplyr::select(-id) %>% 
  as.data.frame()
oec_train <- oec_train %>% 
  dplyr::select(-id) %>% 
  as.data.frame()

hes_train <- hes %>% 
  sample_frac(0.7)
hes_test <- anti_join(hes, hes_train, by = "id") %>% 
  dplyr::select(-id) %>% 
  as.data.frame()
hes_train <- hes_train %>% 
  dplyr::select(-id) %>% 
  as.data.frame()

pyr_train <- pyr %>% 
  sample_frac(0.7)
pyr_test <- anti_join(pyr, pyr_train, by = "id") %>% 
  dplyr::select(-id) %>% 
  as.data.frame()
pyr_train <- pyr_train %>% 
  dplyr::select(-id) %>% 
  as.data.frame()

sat_train <- sat %>% 
  sample_frac(0.7)
sat_test <- anti_join(sat, sat_train, by = "id") %>% 
  dplyr::select(-id) %>% 
  as.data.frame()
sat_train <- sat_train %>% 
  dplyr::select(-id) %>% 
  as.data.frame()

nym_train <- nym %>% 
  sample_frac(0.7)
nym_test <- anti_join(nym, nym_train, by = "id") %>% 
  dplyr::select(-id) %>% 
  as.data.frame()
nym_train <- nym_train %>% 
  dplyr::select(-id) %>% 
  as.data.frame()

