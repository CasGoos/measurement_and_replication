Codebook created on 2024-07-26 at 2024-07-26 14:28:46.078228
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 669 cases and 11 variables.

## Codebook

| name            | type    |   n | missing | unique |  mean | median |   mode | mode_value                 |    sd |    v |   min |   max | range |  skew | skew_2se |  kurt | kurt_2se |
|:----------------|:--------|----:|--------:|-------:|------:|-------:|-------:|:---------------------------|------:|-----:|------:|------:|------:|------:|---------:|------:|---------:|
| alpha           | numeric | 669 |    0.00 |    669 |  0.79 |   0.84 |   0.84 |                            |  0.16 |      |  0.00 |  0.97 |  0.97 | -2.25 |   -11.93 |  6.11 |    16.19 |
| omega           | numeric | 515 |    0.23 |    516 |  0.79 |   0.84 |   0.84 |                            |  0.16 |      |  0.00 |  0.97 |  0.97 | -2.36 |   -10.95 |  6.74 |    15.69 |
| ASE             | numeric | 668 |    0.00 |    669 |  0.06 |   0.05 |   0.05 |                            |  0.04 |      |  0.01 |  0.54 |  0.53 |  3.24 |    17.15 | 23.63 |    62.56 |
| tau             | numeric | 669 |    0.00 |     12 |  0.02 |   0.00 |   0.00 |                            |  0.03 |      |  0.00 |  0.11 |  0.11 |  1.59 |     8.42 |  2.14 |     5.68 |
| QEp             | numeric | 669 |    0.00 |     19 |  0.57 |   0.81 |   0.81 |                            |  0.42 |      |  0.00 |  1.00 |  1.00 | -0.38 |    -2.02 | -1.60 |    -4.25 |
| pi.lb           | numeric | 669 |    0.00 |     19 |  0.76 |   0.84 |   0.84 |                            |  0.19 |      | -0.01 |  0.94 |  0.96 | -2.39 |   -12.65 |  6.38 |    16.90 |
| pi.ub           | numeric | 669 |    0.00 |     19 |  0.85 |   0.87 |   0.87 |                            |  0.10 |      |  0.43 |  0.96 |  0.53 | -2.52 |   -13.36 |  7.99 |    21.17 |
| g               | factor  | 669 |    0.00 |     20 |       |        |  74.00 | Anderson et al. (2012), PA |       | 0.92 |       |       |       |       |          |       |          |
| reporting_index | numeric | 669 |    0.00 |     17 | 33.77 |  31.00 |  31.00 |                            | 15.53 |      | 10.00 | 76.00 | 66.00 |  0.42 |     2.22 | -0.15 |    -0.41 |
| replication     | factor  | 669 |    0.00 |      3 |       |        | 489.00 | No                         |       | 0.39 |       |       |       |       |          |       |          |
| avg.alpha       | numeric | 669 |    0.00 |     19 |  0.79 |   0.83 |   0.83 |                            |  0.14 |      |  0.20 |  0.95 |  0.75 | -2.37 |   -12.56 |  6.79 |    17.99 |

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
