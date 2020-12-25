# michelin_restaurants_data_analysis_and_mining
*数据挖掘及管理系统 - 机器学习和数据挖掘课程设计 - 米其林餐厅数据挖掘管理系统*

### 一、[数据详情](https://github.com/Immortalfires/michelin_restaurants_data_analysis_and_mining/tree/master/data)

有三个数据文件一星级米其林餐厅(one-star-michelin-restaurants.csv)，二星级米其林餐厅(two-stars-michelin-restaurants.csv)以及三星级米其林餐厅(three-stars-michelin-restaurants.csv)。字段描述如下：

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

clean.csv为经python数据处理后的数据，对字符进行替换，取平均值填充了price缺失值，因为我没用到zipCode字段，就没有进行处理。

### 二、系统概要设计

1. SpringBoot+freemarker进行开发，可视化采用echarts。