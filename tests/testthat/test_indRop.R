context("i/o")

test_that("Can import data with great success", {
    file1 <- paste(system.file("extdata", package = "indRop"), "small1.counts.tsv", sep = "/")
    file2 <- paste(system.file("extdata", package = "indRop"), "small2.counts.tsv", sep = "/")
    dat <- readIndrop(c(file1,file2))
    d <- dim(dat)
    expect_equal(d[1], 25463)
    expect_equal(d[2], 24)
})

test_that("Can import singleton", {
    file1 <- paste(system.file("extdata", package = "indRop"), "small1.counts.tsv", sep = "/")
    dat <- readIndrop(file1)
    d <- dim(dat)
    expect_equal(d[1], 25463)
    expect_equal(d[2], 19)
})

test_that("Can import things with barcodes repeated", {
    file1 <- paste(system.file("extdata", package = "indRop"), "small1.counts.tsv", sep = "/")
    dat <- readIndrop(c(file1,file1))
    expect_equal("file1_bcAUEP", colnames(dat)[1])
    expect_equal("file2_bcAHGX", colnames(dat)[length(colnames(dat))])
})
