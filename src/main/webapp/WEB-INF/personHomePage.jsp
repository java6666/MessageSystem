<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/4/11
  Time: 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

</head>

<body class="index-page">

<nav class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll">
    <div class="container">
        <div class="navbar-header">
            <a href="#">
                <div class="logo-container">
                    <div class="logo">
                        <img src="../assets/img/avatar.jpg" height="80px" width="100px" alt="Thumbnail Image"
                             class="img-circle img-raised img-responsive">
                    </div>
                </div>
            </a>
        </div>

        <div class="collapse navbar-collapse" id="navigation-index">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a rel="tooltip" title="个人信息" data-placement="bottom"
                       class="btn btn-white btn-simple btn-just-icon">
                        <i class="material-icons">account_circle</i>
                    </a>
                </li>
                <li>
                    <a rel="tooltip" title="出勤率" data-placement="bottom" class="btn btn-white btn-simple btn-just-icon">
                        <i class="material-icons">unarchive</i>
                    </a>
                </li>
                <li>
                    <a rel="tooltip" title="薪水" data-placement="bottom" class="btn btn-white btn-simple btn-just-icon">
                        <i class="material-icons">attach_money</i>
                    </a>
                </li>
                <li>
                    <a rel="tooltip" title="邮箱" data-placement="bottom" class="btn btn-white btn-simple btn-just-icon">
                        <i class="material-icons">email</i>
                    </a>
                </li>
                <li>
                    <a rel="tooltip" title="通知" data-placement="bottom"
                       class="btn btn-white btn-simple btn-just-icon">
                        <i class="material-icons">chat</i>
                    </a>
                </li>
                <li>
                    <a rel="tooltip" title="聊天" data-placement="bottom" class="btn btn-white btn-simple btn-just-icon">
                        <i class="fa fa-twitter"></i>
                    </a>
                </li>
                <li>
                    <a rel="tooltip" title="退出" data-placement="bottom" class="btn btn-white btn-simple btn-just-icon">
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
<div class="wrapper">
    <div class="header header-filter" style="background-image: url('../assets/img/bg2.jpeg');">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="brand">
                        需要显示的类容

                    </div>
                </div>
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
