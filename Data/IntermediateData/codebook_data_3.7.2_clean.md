Codebook created on 2023-11-06 at 2023-11-06 15:00:26.441641
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 3178 cases and 7 variables.

## Codebook

| name   | type    |    n | missing | unique | mean | median | mode | mode_value |   sd |    v | min | max | range |  skew | skew_2se |  kurt | kurt_2se |
|:-------|:--------|-----:|--------:|-------:|-----:|-------:|-----:|:-----------|-----:|-----:|----:|----:|------:|------:|---------:|------:|---------:|
| g      | factor  | 3178 |       0 |     22 |      |        |  577 | mTurk      |      | 0.93 |     |     |       |       |          |       |          |
| nfc_01 | integer | 3178 |       0 |      5 | 2.95 |      3 |    3 |            | 1.00 |      |   1 |   5 |     4 | -0.11 |    -1.26 | -0.72 |    -4.13 |
| nfc_02 | integer | 3178 |       0 |      5 | 2.46 |      2 |    2 |            | 1.04 |      |   1 |   5 |     4 |  0.56 |     6.43 | -0.49 |    -2.83 |
| nfc_03 | integer | 3178 |       0 |      5 | 3.26 |      4 |    4 |            | 1.05 |      |   1 |   5 |     4 | -0.39 |    -4.44 | -0.71 |    -4.08 |
| nfc_04 | integer | 3178 |       0 |      5 | 3.19 |      3 |    3 |            | 0.98 |      |   1 |   5 |     4 | -0.21 |    -2.44 | -0.60 |    -3.47 |
| nfc_05 | integer | 3178 |       0 |      5 | 3.54 |      4 |    4 |            | 1.01 |      |   1 |   5 |     4 | -0.56 |    -6.43 | -0.28 |    -1.59 |
| nfc_06 | integer | 3178 |       0 |      5 | 2.64 |      2 |    2 |            | 1.02 |      |   1 |   5 |     4 |  0.34 |     3.92 | -0.60 |    -3.48 |

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
