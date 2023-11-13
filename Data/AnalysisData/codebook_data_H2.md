Codebook created on 2023-11-13 at 2023-11-13 11:23:33.384022
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 713 cases and 3 variables.

## Codebook

| name  | type      |   n | missing | unique | mean | median |  mode | mode_value |   sd |    v |  min |  max | range |  skew | skew_2se |  kurt | kurt_2se |
|:------|:----------|----:|--------:|-------:|-----:|-------:|------:|-----------:|-----:|-----:|-----:|-----:|------:|------:|---------:|------:|---------:|
| alpha | numeric   | 713 |    0.00 |    713 | 0.62 |   0.81 |  0.81 |            | 0.55 |      | -2.9 | 0.97 |  3.87 | -3.18 |   -17.35 | 10.24 |    28.01 |
| omega | numeric   | 558 |    0.22 |    559 | 0.77 |   0.83 |  0.83 |            | 0.16 |      |  0.0 | 0.97 |  0.97 | -2.05 |    -9.91 |  5.79 |    14.01 |
| g     | character | 713 |    0.00 |     19 |      |        | 74.00 |          6 |      | 0.92 |      |      |       |       |          |       |          |

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
