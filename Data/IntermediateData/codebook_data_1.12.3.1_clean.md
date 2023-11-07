Codebook created on 2023-11-07 at 2023-11-07 10:07:54.524253
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 6344 cases and 7 variables.

## Codebook

| name            | type    |    n | missing | unique |  mean | median | mode | mode_value |   sd |    v | min | max | range | skew | skew_2se | kurt | kurt_2se |
|:----------------|:--------|-----:|--------:|-------:|------:|-------:|-----:|:-----------|-----:|-----:|----:|----:|------:|-----:|---------:|-----:|---------:|
| g               | factor  | 6344 |    0.00 |     37 |       |        | 1329 | pi         |      | 0.92 |     |     |       |      |          |      |          |
| iatexplicitart1 | integer | 6331 |    0.00 |      8 | -2.01 |     -2 |   -2 |            | 1.22 |      |  -3 |   3 |     6 | 1.46 |    23.68 | 2.00 |    16.26 |
| iatexplicitart2 | integer | 6315 |    0.00 |      8 | -1.86 |     -2 |   -2 |            | 1.20 |      |  -3 |   3 |     6 | 1.11 |    18.05 | 0.99 |     8.01 |
| iatexplicitart3 | integer | 6316 |    0.00 |      8 | -2.23 |     -3 |   -3 |            | 1.07 |      |  -3 |   3 |     6 | 1.62 |    26.36 | 2.72 |    22.07 |
| iatexplicitart4 | integer | 6318 |    0.00 |      8 | -2.03 |     -2 |   -2 |            | 1.11 |      |  -3 |   3 |     6 | 1.23 |    20.02 | 1.44 |    11.70 |
| iatexplicitart5 | integer | 6316 |    0.00 |      8 | -1.84 |     -2 |   -2 |            | 1.32 |      |  -3 |   3 |     6 | 1.35 |    21.95 | 1.68 |    13.64 |
| iatexplicitart6 | integer | 6305 |    0.01 |      8 | -1.85 |     -2 |   -2 |            | 1.38 |      |  -3 |   3 |     6 | 1.03 |    16.68 | 0.11 |     0.92 |

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
