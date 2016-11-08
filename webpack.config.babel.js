import webpack from 'webpack';
import ExtractTextPlugin from 'extract-text-webpack-plugin';
import WebpackNotifierPlugin from 'webpack-notifier';

export default {
  entry: './src/ts/index.tsx',
  output: {
    path: `${__dirname}/dist`,
    filename: 'js/app.js'
  },
  devtool: 'source-map',
  resolve: {
    extensions: ['', '.webpack.js', '.web.js', '.ts', '.tsx', '.js']
  },
  module: {
    loaders: [
      {
        test: /\.scss$/,
        loader: ExtractTextPlugin.extract('style', 'css-loader!sass-loader')
      },
      {
        test: /\.tsx$|\.ts$/,
        exclude: /node_modules/,
        loaders: ['babel-loader','ts-loader']
      }
    ]
  },
  plugins: [
    new WebpackNotifierPlugin({title: 'Webpack', noisy: true}),
    new ExtractTextPlugin('css/app.css'),
  ]
};
