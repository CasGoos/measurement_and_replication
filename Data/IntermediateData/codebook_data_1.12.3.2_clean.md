Codebook created on 2023-11-06 at 2023-11-06 14:59:59.490912
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 6344 cases and 7 variables.

## Codebook

| name             | type    |    n | missing | unique |  mean | median | mode | mode_value |   sd |    v | min | max | range | skew | skew_2se |  kurt | kurt_2se |
|:-----------------|:--------|-----:|--------:|-------:|------:|-------:|-----:|:-----------|-----:|-----:|----:|----:|------:|-----:|---------:|------:|---------:|
| g                | factor  | 6344 |    0.00 |     37 |       |        | 1329 | pi         |      | 0.92 |     |     |       |      |          |       |          |
| iatexplicitmath1 | integer | 6332 |    0.00 |      8 | -0.70 |     -1 |   -1 |            | 1.92 |      |  -3 |   3 |     6 | 0.46 |     7.46 | -1.05 |    -8.55 |
| iatexplicitmath2 | integer | 6309 |    0.01 |      8 | -0.35 |      0 |    0 |            | 1.73 |      |  -3 |   3 |     6 | 0.24 |     3.91 | -0.87 |    -7.08 |
| iatexplicitmath3 | integer | 6309 |    0.01 |      8 | -0.42 |      0 |    0 |            | 1.81 |      |  -3 |   3 |     6 | 0.26 |     4.21 | -0.84 |    -6.82 |
| iatexplicitmath4 | integer | 6316 |    0.00 |      8 | -0.33 |      0 |    0 |            | 1.69 |      |  -3 |   3 |     6 | 0.24 |     3.89 | -0.68 |    -5.53 |
| iatexplicitmath5 | integer | 6315 |    0.00 |      8 | -0.21 |     -1 |   -1 |            | 2.01 |      |  -3 |   3 |     6 | 0.21 |     3.42 | -1.26 |   -10.24 |
| iatexplicitmath6 | integer | 6303 |    0.01 |      8 | -0.24 |      0 |    0 |            | 1.90 |      |  -3 |   3 |     6 | 0.05 |     0.88 | -1.16 |    -9.42 |

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
