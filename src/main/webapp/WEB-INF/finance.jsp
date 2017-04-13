<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/4/12
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--员工主页--%>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="../assets/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="../assets/css/style.css" rel='stylesheet' type='text/css' />
    <!-- Graph CSS -->
    <link href="../assets/css/lines.css" rel='stylesheet' type='text/css' />
    <link href="../assets/css/font-awesome.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="../assets/js/jquery.min.js"></script>
    <!----webfonts--->
    <link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
    <!---//webfonts--->
    <!-- Nav CSS -->
    <link href="../assets/css/custom.css" rel="stylesheet">
    <!-- Metis Menu Plugin JavaScript -->
    <script src="../assets/js/metisMenu.min.js"></script>
    <script src="../assets/js/custom.js"></script>
    <!-- Graph JavaScript -->
    <script src="../assets/js/d3.v3.js"></script>
    <script src="../assets/js/rickshaw.js"></script>
</head>
<body>
<div id="wrapper">
  <div style="height: 80px;;background-color: royalblue">
      <ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
              <ul class="dropdown-menu">
                  <li class="dropdown-menu-header">
                      <strong>Messages</strong>
                      <div class="progress thin">
                          <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                              <span class="sr-only">40% Complete (success)</span>
                          </div>
                      </div>
                  </li>
                  <li class="avatar">
                      <a href="#">
                          <img src="../assets/images/1.png" alt=""/>
                          <div>New message</div>
                          <small>1 minute ago</small>
                          <span class="label label-info">NEW</span>
                      </a>
                  </li>
                  <li class="avatar">
                      <a href="#">
                          <img src="../assets/images/2.png" alt=""/>
                          <div>New message</div>
                          <small>1 minute ago</small>
                          <span class="label label-info">NEW</span>
                      </a>
                  </li>
                  <li class="avatar">
                      <a href="#">
                          <img src="../assets/images/3.png" alt=""/>
                          <div>New message</div>
                          <small>1 minute ago</small>
                      </a>
                  </li>
                  <li class="avatar">
                      <a href="#">
                          <img src="../assets/images/4.png" alt=""/>
                          <div>New message</div>
                          <small>1 minute ago</small>
                      </a>
                  </li>
                  <li class="avatar">
                      <a href="#">
                          <img src="../assets/images/5.png" alt=""/>
                          <div>New message</div>
                          <small>1 minute ago</small>
                      </a>
                  </li>
                  <li class="avatar">
                      <a href="#">
                          <img src="../assets/images/pic1.png" alt=""/>
                          <div>New message</div>
                          <small>1 minute ago</small>
                      </a>
                  </li>
                  <li class="dropdown-menu-footer text-center">
                      <a href="#">View all messages</a>
                  </li>
              </ul>
          </li>

          <li class="dropdown">
              <a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="../assets/images/1.png"><span class="badge">9</span></a>
              <ul class="dropdown-menu">
                  <li class="dropdown-menu-header text-center">
                      <strong>Account</strong>
                  </li>
                  <li class="m_2"><a href="#"><i class="fa fa-bell-o"></i> Updates <span class="label label-info">42</span></a></li>
                  <li class="m_2"><a href="#"><i class="fa fa-envelope-o"></i> Messages <span class="label label-success">42</span></a></li>
                  <li class="m_2"><a href="#"><i class="fa fa-tasks"></i> Tasks <span class="label label-danger">42</span></a></li>
                  <li><a href="#"><i class="fa fa-comments"></i> Comments <span class="label label-warning">42</span></a></li>
                  <li class="dropdown-menu-header text-center">
                      <strong>Settings</strong>
                  </li>
                  <li class="m_2"><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                  <li class="m_2"><a href="#"><i class="fa fa-wrench"></i> Settings</a></li>
                  <li class="m_2"><a href="#"><i class="fa fa-usd"></i> Payments <span class="label label-default">42</span></a></li>
                  <li class="m_2"><a href="#"><i class="fa fa-file"></i> Projects <span class="label label-primary">42</span></a></li>
                  <li class="divider"></li>
                  <li class="m_2"><a href="#"><i class="fa fa-shield"></i> Lock Profile</a></li>
                  <li class="m_2"><a href="#"><i class="fa fa-lock"></i> Logout</a></li>
              </ul>
          </li>
      </ul>
  </div>


        <form class="navbar-form navbar-right">
            <input type="text" class="form-control" value="Search..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
        </form>
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">

                    <li>
                        <a href="#"><i class="fa fa-laptop nav_icon"></i>Layouts<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="grids.html">Grid System</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-indent nav_icon"></i>Menu Levels<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="graphs.html">Graphs</a>
                            </li>
                            <li>
                                <a href="typography.html">Typography</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>


                    <li>
                        <a href="#"><i class="fa fa-table nav_icon"></i>Tables<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="basic_tables.html">Basic Tables</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>

                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>

    <div id="page-wrapper">
        <div class="graphs">
            <div class="col_3">
                <div class="col-md-3 widget widget1">
                    <div class="r3_counter_box">
                        <i class="pull-left fa fa-thumbs-up icon-rounded"></i>
                        <div class="stats">

                        </div>
                    </div>
                </div>
                <div class="col-md-3 widget widget1">
                    <div class="r3_counter_box">
                        <i class="pull-left fa fa-users user1 icon-rounded"></i>
                        <div class="stats">

                        </div>
                    </div>
                </div>
                <div class="col-md-3 widget widget1">
                    <div class="r3_counter_box">
                        <i class="pull-left fa fa-comment user2 icon-rounded"></i>
                        <div class="stats">

                        </div>
                    </div>
                </div>
                <div class="col-md-3 widget">
                    <div class="r3_counter_box">
                        <i class="pull-left fa fa-dollar dollar1 icon-rounded"></i>
                        <div class="stats">

                        </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>


        </div>
    </div>

</div>

<script src="../assets/js/bootstrap.min.js"></script>
</body>
</html>