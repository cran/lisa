## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, fig.height=1-------------------------------------------------
library(lisa)

plot(lisa$AndyWarhol_3)

## ---- fig.height = 2, results='hide'-------------------------------------
x <- lapply(1:5, function(x) structure(lisa_palette("AndyWarhol_3", n = x, "continuous"), name = paste0(x, ", continuous")))
y <- lapply(1:5, function(x) structure(lisa_palette("AndyWarhol_3", n = x, "discrete"), name = paste0(x, ", discrete")))

par(mfrow = c(2, 5))
lapply(c(x, y), plot)

## ------------------------------------------------------------------------
lisa$AndyWarhol_3[1:3]
lisa_palette("AndyWarhol_3", n = 3, type = "discrete")

## ---- error=TRUE---------------------------------------------------------
lisa_palette("AndyWarhol_3", n = 6, type = "discrete")

## ------------------------------------------------------------------------
grDevices::colorRampPalette(lisa$AndyWarhol_3)(3)

## ------------------------------------------------------------------------
ramp <- colorRamp(lisa$AndyWarhol_3)
x <- ramp(seq.int(0, 1, length.out = 3))
  if (ncol(x) == 4L) {
    rgb(x[, 1L], x[, 2L], x[, 3L], x[, 4L], maxColorValue = 255)
  } else {
    rgb(x[, 1L], x[, 2L], x[, 3L], maxColorValue = 255)
  }

## ---- fig.height=1, results='hide'---------------------------------------
x <- lisa$AndyWarhol_3
y <- lisa_palette("AndyWarhol_3", 1000, "continuous")

lapply(list(x, y), plot)

