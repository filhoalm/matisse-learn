suppressPackageStartupMessages({
  library(matisseR)
  library(data.table)
  library(ggplot2)
  library(patchwork)
})
col_sex <- c(Female = "#CC79A7", Male = "#009E73")
theme_set(theme_minimal(base_size = 11) +
  theme(panel.grid.minor = element_blank(), plot.title = element_text(face = "bold"),
        legend.position = "top", legend.justification = "left"))
options(width = 100, digits = 5)
pf <- function(p) ifelse(p < 1e-4, "<0.0001", sprintf("%.4f", p))   # p-values for display

# Cohorts that were observed near a reference age: those with a Lexis cell within `within` years of the age.
# The model can carry any other cohort to that age (a projection); this course uses observed cohorts only.
observed_cohorts <- function(R, age, within = 5) {
  L <- rates_long(R)
  sort(unique(L[abs(age_mid - age) <= within, coh_mid]))
}
fcp_observed <- function(f, R, within = 5) {
  k <- f$x %in% observed_cohorts(R, f$age, within)
  f$x <- f$x[k]; f$f <- f$f[k]; f$V <- f$V[k, k, drop = FALSE]
  f
}
