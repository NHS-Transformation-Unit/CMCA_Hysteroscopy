
# Histogram ---------------------------------------------------------------

hyst_hist <- hysteroscopy_output_df %>%
  group_by(Trial) %>%
  summarise(Total = sum(Total))

hyst_hist_chart <- ggplot(data = hyst_hist, aes(x = Total))+
  geom_histogram(fill = "#407EC9", alpha = 0.5, color = "#000000", bins = 20) +
  labs(x = "Total Hysteroscopies in Year",
       y = "Number of Trials",
       title = "Distribution of Hysteroscopies in Year",
       sutitle = "Histogram of Hysteroscopies Required",
       caption = "Model Output") +
  theme_tu_white(hex_col = "#407EC9")

hyst_hist_chart

# Summary -----------------------------------------------------------------

hyst_hist_summary <- hyst_hist %>%
  group_by()%>%
  summarise("Median" = quantile(Total, 0.50),
            "LQ" = quantile(Total, 0.25),
            "UQ" = quantile(Total, 0.75))


# Histogram Settings ------------------------------------------------------

hyst_settings_hist <- hysteroscopy_output_df %>%
  group_by(Trial, hysteroscopy_setting) %>%
  summarise(Total = sum(Total))

hyst_settings_hist_chart <- ggplot(data = hyst_settings_hist, aes(x = Total))+
  geom_histogram(fill = "#407EC9", alpha = 0.5, color = "#000000", bins = 20) +
  facet_wrap(~hysteroscopy_setting, scales = "free_x") +
  labs(x = "Total Hysteroscopies in Year",
       y = "Number of Trials",
       title = "Distribution of Hysteroscopies in Year by Setting",
       sutitle = "Histogram of Hysteroscopies Required",
       caption = "Model Output") +
  theme_tu_white(hex_col = "#407EC9")

hyst_settings_hist_chart


# Summary of Hysteroscopy Settings ----------------------------------------

hyst_settings_hist_summary <- hyst_settings_hist %>%
  group_by(hysteroscopy_setting)%>%
  summarise("Median" = quantile(Total, 0.50),
            "LQ" = quantile(Total, 0.25),
            "UQ" = quantile(Total, 0.75))
