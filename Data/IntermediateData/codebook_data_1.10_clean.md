Codebook created on 2024-01-02 at 2024-01-02 11:34:58.526167
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 6344 cases and 9 variables.

## Codebook

| name     | type    |    n | missing | unique | mean | median | mode | mode_value |   sd |    v | min | max | range |  skew | skew_2se |  kurt | kurt_2se |
|:---------|:--------|-----:|--------:|-------:|-----:|-------:|-----:|:-----------|-----:|-----:|----:|----:|------:|------:|---------:|------:|---------:|
| g        | factor  | 6344 |    0.00 |     37 |      |        | 1329 | pi         |      | 0.92 |     |     |       |       |          |       |          |
| sysjust1 | integer | 6321 |    0.00 |      8 | 3.40 |      3 |    3 |            | 1.46 |      |   1 |   7 |     6 |  0.14 |     2.25 | -0.72 |    -5.84 |
| sysjust2 | integer | 6317 |    0.00 |      8 | 3.08 |      3 |    3 |            | 1.51 |      |   1 |   7 |     6 |  0.31 |     4.98 | -0.78 |    -6.30 |
| sysjust3 | integer | 6308 |    0.01 |      8 | 3.70 |      4 |    4 |            | 1.56 |      |   1 |   7 |     6 |  0.12 |     1.98 | -0.60 |    -4.90 |
| sysjust4 | integer | 6316 |    0.00 |      8 | 4.46 |      5 |    5 |            | 1.74 |      |   1 |   7 |     6 | -0.27 |    -4.39 | -0.79 |    -6.37 |
| sysjust5 | integer | 6314 |    0.00 |      8 | 3.92 |      4 |    4 |            | 1.43 |      |   1 |   7 |     6 | -0.22 |    -3.59 | -0.51 |    -4.11 |
| sysjust6 | integer | 6315 |    0.00 |      8 | 3.28 |      3 |    3 |            | 1.85 |      |   1 |   7 |     6 |  0.44 |     7.14 | -0.90 |    -7.31 |
| sysjust7 | integer | 6322 |    0.00 |      8 | 3.68 |      4 |    4 |            | 1.51 |      |   1 |   7 |     6 |  0.09 |     1.42 | -0.42 |    -3.44 |
| sysjust8 | integer | 6327 |    0.00 |      8 | 3.17 |      3 |    3 |            | 1.50 |      |   1 |   7 |     6 |  0.29 |     4.69 | -0.57 |    -4.66 |

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
