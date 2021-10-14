# Color palettes from main pedsnet colors
pedsnet_palettes <- list(
  `main`  = pedsnet_cols("dark blue", "light blue", "orange"),

  `dark`  = pedsnet_cols("dark blue", "dark purple"),

  `light`   = pedsnet_cols("orange", "light blue", "light purple"),

  `mixed` = pedsnet_cols("dark blue", "light blue", "light purple", "dark purple", "brown green",
                         "orange"),

  `light-ish`  = pedsnet_cols("light blue", "light purple", "brown green")
)

#' Return function to interpolate a pedsnet color palette
#'
#' @param palette Character name of palette in pedsnet_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#' @export
#'
pedsnet_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- pedsnet_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
