#### Simple linear model to do association analysis

### phe1 is the phenotype, relatedness is used to correct population structure. 
load("gwas_pop_str_sim.RData")
source("plot_QQ_function.R")
## trait values
y<-gwas_pop_str_sim$phe1
## how many markers
m<-20000
## Do association analysis without correcting population sturcture.
pval_ori<- rep(NA,m)# to store p values
for(l in 1:m){
  pval_ori[l] <- summary(lm(y~gwas_pop_str_sim[,(l+3)]))$coefficients[2,4]
  } 
## plot manhattan plot without population structure
par(mfrow=c(1,2))
plot(1:m,-log10(pval_ori),xlab="Postions",ylab = "-log10(P)")
abline(h=-log10(0.05/20000))## Bonferroni correction for pvalues, the most strengint one.
## question: (1) do you have markers with pvalues above the threshold ? (2) how many of them (3) how do they distribute?
## Plot q-q plot
#load function by running: source("/path/to/plot_QQ_function.R")
plot_qq(pval_ori,20000)

#### put poppulation structure into your model
pval_cor<- rep(NA,m)# to store p values
pop_str<-gwas_pop_str_sim$relatedness
for(l in 1:m){
  pval_cor[l] <- summary(lm(y~gwas_pop_str_sim[,(l+3)]+pop_str))$coefficients[2,4]
} 
## plot manhattan plot with population structure
par(mfrow=c(1,2))
plot(1:m,-log10(pval_cor),xlab="Postions",ylab = "-log10(P)")
abline(h=-log10(0.05/20000))
## question: (1) do you have markers with pvalues above the threshold ? (2) how many of them (3) how do they distribute?
## Plot q-q plot
#load function by running: source("/path/to/plot_QQ_function.R")
plot_qq(pval_cor,20000)

## question: As we know gender always have effect on many traits, herein we got the gender info for all 500 samples,
## is gender affecting 






