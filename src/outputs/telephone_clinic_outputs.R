
# Histogram ---------------------------------------------------------------

tel_clinic_hist <- tel_clinic_output_total %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total))

tel_clinic_hist_chart <- ggplot(data = tel_clinic_hist, aes(x = Total))+
  geom_histogram(fill = "#407EC9", alpha = 0.5, color = "#000000", bins = 20) +
  labs(x = "Total Clinic Appointments",
       y = "Number of Trials",
       title = "Distribution of Clinic Appointments in Year",
       sutitle = "Histogram of Appointments Required",
       caption = "Model Output") +
  theme_tu_white(hex_col = "#407EC9")

tel_clinic_hist_chart


# Summary -----------------------------------------------------------------

tel_clinic_summary <- tel_clinic_hist %>%
  group_by()%>%
  summarise("Median" = quantile(Total, 0.50),
            "LQ" = quantile(Total, 0.25),
            "UQ" = quantile(Total, 0.75))

# Outcomes Histogram ------------------------------------------------------

tel_clinic_outcome_hist <- tel_clinic_outcomes_total %>%
  group_by(Trial, outcome) %>%
  summarise(Total = sum(Total)) %>%
  mutate(outcome_clean = case_when(outcome == "F2F_Dis" ~ "Face to Face Discharge",
                                   outcome == "RAC" ~ "Rapid Access Clinic",
                                   outcome == "Tel_Dis" ~ "Telephone Discharge",
                                   outcome == "tel_hyst_amb" ~ "Ambulatory Hysteroscopy",
                                   TRUE ~ NA))

tel_clinic_outcome_hist_chart <- ggplot(data = tel_clinic_outcome_hist, aes(x = Total))+
  geom_histogram(fill = "#407EC9", alpha = 0.5, color = "#000000", bins = 20) +
  facet_wrap(~outcome_clean, scales = "free_x") +
  labs(x = "Total Clinic Appointments",
       y = "Number of Trials",
       title = "Distribution of Clinic Appointments in Year",
       sutitle = "Histogram of Appointments Required",
       caption = "Model Output") +
  theme_tu_white(hex_col = "#407EC9")

tel_clinic_outcome_hist_chart


# Summary Outcomes --------------------------------------------------------

tel_clinic_outcome_summary <- tel_clinic_outcome_hist %>%
  group_by(outcome_clean)%>%
  summarise("Median" = quantile(Total, 0.50),
            "LQ" = quantile(Total, 0.25),
            "UQ" = quantile(Total, 0.75))
