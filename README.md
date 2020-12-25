# michelin_restaurants_data_analysis_and_mining
*数据挖掘及管理系统 - 机器学习和数据挖掘课程设计 - 米其林餐厅数据挖掘管理系统*

### 一、[数据详情](https://github.com/Immortalfires/michelin_restaurants_data_analysis_and_mining/tree/master/data)

1. 有三个数据文件一星级米其林餐厅(one-star-michelin-restaurants.csv)，二星级米其林餐厅(two-stars-michelin-restaurants.csv)以及三星级米其林餐厅(three-stars-michelin-restaurants.csv)。字段描述如下：

| 字段名    | 描述含义     |
| --------- | ------------ |
| name      | 餐厅名称     |
| year      | 获奖年份     |
| latitude  | 餐厅纬度     |
| longitude | 餐厅经度     |
| city      | 餐厅所在城市 |
| region    | 对应指南地区 |
| zipCode   | 邮递区号     |
| cuisine   | 美食风格     |
| price     | 价格范围     |
| url       | 餐厅网址     |

2. clean.csv为经python数据处理后的数据，对字符进行替换，取平均值填充了price缺失值，因为我没用到zipCode字段，就没有进行处理。
3. restaurant.sql为数据库备份。其中包括restaurants表和users表。

### 二、系统概要设计

1. SpringBoot+freemarker+bootstrap进行开发，可视化采用echarts。

2. 前端采用bootstrap框架，进行了简单修改。

3. 对数据的分析包括，对餐厅经纬度的聚类分析，以及餐厅不同星级数目的简单统计，对餐厅所处地区的统计分析。

   [![rRN1IO.md.png](https://s3.ax1x.com/2020/12/25/rRN1IO.md.png)](https://imgchr.com/i/rRN1IO)

   [![rRNldK.md.png](https://s3.ax1x.com/2020/12/25/rRNldK.md.png)](https://imgchr.com/i/rRNldK)

4. 用户登陆只简单验证了账号密码，未对权限做出控制。不过可以根据浏览器cookie判断的登录态，实现登陆后可以对数据进行增加和删除，退出后只能进行浏览和查询。

### 三、系统概览

1. 登录页

   [![rRNaLt.md.png](https://s3.ax1x.com/2020/12/25/rRNaLt.md.png)](https://imgchr.com/i/rRNaLt)

2. 首页

   [![rRNweP.md.png](https://s3.ax1x.com/2020/12/25/rRNweP.md.png)](https://imgchr.com/i/rRNweP)