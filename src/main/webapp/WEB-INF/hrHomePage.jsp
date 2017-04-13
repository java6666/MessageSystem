<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/4/12
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--人事页面--%>
<html xmlns="http://www.w3.org/1999/xhtml">
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
    <meta name="description" content="人力资源管理平台"/>
    <title>人力资源管理平台</title>
    <link type="text/css" rel="stylesheet" href="../assets/css/css.css"/>

    <script>
        function foo(mark) {
            for (var i = 0; i <= 4; i++) {
                document.getElementById("count-" + i).style.display = i == mark ? "block" : "none";
            }
        }
        function foo1(mark) {
            for (var i = 0; i <= 3; i++) {
                document.getElementById("count-Min-" + i).style.display = i == mark ? "block" : "none";
            }
        }
    </script>

</head>
<body>

<div class="header">
    <div class="top"><img class="logo" src="../assets/images/logo.jpg"/>
        <ul class="nav">
            <li class="seleli" onclick="foo(0)"><a>首页</a></li>
            <li onclick="foo(1)"><a>人才招聘</a></li>
            <li onclick="foo(2)"><a>人事资料</a></li>
            <li onclick="foo(3)"><a>培训管理</a></li>
            <li onclick="foo(4)"><a>企业文化</a></li>
        </ul>

    </div>

</div>
<div class="wrapper">
    <div class="container-fluid">
        <div class="leftbar">
            <div class="lm01"><img class="peptx" src="../assets/images/tximg.jpg"/>
                <div class="pepdet">
                    <p class="pepname">
                        <c:if test="${sessionScope.user_login!=null}">
                            欢迎登录:<span style="color: chartreuse;">${sessionScope.user_login.account}</span>
                        </c:if>
                    </p>
                    <a href="/logOut" style="color: red">退出</a>
                    <p>名字</p>
                    <p>部门</p>
                </div>
                <div class="clear"></div>
            </div>
            <div class="lm02">
                <div class="title"><img class="icon" src="../assets/images/dataicon.jpg"/>
                    <h2>日历</h2>
                </div>
                <div class="detail"><img class="" src="../assets/images/kj_01.jpg"/></div>
            </div>
            <div class="lm03">
                <div class="title"><img style="padding-right:5px;" class="icon" src="../assets/images/weaicon.jpg"/>
                    <h2>天气</h2>
                </div>
                <div class="detail"><img class="" src="../assets/images/kj_02.jpg"/></div>
            </div>
        </div>
        <div id="count-0" style="display: block" class="mainbody">
            <div class="adtip">
                <div class="tip">
                    <p class="goom">早上好，管理员！</p>
                    <p>您目前有<span>15</span>条待办，<span>1</span>条考勤异常，<span>2</span>条通知！</p>
                </div>
                <div class="adv">
                    <p>公司统一公告在这边展示</p>
                    <span> x </span></div>
            </div>


            <div class="rig_lm03">
                <div class="title"><img src="../assets/images/listicon.jpg" class="icon" style="padding-top:13px;">
                    <h2>待办事项</h2>
                </div>
                <div class="detail">
                    <div class="inner03">
                        <div id="tabCot_product" class="zhutitab">
                            <div class="tabContainer">
                                <ul class="tabHead" id="tabCot_product-li-currentBtn-">
                                    <li class="currentBtn"><a href="javascript:void(0)" title="绩效考核"
                                                              rel="1">绩效考核</a><span class="grey_numb">12</span></li>
                                    <li><a href="javascript:void(0)" title="人事考核" rel="2">人事考核</a><span
                                            class="red_numb">2</span></li>
                                    <li><a href="javascript:void(0)" title="TAB名称" rel="3">TAB名称</a><span
                                            class="red_numb">5</span></li>
                                </ul>
                                <p class="shent"><span>Show entries: </span>
                                    <input style="width:30px;" type="text" value="10">
                                    <img src="../assets/images/sz.jpg" class="icon" style=""></p>
                                <div class="clear"></div>
                            </div>
                            <div id="tabCot_product_1" class="tabCot">
                                <table class="tabindex" width="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <th width="10%" bgcolor="#f8f8f8" scope="col">
                                            <div align="center">照片</div>
                                        </th>
                                        <th width="21%" bgcolor="#f8f8f8" scope="col"><span
                                                class="titlab">事项名称</span><span class="xila">&or;</span></th>
                                        <th width="22%" bgcolor="#f8f8f8" scope="col"><span
                                                class="titlab">创建时间</span><span class="xila">&or;</span></th>
                                        <th width="21%" bgcolor="#f8f8f8" scope="col"><span
                                                class="titlab">当前处理人</span><span class="xila">&or;</span></th>
                                        <th width="7%" bgcolor="#f8f8f8" scope="col"><span class="titlab">状态</span><span
                                                class="xila">&or;</span></th>
                                        <th width="19%" bgcolor="#f8f8f8" scope="col">操作</th>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#FFFFFF">
                                            <div align="center"><img src="../assets/images/tx.jpg"></div>
                                        </td>
                                        <td class="datacol" bgcolor="#FFFFFF">8月份绩效考核打分</td>
                                        <td bgcolor="#FFFFFF">Feb 12,2012 12:28</td>
                                        <td bgcolor="#FFFFFF">wangqiang-已审批</td>
                                        <td class="yccol" bgcolor="#FFFFFF">异常</td>
                                        <td class="czcol" bgcolor="#FFFFFF"><a href="#">提醒处理</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                                href="#">查看</a></td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#f8f8f8">
                                            <div align="center"><img src="../assets/images/tx.jpg"></div>
                                        </td>
                                        <td class="datacol" bgcolor="#f8f8f8">8月份绩效考核打分</td>
                                        <td bgcolor="#f8f8f8">Feb 12,2012 12:28</td>
                                        <td bgcolor="#f8f8f8">wangqiang-已审批</td>
                                        <td class="yccol" bgcolor="#f8f8f8">异常</td>
                                        <td class="czcol" bgcolor="#f8f8f8"><a href="#">提醒处理</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                                href="#">查看</a></td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#FFFFFF">
                                            <div align="center"><img src="../assets/images/tx.jpg"></div>
                                        </td>
                                        <td class="datacol" bgcolor="#FFFFFF">8月份绩效考核打分</td>
                                        <td bgcolor="#FFFFFF">Feb 12,2012 12:28</td>
                                        <td bgcolor="#FFFFFF">wangqiang-已审批</td>
                                        <td class="yccol" bgcolor="#FFFFFF">异常</td>
                                        <td class="czcol" bgcolor="#FFFFFF"><a href="#">提醒处理</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                                href="#">查看</a></td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#f8f8f8">
                                            <div align="center"><img src="../assets/images/tx.jpg"></div>
                                        </td>
                                        <td class="datacol" bgcolor="#f8f8f8">8月份绩效考核打分</td>
                                        <td bgcolor="#f8f8f8">Feb 12,2012 12:28</td>
                                        <td bgcolor="#f8f8f8">wangqiang-已审批</td>
                                        <td class="waitcol" bgcolor="#f8f8f8">等待审批</td>
                                        <td class="czcol" bgcolor="#f8f8f8"><a href="#">通过</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                                href="#">查看</a></td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#FFFFFF">
                                            <div align="center"><img src="../assets/images/tx.jpg"></div>
                                        </td>
                                        <td class="datacol" bgcolor="#FFFFFF">8月份绩效考核打分</td>
                                        <td bgcolor="#FFFFFF">Feb 12,2012 12:28</td>
                                        <td bgcolor="#FFFFFF">wangqiang-已审批</td>
                                        <td class="waitcol" bgcolor="#f8f8f8">等待审批</td>
                                        <td class="czcol" bgcolor="#f8f8f8"><a href="#">通过</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                                href="#">查看</a></td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#f8f8f8">
                                            <div align="center"><img src="../assets/images/tx.jpg"></div>
                                        </td>
                                        <td class="datacol" bgcolor="#f8f8f8">8月份绩效考核打分</td>
                                        <td bgcolor="#f8f8f8">Feb 12,2012 12:28</td>
                                        <td bgcolor="#f8f8f8">wangqiang-已审批</td>
                                        <td class="waitcol" bgcolor="#f8f8f8">等待审批</td>
                                        <td class="czcol" bgcolor="#f8f8f8"><a href="#">通过</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                                href="#">查看</a></td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#FFFFFF">
                                            <div align="center"><img src="../assets/images/tx.jpg"></div>
                                        </td>
                                        <td class="datacol" bgcolor="#FFFFFF">8月份绩效考核打分</td>
                                        <td bgcolor="#FFFFFF">Feb 12,2012 12:28</td>
                                        <td bgcolor="#FFFFFF">wangqiang-已审批</td>
                                        <td class="waitcol" bgcolor="#f8f8f8">等待审批</td>
                                        <td class="czcol" bgcolor="#f8f8f8"><a href="#">通过</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                                href="#">查看</a></td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#f8f8f8">
                                            <div align="center"><img src="../assets/images/tx.jpg"></div>
                                        </td>
                                        <td class="datacol" bgcolor="#f8f8f8">8月份绩效考核打分</td>
                                        <td bgcolor="#f8f8f8">Feb 12,2012 12:28</td>
                                        <td bgcolor="#f8f8f8">wangqiang-已审批</td>
                                        <td class="waitcol" bgcolor="#f8f8f8">等待审批</td>
                                        <td class="czcol" bgcolor="#f8f8f8"><a href="#">通过</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                                href="#">查看</a></td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#FFFFFF">
                                            <div align="center"><img src="../assets/images/tx.jpg"></div>
                                        </td>
                                        <td class="datacol" bgcolor="#FFFFFF">8月份绩效考核打分</td>
                                        <td bgcolor="#FFFFFF">Feb 12,2012 12:28</td>
                                        <td bgcolor="#FFFFFF">wangqiang-已审批</td>
                                        <td class="waitcol" bgcolor="#f8f8f8">等待审批</td>
                                        <td class="czcol" bgcolor="#f8f8f8"><a href="#">通过</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                                href="#">查看</a></td>
                                    </tr>
                                </table>
                                <div class="fanye">
                                    <div class="yem">
                                        <ul>
                                            <li><a href="#">First</a></li>
                                            <li><a href="#">&lt;</a></li>
                                            <li class="sellify"><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">&gt;</a></li>
                                            <li><a href="#">Last</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div id="tabCot_product_2" class="tabCot" style="display: none;"> 2222222222</div>
                            <div id="tabCot_product_3" class="tabCot" style="display: none;"> 3333333333</div>
                            <script language="JavaScript" type="text/javascript" src="../assets/js/tab.js"></script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="count-1" style="display: none" class="mainbody">
            <div class="adtip">
                <div class="tip">
                    <p class="goom">早上好，管理员！</p>
                    <p>您目前有<span>15</span>条待办，<span>1</span>条考勤异常，<span>2</span>条通知！</p>
                </div>
                <div class="adv">
                    <p>公司统一公告在这边展示</p>
                    <span> x </span></div>
            </div>


            <div class="rig_lm03">
                <div class="title">
                    <a rel="tooltip" title="邮件" data-placement="bottom"
                       class="btn btn-white btn-simple btn-just-icon">
                        <button class="btn btn-info">

                        </button>
                    </a>
                </div>
                <div class="detail">
                    <div class="inner03">
                        1
                    </div>
                </div>
            </div>
        </div>
        <div id="count-2" style="display: none" class="mainbody">
            <div class="rig_lm03">
                <button class="btn btn-info" onclick="foo1(0)">
                    <i class="material-icons" >信息录入</i>
                </button>
                <button class="btn btn-success" onclick="foo1(1)">
                    <i class="material-icons" >修改信息</i>
                </button>
                <button class="btn btn-warning" onclick="foo1(2)">
                    <i class="material-icons">查询页面</i>
                </button>
                <div class="detail" >
                    <div id="count-Min-0" class="inner03" style="height: 500px">
                        <div class="row">
                            <div class="col-md-4">

                            </div>
                            <div class="col-md-4">

                            </div>
                            <div class="col-md-4">

                            </div>

                        </div>
                        <form action="/add" method="post">

                            <div class="form-group">
                                <label>作者:</label>
                                <input type="text" class="form-control" name="author">
                            </div>
                            <div class="form-group">
                                <label>标题:</label>
                                <input type="text" class="form-control" name="title">
                            </div>
                            <div class="form-group">
                                <label>内容:</label>
                                <input type="text" class="form-control" name="content">
                            </div>
                            <div class="form-group">
                                <label>创建日期:</label>
                                <input type="text" class="form-control" name="date">
                            </div>
                            <%--提交按钮--%>
                            <div class="form-group">
                                <!-- 按钮样式族 btn基本样式-->
                                <input type="submit" class="btn btn-primary">
                            </div>
                        </form>
                    </div>
                    <div id="count-Min-1" class="inner03" style="background-color: yellow;height: 600px;display: none" >

                    </div>
                    <div id="count-Min-2" class="inner03" style="background-color: blue;height: 600px;display: none" >

                    </div>
                </div>
            </div>
        </div>
        <div id="count-3" style="display: none" class="mainbody">
            <div class="adtip">
                <div class="tip">
                    <p class="goom">早上好，管理员！</p>
                    <p>您目前有<span>15</span>条待办，<span>1</span>条考勤异常，<span>2</span>条通知！</p>
                </div>
                <div class="adv">
                    <p>公司统一公告在这边展示</p>
                    <span> x </span></div>
            </div>


            <div class="rig_lm03">
                <div class="title"><img src="../assets/images/listicon.jpg" class="icon" style="padding-top:13px;">
                    <h2>待办事项</h2>
                </div>
                <div class="detail">
                    <div class="inner03">
                        3
                    </div>
                </div>
            </div>
        </div>
        <div id="count-4" style="display: none" class="mainbody">
            <div class="adtip">
                <div class="tip">
                    <p class="goom">早上好，管理员！</p>
                    <p>您目前有<span>15</span>条待办，<span>1</span>条考勤异常，<span>2</span>条通知！</p>
                </div>
                <div class="adv">
                    <p>公司统一公告在这边展示</p>
                    <span> x </span></div>
            </div>


            <div class="rig_lm03">
                <div class="title"><img src="../assets/images/listicon.jpg" class="icon" style="padding-top:13px;">
                    <h2>待办事项</h2>
                </div>
                <div class="detail">
                    <div class="inner03">
                        4
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>