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
![r^2](https://render.githubusercontent.com/render/math?math=%20r%5E2%20) is the pairwise correlation between the causal marker and the genotyped marker.
*MAF* is the minor allele frequency, and  
![\beta](https://render.githubusercontent.com/render/math?math=%5Cbeta) is the effect size of an allele on the phenotype in standard deviation units.

#### Exercise 1.1
  translate the equation into an R function!

  ### tips
  ### walkthrough

#### Exercise 1.2
  You're planning an exciting study on a physiologically relevant trait that for sure will be your breakthrough to fame and fortune!
  However, due to the dire funding situation you keep finding yourself in, you will have to be smart about the experimental setup.
  based on similar studies on related traits as well as initial estimations of the heritability of your trait, you estimate that you need to be able to detect variants with a a minor allele frequency down to 0.25, that explain about 15% of the variance, i.e. having an effect size of about 0.02 standard deviations.

##### 1.2.1
  So far you've budgeted for phenotyping and genotyping of about 2000 individuals. Now, to your surprise, some departmental funding has come through.
  Should you invest this windfall into a higher marker-density phenotyping that raises your average marker-rsquare from 0.8 to 0.99, or add another 500 individuals?

##### 1.2.2
  After hearing of your success in winning the departmental funding, one of the senior PI's in your department offers to match ( i.e. double) that funding ( Under the condition that *they* will be the last author, of course.). How would this additional money change your quest for (statistical) power?

##### 1.2.3
  While finishing up your experimental design, your postdocs approach you with an idea for a method that would drastically improve precision for the your phenotypes, reducing the noise in the variance and there potentially raising the variance attributable to the genotypes. This could increase your predicted effectsizes (beta) to 0.03, but would use up all your excess funding. Assuming it works, would it be worth it?

# Exercise 2: Population structure


# QQ-plots
