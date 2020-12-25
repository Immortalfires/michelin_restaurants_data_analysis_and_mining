<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../static/img/favicon.ico">
    <title>查询详情</title>
</head>
<body>
    <div>
        <table class="table table-striped">
            <thead>
            <tr>
                <th id="name">餐厅名</th>
                <th id="city">城市</th>
                <th id="region">指南地区</th>
                <th id="cuisine">菜式</th>
                <th id="star">星级</th>
            </tr>
            </thead>
            <tbody id="originTable" class="table">
            <#list list as item>
                <tr>
                    <td><a href="${item.url!}"/>${item.name!}</td>
                    <td>${item.city!}</td>
                    <td>${item.region!}</td>
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

    <script crossorigin="anonymous" integrity="sha512-WNLxfP/8cVYL9sj8Jnp6et0BkubLP31jhTG9vhL/F5uEZmg5wEzKoXp1kJslzPQWwPT1eyMiSxlKCgzHLOTOTQ==" src="https://lib.baomitu.com/jquery/3.5.1/jquery.js"></script>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>

</body>
</html>
