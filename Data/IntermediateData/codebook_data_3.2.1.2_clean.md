Codebook created on 2023-11-06 at 2023-11-06 15:00:21.765723
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 1666 cases and 6 variables.

## Codebook

| name    | type    |    n | missing | unique | mean | median | mode | mode_value |   sd |    v | min | max | range |  skew | skew_2se |  kurt | kurt_2se |
|:--------|:--------|-----:|--------:|-------:|-----:|-------:|-----:|:-----------|-----:|-----:|----:|----:|------:|------:|---------:|------:|---------:|
| g       | factor  | 1666 |       0 |     22 |      |        |  346 | mTurk      |      | 0.92 |     |     |       |       |          |       |          |
| mcsome1 | numeric | 1666 |       0 |      2 | 0.42 |      0 |    0 |            | 0.49 |      |   0 |   1 |     1 |  0.31 |     2.57 | -1.91 |    -7.95 |
| mcsome2 | numeric | 1666 |       0 |      2 | 0.69 |      1 |    1 |            | 0.46 |      |   0 |   1 |     1 | -0.81 |    -6.78 | -1.34 |    -5.59 |
| mcsome3 | numeric | 1666 |       0 |      2 | 0.63 |      1 |    1 |            | 0.48 |      |   0 |   1 |     1 | -0.54 |    -4.52 | -1.71 |    -7.12 |
| mcsome4 | numeric | 1666 |       0 |      2 | 0.41 |      0 |    0 |            | 0.49 |      |   0 |   1 |     1 |  0.38 |     3.18 | -1.86 |    -7.74 |
| mcsome5 | numeric | 1666 |       0 |      2 | 0.53 |      1 |    1 |            | 0.50 |      |   0 |   1 |     1 | -0.11 |    -0.88 | -1.99 |    -8.30 |

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
