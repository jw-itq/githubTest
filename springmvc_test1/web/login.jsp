<%--
  Created by IntelliJ IDEA.
  User: shiwanming
  Date: 19-2-19
  Time: 下午12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>${message}</h1>
    <form method="get" action="${pageContext.request.contextPath}/login.action">
        姓名：<input type="text" name="name">
        密码：<input type="text" name="password">
        <input type="submit" value="提交">
    </form>
</body>
</html>
