<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/12/13
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>管理员主页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">新闻管理系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><p style="text-align: center">欢迎您：管理员</p>></li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">${sessionScope.user.username}</li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/exitLogin.action">退出登录</a></li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/views/newscharts.jsp">新闻数据统计</a></li>
        </ul>
    </div>
        <table class="layui-hide" id="newstable" lay-filter="newstable"></table>
        <script type="text/html" id="delbar">
            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
        </script>
            <script>
                layui.use(['table','jquery'],function () {
                    console.log()
                    var table = layui.table;
                    var $=layui.jquery;
                    //表格数据的渲染
                    table.render({
                        elem:"#newstable",
                        url:'${pageContext.request.contextPath}/getNewslistBypage.action',//表中的数据接口
                        page:true,//开启分页
                        cols:[[
                            {field:'seq',title:'序号',templet:'#seq',width:60},
                            {field:'subject',title:'主题',width:60},
                            {field:'title',title:'标题',width:200},
                            {field:'newsabstract',title:'摘要',width:200},
                            {field: 'content',title:'内容',width: 500},
                            {field:'username',title:'发布者',width:100},
                            {field:'createtime',title:'发布时间',width:100},
                            {fixed: 'right', title:'操作', toolbar: '#delbar', width:150}
                        ]]
                    });
                    table.on('tool(newstable)', function(obj){
                        var data = obj.data;
                        if(obj.event === 'del'){
                            layer.confirm('确定删除此新闻？', function(index){
                                $.ajax({
                                    url:"${pageContext.request.contextPath}/deleteNewsById.action",
                                    type:"POST",//是get还是post
                                    data:{'id':data.id},//传递的参数
                                    dataType:'JSON',
                                    cache:false,
                                    success:function (data) {
                                        if(data.code==0){
                                            //如果请求成功
                                            obj.del();
                                            layer.close(index);
                                        }else {
                                            alert("删除失败1")
                                        }

                                    },
                                    error:function () {
                                        alert("请稍后重试");
                                    }

                                });
                            });
                        }
                    });
                });
            </script>
</div>
<script id="seq">
    {{d.LAY_TABLE_INDEX+1}}

</script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>
