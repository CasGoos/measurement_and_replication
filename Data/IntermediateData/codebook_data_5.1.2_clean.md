Codebook created on 2024-02-16 at 2024-02-16 14:19:42.46426
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 471 cases and 7 variables.

## Codebook

| name  | type    |   n | missing | unique | mean | median | mode | mode_value |   sd |    v | min | max | range |  skew | skew_2se |  kurt | kurt_2se |
|:------|:--------|----:|--------:|-------:|-----:|-------:|-----:|:-----------|-----:|-----:|----:|----:|------:|------:|---------:|------:|---------:|
| g     | factor  | 471 |       0 |      5 |      |        |  174 | Oregon     |      | 0.73 |     |     |       |       |          |       |          |
| SAT16 | integer | 471 |       0 |      2 | 0.57 |      1 |    1 |            | 0.50 |      |   0 |   1 |     1 | -0.27 |    -1.20 | -1.93 |    -4.30 |
| SAT17 | integer | 471 |       0 |      2 | 0.76 |      1 |    1 |            | 0.43 |      |   0 |   1 |     1 | -1.23 |    -5.46 | -0.49 |    -1.10 |
| SAT18 | integer | 471 |       0 |      2 | 0.36 |      0 |    0 |            | 0.48 |      |   0 |   1 |     1 |  0.58 |     2.57 | -1.67 |    -3.72 |
| SAT19 | integer | 471 |       0 |      2 | 0.63 |      1 |    1 |            | 0.48 |      |   0 |   1 |     1 | -0.55 |    -2.44 | -1.70 |    -3.79 |
| SAT20 | integer | 471 |       0 |      2 | 0.38 |      0 |    0 |            | 0.48 |      |   0 |   1 |     1 |  0.51 |     2.27 | -1.74 |    -3.88 |
| SAT21 | integer | 471 |       0 |      2 | 0.68 |      1 |    1 |            | 0.47 |      |   0 |   1 |     1 | -0.78 |    -3.45 | -1.40 |    -3.12 |

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
