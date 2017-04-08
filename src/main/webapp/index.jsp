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
    <script>
        function registerfoo() {
            var login = document.getElementById("content-0");
            var register = document.getElementById("content-1");
            login.style.display = "none";
            login.innerHTML = register.style.display = "block";

        }

        function loginfoo() {
            var register = document.getElementById("content-1");
            var login = document.getElementById("content-0");
            register.style.display = "none";
            register.innerHTML = login.style.display = "block";

        }
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
        <div class="col-md-9"></div>
        <div class="col-md-3">

            <div id="content-0" style="height: 220px;width: 300px;border: 1px blue solid;background-color: #31b0d5">

                <p style="text-decoration-color: white">求职者账号登录</p>
                <div>
                    <div>
                        <form action="/userLogin" method="post">
                            <div class="form-group">
                                <input type="text" name="userName" class="form-control">
                            </div>
                            <div class="form-group">
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
                            <a href="" onclick="registerfoo()">立即注册</a>
                        </div>
                    </div>
                </div>


            </div>

            <div id="content-1" style="height: 260px;width: 300px;border: 1px red solid;display: none">



                <form action="/userRegister" method="post">
                <div>
                    <span>注册求职者账号</span><span style="text-align: right"><a>非大陆用户>></a></span>
                </div>
                <!--form-group 代表一个input组件-->
                <div class="form-group">
                    <input  name="userName" class="form-control" value="手机号"
                           onfocus="javascript:if (this.value=='手机号')this.value=''"></div>

                <div class="form-group">
                    <input  name="password" class="form-control" value="密码(6-16字母.数字.无空格)"
                           onfocus="javascript:if (this.value=='密码(6-16字母.数字.无空格)')this.value=''"></div>

                <table cellspacing="2" cellpadding="2">
                    <tr>
                        <td class="form-group">
                            <input class="form-control" value="验证码"
                                   onfocus="javascript:if (this.value=='验证码')this.value=''"></td>
                        <td class="form-group">
                            <input type="submit" class="btn btn-primary" value="获取验证码" style="width: 150px"
                                   onfocus="javascript:if (this.value=='获取验证码')this.value=''"></td>
                    </tr>
                </table>
                <br/>
                <div class="form-group" colspan="2">
                    <input type="submit" class="btn btn-primary" value="提交"
                           style="width: 300px" type=button
                           onclick="window.open('fill.html')">
                </div>
                <div>
                    <input type="checkbox">
                    <span>接受用户服务协议</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span>已有账号,</span>
                    <a href="" onclick="loginfoo()">马上登陆</a>
                </div>
                </form>

            </div>
        </div>


    </div>
</div>

</body>
</html>
