test_that("use", {
  expect_silent(create_pea_1())
  pea_1 <- create_pea_1()

  # [richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea_1_2.rntransformed.AJ.RData"); class(pea_1)'
  # [1] "matrix"

  # Does not work exactly
  expect_true("matrix" %in% class(pea_1))

  # [richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea_1_2.rntransformed.AJ.RData"); nrow(pea_1)'
  # [1] 949
  expect_equal(nrow(pea_1), 949)

  #[richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea_1_2.rntransformed.AJ.RData"); ncol(pea_1)'
  # [1] 75
  expect_equal(ncol(pea_1), 75)

  # [richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea_1_2.rntransformed.AJ.RData"); sum(is.na(pea_1))'
  # [1] 4482
  expect_equal(sum(is.na(pea_1)), 4482)

  # [richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea_1_2.rntransformed.AJ.RData"); sum(!is.na(pea_1))'
  # [1] 66693
  expect_equal(sum(!is.na(pea_1)), 66693)
})
