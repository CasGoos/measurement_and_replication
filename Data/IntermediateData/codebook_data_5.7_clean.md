Codebook created on 2023-11-07 at 2023-11-07 10:08:15.39734
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 5476 cases and 11 variables.

## Codebook

| name                | type    |    n | missing | unique | mean | median | mode | mode_value |   sd |    v | min | max | range |  skew | skew_2se |  kurt | kurt_2se |
|:--------------------|:--------|-----:|--------:|-------:|-----:|-------:|-----:|-----------:|-----:|-----:|----:|----:|------:|------:|---------:|------:|---------:|
| g                   | factor  | 5476 |       0 |      9 |      |        | 1119 |          4 |      | 0.86 |     |     |       |       |          |       |          |
| WTR.angry           | integer | 5476 |       0 |      7 | 4.64 |      5 |    5 |            | 1.70 |      |   1 |   7 |     6 | -0.22 |    -3.38 | -0.84 |    -6.35 |
| WTR.posNeg.person   | integer | 5476 |       0 |      7 | 4.42 |      4 |    4 |            | 1.54 |      |   1 |   7 |     6 | -0.03 |    -0.49 | -0.46 |    -3.50 |
| WTR.posNeg.relation | integer | 5476 |       0 |      7 | 3.94 |      4 |    4 |            | 1.55 |      |   1 |   7 |     6 |  0.10 |     1.56 | -0.35 |    -2.63 |
| WTR.closeness       | integer | 5476 |       0 |      7 | 3.68 |      4 |    4 |            | 1.57 |      |   1 |   7 |     6 |  0.18 |     2.77 | -0.51 |    -3.86 |
| WTR.futureRel       | integer | 5476 |       0 |      7 | 4.75 |      5 |    5 |            | 1.76 |      |   1 |   7 |     6 | -0.44 |    -6.71 | -0.56 |    -4.20 |
| WTR.willreconcile   | integer | 5476 |       0 |      7 | 5.16 |      5 |    5 |            | 1.63 |      |   1 |   7 |     6 | -0.62 |    -9.41 | -0.30 |    -2.30 |
| WTR.amends          | integer | 5476 |       0 |      7 | 4.20 |      4 |    4 |            | 1.90 |      |   1 |   7 |     6 | -0.12 |    -1.81 | -0.95 |    -7.20 |
| WTR.relFuture       | integer | 5476 |       0 |      7 | 4.60 |      5 |    5 |            | 1.71 |      |   1 |   7 |     6 | -0.25 |    -3.76 | -0.70 |    -5.27 |
| WTR.relDamage       | integer | 5476 |       0 |      7 | 4.26 |      4 |    4 |            | 1.80 |      |   1 |   7 |     6 | -0.05 |    -0.70 | -0.89 |    -6.76 |
| WTR.futureDiscourse | integer | 5476 |       0 |      7 | 4.49 |      4 |    4 |            | 1.73 |      |   1 |   7 |     6 | -0.18 |    -2.74 | -0.74 |    -5.61 |

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
