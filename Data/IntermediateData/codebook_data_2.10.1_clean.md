Codebook created on 2023-11-07 at 2023-11-07 10:07:57.126001
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 6234 cases and 7 variables.

## Codebook

| name       | type    |    n | missing | unique | mean | median | mode | mode_value |   sd |    v | min | max | range |  skew | skew_2se |  kurt | kurt_2se |
|:-----------|:--------|-----:|--------:|-------:|-----:|-------:|-----:|:-----------|-----:|-----:|----:|----:|------:|------:|---------:|------:|---------:|
| g          | factor  | 6234 |       0 |     68 |      |        |  343 | toronto    |      | 0.98 |     |     |       |       |          |       |          |
| van.p1.2_1 | integer | 6234 |       0 |      9 | 1.75 |      1 |    1 |            | 1.77 |      |   1 |   9 |     8 |  2.71 |    43.66 |  6.88 |    55.45 |
| van.p1.2_2 | integer | 6234 |       0 |      9 | 8.40 |      9 |    9 |            | 1.55 |      |   1 |   9 |     8 | -3.13 |   -50.44 |  9.67 |    77.96 |
| van.p1.2_3 | integer | 6234 |       0 |      9 | 8.00 |      9 |    9 |            | 2.31 |      |   1 |   9 |     8 | -2.30 |   -37.07 |  3.85 |    31.02 |
| van.p1.2_4 | integer | 6234 |       0 |      9 | 4.91 |      5 |    5 |            | 2.22 |      |   1 |   9 |     8 |  0.22 |     3.48 | -0.13 |    -1.08 |
| van.p1.2_5 | integer | 6234 |       0 |      9 | 3.93 |      5 |    5 |            | 1.89 |      |   1 |   9 |     8 | -0.22 |    -3.51 | -0.21 |    -1.69 |
| van.p1.2_6 | integer | 6234 |       0 |      9 | 6.73 |      9 |    9 |            | 3.13 |      |   1 |   9 |     8 | -0.99 |   -15.90 | -0.72 |    -5.76 |

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
