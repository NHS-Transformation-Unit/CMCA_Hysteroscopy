## Running the Model
There are two methods to run the model and for viewing the model outputs. This document provides an overview of these.

### Knitting the `Model_Outputs.rmd` File
Firstly, **knitting** the `Model_Outputs.Rmd` file in the `src/outputs` folder will run the model and create an `html` output. The outputs are shown in summary for the median and interquartile ranges of all the model runs.

### Running scripts manually
The modelling scripts can be run in stages as individual files. Before running any scripts ensure that all required packages are installed and loaded into the library via the `requirements/packages.R` script. The model scripts are all contained in the `src/model` folder. To aid running the scripts there is a `model_run.R` file that will load all of the model assumptions from the `config` folder then run each of the model scripts in the correct order. If you want to run the model scripts individually then this needs to be done in the following order:

* Run each of the assumptions scripts and the `model_inputs.R` file within the `src/config/model_inputs` folder. This will ensure that all of the assumptions and modelling parameters are available within the environment.
* Next run the `referrals_generation.R` script. This will simulate the referrals in each model run.
* Now run the `scan_sim.R` script to simulate the scanning of patients.
* Next run the `tel_clinic_sim.R` script to simulate patient attendances at the Telephone Clinic.
* Following this, run the `rac_sim.R` script to simulate the outcomes of patients attending the Rapid Access Clinic.
* Finally, run the `hysteroscopy_sim.R` script to simulate the settings where patients will have their hysteroscopy undertaken.

Once this has been completed all of the modelling dataframes will be available in the environment for inspection and further analysis. To produce the outputs each of the output scripts can be ran in `src/outputs` or alternatively run the `outputs.R` script. This will run each of these in turn to create the relevant histograms and summary statistics.

### Model Schematic

<img src="../../images/pathway/model_order.drawio.svg" alt="Model Schematic"/>
