#' Function to (re)create the global variable `pea_2`
#' @export
create_pea_2 <- function() {

  protein_names <- c(
    "SRC", "CSTB", "PAR-1", "TRAIL", "IL27-A", "CXCL1",
    "LOX-1", "TRAIL-R2", "FGF-23", "IL-18", "HSP_27", "MMP-1",
    "RETN", "REN", "CHI3L1", "ST2", "TIM", "mAmP",
    "TRANCE", "PSGL-1", "MB", "TM", "IL-16", "MMP-10",
    "CCL4", "RAGE", "CCL3", "MMP-7", "CXCL6", "CXCL16",
    "Dkk-1", "SIRT2", "GAL", "AGRP", "EN-RAGE", "CD40",
    "t-PA", "HB-EGF", "ESM-1", "MMP-12", "SPON1", "CASP-8",
    "CTSL1", "CX3CL1", "LEP", "CCL20", "NEMO", "ECP"
  )

  testthat::expect_equal(length(protein_names), 48)

  individual_names <- paste0("AB01-", seq(1, 957))
  testthat::expect_equal(length(individual_names), 957)

  data <- stats::rnorm(n = length(individual_names) * length(protein_names))

  # [richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea_1_2.rntransformed.AJ.RData"); sum(is.na(pea_2))'
  # [1] 1317
  na_indices <- sample(seq_along(data), size = 1317, replace = FALSE)
  data[na_indices] <- NA

  matrix(
    data = data,
    nrow = length(individual_names),
    ncol = length(protein_names),
    dimnames = list(individual_names, protein_names)
  )
}
