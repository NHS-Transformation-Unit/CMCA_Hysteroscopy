<img src="../../images/logos/TU_logo_large.png" alt="TU logo" width="200" align="right"/>

<br/>

# Model Assumptions Summary
***
The purpose of this document is to record each of the assumptions that underpin the model. All of these assumptions are defined and can be amended via the relevant `assumptions_` file within the `config` folder.

## Current Assumptions
The table below documents each of the model assumptions, provides a description of the assumption and describes how this assumption has been generated.

|Assumption Name| Description                              | Generation             |
|:--------------|:-----------------------------------------|:-----------------------|
|`trials`       |The number of trials that the model will simulate. | To be set by the user. |
|`ref_mean`     |The average number of referrals onto the pathway each week to sample from. | Generated from data provided by client for weekly referral numbers from January - December 2023.|
|`ref_sd`       |The standard deviation of referrals onto the pathway each week to sample from. | Generated from data provided by client for weekly referral numbers from January - December 2023.|
|`ref_scan`     |The proportion of referrals that have already had a scan completed.|**To be confirmed **|
|`scan_dna_1`   |The proportion of scans where the patient DNAs their first attendance |Generated from data provided by client on DNA rates - **To be confirmed this is applicable to scans**|
|`scan_dna_2`   |The proportion of re-booked scans where the patient DNA's the second attendance|**To be confirmed**|
|`tel_dis_tel`  |The proportion of attendances at the telephone clinic that are discharged via the telephone appointment | **To be confirmed**|
|`tel_dis_f2f`  |The proportion of attendances at the telephone clinic that are booked onto a Face to Face Rapid Access Clinic but are subsequently discharged|**To be confirmed**|
|`tel_rac`| The proportion of attendances at the telephone clinic that are booked onto a Rapid Access Clinic|**To be confirmed**|
|`tel_hyst_amb`|The proportion of attendances at the telephone clinic that are booked for an ambulatory hysteroscopy|**To be confirmed**|
|`tel_dna_1`|The proportion of attendances to the telephone clinic where the patient DNAs their first attendance|Generated from data provided by client on DNA rates|
|`tel_dna_2`|The proportion of attendances to the telephone clinic where the patient DNAs their second attendance|**To be confirmed**|
|`rac_pipelle`|The proportion of attendances to the Rapid Access Clinic where the patient receives a pipelle|**To be confirmed**|
|`rac_hyst`|The proportion of attendances to the Rapid Access Clinic where the patient is listed for a hysteroscopy|**To be confirmed**|
|`hyst_el_ga`|The proportion of patients listed for a hysteroscopy that require a GA procedure|**To be confirmed**|
|`hyst_amb`|The proportion of patients listed for a hysteroscopy where this will be undertaken in an ambulatory setting|**To be confirmed**|
