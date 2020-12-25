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
    <title>经纬度聚类</title>
    <script crossorigin="anonymous" integrity="sha512-WNLxfP/8cVYL9sj8Jnp6et0BkubLP31jhTG9vhL/F5uEZmg5wEzKoXp1kJslzPQWwPT1eyMiSxlKCgzHLOTOTQ==" src="https://lib.baomitu.com/jquery/3.5.1/jquery.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts-all-3.js"></script>
    <script src="https://www.echartsjs.com/resource/echarts-stat-latest/dist/ecStat.min.js"></script>
</head>

<style>
    .myDiv{
        float: left;
        height: auto;
    }
</style>

<body>
<div id="main2" style="width: 600px;height:400px;"></div>
<script type="text/javascript">
    let myChart = echarts.init(document.getElementById('main2'));

    myChart.setOption({
        title: {
            text: '经纬度分析',
            left: 'center'
        },
        toolbox: {
            show: true,
            feature: {
                dataZoom: {
                    yAxisIndex: 'none'
                },
                saveAsImage: {}
            }
        },
        tooltip: {
            trigger: 'item',
            axisPointer: {
                type: 'cross'
            }
        },
        legend: {
            data:['坐标点']
        },
        xAxis: {
            data:[]
        },
        yAxis: {
            data:[]
        },
        series: [{
                symbolSize: 10,
                name: '簇1',
                type: 'scatter',
                data: [],
                color: '#c60c30'
            },
        ]
    });

    let latitude1 = [];
    let longitude1 = [];


    $.get('http://localhost:8080/restaurants/data-Mine/kmeansLocation/data').done(function (data) {
        console.log(data);
        if(data){
           for(let i=0;i<data.length;i++){
               latitude1.push(data[i].latitude);
               longitude1.push(data[i].longitude);
           }
            console.log(latitude1);
            console.log(longitude1);

        }
        myChart.setOption({
            xAxis:{
                data:latitude1
                },
            series:[{
                data: longitude1,
                itemStyle:{
                    normal:{
                        color: function (data) {
                            if(data.clusterId === 0){
                                return "#9BCA63"
                            }else if(data.clusterId === 1){
                                return "#c60c30"
                            }else if(data.clusterId === 2){
                                return "#61a0a8"
                            }else
                                return "#d48265"
                        }
                    }
                }
            }]
        })
    })
</script>

</body>
</html>
