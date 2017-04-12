<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/4/12
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--人事页面--%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../assets/css/PeopleInformation.css" type="text/css">
    <script src="../jQuery/jquery-3.2.0.js"></script>
    <script language="JavaScript" type="text/javascript" src="../assets/js/PeopleInformation.js"></script>
    <title>管理员系统</title>

</head>
<body>
<div class="menu_div">
    <div id="title_message">
        <span>HR信息管理系统</span>
    </div>
    <!--资料录入div-->
    <div class="message_show_district" id="message1">
        <div class="title_personal_data">
            <span>员工个人基本信息录入</span>
        </div>
        <form>
            <label>
                工&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text" name="job_mark">
                职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务：<input type="text" name="duty">
            </label>
            部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门：<select name="department">
            <option value="0" selected="selected"></option>
            <option value="1">生产部</option>
            <option value="2">人事部</option>
            <option value="3">技术部</option>
            <option value="4">管理部</option>
        </select><br>
            姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text" name="job_name">
            性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：<select name="sex">
            <option value="0" selected="selected"></option>
            <option value="1">男</option>
            <option value="2">女</option>
        </select>
            <label>
                出生年月：<input type="text" name="job_mark"><br>
                家庭住址：<input type="text" name="HA_house_address">
                联系电话：<input type="text" name="relation_phone">
                身份证号：<input type="text" name="relation_ID"><br>
                <br>
            </label>
            民&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;族：<input type="text" name="job_mark">
            政治面貌：<select name="political">
            <option value="0" selected="selected"></option>
            <option value="1">团员</option>
            <option value="2">党团</option>
            <option value="3">群众</option>
            <option value="4">其他</option>
        </select>
            <label>
                最高学历：<input type="text" name="education_background"><br>
                毕业学校：<input type="text" name="school">
                所学专业：<input type="text" name="major">
                银行卡号：<input type="text" name="major"><br>
            </label><br>

            <button type="submit" class="button_submit" onclick="on_onclick(this)" onmouseover="on_Over(this)" onmouseout="on_Out(this)">提交</button>

        </form>
    </div>
    <!--员工信息-->
    <div class="message_show_district" id="message2" >
        <div class="title_personal_data">
            <span>个人基本信息</span>
        </div>

        <input type="text" id="inp"><button type="button" id="but">查询</button>

        <div id="personage_message">
            <div id="img">
                <div>照</div>
                <div>片</div>
            </div>
            工&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text" id="job_mark" disabled="disabled" value="">

            姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text" id="job_name" disabled="disabled" value=""><br>

            部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门：<input type="text" id="department" disabled="disabled" value="">

            职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务：<input type="text" id="duty" disabled="disabled" value=""><br>


            性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：<input type="text" id="job_sex" disabled="disabled" value="">

            出生年月：<input type="text" id="birth" disabled="disabled" value="">

            身份证号：<input type="text" name="relation_ID" disabled="disabled" value=""><br>

            家庭住址：<input type="text" id="HA_house_address" disabled="disabled" value="">

            联系电话：<input type="text" id="relation_phone" disabled="disabled" value="">

            民&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;族：<input type="text" id="nation" disabled="disabled" value=""><br>

            政治面貌：<input type="text" id="party" disabled="disabled" value="">

            最高学历：<input type="text" name="education_background" disabled="disabled" value="">

            毕业学校：<input type="text" name="school" disabled="disabled" value=""><br>

            所学专业：<input type="text" name="major" disabled="disabled" value="">
        </div>
    </div>
    <!--考勤记录-->
    <div class="message_show_district" id="message3" >
        <div class="title_personal_data">
            <span>考勤记录信息</span>
        </div>
        <table border="1px">
            <caption>考勤记录信息</caption>
            <tbody><tr>
                <th>工号</th>
                <th>员工姓名</th>
                <th>部门</th>
                <th>考勤时间</th>
                <th>考勤类型</th>
                <th>操作</th>
            </tr>
            <tr>
                <td>3306</td>
                <td>小明</td>
                <td>生产部</td>
                <td>2016-1-2</td>
                <td>旷工</td>
                <td>修改</td>
            </tr>
            </tbody></table>
    </div>
    <!--工资查询-->
    <div class="message_show_district" id="message4">
        <div class="title_personal_data">
            <span>工资信息</span>
        </div>
        <!--      <form>
                  <label>
                      工&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text" name="job_mark"/>
                      职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务：<input type="text" name="duty"/>
                  </label>
                  部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门：<select name="department">
                  <option value="0" selected="selected"></option>
                  <option value="1">生产部</option>
                  <option value="2">人事部</option>
                  <option value="3">技术部</option>
                  <option value="4">管理部</option>
              </select><br/>
                  姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text" name="job_name"/>
                  性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：<select name="sex">
                  <option value="0" selected="selected"></option>
                  <option value="1">男</option>
                  <option value="2">女</option>
              </select>
                  <label>
                      出生年月：<input type="text" name="job_mark"/><br/>
                      家庭住址：<input type="text" name="HA_house_address"/>
                      联系电话：<input type="text" name="relation_phone"/>
                      民&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;族：<input type="text" name="job_mark"/><br/>
                  </label>
                  政治面貌：<select name="political">
                  <option value="0" selected="selected"></option>
                  <option value="1">团员</option>
                  <option value="2">党团</option>
                  <option value="3">群众</option>
                  <option value="4">其他</option>
              </select>
                  <label>
                      最高学历：<input type="text" name="education_background"/><br/>
                      毕业学校：<input type="text" name="school"/>
                      所学专业：<input type="text" name="major"/>
                  </label><br/>

                  <button type="submit" class="button_submit" onclick="on_onclick(this)" onmouseover="on_Over(this)" onmouseout="on_Out(this)">提交</button>

              </form>-->
    </div>
</div>
<div id="menu_bar">
    <ul id="menus" onmousemove="show_none()" onclick="onclick_bgcolor()">
        <li class="menus" onclick="show_message_input(1)">资料录入</li>
        <li class="menus" onclick="show_message_input(2)">员工信息</li>
        <li class="menus" onclick="show_message_input(3)">考勤记录</li>
        <li class="menus" onclick="show_message_input(4)">工资查询</li>
    </ul>
</div>
</body>
</html>