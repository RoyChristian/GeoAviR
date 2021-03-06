% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/keep.best.model.R
\name{keep.best.model}
\alias{keep.best.model}
\title{Keep the best model of a distanceList object}
\usage{
keep.best.model(x)
}
\arguments{
\item{x}{A \code{distanceList} object. See \code{\link{mcds.wrap}}}
}
\value{
An object of class \code{"distanceFit"}
}
\description{
This function keep the model with the lowest AICc value in a distanceList object.
}
\details{
Select the model with the smallest AICc value. If more than one model have a Delta AICc equal to zero the uniform models
are discaded and the best model is chosen randomly between the remaining models.If the two best models are the uniform model, 
one is chose randomly and a warning is printed.
}
\section{Author}{
Christian Roy
}

