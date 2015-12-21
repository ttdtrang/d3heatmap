library(d3heatmap)
data(mtcars)
zscore <- function(x) { return( (x-mean(x)) / sd(x) ) }

scaled = data.frame(lapply(mtcars, zscore), row.names=row.names(mtcars))
d3heatmap(scaled)
