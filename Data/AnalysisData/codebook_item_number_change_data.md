Codebook created on 2024-08-23 at 2024-08-23 15:34:13.796718
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 12 cases and 6 variables.

## Codebook

| name              | type      |   n | missing | unique | mean | median | mode | mode_value                                                                                                                                          |   sd |    v | min | max | range | skew | skew_2se |  kurt | kurt_2se |
|:------------------|:----------|----:|--------:|-------:|-----:|-------:|-----:|:----------------------------------------------------------------------------------------------------------------------------------------------------|-----:|-----:|----:|----:|------:|-----:|---------:|------:|---------:|
| many_labs_version | numeric   |  12 |    0.00 |      4 | 2.25 |      2 |    2 |                                                                                                                                                     | 1.22 |      |   1 |   5 |     4 | 0.68 |     0.53 | -0.39 |    -0.16 |
| rep_org           | factor    |  12 |    0.00 |      2 |      |        |   12 | Replication                                                                                                                                         |      | 0.00 |     |     |       |      |          |       |          |
| title             | character |  12 |    0.00 |     13 |      |        |    1 | . Issue involvement can increase or decrease persuasion by enhancing message­relevant cognitive responses (Cacioppo, Petty, & Morris, 1983, Study 1) |      | 0.92 |     |     |       |      |          |       |          |
| mod_5_REV         | logical   |  12 |    0.00 |      2 |      |        |   12 | TRUE                                                                                                                                                |      | 0.00 |     |     |       |      |          |       |          |
| context           | character |   8 |    0.33 |      9 |      |        |    4 |                                                                                                                                                     |      | 0.88 |     |     |       |      |          |       |          |
| direction         | factor    |   8 |    0.33 |      3 |      |        |    7 | decrease                                                                                                                                            |      | 0.22 |     |     |       |      |          |       |          |

### Legend

- **Name**: Variable name
- **type**: Data type of the variable
- **missing**: Proportion of missing values for this variable
- **unique**: Number of unique values
- **mean**: Mean value
- **median**: Median value
- **mode**: Most common value (for categorical variables, this shows the
  frequency of the most common category)
- **mode_value**: For categorical variables, the value of the most
  common category
- **sd**: Standard deviation (measure of dispersion for numerical
  variables
- **v**: Agresti’s V (measure of dispersion for categorical variables)
- **min**: Minimum value
- **max**: Maximum value
- **range**: Range between minimum and maximum value
- **skew**: Skewness of the variable
- **skew_2se**: Skewness of the variable divided by 2\*SE of the
  skewness. If this is greater than abs(1), skewness is significant
- **kurt**: Kurtosis (peakedness) of the variable
- **kurt_2se**: Kurtosis of the variable divided by 2\*SE of the
  kurtosis. If this is greater than abs(1), kurtosis is significant.

This codebook was generated using the [Workflow for Open Reproducible
Code in Science (WORCS)](https://osf.io/zcvbs/)
