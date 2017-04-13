<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2017/4/12
  Time: 19:55
  To change this template use File | Settings | File Templates.
  汪潇逸
  //用户id
//事项:  病假，产假，出差，年
//起始时间
//结束时间
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="../JdhSum/css/bootstrap.css" />
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <table class="table">
            <tr>
                <th>用户id</th>
                <th>事项</th>
                <th>起始时间</th>
                <th>结束时间</th>
            </tr>
            <c:forEach items="${requestScope.matterTable}" var="item">
                <tr>
                   <td>${item.userMessageId}</td>
                   <td>${item.matter}</td>
                  <%-- <td>${item.startTime}</td>
                   <td>${item.endTime}</td>--%>
                   <td><fmt:formatDate value="${item.startTime}" pattern ="yyyy-MM-dd"/> </td>
                   <td><fmt:formatDate value="${item.endTime}" pattern ="yyyy-MM-dd"/></td>


                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
