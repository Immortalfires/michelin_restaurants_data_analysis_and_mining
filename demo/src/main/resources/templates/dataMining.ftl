<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../static/img/favicon.ico">

    <title>餐厅数据分析</title>

    <title>米其林餐厅</title>
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">米其林餐厅</a>
        </div>
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1>数据分析</h1>
        <p>下面是我对数据的一些分析</p>
        <p><a class="btn btn-primary btn-lg" href="#" role="button">了解更多关于数据挖掘 &raquo;</a></p>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-3">
          <h2>经纬度的分析</h2>
          <p>对经纬度进行聚类分析，并画图表示出来</p>
          <p><a class="btn btn-default" href="/restaurants/data-Mine/kmeansLocation" role="button">View details &raquo;</a></p>
        </div>

        <div class="col-md-3">
          <h2>经纬度的分析</h2>
          <p>对经纬度进行聚类分析,直观表示数据</p>
          <p><a class="btn btn-default" href="/restaurants/data-Mine/kmeansLocation/data1" role="button">View details &raquo;</a></p>
        </div>

        <div class="col-md-3">
          <h2>对星级餐厅的数目统计</h2>
          <p>简单数目统计</p>
          <p><a class="btn btn-default" href="/restaurants/data-Mine/starNumbers" role="button">View details &raquo;</a></p>
       </div>
        <div class="col-md-3">
          <h2>地区餐厅统计</h2>
          <p>对相同地区的餐厅进行统计</p>
          <p><a class="btn btn-default" href="/restaurants/data-Mine/region" role="button">View details &raquo;</a></p>
        </div>
      </div>

      <hr>
    </div> <!-- /container -->

    <script crossorigin="anonymous" integrity="sha512-WNLxfP/8cVYL9sj8Jnp6et0BkubLP31jhTG9vhL/F5uEZmg5wEzKoXp1kJslzPQWwPT1eyMiSxlKCgzHLOTOTQ==" src="https://lib.baomitu.com/jquery/3.5.1/jquery.js"></script>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="./css/jumbotron.css">

  </body>
</html>
