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
    <title>星级数目分析</title>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts-all-3.js"></script>
    <script src="https://www.echartsjs.com/resource/echarts-stat-latest/dist/ecStat.min.js"></script>
    <script crossorigin="anonymous" integrity="sha512-WNLxfP/8cVYL9sj8Jnp6et0BkubLP31jhTG9vhL/F5uEZmg5wEzKoXp1kJslzPQWwPT1eyMiSxlKCgzHLOTOTQ==" src="https://lib.baomitu.com/jquery/3.5.1/jquery.js"></script>
</head>

<body>
<div id="main2" style="width: 1000px;height:600px;"></div>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    let myChart = echarts.init(document.getElementById('main2'));
    myChart.setOption({
        title:{
            text: '星级餐厅数目统计'
        },
        legend:{
            data:['数量']
        },
        xAxis:{
            data: [],
            axisLabel: {
                inside: true,
                textStyle: {
                    color: '#fff'
                }
            },
            axisTick: {
                show: false
            },
            axisLine: {
                show: false
            },
            z: 10
        },
        yAxis:{
            axisLine: {
                show: false
            },
            axisTick: {
                show: false
            },
            axisLabel: {
                textStyle: {
                    color: '#999'
                }
            }
        },
        dataZoom: [
            {
                type: 'inside'
            }
        ],
        series:[{
            name: '数目统计',
            type: 'bar',
            itemStyle:{
                normal:{
                    color: '#27727B'
                }
            },
            data:[]
        }]
    });

    $.get('http://localhost:8080/restaurants/data-Mine/starNumbers/data').done(function (data) {
        myChart.setOption({
            legend: {
                data: ['数量']
            },
            xAxis:{
                data: ['1星级','2星级','3星级']
            },
            series:[{
                name: '数目统计',
                data: data
            }]
        });
        let zoomSize = 6;
        myChart.on('click', function (params) {
            console.log(data[Math.max(params.dataIndex - zoomSize / 2, 0)]);
            myChart.dispatchAction({
                type: 'dataZoom',
                startValue: data[Math.max(params.dataIndex - zoomSize / 2, 0)],
                endValue: data[Math.min(params.dataIndex + zoomSize / 2, data.length - 1)]
            });
        });
    })

</script>

</body>
</html>
