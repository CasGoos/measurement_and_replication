Codebook created on 2024-07-26 at 2024-07-26 14:28:44.190756
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 19 cases and 9 variables.

## Codebook

| name            | type    |   n | missing | unique |  mean | median |  mode | mode_value |    sd |    v |   min |   max | range |  skew | skew_2se |  kurt | kurt_2se |
|:----------------|:--------|----:|--------:|-------:|------:|-------:|------:|:-----------|------:|-----:|------:|------:|------:|------:|---------:|------:|---------:|
| alpha           | numeric |  19 |    0.00 |     19 |  0.73 |   0.81 |  0.81 |            |  0.18 |      |  0.20 |  0.95 |  0.75 | -1.13 |    -1.08 |  0.92 |     0.45 |
| omega           | numeric |  16 |    0.16 |     17 |  0.73 |   0.78 |  0.78 |            |  0.19 |      |  0.20 |  0.95 |  0.75 | -1.20 |    -1.06 |  1.04 |     0.48 |
| ASE             | numeric |  18 |    0.05 |     19 |  0.07 |   0.06 |  0.06 |            |  0.03 |      |  0.01 |  0.14 |  0.13 |  0.51 |     0.47 | -0.66 |    -0.32 |
| tau             | numeric |  19 |    0.00 |     12 |  0.03 |   0.02 |  0.02 |            |  0.03 |      |  0.00 |  0.11 |  0.11 |  1.03 |     0.98 | -0.07 |    -0.03 |
| QEp             | numeric |  19 |    0.00 |     19 |  0.53 |   0.55 |  0.55 |            |  0.40 |      |  0.00 |  1.00 |  1.00 | -0.12 |    -0.11 | -1.73 |    -0.86 |
| pi.lb           | numeric |  19 |    0.00 |     19 |  0.67 |   0.78 |  0.78 |            |  0.25 |      | -0.01 |  0.94 |  0.96 | -1.12 |    -1.06 |  0.65 |     0.32 |
| pi.ub           | numeric |  19 |    0.00 |     19 |  0.81 |   0.85 |  0.85 |            |  0.13 |      |  0.43 |  0.96 |  0.53 | -1.25 |    -1.19 |  1.29 |     0.63 |
| reporting_index | numeric |  19 |    0.00 |     17 | 43.00 |  42.00 | 42.00 |            | 21.68 |      | 10.00 | 76.00 | 66.00 | -0.11 |    -0.10 | -1.42 |    -0.70 |
| replication     | factor  |  19 |    0.00 |      3 |       |        | 13.00 | No         |       | 0.43 |       |       |       |       |          |       |          |

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
