library(FELLA)

fella_dir = "data/fella_hsa_hypergeom"

fella_graph = buildGraphFromKEGGREST(organism = "hsa")

# Build only what is needed for hypergeometric enrichment
buildDataFromGraph(
  keggdata.graph = fella_graph,
  databaseDir = fella_dir,
  internalDir = FALSE,
  matrices = "hypergeom",
  normality = NULL
)
