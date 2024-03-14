
# Input Dataset -----------------------------------------------------------

hysteroscopy_input_rac_df <- rac_df %>%
  filter(rac_outcome == "Hysteroscopy")

hysteroscopy_input_tel_df <- tel_clinic_outcomes_df %>%
  filter(outcome == "tel_hyst_amb") %>%
  mutate(rac_outcome_prob = NA,
         rac_outcome = NA)

hysteroscopy_input_df <- rbind(hysteroscopy_input_tel_df, hysteroscopy_input_rac_df)


# Simulate Hysteroscopy Settings ------------------------------------------

hysteroscopy_df <- hysteroscopy_input_df %>%
  mutate(hysteroscopy_setting_prob = runif(n()),
         hysteroscopy_setting = case_when(outcome == "tel_hyst_amb" ~ "Ambulatory",
                                          hysteroscopy_setting_prob < hyst_el_ga ~ "Elective GA",
                                          TRUE ~ "Ambulatory"))


# Hysteroscopy Settings Aggregation ---------------------------------------

hysteroscopy_output_df <- hysteroscopy_df %>%
  group_by(Trial, Week, hysteroscopy_setting) %>%
  summarise(Total = n())
