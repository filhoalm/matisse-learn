plot_ef <- function(E, comp, xlab, ylab, log = comp != "ld", colour = "#0B2E4F") {
  d <- E[ef == comp]
  p <- ggplot(d, aes(x, value)) +
    geom_ribbon(aes(ymin = lo, ymax = hi), fill = colour, alpha = 0.15) +
    geom_line(colour = colour, linewidth = 0.7) +
    labs(x = xlab, y = ylab, title = toupper(comp))
  if (log) p <- p + scale_y_log10()
  if (comp == "ld") p <- p + geom_hline(yintercept = 0, linewidth = 0.3, linetype = 2)
  p
}
