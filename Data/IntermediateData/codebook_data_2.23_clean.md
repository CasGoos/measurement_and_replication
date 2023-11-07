Codebook created on 2023-11-07 at 2023-11-07 10:08:05.106604
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 7001 cases and 6 variables.

## Codebook

| name         | type    |    n | missing | unique | mean | median | mode | mode_value |   sd |    v | min | max | range |  skew | skew_2se |  kurt | kurt_2se |
|:-------------|:--------|-----:|--------:|-------:|-----:|-------:|-----:|:-----------|-----:|-----:|----:|----:|------:|------:|---------:|------:|---------:|
| g            | factor  | 7001 |       0 |     59 |      |        |  720 | moralsense |      | 0.97 |     |     |       |       |          |       |          |
| zhon.dv.1_2  | integer | 7001 |       0 |      7 | 3.88 |      4 |    4 |            | 2.04 |      |   1 |   7 |     6 |  0.02 |     0.41 | -1.24 |   -10.60 |
| zhon.dv.1_3  | integer | 7001 |       0 |      7 | 4.34 |      5 |    5 |            | 2.03 |      |   1 |   7 |     6 | -0.25 |    -4.25 | -1.15 |    -9.80 |
| zhon.dv.1_7  | integer | 7001 |       0 |      7 | 3.28 |      3 |    3 |            | 1.86 |      |   1 |   7 |     6 |  0.40 |     6.78 | -0.92 |    -7.86 |
| zhon.dv.1_8  | integer | 7001 |       0 |      7 | 3.85 |      4 |    4 |            | 2.00 |      |   1 |   7 |     6 |  0.03 |     0.55 | -1.20 |   -10.29 |
| zhon.dv.1_10 | integer | 7001 |       0 |      7 | 4.39 |      5 |    5 |            | 2.03 |      |   1 |   7 |     6 | -0.30 |    -5.05 | -1.14 |    -9.72 |

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
