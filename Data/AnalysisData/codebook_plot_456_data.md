Codebook created on 2024-07-26 at 2024-07-26 14:28:36.553505
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 924 cases and 6 variables.

## Codebook

| name            | type    |   n | missing | unique | mean | median |   mode | mode_value |   sd |    v |  min |  max | range | skew | skew_2se |  kurt | kurt_2se |
|:----------------|:--------|----:|--------:|-------:|-----:|-------:|-------:|:-----------|-----:|-----:|-----:|-----:|------:|-----:|---------:|------:|---------:|
| QMP_ratio       | numeric | 829 |    0.10 |     67 | 0.35 |   0.29 |   0.29 |            | 0.34 |      | 0.01 | 0.99 |  0.99 | 0.58 |     3.41 | -0.89 |    -2.64 |
| QMP_ratio_1     | numeric | 829 |    0.10 |     86 | 0.88 |   1.01 |   1.01 |            | 0.56 |      | 0.01 | 1.99 |  1.99 | 0.00 |     0.01 | -0.83 |    -2.46 |
| QMP_type        | factor  | 924 |    0.00 |      7 |      |        | 154.00 | Definition |      | 0.83 |      |      |       |      |          |       |          |
| QMP_ratio_REV   | numeric | 820 |    0.11 |     54 | 0.24 |   0.11 |   0.11 |            | 0.30 |      | 0.01 | 0.99 |  0.99 | 1.16 |     6.77 |  0.36 |     1.06 |
| RepOrg          | factor  | 924 |    0.00 |      3 |      |        | 462.00 | Original   |      | 0.50 |      |      |       |      |          |       |          |
| QMP_ratio_1_REV | numeric | 820 |    0.11 |     75 | 0.76 |   1.01 |   1.01 |            | 0.55 |      | 0.01 | 1.99 |  1.99 | 0.16 |     0.96 | -0.75 |    -2.20 |

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
