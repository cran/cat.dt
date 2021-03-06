% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Fisher_NRM.R
\name{Fisher_NRM}
\alias{Fisher_NRM}
\title{Fisher Information under NRM}
\usage{
Fisher_NRM(theta_est, item_par, nres)
}
\arguments{
\item{theta_est}{ability level}

\item{item_par}{vector containing the item parameters. Odd components are
the \code{alpha} parameters and even are the \code{beta} parameters}

\item{nres}{number of possible item responses}
}
\value{
An integer that represents the Fisher Information value of the
specified item given the ability level
}
\description{
Computes the item Fisher Information given an ability level based on the NRM
model
}
\author{
Javier Rodriguez-Cuadrado
}
