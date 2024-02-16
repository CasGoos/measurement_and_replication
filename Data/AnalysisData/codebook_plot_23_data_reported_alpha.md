Codebook created on 2024-02-14 at 2024-02-14 09:47:30.71879
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 9 cases and 4 variables.

## Codebook

| name          | type      |   n | missing | unique | mean | median | mode | mode_value                                                       |   sd |    v |  min |   max | range |  skew | skew_2se |  kurt | kurt_2se |
|:--------------|:----------|----:|--------:|-------:|-----:|-------:|-----:|:-----------------------------------------------------------------|-----:|-----:|-----:|------:|------:|------:|---------:|------:|---------:|
| title         | character |   9 |       0 |      7 |      |        |  3.0 | The Local Ladder Effect: Social Status and Subjective Well-Being |      | 0.79 |      |       |       |       |          |       |          |
| graph_title   | character |   9 |       0 |     10 |      |        |  1.0 | Anderson et al. (2012), NA                                       |      | 0.89 |      |       |       |       |          |       |          |
| article_order | numeric   |   9 |       0 |      9 | 6.67 |    7.0 |  7.0 |                                                                  | 4.09 |      | 1.00 | 12.00 | 11.00 | -0.09 |    -0.06 | -1.81 |    -0.65 |
| coefficient   | numeric   |   9 |       0 |      8 | 0.81 |    0.8 |  0.8 |                                                                  | 0.06 |      | 0.72 |  0.89 |  0.17 |  0.05 |     0.03 | -1.41 |    -0.51 |

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
