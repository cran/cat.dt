% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/probab_GRM.R
\name{probab_GRM}
\alias{probab_GRM}
\title{Item response GRM probabilities}
\usage{
probab_GRM(item_par, nres)
}
\arguments{
\item{item_par}{vector containing the item parameters. First component
is the \code{alpha} parameter and the next are the \code{beta} parameters}

\item{nres}{number of possible item responses}
}
\value{
A matrix of response probabilities. Rows represent evaluated ability
levels and columns represent responses
}
\description{
Computes the probabilities of picking every possible response of an
specified item from the item bank for all evaluated ability levels
using the Graded Response Model
}
\author{
Javier Rodríguez-Cuadrado
}
