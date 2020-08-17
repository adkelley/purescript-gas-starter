const path = require('path');
const GasPlugin = require('gas-webpack-plugin');
const src = path.resolve(__dirname, 'bundle');
const dist = path.resolve(__dirname, 'dist');

module.exports = {
	context: __dirname,
	entry: `${src}/main.js`,
	output: {
		path: `${dist}`,
		filename: 'Code.gs'
	},
	plugins: [
		new GasPlugin()
	]
}
