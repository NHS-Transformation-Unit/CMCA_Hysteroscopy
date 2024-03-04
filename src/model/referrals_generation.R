weeks <- seq(start_date, end_date, by = "week")

trials_referral_list <- list()

for (j in 1:trials){

referral_list <- list()

for (i in seq_along(weeks)) {

  referrals <- round(rnorm(1, mean = 115, sd = 18))
  week_referrals <- data.frame(Week = rep(weeks[i], referrals), Referral_ID = seq_len(referrals)) %>%
    mutate(days_add_prob = runif(n()),
           days_add = case_when(days_add_prob < ref_day_week_probs_cum[1] ~ 0,
                                days_add_prob < ref_day_week_probs_cum[2] ~ 1,
                                days_add_prob < ref_day_week_probs_cum[3] ~ 2,
                                days_add_prob < ref_day_week_probs_cum[4] ~ 3,
                                days_add_prob < ref_day_week_probs_cum[5] ~ 4,
                                days_add_prob < ref_day_week_probs_cum[6] ~ 5,
                                TRUE ~ 7),
           referral_date = Week + days(days_add)
    )
  
  referral_list[[i]] <- week_referrals
  
}


referrals_df <- do.call(rbind, referral_list) %>%
  mutate("Trial_ID" = row_number()) %>%
  mutate("Trial" = j)


row.names(referrals_df) <- NULL

trials_referral_list[[j]] <- referrals_df

}

trial_referrals_df <- do.call(rbind, trials_referral_list) %>%
  mutate("Unique_ID" = paste0(Trial, "_", Trial_ID))
