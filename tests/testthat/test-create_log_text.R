test_that("use", {
  skip("Not now")
  # [richel@sens2021565-bianca NSPHS_data]$ cat NSPHS.WGS.hg38.plink1.log
  # PLINK v2.00a2.3LM AVX2 Intel (24 Jan 2020)
  # Options in effect:
  #   --bpfile NSPHS.WGS.hg38
  # --make-bed
  # --out NSPHS.WGS.hg38.plink1
  #
  # Hostname: sens2016007-bianca.uppmax.uu.se
  # Working directory: /castor/project/proj_nobackup/HG38_NSPHS.files
  # Start time: Sun Mar  7 09:29:01 2021
  #
  # Random number seed: 1615105741
  # 7317 MiB RAM detected; reserving 3658 MiB for main workspace.
  # Using 1 compute thread.
  # 1021 samples (0 females, 0 males, 1021 ambiguous; 1021 founders) loaded from
  # NSPHS.WGS.hg38.fam.
  # 14651585 variants loaded from NSPHS.WGS.hg38.bim.
  # Note: No phenotype data present.
  # Writing NSPHS.WGS.hg38.plink1.fam ... done.
  # Writing NSPHS.WGS.hg38.plink1.bim ... done.
  # Writing NSPHS.WGS.hg38.plink1.bed ... done.
  #
  # End time: Sun Mar  7 09:29:53 2021
  created <- create_log_text()
  expected <- c(
    "PLINK v2.00a2.3LM AVX2 Intel (24 Jan 2020)",
    "Options in effect:",
    "  --bpfile NSPHS.WGS.hg38",
    "--make-bed",
    "--out NSPHS.WGS.hg38.plink1",
    "",
    "Hostname: sens2016007-bianca.uppmax.uu.se",
    "Working directory: /castor/project/proj_nobackup/HG38_NSPHS.files",
    "Start time: Sun Mar  7 09:29:01 2021",
    "",
    "Random number seed: 1615105741",
    "7317 MiB RAM detected; reserving 3658 MiB for main workspace.",
    "Using 1 compute thread.",
    "1021 samples (0 females, 0 males, 1021 ambiguous; 1021 founders) loaded from",
    "NSPHS.WGS.hg38.fam.",
    "14651585 variants loaded from NSPHS.WGS.hg38.bim.",
    "Note: No phenotype data present.",
    "Writing NSPHS.WGS.hg38.plink1.fam ... done.",
    "Writing NSPHS.WGS.hg38.plink1.bim ... done.",
    "Writing NSPHS.WGS.hg38.plink1.bed ... done.",
    "",
    "End time: Sun Mar  7 09:29:53 2021"
  )
  expect_equal(created, expected)
})
