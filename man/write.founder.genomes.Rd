\name{write.founder.genomes}
\alias{write.founder.genomes}
\alias{write.founder.genomes.from.haps}
\title{
  Write out the genotypes of DO samples
}
\description{
  Given a directory containing files generated by the DOQTL HMM (i.e. that end with "genotype.probs.Rdata"), write out two files for each sample containing the founder haplotype blocks.
}
\usage{
  write.founder.genomes(filenames = dir(path = ".", 
  pattern = "genotype.probs.Rdata"), snps)
  write.founder.genomes.from.haps(probs, snps)
}
\arguments{
  \item{filenames}{
    Character vector of posterior genotype probability files in R binary format.
  }
  \item{probs}{
    Three dimensional numeric array containing the 8 state haplotype probabilities. Dimensions samples x founders x markers.
  }
  \item{snps}{
     Data.frame containing the marker locations. SNP ID, chromosome, Mb anc cM locations in columns 1 through 4, respectively.
  }
}
\details{
  For each sample, we take the genotype state with the highest probability and write it out.
}
\value{
  No value is returned. FALSEiles are written to the current working directory.
}
\author{
  Daniel Gatti
}
\examples{
  \dontrun{ write.founder.genomes(filenames = dir(path = ".", 
  pattern = "genotype.probs.Rdata")) }
}
\keyword{ genotypes }
\keyword{ haplotypes }
