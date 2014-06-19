using Plotly

using Plotly
Plotly.signin("theengineear", "o9zlr0hy6z")

data = [
  [
    "x" => ["2013-10-04 22:23:00", "2013-11-04 22:23:00", "2013-12-04 22:23:00"], 
    "y" => [1, 3, 6], 
    "type" => "scatter"
  ]
]

response = Plotly.plot([data], ["filename" => "date-axes", "fileopt" => "overwrite", "auto_open" => "false"])
plot_url = response["url"]