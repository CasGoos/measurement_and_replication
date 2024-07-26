Codebook created on 2024-07-26 at 2024-07-26 14:28:47.451752
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 515 cases and 11 variables.

## Codebook

| name            | type    |   n | missing | unique |  mean | median |   mode | mode_value                 |    sd |    v |   min |   max | range |  skew | skew_2se |  kurt | kurt_2se |
|:----------------|:--------|----:|--------:|-------:|------:|-------:|-------:|:---------------------------|------:|-----:|------:|------:|------:|------:|---------:|------:|---------:|
| alpha           | numeric | 515 |       0 |    515 |  0.78 |   0.84 |   0.84 |                            |  0.17 |      |  0.00 |  0.97 |  0.97 | -2.21 |   -10.28 |  5.88 |    13.69 |
| omega           | numeric | 515 |       0 |    515 |  0.79 |   0.84 |   0.84 |                            |  0.16 |      |  0.00 |  0.97 |  0.97 | -2.36 |   -10.95 |  6.74 |    15.69 |
| ASE             | numeric | 514 |       0 |    515 |  0.07 |   0.06 |   0.06 |                            |  0.04 |      |  0.01 |  0.54 |  0.53 |  3.51 |    16.29 | 25.97 |    60.37 |
| tau             | numeric | 515 |       0 |      9 |  0.02 |   0.00 |   0.00 |                            |  0.03 |      |  0.00 |  0.11 |  0.11 |  2.07 |     9.63 |  3.71 |     8.63 |
| QEp             | numeric | 515 |       0 |     16 |  0.73 |   0.87 |   0.87 |                            |  0.33 |      |  0.00 |  1.00 |  1.00 | -1.23 |    -5.72 |  0.24 |     0.55 |
| pi.lb           | numeric | 515 |       0 |     16 |  0.76 |   0.84 |   0.84 |                            |  0.20 |      | -0.01 |  0.94 |  0.96 | -2.34 |   -10.89 |  5.88 |    13.67 |
| pi.ub           | numeric | 515 |       0 |     16 |  0.84 |   0.87 |   0.87 |                            |  0.10 |      |  0.43 |  0.96 |  0.53 | -2.51 |   -11.64 |  7.35 |    17.11 |
| g               | factor  | 515 |       0 |     17 |       |        |  74.00 | Anderson et al. (2012), PA |       | 0.91 |       |       |       |       |          |       |          |
| reporting_index | numeric | 515 |       0 |     15 | 32.87 |  30.00 |  30.00 |                            | 17.21 |      | 10.00 | 76.00 | 66.00 |  0.51 |     2.39 | -0.50 |    -1.16 |
| replication     | factor  | 515 |       0 |      3 |       |        | 394.00 | No                         |       | 0.36 |       |       |       |       |          |       |          |
| avg.omega       | numeric | 515 |       0 |     16 |  0.79 |   0.83 |   0.83 |                            |  0.15 |      |  0.20 |  0.95 |  0.75 | -2.40 |   -11.17 |  6.62 |    15.40 |

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
