<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/12/14
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/mycss/login.css">
</head>
<body>
<form class="layui-form" action="${pageContext.request.contextPath}/userLogin.action" method="post">
    <div class="container">
        <button class="close" title="关闭">X</button>
        <%--<div class="layui-form-mid layui-word-aux">
            <label style="font-size: 35px;">欢迎登录新闻管理系统</label>
        </div>--%>
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-block">
                <input type="text" name="username" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密 &nbsp;&nbsp;码</label>
            <div class="layui-input-inline">
                <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit >登陆</button>
            </div>
        </div>
        <a href="" class="font-set">忘记密码?</a>  <a href="" class="font-set">立即注册</a>
    </div>
</form>
</body>
</html>
