% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/differential_expression.R
\name{DiffExpTest}
\alias{DiffExpTest}
\title{Likelihood ratio test for zero-inflated data}
\usage{
DiffExpTest(object, cells.1, cells.2, assay.type = "RNA",
  genes.use = NULL, print.bar = TRUE)
}
\arguments{
\item{object}{Seurat object}

\item{cells.1}{Group 1 cells}

\item{cells.2}{Group 2 cells}

\item{assay.type}{Type of assay to fetch data for (default is RNA)}

\item{genes.use}{Genes to test. Default is to use all genes}

\item{print.bar}{Print a progress bar once expression testing begins (uses
pbapply to do this)}
}
\value{
Returns a p-value ranked matrix of putative differentially expressed
genes.
}
\description{
Identifies differentially expressed genes between two groups of cells using
the LRT model proposed in McDavid et al, Bioinformatics, 2013
}
\examples{
pbmc_small
DiffExpTest(pbmc_small, cells.1 = WhichCells(object = pbmc_small, ident = 1),
            cells.2 = WhichCells(object = pbmc_small, ident = 2))

}
