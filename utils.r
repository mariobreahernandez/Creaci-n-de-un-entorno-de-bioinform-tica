# ---- Punto 11: utilidades en R ----

# 11a) Descargar un archivo si no existe
download_data <- function(data_url, output_path) {
  if (!file.exists(output_path)) {
    dir.create(dirname(output_path), recursive = TRUE, showWarnings = FALSE)
    utils::download.file(url = data_url,
                         destfile = output_path,
                         mode = "wb",
                         quiet = TRUE)
  }
  normalizePath(output_path)
}

# 11b) URL de DrugBank (versión 5.1.8 desde Zenodo, enlace que me pasaste)
get_drugbank_url <- function() {
  "https://doi.org/10.5281/zenodo.7957438"
}

# 11c) URL de DisGeNET (curated, desde el repo de loucerac/drexml)
get_disgenet_url <- function() {
  "https://raw.githubusercontent.com/loucerac/drexml/master/drexml/resources/curated_gene_disease_associations.tsv.gz"
}
