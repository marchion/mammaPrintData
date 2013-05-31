\name{glasRGcy3}

\alias{glasRGcy3}

\docType{data}

\title{Gene expression, annotations and clinical information for the
  Glas cohort: set of dye-swap hybridizations in which the information
  was associated with RNA samples labeled with Cy3}

\description{
This package contains the \code{RGList-class} instance (see \code{limma})
for the gene expression data set published by Glas and colleagues.
This object contains the set of dye-swap hybridizations in which the
information provided in the ArrayExpress SDRF table was associated with
the RNA samples labeled with Cy3.
}

\usage{
data(glasRG)
}

\format{
The \code{glasRGcy3} \code{RGList-class} contains 1900 microarray
features and 307 samples. The following components were included:
\itemize{
  \item \code{glasRGcy3$targets}: a \code{data.frame} for
  the breast cancer patients clinical information;
  \item \code{glasRGcy3$genes}: a \code{data.frame} containing
  the microarray annotations;
  \item \code{glasRGcy3$R}: the raw median gene expression
  foreground intensities from the Red channel;
  \item \code{glasRGcy3$Rb}: the raw median gene expression
  background intensities from the Red channel;
  \item \code{glasRGcy3$G}: the raw median gene expression
  foreground intensities from the Green channel;
  \item \code{glasRGcy3$Gb}: the raw median gene expression
  background intensities from the Green channel;
  \item \code{glasRGcy3$logRatio}: the Log ratio
  between Red and Green channel, as available from the raw data files;
  \item \code{glasRGcy3$logRatioError}: the Log ratio Error
  associated with the Log Ratio between Red and Green channel,
  as available from the raw data files;
  \item \code{glasRGcy3$ID}: the microarray features identifiers,
  as available from the raw data files;
}
} 

\details{
This dataset corresponds to the breast cancer patients' cohort
published by Glas and collleagues in BMC Genomics (2006).
}

\source{
\url{http://www.ncbi.nlm.nih.gov/pubmed/?term=17074082}
}

\references{
  Annuska M Glas et al., "Converting a breast cancer microarray signature
  into a high-throughput diagnostic test", \emph{BMC Genomics},
  2006, \bold{7}:278-288
}

\seealso{
  See \code{\link[limma]{RGList-class}} 
}

\examples{
### load limma package
library(limma)

### load the glasRGcy3 dataset: dye-swap set in which the information provided
###inthe SDRF table was associated with the samples labeled with Cy3
data(glasRG)

### show the class of the glasRGcy3 dataset
class(glasRGcy3)

### show the dimentions of the glasRGcy3 dataset
dim(glasRGcy3)

### show the first 10 rows of the glasRGcy3 phenotype data
head(glasRGcy3$targets, n=10)

### show the first 10 features of the glasRGcy3 phenotype data
head(glasRGcy3$genes, n=10)
}

\keyword{datasets}
