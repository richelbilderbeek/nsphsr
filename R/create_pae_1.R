#' Function to (re)create the global variable pae_1
#' @export
create_pae_1 <- function() {

  protein_names <- c(
    "Adrenomedullin", "Amphiregulin", "BAFF", "CAIX",
    "CCL21", "CCL24", "CCL9", "CD30-L",
    "CD40_ligand", "CD69", "CSF-1", "CXCL10",
    "CXCL11", "CXCL13", "CXCL5", "CXCL9",
    "Caspase-3", "Cathepsin_D", "Cystatin_B", "E-selectin",
    "EGF", "EGFR", "EMMPRIN", "Ep-CAM",
    "ErbB2_Her2", "ErbB3_Her3", "ErbB4_Her4", "FABP4",
    "FAS", "FR-alpha", "Flt3L", "Follistatin",
    "GDF-15", "Galectin-3", "Growth_Hormone", "HB-EGF",
    "HE4", "HGF", "HGF_receptor", "IL-12",
    "IL-1ra", "IL-6", "IL-8", "IL17RB",
    "IL2RA", "IL6RA", "Kallikrein-11", "Kallikrein-6",
    "LAP_TGF-beta-1", "MCP-1", "MIA", "MIC-A",
    "MPO", "Midkine", "Osteoprotegerin", "PDGF_subunit_B",
    "PECAM-1", "PSA", "PlGF", "Prolactin",
    "Prostasin", "Stem_cell_factor", "TGF-alpha", "TIE2",
    "TNF-R2", "TNF-RI", "TNFRSF4", "TNFSF14",
    "TR-AP", "Thrombopoietin", "Tissue_Factor", "U-PAR",
    "VEGF-A", "VEGF-D", "VEGFR-2"
  )

  testthat::expect_equal(length(protein_names), 75)

  individual_names <- paste0("AB01-", seq(1, 949))
  testthat::expect_equal(length(individual_names), 949)

  data <- rnorm(n = length(individual_names) * length(protein_names))

  na_indices <- sample(seq_along(data), size = 4482, replace = FALSE)
  data[na_indices] <- NA

  m <- matrix(
    data = data,
    nrow = length(individual_names),
    ncol = length(protein_names),
    dimnames = list(individual_names, protein_names)
  )

}
