
# Histogram ---------------------------------------------------------------

scan_hist <- scan_output_total %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total))

scan_hist_chart <- ggplot(data = scan_hist, aes(x = Total))+
  geom_histogram(fill = "#407EC9", alpha = 0.5, color = "#000000", bins = 20) +
  labs(x = "Total Scans",
       y = "Number of Trials",
       title = "Distribution of Scans in Year",
       subtitle = "Histogram of Scans Required",
       caption = "Model Output") +
  theme_tu_white(hex_col = "#407EC9")

scan_hist_chart


# Summary -----------------------------------------------------------------

scan_summary <- scan_hist %>%
  group_by()%>%
  summarise("Median" = quantile(Total, 0.50),
            "LQ" = quantile(Total, 0.25),
            "UQ" = quantile(Total, 0.75))
