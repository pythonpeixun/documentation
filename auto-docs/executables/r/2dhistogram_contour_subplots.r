library(plotly)

p <- plotly(username='theengineear', key='o9zlr0hy6z')

t = seq(-1, 1.2, length=2000)
x = t^3+0.3*rnorm(2000)
y = t^6+0.3*rnorm(2000)
trace1 <- list(
  x = x, 
  y = y, 
  name = "points", 
  mode = "markers", 
  marker = list(
    size = 2, 
    color = "rgb(102,0,0)", 
    opacity = 0.4
  ), 
  type = "scatter"
)
trace2 <- list(
  x = x, 
  y = y, 
  scl = "Hot", 
  reversescl = TRUE, 
  name = "density", 
  ncontours = 20, 
  showscale = FALSE, 
  type = "histogram2dcontour"
)
trace3 <- list(
  x = x, 
  name = "x density", 
  marker = list(color = "rgb(102,0,0)"), 
  yaxis = "y2", 
  type = "histogram"
)
trace4 <- list(
  y = y, 
  name = "y density", 
  marker = list(color = "rgb(102,0,0)"), 
  xaxis = "x2", 
  type = "histogram"
)
data <- list(trace1, trace2, trace3, trace4)
layout <- list(
  xaxis = list(
    domain = c(0, 0.85), 
    showgrid = FALSE, 
    zeroline = FALSE
  ), 
  yaxis = list(
    domain = c(0, 0.85), 
    showgrid = FALSE, 
    zeroline = FALSE
  ), 
  width = 600, 
  height = 550, 
  autosize = FALSE, 
  margin = list(t = 50), 
  hovermode = "closest", 
  bargap = 0, 
  showlegend = FALSE, 
  xaxis2 = list(
    domain = c(0.85, 1), 
    showgrid = FALSE, 
    zeroline = FALSE
  ), 
  yaxis2 = list(
    domain = c(0.85, 1), 
    showgrid = FALSE, 
    zeroline = FALSE
  )
)

response <- p$plotly(data, kwargs=list(layout=layout, filename="2dhistogram-contour-subplots", fileopt="overwrite", auto_open="FALSE"))
url <- response$url
filename <- response$filename