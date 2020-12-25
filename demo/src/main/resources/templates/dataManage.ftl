<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../static/img/favicon.ico">

    <title>数据管理</title>

    <link href="../static/css/grid.css" rel="stylesheet">
    <script crossorigin="anonymous" integrity="sha512-WNLxfP/8cVYL9sj8Jnp6et0BkubLP31jhTG9vhL/F5uEZmg5wEzKoXp1kJslzPQWwPT1eyMiSxlKCgzHLOTOTQ==" src="https://lib.baomitu.com/jquery/3.5.1/jquery.js"></script>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>

  </head>

  <body>
    <div class="container">
      <div class="page-header">
        <h1>数据管理</h1>
      </div>

      <form action="/restaurants/add" method="post">
        <h3>增加</h3>
        <div align="right">
          <button type="submit">确定</button>
          <button type="reset">重置</button>
        </div>
        <div class="row">
          <div class="col-md-6">
            <label for="inputName"></label>
            <input name="name" type="text" id="inputName" class="form-control" placeholder="餐厅名称" required autofocus>
          </div>
          <div class="col-md-6">
            <label for="inputUrl"></label>
            <input name="url" type="text" id="inputUrl" class="form-control" placeholder="餐厅网址" required>
          </div>
          <div class="col-md-6">
            <label for="inputCity"></label>
            <input name="city" type="text" id="inputCity" class="form-control" placeholder="所在城市" required>
          </div>
          <div class="col-md-6">
            <label for="inputRegion"></label>
            <input name="region" type="text" id="inputRegion" class="form-control" placeholder="指南地区" required>
          </div>
          <div class="col-md-6">
            <label for="inputYear"></label>
            <input name="year" type="text" id="inputYear" class="form-control" placeholder="获奖年份" required>
          </div>
          <div class="col-md-6">
            <label for="inputCuisine"></label>
            <input name="cuisine" type="text" id="inputCuisine" class="form-control" placeholder="特色菜式" required>
          </div>
          <div class="col-md-6">
            <label for="inputPrice"></label>
            <input name="price" type="text" id="inputPrice" class="form-control" placeholder="人均价格" required>
          </div>
          <div class="col-md-6">
            <label for="inputStar"></label>
            <input name="star" type="text" id="inputStar" class="form-control" placeholder="星级" required>
          </div>
          <div class="col-md-6">
            <label for="inputLatitude"></label>
            <input name="latitude" type="text" id="inputLatitude" class="form-control" placeholder="所在纬度" required autofocus>
          </div>
          <div class="col-md-6">
            <label for="inputLongitude"></label>
            <input name="longitude" type="text" id="inputLongitude" class="form-control" placeholder="所在经度" required autofocus>
          </div>
        </div>
      </form>

      <hr/>

      <form action="/restaurants/delete" method="post">
        <h3>删除</h3>
        <div align="right">
          <button type="submit">确定</button>
          <button type="reset">重置</button>
        </div>
        <div class="row">
          <div class="col-md-12">
            <label for="inputDeleteName"></label>
            <input name="name" type="text" id="inputDeleteName" class="form-control" placeholder="餐厅名称" required>
          </div>
        </div>
      </form>
    </div>
  </body>
</html>
