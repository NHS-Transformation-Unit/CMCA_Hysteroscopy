<img src="../../images/logos/TU_logo_large.png" alt="TU logo" width="200" align="right"/>

<br/>

# Model Specification
***

## Summary Description
This specification provides an overview of the modelling requirements for a demand and capacity model of the Hysteroscopy pathway for Cheshire & Mersey Cancer Alliance. The model is required to demonstrate how patients will flow across the _proposed pathway_ and the resources required at each stage to deliver this. Within this specification is a description of:

* __Model Structure__: How the model is structured and the modelling objects that will be created.
* __Model Parameters__: The parameters required for the model to function such as modelling time period, capacity requirements and pathway timeline constrains.
* __Model Outputs__: Requirements for the output metrics of the model and the granularity required.
* __Roles and Responsibilities__: The responsibilities for scoping, building and assuring the model.
* __Milestones__: The milestones and completion dates for delivering the model within timescales.

## Model Structure
The structure of the model is defined as:




## Model Parameters
The parameters for the model will principally be defined via the data received from the client. Where the these parameters can't be defined via these datasets there will be agreement with key stakeholders as to the values any input assumptions need to take.

#### Modelling Period
The model will run for a period of one year with a provisional run date of 1st July 2024.

#### Model Inputs
The model inputs are contained within the `inputs.R` file within the `config/model_inputs` folder.

## Model Outputs
The model outputs will be displayed in a `outputs.html` file created via a `model_outputs.rmd` file. This will contain:

* Activity numbers at each stage of the pathway
* Capacity required at each stage (i.e. number of clinic slots/number of clinics/hysteroscopy sessions)
* Distribution of waiting times on the pathway for patients at each stage.

## Roles & Responsibilities
The model objects will be designed and created by [Andy Wilson](https://github.com/ASW-Analyst) with development from [Elliot Royle](https://github.com/elliotroyle). Andy Wilson will be responsible for assuring the outputs of the model prior to review by the client.

## Milestones
