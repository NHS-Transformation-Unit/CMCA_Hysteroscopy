
# Input Dataset -----------------------------------------------------------

rac_input_df <- tel_clinic_outcomes_df %>%
  filter(outcome == "RAC")


# Simulate RAC Outcomes ------------------------------------------

rac_df <- rac_input_df %>%
  mutate(rac_outcome_prob = runif(n()),
         rac_outcome = case_when(rac_outcome_prob < rac_pipelle ~ "Pipelle",
                                 TRUE ~ "Hysteroscopy")
  )

# RAC Outcomes Aggregation ------------------------------------------------

rac_outcomes_total_df <- rac_df %>%
  group_by(Trial, Week, rac_outcome) %>%
  summarise(Total = n())
