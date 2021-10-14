#' ggplot custom theme for PEDSnet
#'
#' @return A matrix of the infile
#' @export
#'
theme_pedsnet <- function () {

  # font_add_google(name = "Lato", family = "lato")
  # font_add_google(name = "Montserrat", family = "montserrat")

  theme_bw(base_size=12) %+replace%
    theme(
      panel.background  = element_blank(),
      plot.background = element_rect(fill="gray96", colour=NA),
      legend.background = element_rect(fill="transparent", colour=NA),
      legend.key = element_rect(fill="transparent", colour=NA),
      text = element_text(family = "montserrat", face="plain")
    )
}
