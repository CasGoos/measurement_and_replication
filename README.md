# Readme <a href='https://osf.io/zcvbs/'><img src='SupplementaryMaterials/worcs_icon.png' align="right" height="139" /></a>

<!-- Please add a brief introduction to explain what the project is about    -->

## Where do I start?

You can load this project in RStudio by opening the file called 'Measurement_and_Replication.Rproj'.

The prepare_data.r script shows how the local data was loaded into this R project. NOTE: this script will not run properly, as this script is merely used to properly load in the local data. All raw and unaltered data is still present within the project, and is merely loaded into the project via this file. No other alterations are made to the data yet, from the point of extraction.

The manuscript.rmd file contains all of the data processing and analysis code, as well as the text and calls for results used to generate the final manuscript. Thus, for reproducing the main article, only this file needs to be run.

The appendices (found in the Script/AppendixScripts folder). Can additionally be checked by first loading in the data through the first code chunk in the manuscript.rmd file, and then be ran and verified individually if needed.

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
Output/                     | digital copy of the final manuscript   | Read only
Scripts/Manuscript/AppendixScripts/    | this folder contains the Rmarkdown files that form the source code for the appendices | Human Editable
Scripts/Manuscript/r-references.bib | BibTex references for R packages used | Human editable
Scripts/Manuscript/references.bib | BibTex references for manuscript | Human editable
Scripts/Manuscript/manuscript.rmd | Source code for paper (including data processing and analysis code)   | Human editable
Scripts/prepare_data.R   | Script to load in raw data       | Human editable
Scripts/source_script.R     | Script with self-made functions for the manuscript | Human editable
SupplementaryMaterials/     | misc. materials                  | Read only
SupplementaryMaterials/Pre-registration.pdf     | The manuscript's original pre-registration | Read only 
SupplementaryMaterials/manuscript_v.master_thesis.Rmd     | depricated master thesis version of the manuscript (Note: does not run in this folder, move to manuscript folder if desired to run)  | Human editable 
SupplementaryMaterials/reproducible_data_retrieval_information.Rmd     | Description of the file paths and names of the Many Labs protocols and datasets used as the sample | Human editable 
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

Please refer to the vignette on [reproducing a WORCS project]() for step by step advice.
<!-- If your project deviates from the steps outlined in the vignette on     -->
<!-- reproducing a WORCS project, please provide your own advice for         -->
<!-- readers here.                                                           -->

