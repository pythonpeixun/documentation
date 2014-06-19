using Plotly

using Plotly
Plotly.signin("theengineear", "o9zlr0hy6z")

trace1 = [
  "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  "y" => [0, 3, 6, 4, 5, 2, 3, 5, 4], 
  "type" => "scatter"
]
trace2 = [
  "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  "y" => [0, 4, 7, 8, 3, 6, 3, 3, 4], 
  "type" => "scatter"
]
data = [trace1, trace2]
layout = [
  "legend" => [
    "x" => 100, 
    "y" => 1
  ], 
  "showlegend" => true
]

response = Plotly.plot([data], ["layout" => layout, "filename" => "legend-outside", "fileopt" => "overwrite", "auto_open" => "false"])
plot_url = response["url"]