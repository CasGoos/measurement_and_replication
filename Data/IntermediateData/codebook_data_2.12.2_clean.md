Codebook created on 2023-11-06 at 2023-11-06 15:00:08.026037
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 6905 cases and 11 variables.

## Codebook

| name      | type    |    n | missing | unique | mean | median | mode | mode_value  |   sd |    v | min | max | range |  skew | skew_2se |  kurt | kurt_2se |
|:----------|:--------|-----:|--------:|-------:|-----:|-------:|-----:|:------------|-----:|-----:|----:|----:|------:|------:|---------:|------:|---------:|
| g         | factor  | 6905 |       0 |     75 |      |        |  339 | mturk_india |      | 0.98 |     |     |       |       |          |       |          |
| and1.4_1  | integer | 6905 |       0 |      5 | 3.23 |      3 |    3 |             | 1.12 |      |   1 |   5 |     4 | -0.35 |    -5.91 | -0.60 |    -5.10 |
| and1.4_4  | integer | 6905 |       0 |      5 | 2.87 |      3 |    3 |             | 1.19 |      |   1 |   5 |     4 | -0.08 |    -1.33 | -0.95 |    -8.07 |
| and1.4_5  | integer | 6905 |       0 |      5 | 2.46 |      2 |    2 |             | 1.25 |      |   1 |   5 |     4 |  0.32 |     5.42 | -1.05 |    -8.88 |
| and1.4_8  | integer | 6905 |       0 |      5 | 2.66 |      3 |    3 |             | 1.25 |      |   1 |   5 |     4 |  0.14 |     2.39 | -1.08 |    -9.19 |
| and1.4_9  | integer | 6905 |       0 |      5 | 2.86 |      3 |    3 |             | 1.21 |      |   1 |   5 |     4 | -0.08 |    -1.33 | -0.95 |    -8.07 |
| and1.4_12 | integer | 6905 |       0 |      5 | 3.14 |      3 |    3 |             | 1.21 |      |   1 |   5 |     4 | -0.26 |    -4.35 | -0.84 |    -7.17 |
| and1.4_14 | integer | 6905 |       0 |      5 | 3.29 |      3 |    3 |             | 1.08 |      |   1 |   5 |     4 | -0.40 |    -6.71 | -0.46 |    -3.93 |
| and1.4_17 | integer | 6905 |       0 |      5 | 2.74 |      3 |    3 |             | 1.23 |      |   1 |   5 |     4 |  0.07 |     1.11 | -1.01 |    -8.59 |
| and1.4_18 | integer | 6905 |       0 |      5 | 2.86 |      3 |    3 |             | 1.22 |      |   1 |   5 |     4 | -0.04 |    -0.75 | -0.99 |    -8.44 |
| and1.4_19 | integer | 6905 |       0 |      5 | 2.62 |      3 |    3 |             | 1.25 |      |   1 |   5 |     4 |  0.15 |     2.53 | -1.07 |    -9.12 |

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
