<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/12/12
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
    <title>${news.id}</title>
</head>
<body>
    <p>发表者：${news.username}</p>
    <p>发表时间：${news.createtime}</p>
    <p>主题：${news.subject}</p>
    <p>标题：${news.title}</p>
    <p>摘要：${news.newsabstract}</p>
    <p>内容:${news.content}</p>
</body>
</html>
