
# Input dataset -----------------------------------------------------------

tel_clinic_input_df <- scan_df %>%
  filter(dna_2 == 0) %>%
  select(Unique_ID, Trial, Trial_ID, Week, referral_date)

# Simulate telephone clinic DNAs ------------------------------------------

tel_clinic_df <- tel_clinic_input_df %>%
  mutate(dna_1_prob = runif(n()),
         dna_1 = case_when(dna_1_prob < tel_dna_1 ~ 1,
                           TRUE ~ 0),
         dna_2_prob = case_when(dna_1 == 1 ~ runif(n()),
                                TRUE ~ 1),
         dna_2 = case_when(dna_2_prob < tel_dna_2 ~ 1,
                           TRUE ~ 0)
  )
         

# Telephone Clinic Activity -----------------------------------------------

tel_clinic_output_total_1 <- tel_clinic_df %>%
  group_by(Trial, Week) %>%
  summarise(Total = n()) %>%
  mutate(`Group` = "Planned")

tel_clinic_output_total_2 <- tel_clinic_df %>%
  filter(dna_1 == 1) %>%
  group_by(Trial, Week) %>%
  summarise(Total = n()) %>%
  mutate(`Group` = "DNA")

tel_clinic_output_total <- rbind(tel_clinic_output_total_1, tel_clinic_output_total_2) %>%
  group_by(Trial, Week) %>%
  summarise(Total = sum(Total, na.rm = TRUE))


# Telephone Clinic Outcomes -----------------------------------------------

tel_clinic_outcomes_df <- tel_clinic_df %>%
  filter(dna_2 != 1) %>%
  mutate(outcome_prob = runif(n()),
         outcome = case_when(outcome_prob < tel_dis_tel ~ "Tel_Dis",
                             outcome_prob < sum(tel_dis_tel, tel_dis_f2f) ~ "F2F_Dis",
                             outcome_prob < sum(tel_dis_tel, tel_dis_f2f, tel_rac) ~ "RAC",
                             TRUE ~ "tel_hyst_amb")
  )


# Clinic Outcomes Aggregation ---------------------------------------------

tel_clinic_outcomes_total <- tel_clinic_outcomes_df %>%
  group_by(Trial, Week, outcome) %>%
  summarise(Total = n())
         