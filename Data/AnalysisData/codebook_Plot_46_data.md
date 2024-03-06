Codebook created on 2024-03-04 at 2024-03-04 10:16:26.447391
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 2772 cases and 4 variables.

## Codebook

| name          | type    |    n | missing | unique | mean | median |  mode | mode_value    |   sd |    v |  min |  max | range | skew | skew_2se |  kurt | kurt_2se |
|:--------------|:--------|-----:|--------:|-------:|-----:|-------:|------:|:--------------|-----:|-----:|-----:|-----:|------:|-----:|---------:|------:|---------:|
| QMP_type      | factor  | 2772 |    0.00 |      7 |      |        | 462.0 | Def.Ratio     |      | 0.83 |      |      |       |      |          |       |          |
| QMP_ratio     | numeric | 2352 |    0.15 |     42 | 0.40 |    0.4 |   0.4 |               | 0.35 |      | 0.01 | 0.99 |  0.99 | 0.37 |     3.65 | -1.13 |    -5.61 |
| QMP_Rep_type  | factor  | 2772 |    0.00 |      7 |      |        | 462.0 | Rep.Def.Ratio |      | 0.83 |      |      |       |      |          |       |          |
| QMP_Rep_ratio | numeric | 2622 |    0.05 |     45 | 0.31 |    0.2 |   0.2 |               | 0.32 |      | 0.01 | 0.99 |  0.99 | 0.78 |     8.20 | -0.52 |    -2.74 |

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
