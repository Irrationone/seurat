% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{MetageneBicorPlot}
\alias{MetageneBicorPlot}
\title{Plot CC bicor saturation plot}
\usage{
MetageneBicorPlot(object, bicor.data, grouping.var, dims.eval,
  gene.num = 30, num.possible.genes = 2000, return.mat = FALSE,
  smooth = TRUE, display.progress = TRUE)
}
\arguments{
\item{object}{A Seurat object}

\item{bicor.data}{Optionally provide data.frame returned by function to avoid
recalculation}

\item{grouping.var}{Grouping variable specified in alignment procedure}

\item{dims.eval}{dimensions to evalutate the bicor for}

\item{gene.num}{Xth gene to look at bicor for}

\item{num.possible.genes}{Number of possible genes to search when choosing
genes for the metagene. Set to 2000 by default. Lowering will decrease runtime
but may result in metagenes constructed on fewer than num.genes genes.}

\item{return.mat}{Return data.matrix instead of ggplot2 object}

\item{smooth}{Smooth curves}

\item{display.progress}{Show progress bar}
}
\description{
The function provides a useful plot for evaluating the number of CCs to
proceed with in the Seurat alignment workflow. Here we look at the biweight
midcorrelation (bicor) of the Xth gene ranked by minimum bicor across the
specified CCs for each group in the grouping.var. For alignment of more than
two groups, we average the bicor results for the reference group across the
pairwise alignments.
}
\examples{
pbmc_small <- DoKMeans(object = pbmc_small, k.genes = 3)
KMeansHeatmap(object = pbmc_small)

}
