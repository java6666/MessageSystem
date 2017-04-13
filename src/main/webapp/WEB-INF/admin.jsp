<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/4/11
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--管理员界面--%>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>Material Kit by Creative Tim</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"/>
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../assets/css/material-kit.css" rel="stylesheet"/>
    <link href="../assets/css/demo.css" rel="stylesheet"/>
    <script>

        function foo(mark) {
            for (var i = 0; i <= 3; i++) {
                document.getElementById("count-" + i).style.display = i == mark ? "block" : "none";
            }
        }
    </script>

</head>

<body>

<div class="wrapper">
    <div style="height: 700px;width: 100%;background-color: #03A9F4">
        <nav class="navbar navbar-primary">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#example-navbar-primary">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <c:if test="${sessionScope.user_login.account!=null}">
                        欢迎登录:<span style="color: white;">${sessionScope.user_login.account}</span>
                    </c:if>
                </div>

                <div class="collapse navbar-collapse" id="example-navbar-primary">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a rel="tooltip" title="用户账号" data-placement="bottom"
                               class="btn btn-white btn-simple btn-just-icon">
                                <button onclick="foo(0)" class="btn btn-success">
                                    <i class="material-icons">group</i>
                                    <div class="ripple-container"></div>
                                </button>
                            </a>
                            <br/>
                        </li>
                        <li>
                            <a rel="tooltip" title="新增账号" data-placement="bottom"
                               class="btn btn-white btn-simple btn-just-icon">
                                <button onclick="foo(1)" class="btn btn-success">
                                    <i class="material-icons">account_circle</i>
                                </button>
                            </a>
                            <br/>
                        </li>
                        <li>
                            <a rel="tooltip" title="邮件" data-placement="bottom"
                               class="btn btn-white btn-simple btn-just-icon">
                                <button onclick="foo(2)" class="btn btn-info">
                                    <i class="material-icons">email</i>
                                </button>
                            </a>
                            <br/>
                        </li>

                        <li>
                            <a rel="tooltip" title="登录日志" data-placement="bottom"
                               class="btn btn-white btn-simple btn-just-icon">
                                <button onclick="foo(3)" class="btn btn-warning">
                                    <i class="material-icons">chat</i>
                                    <div class="ripple-container"></div>
                                </button>

                            </a>
                            <br/>

                        </li>
                        <li>
                            <a href="/logOut" rel="tooltip" title="退出系统" data-placement="bottom"
                               class="btn btn-white btn-simple btn-just-icon">
                                <button class="btn btn-danger">
                                    <i class="material-icons">error_outline</i>
                                    <div class="ripple-container"></div>
                                </button>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container" id="count-0" style="height: 500px;width: 100%;background-color: red;display: none">




            所用用户
        </div>
        <div class="brand" id="count-1" style="height: 500px;width: 100%;background-color: yellow;display: none">
            新增用户
        </div>
        <div class="brand" id="count-2" style="height: 500px;width: 100%;background-color: black;display: none">
            邮件
        </div>
        <div class="brand" id="count-3" style="height: 500px;width: 100%;background-color: blue;display: none">
            登录日志
        </div>
    </div>
</div>
</body>
</html>