<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/4/8
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
   <%-- <link href="<c:url value="/css/bootstrap.css"/> " rel="stylesheet"/>--%>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        ul {
            list-style: none;
            overflow: hidden;
            margin: 0px;
            padding: 0px;
        }

        ul li {
            float: left;
            padding: 11px 15px;
            border: 1px #eee;
            cursor: pointer;
            color: white;
            font-size: 16px;
        }

        .cur:hover {
            background-color: #337ab7;
        }

        /*个人信息显示框*/
        #message {
            height: 360px;
            width: 300px;
            display: none;
            border: 5px solid #737b80;
        }

        #message-1 {

            height: 30px;
            width: 290px;
            margin-bottom: 30px;
            background-color: #737b80;
        }

        b {
            font-size: 18px;
            color: white;
        }

        #exit {
            padding-left: 180px;
            color: white;
            cursor: pointer;
        }

        #message-2 {
            height: 300px;
            width: 290px;

        }


    </style>
    <script>

        window.onload = function () {
            var show = document.getElementById("show");
            show.onmouseover = function () {
                var message = document.getElementById("message");
                var messageShow = document.getElementById("messageShow");
                var innerHTML = messageShow.innerHTML;
                message.style.display = "block";
                message.innerHTML =innerHTML;
            };














        };


    </script>
</head>
<body>


<div class="container-fluid">
    <div class="row" style="height: 50px;background-color: #303A40">
        <div class="col-md-10"></div>
        <div class="col-md-2">
            <img style="margin-top: 16px" id="show" class="minixFace"
                 src="//image0.lietou-static.com/minix/55557f3b28ee44a8919620ce01a.gif">
        </div>
    </div>

    <div class="row" style="height: 45px;background-color: #475359">

        <div class="col-md-8">
            <ul>
                <li class="cur">首页</li>
                <li class="cur">行业</li>
                <li class="cur">职位</li>
                <li class="cur">人脉</li>
                <li class="cur">简历</li>
                <li class="cur">社区</li>
                <li class="cur">海外</li>
            </ul>
        </div>
        <div class="col-md-3">
            <div id="message">
                <div id="messageShow">
                    <div id="message-1">
                        <b>账号设置</b><span id="exit"><a href="/logOut">退出</a></span>
                    </div>
                    <div id="message-2">
                        <table class="table table-hover">
                            <tr>
                                <td>
                                    <img src="55557f3b28ee44a8919620ce01a.gif" class="miniFace">
                                    <c:if test="${sessionScope.USER_LOGIN!=null}">
                                        ${sessionScope.USER_LOGIN.userName}
                                    </c:if>
                                </td>
                                <td><a href="../MOBAN/user.jsp">个人主页</a></td>
                            </tr>
                            <tr>
                                <td>姓名</td>
                                <td>查看</td>
                            </tr>
                            <tr>
                                <td>姓名</td>
                                <td>修改</td>
                            </tr>
                            <tr>
                                <td>姓名</td>
                                <td>个人主页</td>
                            </tr>
                            <tr>
                                <td>姓名</td>
                                <td>个人主页</td>
                            </tr>
                            <tr>
                                <td>姓名</td>
                                <td>个人主页</td>
                            </tr>
                            <tr>
                                <td>姓名</td>
                                <td>个人主页</td>
                            </tr>

                        </table>

                    </div>
                </div>
            </div>
        </div>

    </div>
  <%--  <div class="row" style="height: 100px;background-color: red">

        <div class="col-md-6">
            <span><b>中文简历</b></span>
            <span>预览|</span>
            <span>下载|</span>
            <span>刷新</span>
        </div>
    </div>--%>
 <%--   <div class="row" style="height: 100px;background-color: blue">

        <div class="col-md-6">
            <img src="55557f3b28ee44a8919620ce01a.gif" class="miniFace">
            <c:if test="${sessionScope.USER_LOGIN!=null}">
               <h1> ${sessionScope.USER_LOGIN.userName}</h1>
            </c:if>
        </div>
    </div>
    <div class="row" style="height: 100px;background-color: red">
        <
        <div class="col-md-6"><h3>基本资料</h3></div>

    </div>
    <div class="row" style="height: 100px;background-color: red">
        <div class="col-md-6">职业意向</div>
    </div>
    <div class="row" style="height: 100px;background-color: red">
        <div class="col-md-3"></div>
        <div class="col-md-6">工作经历</div>
        <div class="col-md-3"></div>
    </div>
    <div class="row" style="height: 100px;background-color: red">
        <div class="col-md-3"></div>
        <div class="col-md-6">教育经历</div>
        <div class="col-md-3"></div>
    </div>
    <div class="row" style="height: 100px;background-color: red">
        <div class="col-md-3"></div>
        <div class="col-md-6">语言能力</div>
        <div class="col-md-3"></div>
    </div>
    <div class="row" style="height: 100px;background-color: red">
        <div class="col-md-3"></div>
        <div class="col-md-6">项目经验</div>
        <div class="col-md-3"></div>
    </div>
    <div class="row" style="height: 100px;background-color: red">
        <div class="col-md-3"></div>
        <div class="col-md-6">自我评价</div>
        <div class="col-md-3"></div>
    </div>
    <div class="row" style="height: 100px;background-color: red">
        <div class="col-md-3"></div>
        <div class="col-md-6">附加消息</div>
        <div class="col-md-3"></div>
    </div>--%>
</div>







</body>
</html>
