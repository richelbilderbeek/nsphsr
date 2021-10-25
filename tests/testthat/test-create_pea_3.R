test_that("use", {
  expect_silent(create_pae_3())
  pae_3 <- create_pae_3()

  # [richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea3.rntransformed.RData"); class(pea_3)'
  # [1] "matrix"
  expect_true("matrix" %in% class(pea_3))

  # [richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea3.rntransformed.RData"); nrow(pea_3)'
  # [1] 892
  expect_equal(nrow(pae_3), 892)

  # [richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea3.rntransformed.RData"); ncol(pea_3)'
  # [1] 438
  expect_equal(ncol(pae_3), 438)
})
