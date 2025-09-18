###Python script to fetch a dataset from GEO
import GEOparse

# Download dataset (example: GSE111111 - replace with real ID)
gse_id = "GSE111111"
print(f"Downloading dataset {gse_id} from GEO...")
gse = GEOparse.get_GEO(geo=gse_id, destdir="./data")

# Save sample metadata
meta = gse.phenotype_data
meta.to_csv("./data/sample_metadata.csv")
print("Metadata saved to data/sample_metadata.csv")

# Save expression matrix
for gsm_name, gsm in gse.gsms.items():
    gsm.table.to_csv(f"./data/{gsm_name}.csv", index=False)

print("Expression data saved in ./data/")
