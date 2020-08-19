const path = require('path');
const GasPlugin = require('gas-webpack-plugin');
const src = path.resolve(__dirname, 'src/javascript');
const dist = path.resolve(__dirname, 'dist');

module.exports = {
	context: __dirname,
	entry: `${src}/index.js`,
	output: {
		path: `${dist}`,
		filename: 'Code.gs'
	},
	plugins: [
		new GasPlugin()
	]
}
