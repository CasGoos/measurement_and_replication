Codebook created on 2023-11-06 at 2023-11-06 15:00:38.16236
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 341 cases and 8 variables.

## Codebook

| name  | type    |   n | missing | unique | mean | median | mode | mode_value |   sd |   v | min | max | range |  skew | skew_2se |  kurt | kurt_2se |
|:------|:--------|----:|--------:|-------:|-----:|-------:|-----:|:-----------|-----:|----:|----:|----:|------:|------:|---------:|------:|---------:|
| g     | factor  | 341 |       0 |      6 |      |        |   72 | Miami      |      | 0.8 |     |     |       |       |          |       |          |
| FAD4  | integer | 341 |       0 |      5 | 3.08 |      3 |    3 |            | 1.10 |     |   1 |   5 |     4 | -0.20 |    -0.74 | -0.90 |    -1.71 |
| FAD8  | integer | 341 |       0 |      5 | 4.08 |      4 |    4 |            | 0.86 |     |   1 |   5 |     4 | -0.97 |    -3.66 |  0.84 |     1.59 |
| FAD12 | integer | 341 |       0 |      5 | 3.72 |      4 |    4 |            | 1.08 |     |   1 |   5 |     4 | -0.74 |    -2.81 | -0.18 |    -0.34 |
| FAD16 | integer | 341 |       0 |      5 | 3.23 |      3 |    3 |            | 1.11 |     |   1 |   5 |     4 | -0.28 |    -1.05 | -0.92 |    -1.74 |
| FAD20 | integer | 341 |       0 |      5 | 3.38 |      4 |    4 |            | 1.07 |     |   1 |   5 |     4 | -0.38 |    -1.44 | -0.58 |    -1.11 |
| FAD23 | integer | 341 |       0 |      5 | 2.94 |      3 |    3 |            | 1.13 |     |   1 |   5 |     4 |  0.00 |     0.02 | -1.03 |    -1.95 |
| FAD26 | integer | 341 |       0 |      5 | 3.35 |      4 |    4 |            | 1.12 |     |   1 |   5 |     4 | -0.41 |    -1.55 | -0.78 |    -1.49 |

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
