\name{avgProteinPerCh}
\alias{avgProteinPerCh}
\title{Average Proteins per Chromosome}
\usage{
avgProteinPerCh(object)
}
\arguments{
  \item{object}{A Genome object}
}
\description{
Calculates the average number of proteins per chromosome.
}
\examples{
g <- new("Genome", genomeName="Human", numChromosomes=23, numProteins=20000)
avgProteinPerCh(g)
}
