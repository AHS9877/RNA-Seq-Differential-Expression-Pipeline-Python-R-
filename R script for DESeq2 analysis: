# Load libraries
library(DESeq2)
library(readr)

# Load count matrix and metadata
count_data <- read_csv("data/GSM111111.csv")  # replace with merged matrix
metadata <- read_csv("data/sample_metadata.csv")

# Convert to DESeq2 object
dds <- DESeqDataSetFromMatrix(countData = as.matrix(count_data),
                              colData = metadata,
                              design = ~ condition)

# Run DE analysis
dds <- DESeq(dds)
res <- results(dds)

# Save results
write.csv(as.data.frame(res), file="results/deseq2_results.csv")
