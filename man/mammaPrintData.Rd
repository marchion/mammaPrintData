\name{mammaPrintData-package}

\alias{mammaPrintData-package}

\alias{mammaPrintData}

\docType{data}

\title{
  Gene expression, annotations and clinical information for the
  Glas and Buse cohorts
}

\description{
  This package contains the two \code{RGList-class} instances
  corresponding to the breast cancer patients' cohorts
  published by Glas and colleagues in BMC Genomics (2006),
  and by Buyse and collleagues in JNCI  (2006).
  Since in both studies a two-colors dye swap design was applied,
  this package contains two distinct \code{RGList-class} instances
  for each data set, one for each dye-swap set of hybridizations.
  This package contains unprocessed data, as obtained from
   the original raw data files available from the ArrayExpress repository.
}

\usage{
data(glasRG)
data(buyseRGa)
}

\format{
  The \code{RGList-class} instances contained in this package
  (\code{glasRGcy5}, \code{glasRGcy5},
  \code{buyseRGcy5}, and \code{buyseRGcy5},
  accounts for 1900 microarray features and 162 and 307 samples respectively.
} 

\seealso{
  See \code{\link[limma]{RGList-class}} 
}

\details{
  \tabular{ll}{
    Package: \tab mammaPrintData\cr
    Type: \tab Package\cr
    Version: \tab 0.99.5.\cr
    Date: \tab 2013-03-25\cr
    License: \tab Artistic-2.0\cr
  }
}

\author{
Luigi Marchionni \email{marchion@gmail.com}
}

\source{
\url{http://www.ncbi.nlm.nih.gov/pubmed/?term=17074082}
\url{http://www.ncbi.nlm.nih.gov/pubmed/?term=16954471}
}

\references{
  Annuska M Glas et al., "Converting a breast cancer microarray signature
  into a high-throughput diagnostic test", \emph{BMC Genomics},
  2006, \bold{7}:278-288

 Marc Buyse et al., "Validation and clinical utility of a 70-gene
 prognostic signature for women with node-negative
 breast cancer", \emph{JNCI}, 2006, \bold{98}(17):1183-1192
}

\examples{
### load limma package
library(limma)

### load the glasRG dataset: two different dye-swap sets:
###glasRGcy5: information provided for RNA  labeled with Cy5
###glasRGcy3: information provided for RNA  labeled with Cy3
data(glasRG)

### load the buyseRG dataset:  two different dye-swap sets:
###buyseRGcy5: reference RNA was labeled with Cy5
###buyseRGcy3: reference RNA was labeled with Cy3
data(buyseRG)

### show the class of the glasRGcy3 dataset
class(glasRGcy5)

### show the class of the buyseRGcy3 dataset
class(buyseRGcy3)

### show the dimentions of the glasRGcy3 dataset
dim(glasRGcy5)

### show the dimentions of the buyseRGcy3 dataset
dim(buyseRGcy3)

### show the first 10 rows of the glasRGcy3 phenotype data
head(glasRGcy3$targets, n=10)

### show the first 10 rows of the buyseRGcy5 phenotype data
head(buyseRGcy5$targets, n=10)

### show the first 10 features of the glasRGcy5 phenotype data
head(glasRGcy5$genes, n=10)

### show the first 10 features of the buyseRGcy3 phenotype data
head(buyseRGcy3$genes, n=10)
}

\keyword{datasets}
