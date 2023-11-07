Codebook created on 2023-11-07 at 2023-11-07 10:08:06.248806
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 1620 cases and 6 variables.

## Codebook

| name    | type    |    n | missing | unique | mean | median | mode | mode_value |   sd |    v | min | max | range |  skew | skew_2se |  kurt | kurt_2se |
|:--------|:--------|-----:|--------:|-------:|-----:|-------:|-----:|:-----------|-----:|-----:|----:|----:|------:|------:|---------:|------:|---------:|
| g       | factor  | 1620 |       0 |     22 |      |        |  293 | mTurk      |      | 0.93 |     |     |       |       |          |       |          |
| mcmost1 | numeric | 1620 |       0 |      2 | 0.79 |      1 |    1 |            | 0.41 |      |   0 |   1 |     1 | -1.44 |   -11.86 |  0.08 |     0.33 |
| mcmost2 | numeric | 1620 |       0 |      2 | 0.71 |      1 |    1 |            | 0.45 |      |   0 |   1 |     1 | -0.94 |    -7.76 | -1.11 |    -4.57 |
| mcmost3 | numeric | 1620 |       0 |      2 | 0.85 |      1 |    1 |            | 0.36 |      |   0 |   1 |     1 | -1.95 |   -16.00 |  1.78 |     7.34 |
| mcmost4 | numeric | 1620 |       0 |      2 | 0.72 |      1 |    1 |            | 0.45 |      |   0 |   1 |     1 | -0.96 |    -7.93 | -1.07 |    -4.41 |
| mcmost5 | numeric | 1620 |       0 |      2 | 0.97 |      1 |    1 |            | 0.16 |      |   0 |   1 |     1 | -5.96 |   -49.02 | 33.55 |   138.04 |

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
