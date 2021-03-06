% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/R2MCDS-package.r
\docType{package}
\name{R2MCDS}
\alias{R2MCDS}
\alias{R2MCDS-package}
\title{Calling  Distance 6.2 MCDS engine from R.}
\description{
This package will allow the user to call the MCDS engine from Distance 6.2 in the R environment.
}
\details{
\tabular{ll}{
Package: \tab R2MCDS\cr
Type: \tab Package\cr
Version: \tab 0.9.1\cr
Date: \tab 2017-08-20\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}
}
\examples{
########################################
### Simple models without stratification
### Import and filter data
data(alcidae)
alcids <- mcds.filter(alcidae, transect.id = "WatchID", distance.field = "Distance", distance.labels = c("A", "B", "C", "D"), 
                         distance.midpoints = c(25, 75, 150, 250), effort.field = "WatchLenKm", lat.field = "LatStart", 
                         long.field = "LongStart", sp.field = "Alpha", date.field = "Date") 

### Run analysis with the MCDS engine. Here, the WatchID is used as the sample.
dist.out1 <- mcds.wrap(alcids, SMP_EFFORT="WatchLenKm",DISTANCE="Distance",SIZE="Count",Type="Line",
                         units=list(Distance="Perp",Length_units="Kilometers",
                                    Distance_units="Meters",Area_units="Square kilometers"),
                         breaks=c(0,50,100,200,300), estimator=list(c("HN","CO")),
                         STR_LABEL="STR_LABEL", STR_AREA="STR_AREA",SMP_LABEL="WatchID", 
                         path="c:/temp/distance",
                         pathMCDS="C:/Distance 6",verbose=FALSE)

summary(dist.out1)
##END
}
\references{
S.T. Buckland, D.R. Anderson, K.P. Burnham, J.L Laake, D.L. Borchers and L. Thomas. 2001. \emph{Introduction to Distance Sampling}. Estimating abundance of biological populations. Oxford University Press.\cr
Royle, J. A., D. K. Dawson, and S. Bates. 2004. \emph{Modeling abundance effects in distance sampling}. Ecology 85:1591-1597\cr
Fiske, I. and R. B. Chandler. 2011. \emph{unmarked: An R package for fitting hierarchical models of wildlife occurrence and abundance}. Journal of Statistical Software 43:1-23.\cr 
Thomas, L., S.T. Buckland, E.A. Rexstad, J. L. Laake, S. Strindberg, S. L. Hedley, J. R.B. Bishop, T. A. Marques, and K. P. Burnham. 2010.  Distance software: design and analysis of distance sampling surveys for estimating population size.  Journal of Applied Ecology 47: 5-14.
}
