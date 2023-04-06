# R script used to generate barbell plots for snake visual genes in Schott et al. 2018
- last updated by Alexander Van Nynatten 2022

To modify for use on other PAML clade model datasets the following template for input CSV file should be used

| Gene_class | Clade | Gene_name | dNdS |
| --- | --- | --- | --- |
| Grouping ID for gene A (ex. photoreceptor tyoe) | Foreground | "Name of Gene A" | dNdS value for foreground (ex. 0.03) |
| Grouping ID for gene A | Background | "Name of Gene A" | dNdS value for background (ex. 2.54) |
| Grouping ID for gene B | Foreground | "Name of Gene B" | 0.023 |
| Grouping ID for gene B | Background | "Name of Gene B" | 0.053 |
| ... | ... | ... | ... |

Grouping IDs will separate genes into separate facets

Gene names will be used for Y axis labels identifying the genes on the plot
