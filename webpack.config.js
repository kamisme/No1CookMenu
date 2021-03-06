var path = require('path')
var webpack = require('webpack')


module.exports = {
  entry: {
    app:['./src/app.js'],
    vendors:["jquery"]
  },
  output: {
    path: path.resolve(__dirname, './dist'),
    publicPath: '/dist/',
    filename: 'build.js'
  },
  module: {
    rules: [
      {
        test: /\.vue$/,
        loader: 'vue-loader',
        options: {
          loaders: {
            // Since sass-loader (weirdly) has SCSS as its default parse mode, we map
            // the "scss" and "sass" values for the lang attribute to the right configs here.
            // other preprocessors should work out of the box, no loader config like this necessary.
            'scss': 'vue-style-loader!css-loader!sass-loader',
            'sass': 'vue-style-loader!css-loader!sass-loader?indentedSyntax'
          }
          // other vue-loader options go here
        }
      },
      {
        test: /\.js$/,
        loader: 'babel-loader',
        exclude: /node_modules/
      },
      {   test: /\.css$/, 
          // exclude: /node_modules/,
          loader: 'style-loader!css-loader?sourceMap' 
      },
      { 
          test: /\.(woff|svg|eot|ttf)\??.*$/,
          // exclude: /node_modules/,
          loader: 'url-loader?limit=50000&name=[path][name].[ext]'
      },
      {
          test: /\.scss$/,
          exclude: /node_modules/,
          loader: 'raw-loader!sass-loader'
          // loader: ExtractTextPlugin.extract("style", 'css!sass') //这里用了样式分离出来的插件，如果不想分离出来，可以直接这样写 loader:'style!css!sass'
      },
      {
        test: /\.(png|jpg|gif|svg)$/,
        loader: 'file-loader',
        options: {
          name: '[name].[ext]?[hash]'
        }
      }
    ]
  },
  resolve: {
    alias: {
      'vue$': 'vue/dist/vue.esm.js'
    }
  },
  devServer: {
    historyApiFallback: true,
    noInfo: true,
    // inline:true,
    // proxy:{
    //   '/LifeCircle':{
    //     target:"http:localhost/dk/project/No1CookMenu/serverPHP/Business/LifeCircle/LifeCircle.php",
    //     secure:false
    //   }
    // }
  },
  performance: {
    hints: false
  },
  devtool: '#eval-source-map',
  plugins:[
    new webpack.optimize.CommonsChunkPlugin({
      name:"vendors",
      filename:"common.js",
      minChunks:2
    })
  ]
}

if (process.env.NODE_ENV === 'production') {
  module.exports.devtool = '#source-map'
  // http://vue-loader.vuejs.org/en/workflow/production.html
  module.exports.plugins = (module.exports.plugins || []).concat([
    new webpack.DefinePlugin({
      'process.env': {
        NODE_ENV: '"production"'
      }
    }),
    new webpack.optimize.UglifyJsPlugin({
      sourceMap: true,
      compress: {
        warnings: false
      }
    }),
    new webpack.LoaderOptionsPlugin({
      minimize: true
    })
  ])
}
