<%--
  Created by IntelliJ IDEA.
  User: LH151
  Date: 2018/12/12
  Time: 8:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>约会吧</title>
    <link href="css/homePage_style02.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/homePage_style01.css" rel="stylesheet" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
</head>
<body>
<header>
    <div class="container">
        <div class="logo">
            <h1><a href="homePage.jsp"><span>WP</span> <div class="logo-img"><img src="images/in-love.png" alt="img09"/></div><p class="sub_title">Wedding Proposer</p> </a></h1>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <nav class="cl-effect-13" id="cl-effect-13">
                <ul class="nav navbar-nav">
                    <li><a href="homePage.jsp">首页</a></li>
                    <li><a href="##">回答</a></li>
                    <li><a href="##">专栏</a></li>
                    <li><a href="##">讲堂</a> </li>
                    <%
                        String noti;
                        if (session.getAttribute("user") != null){
                            noti = "<a href='personalSpace.jsp'>个人中心</a>";
                        }else {
                            noti = "<a href='login.html'>点击登录</a>";
                        }
                    %>
                    <li><a id="checkLogin" href="login.html"><%=noti%></a></li>
                </ul>

            </nav>

        </div>

    </div>
</header>
<div class="w3l_inner_section">
    <div class="container">
        <div class="wthree_title_agile">
            <h2>Dating <span>Bar</span></h2>
            <p><i class="fa fa-heart-o" aria-hidden="true"></i></p>
        </div>
        <p class="sub_para">WE ARE GETTING MARRIED</p>
        <div class="inner_w3l_agile_grids">
            <div class="col-md-4 w3_tabs_grid">
                <div class="grid">
                    <a href="images/g1.jpg" class="lsb-preview" data-lsb-group="header">
                        <figure class="effect-winston">
                            <img src="images/g1.jpg" class="img-responsive" alt=" " />
                            <figcaption>
                                <p>
                                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                </p>
                            </figcaption>
                        </figure>
                    </a>
                </div>
            </div>
            <div class="col-md-4 w3_tabs_grid">
                <div class="grid">
                    <a href="images/g2.jpg" class="lsb-preview" data-lsb-group="header">
                        <figure class="effect-winston">
                            <img src="images/g2.jpg" class="img-responsive" alt=" " />
                            <figcaption>
                                <p>
                                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                </p>
                            </figcaption>
                        </figure>
                    </a>
                </div>
            </div>
            <div class="col-md-4 w3_tabs_grid">
                <div class="grid">
                    <a href="images/g3.jpg" class="lsb-preview" data-lsb-group="header">
                        <figure class="effect-winston">
                            <img src="images/g3.jpg" class="img-responsive" alt=" " />
                            <figcaption>
                                <p>
                                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                </p>
                            </figcaption>
                        </figure>
                    </a>
                </div>
            </div>
            <div class="col-md-4 w3_tabs_grid w3_tabs_grid_sub">
                <div class="grid">
                    <a href="images/g4.jpg" class="lsb-preview" data-lsb-group="header">
                        <figure class="effect-winston">
                            <img src="images/g4.jpg" class="img-responsive" alt=" " />
                            <figcaption>
                                <p>
                                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                </p>
                            </figcaption>
                        </figure>
                    </a>
                </div>
            </div>
            <div class="col-md-4 w3_tabs_grid w3_tabs_grid_sub">
                <div class="grid">
                    <a href="images/g5.jpg" class="lsb-preview" data-lsb-group="header">
                        <figure class="effect-winston">
                            <img src="images/g5.jpg" class="img-responsive" alt=" " />
                            <figcaption>
                                <p>
                                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                </p>
                            </figcaption>
                        </figure>
                    </a>
                </div>
            </div>
            <div class="col-md-4 w3_tabs_grid w3_tabs_grid_sub">
                <div class="grid">
                    <a href="images/g6.jpg" class="lsb-preview" data-lsb-group="header">
                        <figure class="effect-winston">
                            <img src="images/g6.jpg" class="img-responsive" alt=" " />
                            <figcaption>
                                <p>
                                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                </p>
                            </figcaption>
                        </figure>
                    </a>
                </div>
            </div>
            <div class="col-md-4 w3_tabs_grid">
                <div class="grid">
                    <a href="images/g7.jpg" class="lsb-preview" data-lsb-group="header">
                        <figure class="effect-winston">
                            <img src="images/g7.jpg" class="img-responsive" alt=" " />
                            <figcaption>
                                <p>
                                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                </p>
                            </figcaption>
                        </figure>
                    </a>
                </div>
            </div>
            <div class="col-md-4 w3_tabs_grid">
                <div class="grid">
                    <a href="images/g8.jpg" class="lsb-preview" data-lsb-group="header">
                        <figure class="effect-winston">
                            <img src="images/g8.jpg" class="img-responsive" alt=" " />
                            <figcaption>
                                <p>
                                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                </p>
                            </figcaption>
                        </figure>
                    </a>
                </div>
            </div>
            <div class="col-md-4 w3_tabs_grid">
                <div class="grid">
                    <a href="images/g9.jpg" class="lsb-preview" data-lsb-group="header">
                        <figure class="effect-winston">
                            <img src="images/g9.jpg" class="img-responsive" alt=" " />
                            <figcaption>
                                <p>
                                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                </p>
                            </figcaption>
                        </figure>
                    </a>
                </div>
            </div>
            <div class="clearfix"> </div>

        </div>
    </div>


</div>
<div class="agile-footer">
    <div class="container">
        <div class="aglie-info-logo">
            <div class="banner-mid-wthree"> <a href="index.html" class="hvr-buzz"> <img src="images/couple.png" alt="wp"/></a> </div>
        </div>
        <div class="copy-right">
            第二小组 版权所有<br />
            Copyright  2018-2018 NIIT Corporation, All Rights Reserved
        </div>
    </div>
</div>
</body>
</html>
