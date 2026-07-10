# Okabe-Ito colour-blind-safe categorical palette.
# Reference: https://jfly.uni-koeln.de/color/#pallet
okabe_ito_palette <- c(
  "#E69F00", # orange
  "#56B4E9", # sky blue
  "#009E73", # bluish green
  "#F0E442", # yellow
  "#0072B2", # blue
  "#D55E00", # vermillion
  "#CC79A7", # reddish purple
  "#999999"  # neutral grey, used instead of black for softer contrast
)

# Build a named colour vector for a set of regions.
region_color_palette <- function(regions) {
  region_levels <- sort(unique(regions))

  if (length(region_levels) > length(okabe_ito_palette)) {
    stop("There are more geographic regions than available Okabe-Ito colours.")
  }

  rlang::set_names(
    okabe_ito_palette[seq_along(region_levels)],
    region_levels
  )
}
