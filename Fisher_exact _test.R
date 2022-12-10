?fisher.test()
dat <- data.frame(
  pop1 = c(pop1_hap1_count, n - pop1_hap1_count),
  pop2 = c(pop2_hap1_count, n - pop2_hap1_count),
  row.names= c('hap1','other'),
  stringsAsFactors = FALSE
)
colnames(dat) <- c("pop1", "pop2")

dat

test <- fisher.test(dat)
test
