<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/4/6
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%--
<div class="container-fluid">

    <!--row行样式-->


    <div class="row">
        <c:if test="${requestScope.user!=null}">
            <script>alert(${requestScope.user})</script>
        </c:if>

            <div id="content-1"
                 style="height: 280px;width: 300px;border: 1px #31b0d5 solid;background-color: #31b0d5;display: none">
                <form action="/userRegister" method="post">
                    <div class="form-group">
                        <label>输入账号</label>
                        <input name="accountParameter" class="form-control"/>
                    </div>

                    <div class="form-group">
                        <label>输入密码</label>
                        <input type="password" class="form-control" id="password">
                    </div>

                    <div class="form-group">
                        <label>确认密码</label>
                        <input type="password" name="password" class="form-control" onmouseout="foo(this)">
                    </div>
                        <input type="submit" class="btn btn-primary" value="提交" style="width: 300px"/>
                </form>
                <a href="/userLogin">已有账号，马上登陆</a>
            </div>
        </div>


    </div>

</div>
--%>



<html dir="ltr" lang="en-US">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Login Form by Azmind.com</title>
    <!--- CSS --->
    <link rel="stylesheet" href="../JdhSum/css/style.css" type="text/css" />
    <!--- Javascript libraries (jQuery and Selectivizr) used for the custom checkbox --->

  <%--  <!--[if (gte IE 6)&(lte IE 8)]>
    <script type="text/javascript" src="../jQuery/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="../jQuery/selectivizr.js"></script>
    <noscript>
        <link rel="stylesheet" href="../css/fallback.css"/>
    </noscript>
    <![endif]-->
--%>
</head>

<body>


<div id="container">
    <form action="/userLogin" method="post">
        <div class="login">LOGIN(登录)</div>
        <div class="username-text">姓名：</div>
        <div class="password-text">密码：</div>
        <div class="username-field">
            <input type="text" name="accountParameter" value="用户名" onfocus="javascript:if (this.value=='用户名')this.value=''"/>
        </div>
        <div class="password-field">
            <input type="password" name="password"  />
        </div>
        <input type="checkbox" name="remember-me" id="remember-me" /><label for="remember-me">记住用户名</label>
        <div class="forgot-usr-pwd">忘记 <a href="#">密码</a>?&nbsp;&nbsp;&nbsp;&nbsp;<a href="welcome.jsp">☆注册新用户</a></div>
        <input value="登录" />
        <button type="submit" >登录</button>

    </form>
</div>
<div id="footer">
    恭 喜 您 要 成 为 我 公 司 的用 户 的 一 员 了 O(∩_∩)O~
</div>
</body>
</html>


