var zookeeper = require('node-zookeeper-client');

var CONNECTION_STRING = '127.0.0.1:2181';
var OPTIONS = {
	sessionTimeout: 5000
};

function getConfig(fn) {
	var zk = zookeeper.createClient(CONNECTION_STRING, OPTIONS);
	zk.on('connected', function () {
		//console.log(zk);

		//zk.create('/hellohost', new Buffer('hello'), function (error, path) {
		//	console.log(path);
		//});

		zk.exists('/hellohost', function (error, stat) {
			if (stat) {
				console.log('node exists.');
			} else {
				console.log('node does not exists.');
			}
		});

		zk.getChildren('/', function (error, children, stat) {
			console.log(children);

			if (error) {
				console.log(error.stack);
				return;
			}
		});
		
		zk.getData('/hellohost', function (error, data, stat) {
			var ip = data.toString();
			console.log('zoo data: ' + ip);
			fn(ip);
		});

		//zk.remove('/hellohost', function (error) {
		//	if (!error) {
		//		console.log(error);
		//	}
		//});

		zk.close();
	});
	zk.connect();
}

module.exports = getConfig;