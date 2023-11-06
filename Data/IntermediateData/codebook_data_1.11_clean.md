Codebook created on 2023-11-06 at 2023-11-06 14:59:53.640585
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 6344 cases and 5 variables.

## Codebook

| name              | type    |    n | missing | unique | mean | median | mode | mode_value |   sd |    v | min | max | range |  skew | skew_2se |  kurt | kurt_2se |
|:------------------|:--------|-----:|--------:|-------:|-----:|-------:|-----:|:-----------|-----:|-----:|----:|----:|------:|------:|---------:|------:|---------:|
| g                 | factor  | 6344 |       0 |     37 |      |        | 1329 | pi         |      | 0.92 |     |     |       |       |          |       |          |
| imaginedexplicit1 | integer | 6323 |       0 |     10 | 4.87 |      5 |    5 |            | 2.14 |      |   1 |   9 |     8 |  0.08 |     1.31 | -0.47 |    -3.78 |
| imaginedexplicit2 | integer | 6333 |       0 |     10 | 3.84 |      4 |    4 |            | 2.15 |      |   1 |   9 |     8 |  0.45 |     7.39 | -0.60 |    -4.91 |
| imaginedexplicit3 | integer | 6323 |       0 |     10 | 5.21 |      5 |    5 |            | 2.31 |      |   1 |   9 |     8 | -0.11 |    -1.80 | -0.72 |    -5.86 |
| imaginedexplicit4 | integer | 6330 |       0 |     10 | 4.91 |      5 |    5 |            | 2.90 |      |   1 |   9 |     8 |  0.05 |     0.82 | -1.42 |   -11.54 |

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
