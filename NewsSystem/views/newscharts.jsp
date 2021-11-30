<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/12/14
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻数据统计</title>
    <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
    <script src="${pageContext.request.contextPath}/js/echarts.min.js"></script>

</head>
<body>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="myChart" style="width: 50%;height:400px; float: left"></div>
<div id="myChart2" style="width: 50%;height:400px; float: right" ></div>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('myChart'));
    $.ajax({
        url:"${pageContext.request.contextPath}/getNewsForCharts.action",
        type:"POST",
        dataType:'JSON',
        cache:false,
        success:function (data) {
            var option1 = {
                title: {
                    text: data.title
                },
                tooltip: {},
                legend: {
                    data:data.legendData
                },
                toolbox:{
                    feature:{
                        saveAsImage: {}
                    }
                },
                xAxis: {
                    data:data.xData
                },
                yAxis:{},
                series: [{
                    name:'数量',
                    type:'bar',
                    data:data.serieData
                }]
            };
            myChart.setOption(option1)
        },
        error:function () {
            alert(data);
        }

    });
</script>
<script type="text/javascript">
    var myChart2 = echarts.init(document.getElementById('myChart2'));
    //使用ajax加载数据
    $.ajax({
        method:'post',
        url:'${pageContext.request.contextPath}/getpipDataByYear.action',
        dataType:'json',
        success:function(data){
            // 指定图表的配置项和数据
            var option = {
                title: {
                    text: '新闻年份数据统计扇形图'
                },
                toolbox:{
                    feature:{
                        saveAsImage: {}
                    }
                },
                series : [
                    {
                        name: '年份',
                        type: 'pie',
                        radius: '55%',
                        data:data,
                        roseType: 'angle',
                        itemStyle: {
                            normal: {
                                shadowBlur: 200,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    }
                ]
            };
            myChart2.setOption(option);
        },
        error:function () {
            alter(data);
        }
    });
</script>
</body>
</html>
