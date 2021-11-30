<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/12/24
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>普通用户主页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/mycss/test.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/mycss/home.css" />
</head>
<body class="layui-layout-body" style="background-color: #eaeaea">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">新闻
            <%--<img src="${pageContext.request.contextPath}/image/upc.jpg" class="logimg">--%>
        </div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/getNewslistBySubject.action?subject=体育">体育</a></li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/getNewslistBySubject.action?subject=政治">政治</a></li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/getNewslistBySubject.action?subject=经济">经济</a></li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/getNewslistBySubject.action?subject=文化">文化</a></li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/getNewslistBySubject.action?subject=科技">科技</a></li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/getNewslistBySubject.action?subject=军事">军事</a></li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/getMoreNews.action">更多</a></li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/views/login.jsp">用户登录</a></li>
            <li class="layui-nav-item"><a href="">用户注册</a></li>
        </ul>
    </div>

    <div class="layui-body"  style="display: flex;flex-direction: row;justify-content: space-evenly">
        <!-- 内容主体区域 -->
        <div>
        <c:forEach items="${newsList}" var="news" varStatus="status">
            <div class="news_container">
                <div style="display: flex;flex-direction: row">
                <div style="margin-right: 20px">
                    <c:if test="${news.subject=='政治'}">
                    <img src="${pageContext.request.contextPath}/image/p.jpg" style="width: 200px;">
                    </c:if>
                    <c:if test="${news.subject=='体育'}">
                        <img src="${pageContext.request.contextPath}/image/sport.jpg" style="width: 200px;">
                    </c:if>
                    <c:if test="${news.subject=='文化'}">
                        <img src="${pageContext.request.contextPath}/image/c.jpg" style="width: 200px;">
                    </c:if>
                    <c:if test="${news.subject=='经济'}">
                        <img src="${pageContext.request.contextPath}/image/e.jpg" style="width: 200px;">
                    </c:if>
                    <c:if test="${news.subject=='军事'}">
                        <img src="${pageContext.request.contextPath}/image/m.jpg" style="width: 200px;">
                    </c:if>
                    <c:if test="${news.subject=='科技'}">
                        <img src="${pageContext.request.contextPath}/image/t.jpg" style="width: 200px;">
                    </c:if>
                </div>
                <div>
                <span class="news_title">${news.title}</span>
                <span><a href="${pageContext.request.contextPath}/displayNewsDetail.action?id=${news.id}" class="news_content">${news.content}</a></span>
                </div></div> <div style="display: flex;flex-direction: row;justify-content: space-between;margin-top: 20px">
            <span class="news_username"><i class="layui-icon layui-icon-edit" style="font-size: 22px;"></i>${news.username}</span>

            <span class="news_time"><i class="layui-icon layui-icon-time" style="font-size: 22px;"></i>${news.createtime}</span>

            <span class="news_subject"> <i class="layui-icon layui-icon-note" style="font-size: 22px;"></i>${news.subject}</span></div>
        </div>
        </c:forEach>
    </div>
    <div id="conweather">
        <div class="layui-carousel" id="weather">
            <div carousel-item>
                <div id="qingdao" style="font-size: larger">福建/泉州 1/8 15:52 天气实况 气温10℃；南风4级；湿度：65%</div>
                <div id="beijing"></div>
                <div id="shanghai"></div>
                <div id="quanzhou"></div>
                <div id="xiamen"></div>
            </div>
        </div>
    </div>
    </div>
    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © Create By Junlong,Wang SE1802 1808020223
    </div>
</div>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
    });
    layui.use('carousel', function(){
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#weather'
            ,width: '100%' //设置容器宽度
            ,arrow: 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
        });
    });
</script>
</body>
</html>