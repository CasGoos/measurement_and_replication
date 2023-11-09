Codebook created on 2023-11-09 at 2023-11-09 13:46:48.256152
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 558 cases and 5 variables.

## Codebook

| name        | type    |   n | missing | unique | mean | median |   mode | mode_value                  |   sd |    v | min |  max | range |  skew | skew_2se | kurt | kurt_2se |
|:------------|:--------|----:|--------:|-------:|-----:|-------:|-------:|:----------------------------|-----:|-----:|----:|-----:|------:|------:|---------:|-----:|---------:|
| alpha       | numeric | 558 |       0 |    558 | 0.76 |   0.82 |   0.82 |                             | 0.17 |      | 0.0 | 0.97 |  0.97 | -1.77 |    -8.56 | 4.19 |    10.14 |
| omega       | numeric | 558 |       0 |    558 | 0.77 |   0.83 |   0.83 |                             | 0.16 |      | 0.0 | 0.97 |  0.97 | -2.05 |    -9.91 | 5.79 |    14.01 |
| g           | factor  | 558 |       0 |     16 |      |        |  74.00 | Anderson et al. (2012), SWL |      | 0.91 |     |      |       |       |          |      |          |
| replication | logical | 558 |       0 |      3 |      |        | 437.00 | FALSE                       |      | 0.34 |     |      |       |       |          |      |          |
| avg.omega   | numeric | 558 |       0 |     15 | 0.77 |   0.83 |   0.83 |                             | 0.15 |      | 0.2 | 0.95 |  0.75 | -2.08 |   -10.04 | 5.70 |    13.79 |

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
