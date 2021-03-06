% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CAT_DT.R
\name{CAT_DT}
\alias{CAT_DT}
\title{CAT decision tree}
\usage{
CAT_DT(
  bank,
  model = "GRM",
  crit = "MEPV",
  C = 0.3,
  stop = c(6, 0),
  limit = 200,
  inters = 0.98,
  p = 0.9,
  dens,
  ...
)
}
\arguments{
\item{bank}{\code{data.frame} or \code{matrix} of the item bank.
Rows represent items, and columns
represent parameters. If the model is \code{"GRM"}, the first column
represents the \code{alpha} parameters and the next columns represent the
\code{beta} parameters. If the model is \code{"NRM"}, odd columns represent
the \code{alpha} parameters and even columns represent \code{beta}
parameters}

\item{model}{polytomous IRT model. Options: \code{"GRM"} for Graded Response
Model and \code{"NRM"} for Nominal Response Model}

\item{crit}{item selection criterion. Options: "MEPV" for Minimum
Expected Posterior Variance and "MFI" for Maximum Fisher Information}

\item{C}{vector of maximum item exposures. If it is an integer, this value
is replicated for every item}

\item{stop}{vector of two components that represent the decision tree
stopping criterion. The first component represents the maximum level of the
decision tree, and the second represents the minimum standard error of the
ability level (if it is 0, this second criterion is not applied)}

\item{limit}{maximum number of level nodes}

\item{inters}{minimum common area between density functions in the nodes of
the evaluated pair in order to join them}

\item{p}{a-priori probability that controls the tolerance to join similar nodes}

\item{dens}{density function (e.g. dnorm, dunif, etc.)}

\item{...}{parameters of the density function}
}
\value{
An object of class \code{cat.dt}
}
\description{
Generates a \code{cat.dt} object containing the CAT decision tree.
This object has all the necessary information to build the tree.
}
\examples{
data("itemBank")
# Build the cat.dt
nodes = CAT_DT(bank = itemBank, model = "GRM", crit = "MEPV",
               C = 0.3, stop = c(3,0.05), limit = 100, inters = 0.9,
               p = 0.9, dens = dnorm, 0, 1)

# Estimate the ability level of a subject with responses res
CAT_ability_est(nodes, res = itemRes[1, ])
# or
nodes$predict(res = itemRes[1, ])
# or
predict(nodes, itemRes[1, ])

}
\author{
Javier Rodr?guez-Cuadrado
}
