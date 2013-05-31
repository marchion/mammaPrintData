\name{buyseRGcy3}

\alias{buyseRGcy3}

\docType{data}

\title{Gene expression, annotations and clinical information for the
  Buyse cohort: set of dye-swap hybridizations in which the reference
  RNA was labeled with Cy3}

\description{
This package contains the \code{RGList-class} instance (see \code{limma})
for the gene expression data set published by Buyse and colleagues.
This object contains the set of dye-swap hybridizations in which the reference
RNA was labeled with Cy3.
}

\usage{
data(buyseRG)
}

\format{
The \code{buyseRGcy3} \code{RGList-class} contains 1900 microarray
features and 307 samples. The following components were included:
\itemize{
  \item \code{buyseRGcy3$targets}: a \code{data.frame} for
  the breast cancer patients clinical information;
  \item \code{buyseRGcy3$genes}: a \code{data.frame} containing
  the microarray annotations;
  \item \code{buyseRGcy3$R}: the raw median gene expression
  foreground intensities from the Red channel;
  \item \code{buyseRGcy3$Rb}: the raw median gene expression
  background intensities from the Red channel;
  \item \code{buyseRGcy3$G}: the raw median gene expression
  foreground intensities from the Green channel;
  \item \code{buyseRGcy3$Gb}: the raw median gene expression
  background intensities from the Green channel;
  \item \code{buyseRGcy3$logRatio}: the Log ratio
  between Red and Green channel, as available from the raw data files;
  \item \code{buyseRGcy3$logRatioError}: the Log ratio Error
  associated with the Log Ratio between Red and Green channel,
  as available from the raw data files;
  \item \code{buyseRGcy3$ID}: the microarray features identifiers,
  as available from the raw data files;
}
} 

\details{
This dataset corresponds to the breast cancer patients' cohort
published by Buyse and collleagues in JNCI (2006).
}

\source{
\url{http://www.ncbi.nlm.nih.gov/pubmed/?term=16954471}
}

\references{
 Marc Buyse et al., "Validation and clinical utility of a 70-gene
 prognostic signature for women with node-negative
 breast cancer", \emph{JNCI}, 2006, \bold{98}(17):1183-1192
}

\seealso{
  See \code{\link[limma]{RGList-class}} 
}

\examples{
### load limma package
library(limma)

### load the buyseRGcy3 dataset: dye-swap set in which the reference
###RNA was labeled with Cy3 (from the Glas cohort)
data(buyseRG)

### show the class of the buyseRGcy3 dataset
class(buyseRGcy3)

### show the dimentions of the buyseRGcy3 dataset
dim(buyseRGcy3)

### show the first 10 rows of the buyseRGcy3 phenotype data
head(buyseRGcy3$targets, n=10)

### show the first 10 features of the buyseRGcy3 phenotype data
head(buyseRGcy3$genes, n=10)
}

\keyword{datasets}
