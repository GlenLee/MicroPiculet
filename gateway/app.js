var http = require('http');
var httpProxy = require("http-proxy");

var PORT = 8080;

var proxy = httpProxy.createProxyServer();
proxy.on('error', function (err, req, res) {
	console.log('proxy error.');
	res.end();
});

// ZooKeeper TEST
var zoo = require('./zookeeper.js');
zoo(function(ip) {
	console.log('go: ' + ip);
	//proxy.web(req, res, {
	//	target: 'http://' + ip
	//});
});

// 集群轮询
var index = 0;
var app = http.createServer(function (req, res) {
	index++;
	console.log('go index: ' + index);
	if (index % 2 === 0) {
		proxy.web(req, res, {
			target: 'http://127.0.0.1:17001'
		});
	} else {
		proxy.web(req, res, {
			target: 'http://127.0.0.2:17002'
		});
	}
});
app.listen(PORT, function () {
	console.log('server is running at %d', PORT);
});