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

Grouping IDs will separate genes into facets (see photoreceptor classes in example output pdf file)

Gene names will be used for Y axis labels identifying the genes on the plot

!dumbbell-plot-output[https://github.com/alexvannynatten/PAML-dumbbell-plot-in-ggplot/blob/f1da6c35138ae5caa6eda78d4348d92c499ece58/Snake_Reptile_CmC_dumbbell_plot.png]
