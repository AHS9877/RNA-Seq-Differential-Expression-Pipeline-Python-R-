library(ggplot2)
library(pheatmap)

# Load DE results
res <- read.csv("results/deseq2_results.csv", row.names = 1)

# Volcano plot
res$threshold <- as.factor(abs(res$log2FoldChange) > 1 & res$pvalue < 0.05)
ggplot(res, aes(x=log2FoldChange, y=-log10(pvalue), color=threshold)) +
  geom_point(alpha=0.6) +
  theme_minimal() +
  labs(title="Volcano Plot of Differential Expression") +
  ggsave("results/volcano_plot.png")

# Heatmap of top genes
topgenes <- head(order(res$pvalue), 50)
mat <- as.matrix(res[topgenes, c("log2FoldChange")])
pheatmap(mat, filename="results/heatmap.png")
