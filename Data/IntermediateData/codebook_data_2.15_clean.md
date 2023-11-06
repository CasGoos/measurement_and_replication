Codebook created on 2023-11-06 at 2023-11-06 15:00:11.960889
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 7890 cases and 6 variables.

## Codebook

| name      | type    |    n | missing | unique | mean | median | mode | mode_value |   sd |    v | min | max | range |  skew | skew_2se |  kurt | kurt_2se |
|:----------|:--------|-----:|--------:|-------:|-----:|-------:|-----:|:-----------|-----:|-----:|----:|----:|------:|------:|---------:|------:|---------:|
| g         | factor  | 7890 |       0 |     62 |      |        |  824 | moralsense |      | 0.97 |     |     |       |       |          |       |          |
| geis.dv_1 | integer | 7890 |       0 |      7 | 4.57 |      5 |    5 |            | 1.41 |      |   1 |   7 |     6 | -0.30 |    -5.48 | -0.09 |    -0.81 |
| geis.dv_2 | integer | 7890 |       0 |      7 | 4.85 |      5 |    5 |            | 1.31 |      |   1 |   7 |     6 | -0.46 |    -8.41 |  0.19 |     1.71 |
| geis.dv_3 | integer | 7890 |       0 |      7 | 5.06 |      5 |    5 |            | 1.31 |      |   1 |   7 |     6 | -0.66 |   -12.00 |  0.46 |     4.16 |
| geis.dv_4 | integer | 7890 |       0 |      7 | 5.05 |      5 |    5 |            | 1.37 |      |   1 |   7 |     6 | -0.62 |   -11.17 |  0.18 |     1.63 |
| geis.dv_5 | integer | 7890 |       0 |      7 | 5.22 |      5 |    5 |            | 1.38 |      |   1 |   7 |     6 | -0.74 |   -13.46 |  0.33 |     2.96 |

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
