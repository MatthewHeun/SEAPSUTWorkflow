test_that("get_all_pwt_data() works correctly", {

  countries <- c("USA", "GHA", "HND")

  pwt10_data <- get_all_pwt_data(countries = countries)

  testthat::expect_equal(colnames(pwt10_data), colnames(pwt10::pwt10.0))
  testthat::expect_equal(as.character(unique(pwt10_data$isocode)), c("GHA", "HND", "USA"))

})


test_that("get_L_K_GDP_data() works correctly", {

  countries <- c("USA", "GHA", "HND")

  pwt10_data <- get_all_pwt_data(countries = countries)

  L_K_GDP_data <- get_L_K_GDP_data(pwt10_data = pwt10_data)

  testthat::expect_equal(colnames(L_K_GDP_data), c("Country", "Year", "rgdpe", "rgdpo",
                                                   "rgdpna", "L", "Ladj", "K", "Kserv"))
})
