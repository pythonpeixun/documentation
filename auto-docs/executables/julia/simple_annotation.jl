using Plotly

using Plotly
Plotly.signin("theengineear", "o9zlr0hy6z")

trace1 = [
  "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  "y" => [0, 1, 3, 2, 4, 3, 4, 6, 5], 
  "type" => "scatter"
]
trace2 = [
  "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  "y" => [0, 4, 5, 1, 2, 2, 3, 4, 2], 
  "type" => "scatter"
]
data = [trace1, trace2]
layout = [
  "showlegend" => false, 
  "annotations" => [
    [
      "x" => 2, 
      "y" => 5, 
      "text" => "Annotation Text", 
      "xref" => "x", 
      "yref" => "y", 
      "showarrow" => true, 
      "arrowhead" => 7, 
      "ay" => -40, 
      "ax" => 0
    ]
  ]
]

response = Plotly.plot([data], ["layout" => layout, "filename" => "simple-annotation", "fileopt" => "overwrite", "auto_open" => "false"])
plot_url = response["url"]