library(plotly)

p <- plotly(username='theengineear', key='o9zlr0hy6z')

trace1 <- list(
  x = c(0, 1, 2, 3, 4, 5, 6, 7, 8), 
  y = c(8, 7, 6, 5, 4, 3, 2, 1, 0), 
  type = "scatter"
)
trace2 <- list(
  x = c(0, 1, 2, 3, 4, 5, 6, 7, 8), 
  y = c(0, 1, 2, 3, 4, 5, 6, 7, 8), 
  type = "scatter"
)
data <- list(trace1, trace2)
layout <- list(
  xaxis = list(
    type = "log", 
    autorange = TRUE
  ), 
  yaxis = list(
    type = "log", 
    autorange = TRUE
  )
)

response <- p$plotly(data, kwargs=list(layout=layout, filename="axes-range-type", fileopt="overwrite", auto_open="FALSE"))
url <- response$url
filename <- response$filename