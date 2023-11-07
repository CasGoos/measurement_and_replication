Codebook created on 2023-11-07 at 2023-11-07 10:08:08.809425
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 2429 cases and 6 variables.

## Codebook

| name   | type    |    n | missing | unique | mean | median | mode | mode_value  |   sd |    v | min | max | range |  skew | skew_2se |  kurt | kurt_2se |
|:-------|:--------|-----:|--------:|-------:|-----:|-------:|-----:|:------------|-----:|-----:|----:|----:|------:|------:|---------:|------:|---------:|
| g      | factor  | 2429 |       0 |     21 |      |        |  235 | UCRiverside |      | 0.94 |     |     |       |       |          |       |          |
| elm_01 | integer | 2429 |       0 |      9 | 6.23 |      6 |    6 |             | 1.76 |      |   1 |   9 |     8 | -0.41 |    -4.10 | -0.13 |    -0.67 |
| elm_02 | integer | 2429 |       0 |      9 | 5.21 |      5 |    5 |             | 1.92 |      |   1 |   9 |     8 | -0.12 |    -1.17 | -0.33 |    -1.64 |
| elm_03 | integer | 2429 |       0 |      9 | 5.59 |      6 |    6 |             | 1.96 |      |   1 |   9 |     8 | -0.31 |    -3.15 | -0.43 |    -2.17 |
| elm_04 | integer | 2429 |       0 |      9 | 5.68 |      6 |    6 |             | 1.79 |      |   1 |   9 |     8 | -0.29 |    -2.96 | -0.25 |    -1.27 |
| elm_05 | integer | 2429 |       0 |      9 | 5.60 |      6 |    6 |             | 1.71 |      |   1 |   9 |     8 | -0.23 |    -2.36 | -0.01 |    -0.04 |

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
