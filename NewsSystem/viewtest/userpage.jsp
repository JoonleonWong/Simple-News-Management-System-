<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/12/11
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>主页面</title>
    <script src="${pageContext.request.contextPath}/jquery-3.5.1.js"></script>
</head>
<body>
<script>
    $(function () {
        var msg = "${msg}";
        if(msg!=null&&msg!=""){
            alert(msg);
        }
    })
</script>
 <p style="text-align: center">欢迎您:${sessionScope.user.username}</p>
 <div id="publishnews" style="text-align: center">
     <form action="${pageContext.request.contextPath}/publishNews.action" method="post">
         <label>请选择新闻主题:</label>
         <select required name="subject" id="subject">
             <option value="体育">体育</option>
             <option value="政治">政治</option>
             <option value="经济">经济</option>
             <option value="文化">文化</option>
             <option value="科技">科技</option>
             <option value="军事">军事</option>
         </select>
         <br>
         <label>请输入新闻标题:</label>
         <input type="text" name="title" id="title" required>
         <br>
         <textarea id="content" name="content" rows="5" cols="30"></textarea>
         <br>
         <button id="newssubmit" type="submit" style="text-align: center">发布</button>
     </form>
 </div>
 <div id="displayAllNews">
     <table align="center" style="width: 1000px;text-align: center;">
         <tr>
             <th>序号</th>
             <th>主题</th>
             <th>标题</th>
             <th>摘要</th>
         </tr>
         <c:forEach items="${newsList}" var="news" varStatus="status">
             <tr>
                 <td>${status.count}</td>
                 <td>${news.subject}</td>
                 <td><a href="${pageContext.request.contextPath}/displayNewsDetail.action?id=${news.id}">${news.title}</a></td>
                 <td>${news.newsabstract}</td>
             </tr>
         </c:forEach>
     </table>
 </div>
</body>
</html>
