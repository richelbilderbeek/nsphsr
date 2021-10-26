test_that("use", {
  expect_silent(create_pea_3())
  pea_3 <- create_pea_3()

  # [richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea3.rntransformed.RData"); class(pea_3)'
  # [1] "matrix"
  expect_true("matrix" %in% class(pea_3))

  # [richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea3.rntransformed.RData"); nrow(pea_3)'
  # [1] 892
  expect_equal(nrow(pea_3), 892)

  # [richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea3.rntransformed.RData"); ncol(pea_3)'
  # [1] 438
  expect_equal(ncol(pea_3), 438)

  # [richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea3.rntransformed.RData"); sum(is.na(pea_3))'
  # [1] 29949
  expect_equal(sum(is.na(pea_3)), 29949)

  # [richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea3.rntransformed.RData"); sum(!is.na(pea_3))'
  # [1] 360747
  expect_equal(sum(!is.na(pea_3)), 360747)
})
