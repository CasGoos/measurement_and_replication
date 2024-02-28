Codebook created on 2024-02-26 at 2024-02-26 14:50:04.558184
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 1925 cases and 4 variables.

## Codebook

| name          | type    |    n | missing | unique | mean | median |   mode | mode_value      |   sd |   v |  min |  max | range | skew | skew_2se |  kurt | kurt_2se |
|:--------------|:--------|-----:|--------:|-------:|-----:|-------:|-------:|:----------------|-----:|----:|-----:|-----:|------:|-----:|---------:|------:|---------:|
| QMP_type      | factor  | 1925 |    0.00 |      6 |      |        | 385.00 | Def. Ratio      |      | 0.8 |      |      |       |      |          |       |          |
| QMP_ratio     | numeric | 1575 |    0.18 |     14 | 0.39 |   0.34 |   0.34 |                 | 0.37 |     | 0.01 | 0.99 |  0.99 | 0.41 |     3.34 | -1.29 |    -5.22 |
| QMP_Rep_type  | factor  | 1925 |    0.00 |      6 |      |        | 385.00 | Rep. Def. Ratio |      | 0.8 |      |      |       |      |          |       |          |
| QMP_Rep_ratio | numeric | 1800 |    0.06 |     19 | 0.32 |   0.20 |   0.20 |                 | 0.35 |     | 0.01 | 0.99 |  0.99 | 0.73 |     6.34 | -0.81 |    -3.51 |

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
