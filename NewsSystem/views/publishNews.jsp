<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/12/25
  Time: 1:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻发布</title>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/mycss/home.css" />
</head>
<body class="layui-layout-body">
<div class="publicnews" id="publishnews" >
    <fieldset class="layui-elem-field layui-field-title">
        <legend>发布新闻</legend>
    </fieldset>
    <form class="layui-form layui-form-pane" action="${pageContext.request.contextPath}/publishNews.action" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label" style="font-weight: 200">新闻标题</label>
            <div class="layui-input-block">
                <input type="text" name="title" id="title" autocomplete="off" required placeholder="请输入标题" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label" style="font-weight: 200">新闻类型</label>
            <div class="layui-input-block">
                <select name="subject" id="subject">
                    <option value="体育" selected>体育</option>
                    <option value="政治">政治</option>
                    <option value="经济">经济</option>
                    <option value="文化">文化</option>
                    <option value="科技">科技</option>
                    <option value="军事">军事</option>
                </select>
            </div>
        </div>

        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label" style="text-align: center;font-weight: 200">新闻内容</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" name="content" id="content" class="layui-textarea" required style="height: 300px"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <button class="layui-btn" type="submit">发布</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </form>
</div>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
    layui.use('form', function() { //此段代码必不可少
        var form = layui.form;
        form.render();
    });
</script>
</body>
</html>
