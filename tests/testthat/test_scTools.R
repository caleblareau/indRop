context("KNN Dist Graph Works")

test_that("KNN works", {
    x <- matrix(rnorm(100), nrow = 5)
    y <- spRing(x, 2)
    y2 <- spRing(x, 2, igraph = TRUE)
    y3 <- spRing(x, 2, igraph = TRUE, knngraph = TRUE)
    expect_equal(dim(y)[2], 2)
    expect_equal(length(y3), 3)
})

