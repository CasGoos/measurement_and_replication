Codebook created on 2024-03-04 at 2024-03-04 10:16:28.052337
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 2772 cases and 4 variables.

## Codebook

| name          | type    |    n | missing | unique | mean | median |   mode | mode_value    |   sd |    v |  min |  max | range | skew | skew_2se |  kurt | kurt_2se |
|:--------------|:--------|-----:|--------:|-------:|-----:|-------:|-------:|:--------------|-----:|-----:|-----:|-----:|------:|-----:|---------:|------:|---------:|
| QMP_type      | factor  | 2772 |    0.00 |      7 |      |        | 462.00 | Def.Ratio     |      | 0.83 |      |      |       |      |          |       |          |
| QMP_ratio     | numeric | 2358 |    0.15 |     39 | 0.28 |   0.20 |   0.20 |               | 0.29 |      | 0.01 | 0.99 |  0.99 | 0.80 |     7.95 | -0.28 |    -1.40 |
| QMP_Rep_type  | factor  | 2772 |    0.00 |      7 |      |        | 462.00 | Rep.Def.Ratio |      | 0.83 |      |      |       |      |          |       |          |
| QMP_Rep_ratio | numeric | 2562 |    0.08 |     37 | 0.21 |   0.01 |   0.01 |               | 0.30 |      | 0.01 | 0.99 |  0.99 | 1.52 |    15.72 |  1.27 |     6.54 |

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
