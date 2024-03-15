
# Histogram ---------------------------------------------------------------

rac_hist <- rac_outcomes_total_df %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total))

rac_hist_chart <- ggplot(data = rac_hist, aes(x = Total))+
  geom_histogram(fill = "#407EC9", alpha = 0.5, color = "#000000", bins = 20) +
  labs(x = "Total RAC Appointments",
       y = "Number of Trials",
       title = "Distribution of RAC Appointments in Year",
       sutitle = "Histogram of RAC Appointments Required",
       caption = "Model Output") +
  theme_tu_white(hex_col = "#407EC9")

rac_hist_chart

# Summary -----------------------------------------------------------------

rac_hist_summary <- rac_hist %>%
  group_by()%>%
  summarise("Median" = quantile(Total, 0.50),
            "LQ" = quantile(Total, 0.25),
            "UQ" = quantile(Total, 0.75))

# Histogram Outcomes ------------------------------------------------------

rac_outcomes_hist <- rac_outcomes_total_df %>%
  group_by(Trial, rac_outcome) %>%
  summarise(Total = sum(Total))

rac_outcomes_hist_chart <- ggplot(data = rac_outcomes_hist, aes(x = Total))+
  geom_histogram(fill = "#407EC9", alpha = 0.5, color = "#000000", bins = 20) +
  facet_wrap(~rac_outcome, scales = "free_x") +
  labs(x = "Total RAC Appointments",
       y = "Number of Trials",
       title = "Distribution of RAC Appointments in Year by Outcome",
       sutitle = "Histogram of Outcomes",
       caption = "Model Output") +
  theme_tu_white(hex_col = "#407EC9")

rac_outcomes_hist_chart

# Summary Outcomes --------------------------------------------------------

rac_outcomes_hist_summary <- rac_outcomes_hist %>%
  group_by(rac_outcome)%>%
  summarise("Median" = quantile(Total, 0.50),
            "LQ" = quantile(Total, 0.25),
            "UQ" = quantile(Total, 0.75))
