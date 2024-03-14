
# Histogram ---------------------------------------------------------------

referrals_hist <- trial_referrals_df %>%
  group_by(Trial) %>%
  summarise("Total" = n())

referrals_hist_chart <- ggplot(data = referrals_hist, aes(x = Total))+
  geom_histogram(fill = "#407EC9", alpha = 0.5, color = "#000000", bins = 20) +
  labs(x = "Total Referrals",
       y = "Number of Trials",
       title = "Distribution of Total Referrals in Year",
       sutitle = "Histogram of Referrals",
       caption = "Model Output") +
  theme_tu_white(hex_col = "#407EC9")
  

referrals_hist_chart


# Summaries ---------------------------------------------------------------

referrals_summary <- referrals_hist %>%
  group_by()%>%
  summarise("Median" = quantile(Total, 0.50),
            "LQ" = quantile(Total, 0.25),
            "UQ" = quantile(Total, 0.75))
