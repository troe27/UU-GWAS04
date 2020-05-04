# TOC

# Topics today:
 - Internalise the concept of statistical power:  
*how likely are we to make [type II errors](https://en.wikipedia.org/wiki/Type_I_and_type_II_errors) given our experimental design?*

 - Populationstructure as a confounder, resulting in spurious associations

# Exercise 1: Power Calculations

When doing power calculations for GWAS, we can use [``NCP``, the noncentrality parameter](https://en.wikipedia.org/wiki/Noncentrality_parameter) as our measurement for statistical power. Without going much into detail, we can treat this parameter as an indicator for how likely it is that our planned analysis will be able to detect associated variants : The higher the value, the more likely it is that we will avoid type II errors, i.e. not detecting true associations.

for our case & parameter space, we can estimate NCP like this:  

![equation for ncp](figures/NCP.png)

where
*n* is the number of observations
![ r^2 ](https://render.githubusercontent.com/render/math?math=%20r%5E2%20) is the pairwise correlation between the causal marker and the genotyped marker.
*MAF* is the minor allele frequency, and  
![\beta](https://render.githubusercontent.com/render/math?math=%5Cbeta) is the effect size of an allele on the phenotype in standard deviation units.


# Exercise 2: Population structure


# QQ-plots
