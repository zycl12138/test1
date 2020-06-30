<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/15
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:if test="${'admin'.equals(requestScope.u.username)}">
        欢迎${requestScope.u.username}
    </c:if>
</body>
</html>
