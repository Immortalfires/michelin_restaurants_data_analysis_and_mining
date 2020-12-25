<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../static/img/favicon.ico">

    <title>登录</title>

  </head>

  <body>
    <div class="container">
            <form class="form-signin" action="/logIn" method="post">
              <h2 class="form-signin-heading">请登录</h2>
              <#if msg ??>
                <p style="color:red;">${msg}</p>
              </#if>
              <label for="inputEmail" class="sr-only">用户名</label>
              <input name="username" type="text" id="inputEmail" class="form-control" placeholder="Username" required autofocus>
              <label for="inputPassword" class="sr-only">密码</label>
              <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="remember-me"> 记住我
                </label>
              </div>
              <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
            </form>
      </div>


    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="../static/css/signin.css" rel="stylesheet">

  </body>
</html>
