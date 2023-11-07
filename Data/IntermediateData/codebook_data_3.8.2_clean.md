Codebook created on 2023-11-07 at 2023-11-07 10:08:11.107053
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 3208 cases and 3 variables.

## Codebook

| name    | type    |    n | missing | unique | mean | median | mode | mode_value |   sd |    v | min | max | range |  skew | skew_2se |  kurt | kurt_2se |
|:--------|:--------|-----:|--------:|-------:|-----:|-------:|-----:|:-----------|-----:|-----:|----:|----:|------:|------:|---------:|------:|---------:|
| g       | factor  | 3208 |       0 |     22 |      |        |  580 | mTurk      |      | 0.93 |     |     |       |       |          |       |          |
| big5_03 | integer | 3208 |       0 |      7 | 5.77 |      6 |    6 |            | 1.22 |      |   1 |   7 |     6 | -1.31 |   -15.21 |  1.89 |    10.92 |
| big5_04 | integer | 3208 |       0 |      7 | 3.89 |      4 |    4 |            | 1.80 |      |   1 |   7 |     6 | -0.03 |    -0.29 | -1.12 |    -6.48 |

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
