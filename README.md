# Readme <a href='https://osf.io/zcvbs/'><img src='SupplementaryMaterials/worcs_icon.png' align="right" height="139" /></a>

<!-- Please add a brief introduction to explain what the project is about    -->

## Where do I start?

You can load this project in RStudio by opening the file called 'Measurement_and_Replication.Rproj'.

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
Data/LocalInputData/        | raw data on local system         | Read only
Data/DataPackageProtocol.Rmd| full instructions on content and use of data | Human editable
Output/                     | digital copy of the final manuscript   | Read only
Scripts/Manuscript/r-references.bib | BibTex references for R packages used | Human editable
Scripts/Manuscript/references.bib | BibTex references for manuscript | Human editable
Scripts/Manuscript/manuscript.rmd | Source code for paper (including data processing and analysis code)   | Human editable
Scripts/prepare_data.R   | Script to load in raw data       | Human editable
Scripts/source_script.R     | Script with self-made functions for the manuscript | Human editable
SupplementaryMaterials/     | misc. materials                  | Read only    
SupplementaryMaterials/CodingProtocols/ | the coding protocols used to code the articles & Studies | Read only


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


## Access to data

Some of the data used in this project are not publically available.
To request access to the original data, [open a GitHub issue](https://docs.github.com/en/free-pro-team@latest/github/managing-your-work-on-github/creating-an-issue).

<!--Clarify here how users should contact you to gain access to the data, or to submit syntax for evaluation on the original data.-->
