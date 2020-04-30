plot_qq<-function(pvalues,marker_num) {
  expect.stats <- -log10( (1:m)/m )
  lambda <- median(-log10(pvalues))/median(expect.stats)
  qqplot(expect.stats,-log10(pvalues),xlab="expected",ylab="observed",sub=paste("lambda=",signif(lambda,3),sep=""))
  abline(0,1)
}
