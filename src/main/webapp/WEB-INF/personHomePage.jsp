<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/4/11
  Time: 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--员工主页--%>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>个人主页</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>

    <!--     Fonts and icons     -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"/>

    <!-- CSS Files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../assets/css/material-kit.css" rel="stylesheet"/>

    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="../assets/css/demo.css" rel="stylesheet"/>

    <script>

        function foo(mark) {
            for(var i=0;i<=5;i++){
                document.getElementById("count-"+i).style.display=i==mark?"block":"none";
            }
        }
    </script>

</head>

<body class="index-page">

<nav class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll">
    <div class="container">
        <c:if test="${sessionScope.user_login.account!=null}" >
            欢迎登录:<span style="color: white;">${sessionScope.user_login.account}</span>
        </c:if>
        <div class="navbar-header">
                <div class="logo-container">
                    <div class="logo">
                        <img src="../assets/img/avatar.jpg" width="100px" alt="Thumbnail Image"
                             class="img-circle img-raised img-responsive">
                    </div>
                </div>
        </div>

        <div class="collapse navbar-collapse" id="navigation-index">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a rel="tooltip" title="个人信息" data-placement="bottom"
                       class="btn btn-white btn-simple btn-just-icon">
                        <i class="material-icons" onclick="foo(0)">account_circle</i>
                    </a>
                </li>
                <li>
                    <a rel="tooltip" title="出勤率" data-placement="bottom" class="btn btn-white btn-simple btn-just-icon">
                        <i class="material-icons" onclick="foo(1)">unarchive</i>
                    </a>
                </li>
                <li>
                    <a rel="tooltip" title="薪水" data-placement="bottom" class="btn btn-white btn-simple btn-just-icon">
                        <i class="material-icons" onclick="foo(2)">attach_money</i>
                    </a>
                </li>
                <li>
                    <a rel="tooltip" title="邮箱" data-placement="bottom" class="btn btn-white btn-simple btn-just-icon">
                        <i class="material-icons" onclick="foo(3)">email</i>
                    </a>
                </li>
                <li>
                    <a rel="tooltip" title="通知" data-placement="bottom"
                       class="btn btn-white btn-simple btn-just-icon">
                        <i class="material-icons" onclick="foo(4)">chat</i>
                    </a>
                </li>
                <li>
                    <a rel="tooltip" title="聊天" data-placement="bottom" class="btn btn-white btn-simple btn-just-icon">
                        <i class="fa fa-twitter"onclick="foo(5)"></i>
                    </a>
                </li>
                <li>
                    <a href="/logOut" rel="tooltip" title="退出" data-placement="bottom" class="btn btn-white btn-simple btn-just-icon">
                        <i class="material-icons">error_outline</i>
                    </a>
                </li>
                <li>
                    <a rel="tooltip" title="退出" data-placement="bottom" class="btn btn-white btn-simple btn-just-icon">
                    </a>
                </li>
                <li>
                    <div class="form-group label-static">
                        <input type="text" style="color: white" class="datepicker form-control" value="2017/4/10">
                        <span class="material-input"></span>
                    </div>
                </li>

            </ul>
        </div>
    </div>
</nav>
<div class="wrapper" style="height: 500px">
    <div class="header header-filter" style="background-image: url('../assets/img/bg2.jpeg');">
        <div class="container">
            <div class="row">

                <div   class="brand" id="count-0" style="height: 400px;width: 100%;background-color: yellow;display: none">个人信息页</div>
                <div   class="brand" id="count-1" style="height: 400px;width: 100%;background-color: blue;display: none">绩效考核</div>
                <div   class="brand" id="count-2" style="height: 400px;width: 100%;background-color: green;display: none">薪资福利</div>
                <div   class="brand" id="count-3" style="height: 400px;width: 100%;background-color: brown;display: none">邮件</div>
                <div   class="brand" id="count-4" style="height: 400px;width: 100%;background-color: sandybrown;display: none">申请</div>
                <div   class="brand" id="count-5" style="height: 400px;width: 100%;background-color: black;display: none">聊天</div>

            </div>


        </div>
    </div>

</div>
<footer class="footer">
    <div class="container">
        <div class="copyright pull-right">
            © 2017 <i class="material-icons">favorite</i> 特工小分队
        </div>
    </div>
</footer>

</body>
<!--   Core JS Files   -->
<script src="../assets/js/jquery.min.js" type="text/javascript"></script>
<script src="../assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../assets/js/material.min.js"></script>

<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="../assets/js/nouislider.min.js" type="text/javascript"></script>

<!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
<script src="../assets/js/bootstrap-datepicker.js" type="text/javascript"></script>

<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
<script src="../assets/js/material-kit.js" type="text/javascript"></script>

<script type="text/javascript">

    $().ready(function () {
        // the body of this function is in assets/material-kit.js
        materialKit.initSliders();
        window_width = $(window).width();
        if (window_width >= 992) {
            big_image = $('.wrapper > .header');
            $(window).on('scroll', materialKitDemo.checkScrollForParallax);
        }

    });

</script>
</html>
