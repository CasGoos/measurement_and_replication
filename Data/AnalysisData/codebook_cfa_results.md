Codebook created on 2024-03-18 at 2024-03-18 14:12:52.006764
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 19 cases and 3 variables.

## Codebook

| name          | type      |   n | missing | unique | mode | mode_value |    v |
|:--------------|:----------|----:|--------:|-------:|-----:|:-----------|-----:|
| RMSEA         | character |  18 |    0.05 |     18 |    2 | 0.062      | 0.94 |
| N_factors     | character |  18 |    0.05 |      7 |    7 | 2          | 0.74 |
| Single_factor | character |  18 |    0.05 |      3 |   11 | No         | 0.48 |

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
