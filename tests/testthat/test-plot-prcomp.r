context("plot principle component analysis")

test_that("test error", {
	expect_silent(plot_prcomp(iris))
	expect_error(plot_prcomp(airquality))
})

test_that("test return object", {
	plot_list <- plot_prcomp(iris, variance_cap = 1, nrow = 2L, ncol = 2L)
	expect_is(plot_list, "list")
	expect_equal(names(plot_list), c("page_1", "page_2"))
	expect_true(all(vapply(plot_list, is.ggplot, TRUE)))
})
