Codebook created on 2023-11-13 at 2023-11-13 11:23:37.304832
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 658 cases and 5 variables.

## Codebook

| name        | type    |   n | missing | unique | mean | median |   mode | mode_value                 |   sd |    v |   min |  max | range |  skew | skew_2se |  kurt | kurt_2se |
|:------------|:--------|----:|--------:|-------:|-----:|-------:|-------:|:---------------------------|-----:|-----:|------:|-----:|------:|------:|---------:|------:|---------:|
| alpha       | numeric | 658 |    0.00 |    658 | 0.76 |   0.83 |   0.83 |                            | 0.17 |      |  0.00 | 0.97 |  0.97 | -1.77 |    -9.29 |  3.93 |    10.34 |
| omega       | numeric | 558 |    0.15 |    559 | 0.77 |   0.83 |   0.83 |                            | 0.16 |      |  0.00 | 0.97 |  0.97 | -2.05 |    -9.91 |  5.79 |    14.01 |
| g           | factor  | 658 |    0.00 |     19 |      |        |  74.00 | Anderson et al. (2012), PA |      | 0.92 |       |      |       |       |          |       |          |
| replication | logical | 658 |    0.00 |      3 |      |        | 532.00 | FALSE                      |      | 0.31 |       |      |       |       |          |       |          |
| avg.alpha   | numeric | 658 |    0.00 |     18 | 0.75 |   0.83 |   0.83 |                            | 0.21 |      | -1.01 | 0.95 |  1.96 | -4.70 |   -24.68 | 32.94 |    86.57 |

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
