<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/4/11
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html dir="ltr" lang="en-US">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Login Form by Azmind.com</title>

    <!--- CSS --->
    <link rel="stylesheet" href="../JdhSum/css/style.css" type="text/css" />
    <script type="text/javascript" src="../jQuery/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="../jQuery/selectivizr.js"></script>
    <noscript><link rel="stylesheet" href="../css/fallback.css" /></noscript>
</head>

<body>

<div id="container">
    <form action="index.jsp">
        <div class="login">欢迎来到注册页面(Register)</div>
        <div class="username-text">姓名(name)：</div>
        <div class="password-text">密码(password)：</div>
        <div class="username-field">
            <input type="text" />
        </div>
        <div class="password-field">
            <input type="password"/>
        </div>
        <input type="checkbox" name="remember-me" id="remember-me" /><label for="remember-me">记住用户名</label>
        <div class="forgot-usr-pwd"> <a href="#"></a></div>
        <input type="submit" name="submit" value="注册" />
    </form>
</div>
</body>
</html>
