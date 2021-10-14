# PEDSnet color Palette
pedsnet_colors <- c(
  `dark blue`       = "#414770",
  `light blue`      = "#5b85ab",
  `light purple`    = "#d4c5c7",
  `dark purple`     = "#372248",
  `brown green`     = "#b2aa8d",
  `orange`          = "#f46037"
)

#' Function to extract pedsnet colors as hex codes
#'
#' @param ... Character names of pedsnet_colors
#' @export
#'
pedsnet_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (pedsnet_colors)

  pedsnet_colors[cols]
}
