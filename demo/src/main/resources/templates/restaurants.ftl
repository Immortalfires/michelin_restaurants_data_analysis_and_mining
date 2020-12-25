<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../static/img/favicon.ico">
    <title>餐厅详情</title>
    <script crossorigin="anonymous" integrity="sha512-WNLxfP/8cVYL9sj8Jnp6et0BkubLP31jhTG9vhL/F5uEZmg5wEzKoXp1kJslzPQWwPT1eyMiSxlKCgzHLOTOTQ==" src="https://lib.baomitu.com/jquery/3.5.1/jquery.js"></script>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="../static/css/theme.css" rel="stylesheet">

    <style type="text/css">

    </style>

  </head>

  <body>

    <script type="text/javascript">
      $(".btnJump").click(function () {
        location.href = "/restaurants/dataFind"
      });
    </script>


    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/restaurants/">米其林餐厅</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="/restaurants/">首页</a></li>
            <li><a href="#" target="_blank">关于我们</a></li>
            <li><a href="#" target="_blank">联系我们</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="container theme-showcase" role="main">
      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1>为您挑选最好的</h1>
        <p class="recommendation">米其林餐厅，是《米其林红色宝典》对各地美食、餐厅收录的餐厅。1900年米其林轮胎的创办人出版了一本供旅客在旅途中选择餐厅的指南《米其林指南》。内容为旅游的行程规划、景点推荐、道路导引等。《米其林红色宝典》（又称《米其林红色指南》）每年对餐馆评定星级。</p>
      </div>

      <div class="page-header" >
        <h1>餐厅</h1>

        <form align="right" action="/restaurants/dataFind" method="post">
          <input name="nameFind" type="text" placeholder="按名称查询" style="background-color: transparent">
            <button class="btnJump" type="submit">查询</button>
          <input name="regionFind" type="text" placeholder="按地区查询" style="background-color: transparent">
            <button class="btnJump" type="submit">查询</button>
          <input name="cuisineFind" type="text" placeholder="按菜式查询" style="background-color: transparent">
            <button class="btnJump" type="submit">查询</button>
        </form>
      </div>
      <div>
        <div>
          <table class="table table-striped">
            <thead>
              <tr>
                <th id="number">编号</th>
                <th id="name">餐厅名</th>
                <th id="year">获奖年份</th>
                <th id="city">城市</th>
                <th id="region">指南地区</th>
                <th id="price">人均价格</th>
                <th id="cuisine">菜式</th>
                <th id="star">星级</th>
              </tr>
            </thead>
            <tbody id="originTable" class="table">
            <#assign i=1>
              <#list listAll as item>
                <tr>
                  <td>${i}</td>
                  <#assign i=i+1>
                  <td><a href="${item.url!}"/>${item.name!}</td>
                  <td>${item.year!}</td>
                  <td>${item.city!}</td>
                  <td>${item.region!}</td>
                  <td>${item.price!}</td>
                  <td>${item.cuisine!}</td>
                  <td style="color: red">
                    <#if item.star==1>❤</#if>
                    <#if item.star==2>❤❤</#if>
                    <#if item.star==3>❤❤❤</#if>
                  </td>
                </tr>
              </#list>
            </tbody>
          </table>
        </div>
      </div>
    </div> <!-- /container -->
  </body>
</html>
