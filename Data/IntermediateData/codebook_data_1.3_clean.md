Codebook created on 2023-11-07 at 2023-11-07 10:07:49.109291
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 6344 cases and 9 variables.

## Codebook

| name        | type   |    n | missing | unique | mode | mode_value |    v |
|:------------|:-------|-----:|--------:|-------:|-----:|:-----------|-----:|
| g           | factor | 6344 |       0 |     37 | 1329 | pi         | 0.92 |
| anchoring1a | factor | 6344 |       0 |    348 | 2639 | .          | 0.79 |
| anchoring1b | factor | 6344 |       0 |    393 | 2629 | .          | 0.79 |
| anchoring2a | factor | 6344 |       0 |    579 | 3128 | .          | 0.75 |
| anchoring2b | factor | 6344 |       0 |    605 | 3234 | .          | 0.73 |
| anchoring3a | factor | 6344 |       0 |    568 | 2600 | .          | 0.80 |
| anchoring3b | factor | 6344 |       0 |    473 | 2674 | .          | 0.79 |
| anchoring4a | factor | 6344 |       0 |    422 | 3185 | .          | 0.74 |
| anchoring4b | factor | 6344 |       0 |    365 | 3183 | .          | 0.74 |

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
