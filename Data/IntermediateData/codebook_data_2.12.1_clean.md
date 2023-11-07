Codebook created on 2023-11-07 at 2023-11-07 10:07:58.427706
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 6905 cases and 6 variables.

## Codebook

| name     | type    |    n | missing | unique | mean | median | mode | mode_value  |   sd |    v | min | max | range |  skew | skew_2se |  kurt | kurt_2se |
|:---------|:--------|-----:|--------:|-------:|-----:|-------:|-----:|:------------|-----:|-----:|----:|----:|------:|------:|---------:|------:|---------:|
| g        | factor  | 6905 |       0 |     75 |      |        |  339 | mturk_india |      | 0.98 |     |     |       |       |          |       |          |
| and1.3_1 | integer | 6905 |       0 |      7 | 4.56 |      5 |    5 |             | 1.55 |      |   1 |   7 |     6 | -0.52 |    -8.80 | -0.59 |    -4.96 |
| and1.3_2 | integer | 6905 |       0 |      7 | 5.05 |      5 |    5 |             | 1.50 |      |   1 |   7 |     6 | -0.78 |   -13.20 | -0.03 |    -0.29 |
| and1.3_3 | integer | 6905 |       0 |      7 | 5.23 |      6 |    6 |             | 1.42 |      |   1 |   7 |     6 | -1.00 |   -16.97 |  0.53 |     4.46 |
| and1.3_4 | integer | 6905 |       0 |      7 | 4.89 |      5 |    5 |             | 1.57 |      |   1 |   7 |     6 | -0.68 |   -11.58 | -0.37 |    -3.10 |
| and1.3_5 | integer | 6905 |       0 |      7 | 4.07 |      4 |    4 |             | 1.84 |      |   1 |   7 |     6 | -0.07 |    -1.10 | -1.20 |   -10.20 |

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
