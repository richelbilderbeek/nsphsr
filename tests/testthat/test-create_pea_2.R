test_that("use", {
  expect_silent(create_pea_2())
  pea_2 <- create_pea_2()

  #[richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea_1_2.rntransformed.AJ.RData"); nrow(pea_2)'
  #[1] 957
  expect_equal(nrow(pea_2), 957)

  #[richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea_1_2.rntransformed.AJ.RData"); ncol(pea_2)'
  #[1] 48
  expect_equal(ncol(pea_2), 48)

  # [richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea_1_2.rntransformed.AJ.RData"); sum(is.na(pea_2))'
  # [1] 1317
  expect_equal(sum(is.na(pea_2)), 1317)

  # [richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea_1_2.rntransformed.AJ.RData"); sum(!is.na(pea_2))'
  # [1] 44619
  expect_equal(sum(!is.na(pea_2)), 44619)
})
