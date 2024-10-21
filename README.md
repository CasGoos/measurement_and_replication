# Readme <a href='https://osf.io/zcvbs/'><img src='SupplementaryMaterials/worcs_icon.png' align="right" height="139" /></a>

<!-- Please add a brief introduction to explain what the project is about    -->

## Where do I start?

You can load this project in RStudio by opening the file called 'Measurement_and_Replication.Rproj'.

The prepare_data.r script shows how the local data was originally loaded into this R project. NOTE: this script only works when having access to the data as they were stored on the first author's local system, therefore running this script will not have an effect on loading the data on other systems. All raw and unaltered data is still present within the project, no other alterations were made after the data was retrieved ande before being run through the prepare_data script. The prepare_data script is merely there to show how the original data was loaded into the project.

The manuscript.rmd file (found in the Scripts/Manuscript folder) contains all of the data processing and analysis code, as well as the text and calls for results used to generate the final manuscript. Thus, for reproducing the main article, only this file needs to be run.

The appendices (found in the SupplementaryMaterials folder), will only run properly after first loading in the data through the first code chunk in the manuscript.rmd file. The files can then each be ran and verified individually.

## Project structure

<!--  You can add rows to this table, using "|" to separate columns.         -->
File                        | Description                      | Usage         
--------------------------- | -------------------------------- | --------------
README.md                   | Description of project           | Human editable
WORCSPersonalTemplate_a.Rproj | Project file                     | Loads project 
LICENSE                     | User permissions                 | Read only     
.worcs                      | WORCS metadata YAML              | Read only     
renv.lock                   | Reproducible R environment       | Read only     
renv/                       | storage of info for renv.lock    | Read only     
Data/AnalysisData/          | fully cleaned data, with codebooks  | Read only
Data/InputData/             | pseudo-anonymized raw data       | Read only
Data/IntermediateData/      | any semi-cleaned data            | Read only
Data/LocalInputData/        | raw data on local system (empty on github)  | Read only
Data/Data_package_description.Rmd| full description of content and use of data | Human editable
Scripts/Manuscript/r-references.bib | BibTex references for R packages used | Human editable
Scripts/Manuscript/references.bib | BibTex references for manuscript | Human editable
Scripts/Manuscript/manuscript.rmd | Source code for paper (including data processing and analysis code)   | Human editable
Scripts/Manuscript/manuscript.pdf | Main exported version of the paper for reading  | Read Only
Scripts/prepare_data.R   | Script to load in raw data       | Human editable
Scripts/source_script.R     | Script with self-made functions for the manuscript | Human editable
SupplementaryMaterials/     | misc. materials                  | Read only
SupplementaryMaterials/Pre-registration.pdf     | The manuscript's original pre-registration | Read only 
SupplementaryMaterials/Pre-registration_deviation_table.pdf     | List of deviations from the pre-registration in the manuscript | Read only 
SupplementaryMaterials/manuscript_v.master_thesis.Rmd     | deprecated master thesis version of the manuscript (Note: does not run in this folder, move to manuscript folder if desired to run)  | Human editable 
SupplementaryMaterials/reproducible_data_retrieval_information.Rmd     | Description of the file paths and names of the Many Labs protocols and datasets used as the sample | Human editable 
SupplementaryMaterials/AppendixScripts/    | this folder contains the Rmarkdown files that form the source code for the appendices | Human Editable
SupplementaryMaterials/CodingProtocols/ | the coding protocols used to code the articles & studies | Read only
SupplementaryMaterials/CodingProtocols/coding_protocol_information.Rmd | additional clarifying information on the coding protocol and its modifications | Read only


<!--  You can consider adding the following to this file:                    -->
<!--  * A citation reference for your project                                -->
<!--  * Contact information for questions/comments                           -->
<!--  * How people can offer to contribute to the project                    -->
<!--  * A contributor code of conduct, https://www.contributor-covenant.org/ -->

# Reproducibility

This project uses the Workflow for Open Reproducible Code in Science (WORCS) to
ensure transparency and reproducibility. The workflow is designed to meet the
principles of Open Science throughout a research project. 

To learn how WORCS helps researchers meet the TOP-guidelines and FAIR principles,
read the preprint at https://osf.io/zcvbs/

## WORCS: Advice for authors

* To get started with `worcs`, see the [setup vignette](https://cjvanlissa.github.io/worcs/articles/setup.html)
* For detailed information about the steps of the WORCS workflow, see the [workflow vignette](https://cjvanlissa.github.io/worcs/articles/workflow.html)

## WORCS: Advice for readers

If you wish to reproduce this manuscript, follow [this guide](https://cjvanlissa.github.io/worcs/articles/reproduce.html) 
until you reach the Open the project entry point section. At which point you 
should open [this manuscript file](Scripts/Manuscript/manuscript.Rmd) and click 
on the knit button on top of the file to rerun the analyses and generate a .pdf 
file with all the results and text combined.
<!-- If your project deviates from the steps outlined in the vignette on     -->
<!-- reproducing a WORCS project, please provide your own advice for         -->
<!-- readers here.                                                           -->

