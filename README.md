<img src="images/logos/tu_rainbow.svg" alt="TU logo" width="100%" align="right"/>

<br/>

<img src="images/logos/TU_logo_large.png" alt="TU logo" width="200" align="right"/>

# Cheshire & Merseyside Cancer Alliance Hysteroscopy Pathway Modelling
This repository contains the codebase for the modelling of the proposed re-designed Hysteroscopy pathway. This model has been developed in R, details on the structure of the repository and how to amend and run the model are detailed below.

<br/>

## Using the Repository
The repository can be cloned to run the pathway model. Changing the inputs in the `config` folder will enable alternate scenarios of the pathway to be run.

<br/>

## Repository Structure

The structure of this repository is detailed below:

``` plaintext

├───data
├───images
    ├───logos
    └───pathway
└───src
    ├───config
        ├───model_inputs
        └───outputs
    ├───load
    ├───model
    ├───outputs
    ├───processing
    └───requirements

```

<br/>

### `data`
To contain any datasets received from the client to support the model build or underpinning assumptions.

### `images`
Images such as TU logos and branding to add to outputs are contained in the `logos` folder. The `pathway` folder hosts the **draw.io** outputs of the proposed pathway that has been modelled.

### `src`

All code is stored in src. This is subdivided into six modules:

1. `config`: Files for configuring the output such as the `theme.css` are stored in the `outputs` folder. The `model_inputs` folder contains the code for setting inputs for the model which can be changed here by the user.
2. `load`: Files for loading any datasets from the `data` folder are stored here.
3. `model`: Files for building and running the pathway model are stored here.
4. `outputs`: Files for creating the outputs of the model are stored here.
5. `processing`: Processing steps such as cleaning or feature creation on any data loaded into the model are stored here.
6. `requirements`: The requirements folder stores the `packages.R` file containing the list of packages required to run the model.

<br/>

## Contributors
This repository has been created and developed by:

-   [Andy Wilson](https://github.com/ASW-Analyst)
-   [Elliot Royle](https://github.com/elliotroyle)
