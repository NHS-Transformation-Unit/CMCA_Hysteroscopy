
# Load Assumptions --------------------------------------------------------

source(paste0(here(), "/src/config/model_inputs/model_inputs.R"))
source(paste0(here(), "/src/config/model_inputs/assumptions_referral.R"))
source(paste0(here(), "/src/config/model_inputs/assumptions_scan.R"))
source(paste0(here(), "/src/config/model_inputs/assumptions_tel_clinic.R"))
source(paste0(here(), "/src/config/model_inputs/assumptions_rac.R"))
source(paste0(here(), "/src/config/model_inputs/assumptions_hyst.R"))


# Run Simulations ---------------------------------------------------------

source(paste0(here(), "/src/model/referrals_generation.R"))
source(paste0(here(), "/src/model/scan_sim.R"))
source(paste0(here(), "/src/model/tel_clinic_sim.R"))
source(paste0(here(), "/src/model/rac_sim.R"))
source(paste0(here(), "/src/model/hysteroscopy_sim.R"))
