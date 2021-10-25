test_that("use", {
  expect_silent(create_pae_2())
  pae_2 <- create_pae_2()

  #[richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea_1_2.rntransformed.AJ.RData"); nrow(pea_2)'
  #[1] 957
  expect_equal(nrow(pae_2), 957)

  #[richel@sens2021565-bianca NSPHS_data]$ Rscript -e 'load("pea_1_2.rntransformed.AJ.RData"); ncol(pea_2)'
  #[1] 48
  expect_equal(ncol(pae_2), 48)

})
