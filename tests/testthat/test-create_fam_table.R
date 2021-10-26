test_that("use", {
  skip("Not yet")
  # Name of the file: NSPHS.WGS.hg38.plink1.fam
  fam_table <- create_fam_table()

  # [richel@sens2021565-bianca NSPHS_data]$ cat NSPHS.WGS.hg38.plink1.fam | wc
  # 1021    6126   21441
  expect_equal(nrow(fam_table), 1021)

  # [richel@sens2021565-bianca NSPHS_data]$ cat NSPHS.WGS.hg38.plink1.fam | head
  # 0	AB12-3456	0	0	0	-9
  # 0	AB12-4567	0	0	0	-9
  # 0	AB12-5678	0	0	0	-9
  # etcetera
  expect_true(all(fam_table$fam == 0))
  expect_false(all(fam_table$id == 0)) # These are the IDs, such as AB12-3456
  expect_true(all(fam_table$pat == 0))
  expect_true(all(fam_table$mat == 0))
  expect_true(all(fam_table$sex == 0))
  expect_true(all(fam_table$pheno == -9))
})
