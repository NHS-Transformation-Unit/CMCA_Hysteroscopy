
# DNA Rates ---------------------------------------------------------------

tel_dna_1 <- 0.0827
tel_dna_2 <- 0.50

# Clinic Outcomes ---------------------------------------------------------

tel_dis_tel <- 0.05
tel_dis_f2f <- 0.35
tel_rac <- 0.446
tel_hyst_amb <- 1 - sum(tel_dis_tel, tel_dis_f2f, tel_rac)
