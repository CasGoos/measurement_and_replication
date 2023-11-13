Codebook created on 2023-11-13 at 2023-11-13 11:23:36.072993
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 18 cases and 3 variables.

## Codebook

| name        | type    |   n | missing | unique | mean | median |  mode | mode_value |   sd |    v |   min |  max | range |  skew | skew_2se | kurt | kurt_2se |
|:------------|:--------|----:|--------:|-------:|-----:|-------:|------:|:-----------|-----:|-----:|------:|-----:|------:|------:|---------:|-----:|---------:|
| alpha       | numeric |  18 |    0.00 |     18 | 0.63 |   0.72 |  0.72 |            | 0.44 |      | -1.01 | 0.95 |  1.96 | -2.73 |    -2.54 | 7.23 |     3.49 |
| omega       | numeric |  15 |    0.17 |     16 | 0.73 |   0.74 |  0.74 |            | 0.18 |      |  0.20 | 0.95 |  0.75 | -1.39 |    -1.20 | 1.90 |     0.85 |
| replication | logical |  18 |    0.00 |      3 |      |        | 12.00 | FALSE      |      | 0.44 |       |      |       |       |          |      |          |

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
