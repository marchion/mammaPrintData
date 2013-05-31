\name{buyseRGcy5}

\alias{buyseRGcy5}

\docType{data}

\title{Gene expression, annotations and clinical information for the
  Buyse cohort: set of dye-swap hybridizations in which the reference
  RNA was labeled with Cy5}

\description{
This package contains the \code{RGList-class} instance (see \code{limma})
for the gene expression data set published by Buyse and colleagues.
This object contains the set of dye-swap hybridizations in which the reference
RNA was labeled with Cy5.
}

\usage{
data(buyseRG)
}

\format{
The \code{buyseRGcy5} \code{RGList-class} contains 1900 microarray
features and 307 samples. The following components were included:
\itemize{
  \item \code{buyseRGcy5$targets}: a \code{data.frame} for
  the breast cancer patients clinical information;
  \item \code{buyseRGcy5$genes}: a \code{data.frame} containing
  the microarray annotations;
  \item \code{buyseRGcy5$R}: the raw median gene expression
  foreground intensities from the Red channel;
  \item \code{buyseRGcy5$Rb}: the raw median gene expression
  background intensities from the Red channel;
  \item \code{buyseRGcy5$G}: the raw median gene expression
  foreground intensities from the Green channel;
  \item \code{buyseRGcy5$Gb}: the raw median gene expression
  background intensities from the Green channel;
  \item \code{buyseRGcy5$logRatio}: the Log ratio
  between Red and Green channel, as available from the raw data files;
  \item \code{buyseRGcy5$logRatioError}: the Log ratio Error
  associated with the Log Ratio between Red and Green channel,
  as available from the raw data files;
  \item \code{buyseRGcy5$ID}: the microarray features identifiers,
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

### load the buyseRGcy5 dataset: dye-swap set in which the reference
###RNA was labeled with Cy3 (from the Glas cohort)
data(buyseRG)

### show the class of the buyseRGcy5 dataset
class(buyseRGcy5)

### show the dimentions of the buyseRGcy5 dataset
dim(buyseRGcy5)

### show the first 10 rows of the buyseRGcy5 phenotype data
head(buyseRGcy5$targets, n=10)

### show the first 10 features of the buyseRGcy5 phenotype data
head(buyseRGcy5$genes, n=10)
}

\keyword{datasets}
