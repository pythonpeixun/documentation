signin('theengineear', 'o9zlr0hy6z')

x = randn(500,1);
y = randn(500,1)+1;
data = {...
  struct(...
    'x', x, ...
    'y', y, ...
    'type', 'histogram2d')...
};

response = plotly(data, struct('filename', '2d-histogram', 'fileopt', 'overwrite', 'auto_open', 'false'));
plot_url = response.url