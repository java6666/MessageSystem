<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/4/6
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%--@Author 张超--%>

<head>
    <meta charset="UTF-8">
    <title>显示界面</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        function registerFoo() {
            var login = document.getElementById("content-0");
            var register = document.getElementById("content-1");
            login.style.display = "none";
            login.innerHTML = register.style.display = "block";
        };

        /*判读两次输入密码是否一样*/

        function foo(mark) {
            var passValue = document.getElementById("password");
            if (!(mark.value == passValue.value)) {
                alert("两次输入密码不相符");
            };
        };

    </script>
</head>
<body>


<div class="container-fluid">

    <!--row行样式-->

    <div class="row" style="height: 60px;background-color: #a6e1ec">
        <table>
            <tr>
                <td width="50px"></td>
                <td><b>北京</b><a>[切换城市]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
                <td width="50px"><a>首页</a></td>
                <td width="50px"><a>职位</a></td>
                <td width="50px"><a>社区</a></td>
                <td width="50px"><a>海外</a></td>
                <td width="50px"><a>校园</a></td>
                <td width="80px"><a>我是猎头</a></td>
                <td width="90px"><a>我是企业HR</a></td>
            </tr>
        </table>
    </div>

    <div class="row">
        <c:if test="${requestScope.user!=null}">
            <script>alert(${requestScope.user})</script>
        </c:if>

        <div class="col-md-9"></div>
        <div class="col-md-3">
            <div id="content-0" style="height: 220px;width: 300px;border: 1px #31b0d5 solid;background-color: #31b0d5">
                <div>
                    <div>
                        <form action="/userLogin" method="post">
                            <div class="form-group">
                                <label>用户名</label>
                                <input type="text" name="accountParameter" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>密 码</label>
                                <input type="password" name="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <!-- 按钮样式族 btn基本样式-->
                                <input type="submit" class="btn btn-warning" value="登录" style="width: 300px"/>
                            </div>
                        </form>
                        <div>
                            <input type="checkbox">
                            <span>下次自动登录</span>&nbsp;&nbsp;&nbsp;
                            <a href="">忘记密码?</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span style="cursor: pointer;" onclick="registerFoo()">立即注册</span>
                        </div>
                    </div>
                </div>
            </div>
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
</body>


</html>
