Codebook created on 2023-11-07 at 2023-11-07 10:08:01.015522
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 6905 cases and 11 variables.

## Codebook

| name      | type    |    n | missing | unique | mean | median | mode | mode_value  |   sd |    v | min | max | range | skew | skew_2se |  kurt | kurt_2se |
|:----------|:--------|-----:|--------:|-------:|-----:|-------:|-----:|:------------|-----:|-----:|----:|----:|------:|-----:|---------:|------:|---------:|
| g         | factor  | 6905 |       0 |     75 |      |        |  339 | mturk_india |      | 0.98 |     |     |       |      |          |       |          |
| and1.4_2  | integer | 6905 |       0 |      5 | 1.93 |      2 |    2 |             | 1.10 |      |   1 |   5 |     4 | 1.05 |    17.77 |  0.18 |     1.51 |
| and1.4_3  | integer | 6905 |       0 |      5 | 1.85 |      1 |    1 |             | 1.10 |      |   1 |   5 |     4 | 1.15 |    19.45 |  0.34 |     2.88 |
| and1.4_6  | integer | 6905 |       0 |      5 | 1.45 |      1 |    1 |             | 0.86 |      |   1 |   5 |     4 | 2.04 |    34.60 |  3.59 |    30.44 |
| and1.4_7  | integer | 6905 |       0 |      5 | 1.70 |      1 |    1 |             | 1.02 |      |   1 |   5 |     4 | 1.43 |    24.21 |  1.20 |    10.22 |
| and1.4_10 | integer | 6905 |       0 |      5 | 1.94 |      2 |    2 |             | 1.14 |      |   1 |   5 |     4 | 1.01 |    17.16 | -0.01 |    -0.09 |
| and1.4_11 | integer | 6905 |       0 |      5 | 1.49 |      1 |    1 |             | 0.90 |      |   1 |   5 |     4 | 1.95 |    33.15 |  3.25 |    27.57 |
| and1.4_13 | integer | 6905 |       0 |      5 | 1.52 |      1 |    1 |             | 0.95 |      |   1 |   5 |     4 | 1.89 |    32.13 |  2.83 |    23.99 |
| and1.4_15 | integer | 6905 |       0 |      5 | 1.44 |      1 |    1 |             | 0.85 |      |   1 |   5 |     4 | 2.01 |    34.18 |  3.53 |    29.95 |
| and1.4_16 | integer | 6905 |       0 |      5 | 1.91 |      1 |    1 |             | 1.13 |      |   1 |   5 |     4 | 1.05 |    17.78 |  0.07 |     0.56 |
| and1.4_20 | integer | 6905 |       0 |      5 | 1.60 |      1 |    1 |             | 0.98 |      |   1 |   5 |     4 | 1.65 |    28.01 |  1.91 |    16.19 |

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
