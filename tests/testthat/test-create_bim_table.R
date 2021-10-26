test_that("use", {
  skip("Not now")

  # bim_table <- plinkr::get_test_bim_table()
  bim_table <- create_bim_table()

  # [richel@sens2021565-bianca NSPHS_data]$ cat NSPHS.WGS.hg38.plink1.bim | wc
  # 14651585 87909510 392628400
  expect_equal(nrow(bim_table), 14651585)

  # [richel@sens2021565-bianca NSPHS_data]$ head NSPHS.WGS.hg38.plink1.bim
  #
  # Note that I changed:
  #  * the SNP IDs, e.g. rs1234 -> rs1934
  #  * the nucleotides, e.g. A -> C, etc
  # But not the chromosomes
  #
  # 1	.	0	16911	A	AC
  # 1	.	0	28811	G	GCC
  # 1	.	0	47685	A	ATCT
  # 1	rs199643075	0	53138	T	TCC
  # 1	.	0	65301	C	CG
  # 1	rs201488535	0	63735	C	CGTA
  # 1	.	0	73373	C	CAG
  # 1	.	0	78204	C	CAT
  # 1	rs200721409	0	81590	A	AG
  # 1	.	0	90105	T	TAGG
  # [richel@sens2021565-bianca NSPHS_data]$ tail NSPHS.WGS.hg38.plink1.bim
  # 22	.	0	5099808	C	CG
  # 22	.	0	5089811	A	AAGGT
  # 22	.	0	5079619	GT	G
  # 22	rs200607571	0	50797585	CT	C
  # 22	.	0	54099879	A	AACAGACACACATAGCTGGTCAAACATGATTTCAGCCATGAATCAGCCATAAATATTCTGACGGTTAATTTTAGACATCTACTTGATCGGATTGAGAGACACACATAGCTGGTCAAACACGATTTCAGCCATGAATCAGGCATAAATATTCTGATGGTTAATTTTAGACCTCTACTTGAGTGGATTG
  # 22	.	0	50580200	G	GC
  # 22	.	0	50780233	T	TCA
  # 22	.	0	50303038	GGGGA	G
  # 22	.	0	50820039	C	CCG
  # X	.	0	111515403	T	C
  #

  expect_true("1" %in% bim_table$chr)
  expect_true("22" %in% bim_table$chr)
  expect_false("23" %in% bim_table$chr)
  expect_true("X" %in% bim_table$chr)


  # [richel@sens2021565-bianca NSPHS_data]$ egrep -R "\\." --include=NSPHS.WGS.hg38.plink1.bim | wc
  # 3484722 20908332 161779120
  expect_equal(sum(bim_table$id == "."), 3484722)

  # [richel@sens2021565-bianca NSPHS_data]$ egrep -R "rs" --include=NSPHS.WGS.hg38.plink1.bim | wc
  # 11166863 67001178 611790490
  expect_equal(sum(stringr::str_count(bim_table$id, "rs")), 11166863)
  #
  # All SNP IDs are either . or start with rs
  # 11166863 + 3484722 == 14651585
})
