logisticFunction <- function(x, x0, L, k) {
  return(L / (1 + exp(-k*(x-x0))));
}

require(ggplot2);
require(grid);
require(gridExtra);
require(here);

fig1 <-
  arrangeGrob(ggplot(data.frame(x=seq(0, 20, .01),
                    y=logisticFunction(seq(0, 20, .01), x0=10, L=1, k=1)),
         aes(x=x, y=y)) +
    geom_rect(data=data.frame(x=1, y=1),
              mapping=aes(xmin=0, ymin=0, xmax=5, ymax=1), alpha=0.2, color=NA, fill="#F8E620") +
    geom_line(size=2) +
    theme_minimal() +
      labs(title="Potential dose-response\nrelationships: sigmoid",
           x = "Maternal alcohol consumption in units per week",
           y = "Probability of filial FASD"),
    ggplot(data.frame(x=seq(0, 20, .01),
                    y=seq(0, 1, .01/20)),
         aes(x=x, y=y)) +
      geom_rect(data=data.frame(x=1, y=1),
                mapping=aes(xmin=0, ymin=0, xmax=5, ymax=1), alpha=0.2, color=NA, fill="#F8E620") +
      geom_line(size=2) +
    theme_minimal() +
    labs(title="Potential dose-response\nrelationships: linear",
         x = "Maternal alcohol consumption in units per week",
         y = "Probability of filial FASD"),
    ncol=2);

grid.draw(fig1);

ggsave(plot=fig1,
       here("7-figures", "figure-1.pdf"),
       width=20, height=12,
       units='cm', dpi=600);

ggsave(plot=fig1,
       here("7-figures", "figure-1.png"),
       width=20, height=12,
       units='cm', dpi=600);
