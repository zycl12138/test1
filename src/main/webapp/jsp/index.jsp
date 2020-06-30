<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/11
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
    <%
        response.sendRedirect("../ProductServlet?method=findAllProduct");
    %>
</body>
</html>
