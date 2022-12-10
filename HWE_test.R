install.packages("genetics")
library(genetics)

alleles <- list_of_alleles
diplotypes <- list_of_diplotypes

for (test_allele in alleles)
{
hom = "test_allele/test_allele"
het = "test_allele/starOther"
other_dips = "starOther/starOther"
hom_count = length(which(diplotypes == hom))
het_count = length(which(diplotypes == het))
dip3_count = length(which(diplotypes == dip3))

data  <- c(rep(hom, hom_count), rep(het, het_count), rep(other_dips, other_dips_count))

g1 <- genotype(data)

hwe_test <- HWE.test(g1)
#p_value_test_allele = hwe_test$p.value
}
