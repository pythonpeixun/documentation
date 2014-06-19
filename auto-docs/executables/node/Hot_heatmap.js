var plotly = require('plotly')('theengineear', 'o9zlr0hy6z')

var unpack = require('ndarray-unpack');
var zeros = require('zeros');
var fill = require('ndarray-fill');

var size = 50;
var z = unpack(fill(zeros([size, size]), function(c,r) {
  return Math.sqrt((r*c)/(size*size));
}));
var data = [
  {
    z: z, 
    scl: "Hot", 
    type: "heatmap"
  }
];
var layout = {title: "Hot"};

var graph_options = {filename: "Hot-heatmap", fileopt: "overwrite", layout: layout, auto_open: "false"}
plotly.plot(data, graph_options, function (err, msg) {
    console.log(msg);
});