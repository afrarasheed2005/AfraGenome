setClass(
  "Genome",
  slots = list(
    genomeName = "character",
    numChromosomes = "numeric",
    numProteins = "numeric"
  )
)



setGeneric("avgProteinPerCh", function(object) {
  standardGeneric("avgProteinPerCh")
})

setMethod("avgProteinPerCh", "Genome", function(object) {
  avg = object@numProteins / object@numChromosomes
  return(round(avg))
})

remotes::install_github("afrarasheed2005/AfraGenome", force = TRUE)
library(AfraGenome)

g = new("Genome",
         genomeName = "Human",
         numChromosomes = 23,
         numProteins = 20000)

avgProteinPerCh(g)


