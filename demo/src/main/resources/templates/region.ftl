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
    <title>地区分析</title>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts-all-3.js"></script>
    <script src="https://www.echartsjs.com/resource/echarts-stat-latest/dist/ecStat.min.js"></script>
    <script crossorigin="anonymous" integrity="sha512-WNLxfP/8cVYL9sj8Jnp6et0BkubLP31jhTG9vhL/F5uEZmg5wEzKoXp1kJslzPQWwPT1eyMiSxlKCgzHLOTOTQ==" src="https://lib.baomitu.com/jquery/3.5.1/jquery.js"></script></head>

<body>
<div id="main2" style="width: 1000px;height:600px;"></div>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    let myChart = echarts.init(document.getElementById('main2'));

    myChart.setOption({
        title: {
            text: '地区分析饼状图',
            left: 'center',
            top: 20,
            textStyle: {
                color: '#000'
            }
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            right: 10,
            top: 20,
            bottom: 20,
        },
        series : [{
                name: '访问来源',
                type: 'pie',    // 设置图表类型为饼图
                radius: '55%',  // 饼图的半径，外半径为可视区尺寸（容器高宽中较小一项）的 55% 长度。
                data:[],
                itemStyle: {
                    color: '#c23531',
                    shadowBlur: 200,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                },
                label: {
                    color: 'rgba(255, 255, 255, 0.3)'
                },
                labelLine: {
                    lineStyle: {
                        color: 'rgba(255, 255, 255, 0.3)'
                    },
                    smooth: 0.2,
                    length: 10,
                    length2: 20
                },
            },
        ],
        tooltip: {
            trigger: 'item',
            formatter: '{b} : {c} ({d}%)'
        },
    });

    $.get('http://localhost:8080/restaurants/data-Mine/region/data').done(function (data) {
        let result = [];
        for(let i=0;i<data.length;i++){
            result.push({
                name: data[i].regions,
                value: data[i].geshu
            })
        }
        myChart.setOption({
            series:[{
                data: result.sort(function (a, b) { return a.value - b.value; }),
            }],
            legend:{
                data: ['United Kingdom', 'California', 'New York City', 'Hong Kong', 'Singapore','Denmark','South Korea',
                    'Thailand','Taipei','Sweden','Chicago','Austria','Macau','Washington DC','Irelan','Sao Paulo','Norway',
                    'Rio de Janerio','Hungary','Croatia','Greece','Poland','Czech Republic']
            }
        })
    });

</script>

</body>
</html>
