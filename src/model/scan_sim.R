
# Input Dataset -----------------------------------------------------------

scan_input_df <- trial_referrals_df %>%
  select(Unique_ID, Trial, Trial_ID, Week, referral_date)


# Scan Requirements -------------------------------------------------------

scan_df <- scan_input_df %>%
  mutate(req_scan_prob = runif(n()),
         req_scan = case_when(req_scan_prob < ref_scan ~ 0,
                              TRUE ~ 1),
         dna_1_prob= case_when(req_scan == 1 ~ runif(n()),
                               TRUE ~ 1),
         dna_1 = case_when(dna_1_prob < scan_dna_1 ~ 1,
                           TRUE ~ 0),
         dna_2_prob = case_when(dna_1 == 1 ~ runif(n()),
                                TRUE ~ 1),
         dna_2 = case_when(dna_2_prob < scan_dna_2 ~ 1,
                           TRUE ~ 0)
  )

# Scan Outputs ------------------------------------------------------------

scan_output_req <- scan_df %>%
  filter(req_scan == 1) %>%
  group_by(Trial, Week) %>%
  summarise(Total = n())

scan_output_total_1 <- scan_df %>%
  filter(req_scan == 1) %>%
  group_by(Trial, Week) %>%
  summarise(Total = n()) %>%
  mutate(`Group` = "Planned")

scan_output_total_2 <- scan_df %>%
  filter(dna_1 == 1) %>%
  group_by(Trial, Week) %>%
  summarise(Total = n()) %>%
  mutate(`Group` = "DNA")

scan_output_total <- rbind(scan_output_total_1, scan_output_total_2) %>%
  group_by(Trial, Week) %>%
  summarise(Total = sum(Total, na.rm = TRUE))
