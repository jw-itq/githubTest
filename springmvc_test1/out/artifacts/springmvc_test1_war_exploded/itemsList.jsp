<%--
  Created by IntelliJ IDEA.
  User: shiwanming
  Date: 19-2-13
  Time: 下午5:42
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/list.action" method="post">
        <table width="100%" border="1">
            <tr>
                <td><input type="submit" value="查询"></td>
            </tr>
        </table>
        ger id;
        private String name;
        private Float price;
        private String pic;
        private Date createtime;
        private String detail;
        <table width="100%" border="1">
            <c:forEach items="${itemsList}" var="item">
                <tr>
                    <td>${item.name}</td>
                    <td>${item.price}</td>
                    <td>${item.pic}</td>
                    <td>${item.detail}</td>
                    <td><fmt:formatDate value="${item.createtime}" pattern="yyyy-MM-dd HH-mm-ss"/> </td>
                    <td><a href="">修改</a></td>
                </tr>
            </c:forEach>
        </table>
    </form>
</body>
</html>
