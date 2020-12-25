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
    <script crossorigin="anonymous" integrity="sha512-WNLxfP/8cVYL9sj8Jnp6et0BkubLP31jhTG9vhL/F5uEZmg5wEzKoXp1kJslzPQWwPT1eyMiSxlKCgzHLOTOTQ==" src="https://lib.baomitu.com/jquery/3.5.1/jquery.js"></script>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="http://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>


    <title>米其林餐厅</title>
  </head>
  <body>

    <script type="text/javascript">
      let cookies_val = $.cookie('user');
      $(function () {
        let $li1 = $("#li1");let $li2 = $("#li2");let $li3 = $("#li3");
        $li1.hide();$li2.hide();$li3.hide();
        if(!(cookies_val === undefined || cookies_val === '')){
          $li1.show();$li3.show();
        }else{
          $li2.show();
        }
      })
    </script>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">米其林餐厅</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#" target="_self">首页</a></li>
            <li><a href="#">设置</a></li>
            <li><a href="#">剪影</a></li>
            <li class="dropdown">
              <a href="#" data-toggle="dropdown" class="dropdown-toggle">管理员</a>
              <ul class="dropdown-menu">
                <li id="li2"><a href="/">登录</a></li>
                <li id="li3"><a href="/logOut">退出</a></li>
              </ul>
            </li>

          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="查询你想要的...">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">精选<span class="sr-only">(current)</span></a></li>
            <li><a href="/restaurants/findAll">餐厅概览</a></li>
            <li><a href="/restaurants/data-Mine">数据分析</a></li>
            <li id="li1"><a href="/restaurants/dataManage">数据管理</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">餐厅概览</h1>

          <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="../static/img/food1.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
<#--              <h4>Label</h4>-->
<#--              <span class="text-muted">Something else</span>-->
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="../static/img/food2.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
<#--              <h4>Label</h4>-->
<#--              <span class="text-muted">Something else</span>-->
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="../static/img/food3.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
<#--              <h4>Label</h4>-->
<#--              <span class="text-muted">Something else</span>-->
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="../static/img/food4.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
<#--              <h4>Label</h4>-->
<#--              <span class="text-muted">Something else</span>-->
            </div>
          </div>

          <h2 class="sub-header">只为你推荐最好的</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
<#--                  <button class="button">🔽</button>-->
                  <th id="number">编号</th>
                  <th id="name">餐厅名</th>
                  <th id="year">获奖年份</th>
                  <th id="city">城市</th>
                  <th id="region">指南地区</th>
                  <th id="cuisine">菜式</th>
                  <th id="star">星级</th>
                </tr>
              </thead>
              <tbody>
              <#assign index=0/>
                <#list listThree as item>
                  <tr>
                      <#assign index=index+1>
                      <td>${index}</td>
                      <td><a href="${item.url}"/>${item.name}</td>
                      <td>${item.year}</td>
                      <td>${item.city}</td>
                      <td>${item.region}</td>
                      <td>${item.cuisine}</td>
                      <td style="color: red">❤❤❤</td>
                  </tr>
                </#list>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>

    <link href="../static/css/dashboard.css" rel="stylesheet">
  </body>
</html>
