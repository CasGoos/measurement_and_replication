Codebook created on 2024-02-26 at 2024-02-26 14:50:07.480565
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 670 cases and 9 variables.

## Codebook

| name            | type      |   n | missing | unique |  mean | median |  mode | mode_value |    sd |    v |   min |   max | range |  skew | skew_2se |  kurt | kurt_2se |
|:----------------|:----------|----:|--------:|-------:|------:|-------:|------:|-----------:|------:|-----:|------:|------:|------:|------:|---------:|------:|---------:|
| alpha           | numeric   | 670 |    0.00 |    670 |  0.79 |   0.84 |  0.84 |            |  0.17 |      | -0.55 |  0.97 |  1.52 | -2.67 |   -14.11 | 10.40 |    27.58 |
| omega           | numeric   | 515 |    0.23 |    516 |  0.79 |   0.84 |  0.84 |            |  0.16 |      |  0.00 |  0.97 |  0.97 | -2.36 |   -10.95 |  6.74 |    15.69 |
| ASE             | numeric   | 669 |    0.00 |    670 |  0.06 |   0.05 |  0.05 |            |  0.05 |      |  0.01 |  0.54 |  0.53 |  3.92 |    20.72 | 29.84 |    79.06 |
| tau             | numeric   | 670 |    0.00 |     12 |  0.02 |   0.00 |  0.00 |            |  0.03 |      |  0.00 |  0.11 |  0.11 |  1.59 |     8.41 |  2.14 |     5.66 |
| QEp             | numeric   | 670 |    0.00 |     19 |  0.57 |   0.81 |  0.81 |            |  0.42 |      |  0.00 |  1.00 |  1.00 | -0.38 |    -2.00 | -1.61 |    -4.26 |
| pi.lb           | numeric   | 670 |    0.00 |     19 |  0.76 |   0.84 |  0.84 |            |  0.19 |      | -0.01 |  0.94 |  0.96 | -2.39 |   -12.67 |  6.39 |    16.95 |
| pi.ub           | numeric   | 670 |    0.00 |     19 |  0.85 |   0.87 |  0.87 |            |  0.10 |      |  0.43 |  0.96 |  0.53 | -2.53 |   -13.38 |  8.00 |    21.21 |
| g               | character | 670 |    0.00 |     20 |       |        | 74.00 |          5 |       | 0.92 |       |       |       |       |          |       |          |
| reporting_index | numeric   | 670 |    0.00 |     17 | 33.44 |  31.00 | 31.00 |            | 14.89 |      | 10.00 | 73.00 | 63.00 |  0.29 |     1.55 | -0.29 |    -0.78 |

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
