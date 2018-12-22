<%@ page import="Dao.PersonalInfoDao" %>
<%@ page import="javabean.PersonalInfo" %>
<%@ page import="Service.PersonalInfoService" %>
<%@ page import="Service.WorkShowService" %>
<%@ page import="Service.EduShowService" %>
<%@ page import="Dao.ReleaseDao" %>
<%@ page import="javabean.Release_date" %>
<%@ page import="java.util.List" %>
<%@ page import="Dao.RankDao" %>
<%@ page import="Dao.ThemesDao" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.TreeMap" %>
<%@ page import="Service.RankingListService" %><%--
  Created by IntelliJ IDEA.
  User: LH151
  Date: 2018/12/16
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes"/>
    <title>个人空间</title>
    <link type="text/css" rel="stylesheet" href="css/personalSpace.css">
    <link href="css/homePage_style02.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/homePage_style01.css" rel="stylesheet" type="text/css" media="all"/>
    <style type="text/css">
        body{
            background: url("/images/homepage.jpg") no-repeat ;
            background-size: cover;
            margin: 0;
        }
    </style>
</head>
<body>
<div class="homepage">
    <header>
        <div class="container">
            <div class="logo">
                <h1><a href="homePage.jsp"><span>WP</span>
                    <div class="logo-img"><img src="images/in-love.png" alt="img09"/></div>
                    <p class="sub_title">Wedding Proposer</p></a></h1>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <nav class="cl-effect-13" id="cl-effect-13">
                    <ul class="nav navbar-nav">
                        <li><a href="homePage.jsp">首页</a><>
                        <li><a href="personalInfo.jsp">个人档案</a><>
                        <li><a href="workExperience.jsp">工作经历</a><>
                        <li><a href="eduExperience.jsp">教育经历</a><>
                                <%
                            String user = (String) session.getAttribute("user");
                            String msg = null;
                            if (session.getAttribute("user") != null) {
                                msg = "<a href='LogoutServlet'>退出登录</a>";
                            }
                        %>
                        <li><%=msg%><>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <div id="container1">
        <div class="container_left">
            <div class="user_info">
                <%
                    PersonalInfoService.resultQuery(user);
                %>
                <div class="user_info_top">
                    <img src="<%=PersonalInfoService.head_url%>" alt="" style="width: 128px;height: 128px">
                </div>
                <div class="user_info_bottom">
                    <table class="table1">
                        <tr>
                            <td >&nbsp;<img src="images/personalSpace_pos.png">&nbsp;<%=PersonalInfoService.now_city%></td>
                        </tr>
                        <tr>
                            <td>&nbsp;<img src="images/personalSpace_degree.png">&nbsp;<%=PersonalInfoService.school%></td>
                        </tr>
                        <tr>
                            <td><img src="images/personalSpace_com.png">&nbsp;<%=PersonalInfoService.company%></td>
                        </tr>
                        <tr>
                            <td>&nbsp;<img src="images/personalSpace_link.png">&nbsp;<%=PersonalInfoService.link%></td>
                        </tr>
                    </table>
                </div>
            </div>
            <br /> <br />
            <div class="work_edu">
            <div class="work_exp">
                <h2>工作经历</h2>
                <%
                    WorkShowService.show(user);
                %>
                <br>
                <p><%=WorkShowService.company_job%></p><br>
                <p><%=WorkShowService.times%></p><br>
            </div>
            <div class="edu_exp">
                <h2>教育经历</h2>
                <%
                    EduShowService.show(user);
                %>
                <br>
                <p><%=EduShowService.edu_info%></p><br>
                <p><%=EduShowService.times%></p>
            </div>
        </div>
        </div>
        <%
            ReleaseDao dao = new ReleaseDao();
            List<Release_date> userList=dao.getDateInfo();

        %>

        <div class="container_right">
            <div class="left01">
                <table  class="left01_table"  cellspacing="0" cellpadding="0">
                    <%--<c:set var="startIndex" value="${fn:length(userList)-1 }"></c:set>--%>
                    <c:forEach var="username" items="<%=userList%>" varStatus="status">
                        <tr class="left01_tr">
                        <td class="left01_table_img"> <img src="${username.headPic}" alt="头像1" style="width: 128px;width: 128px"></td>
                            <td  class="left01_table_td"><p class="left01_table_p">&nbsp;&nbsp;&nbsp;&nbsp;${username.username}发起了<font style="color: #c9302c">${username.theme}</font>的约会</p> <br>
                            <p class="left01_table_p">&nbsp;&nbsp;&nbsp;&nbsp;费用:&nbsp;${username.cost}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            时间:&nbsp;${username.time}</p>
                            <p class="left01_table_p">&nbsp;&nbsp;&nbsp;&nbsp;地点:&nbsp;${username.place}<p>
                            <p class="left01_table_p">&nbsp;&nbsp;&nbsp;&nbsp;描述:&nbsp;${username.dateDescription}</p>
                        </td>
                        <td class="left01_table_img1"><a href="#"><img  class="img_person" src="images/select.png"></a><br />响应请求</td>
                    </tr>
                      </c:forEach>
                          </table>
            </div >
            <div class="right01">

                <div class="top">
                    <div class="top1">
                        <p class="p1">约一个有趣的人,共度美好时光</p><br>
                        <div class="p2">
                            <p  class="p2"><a href="release_appointments.html">发布约会</a></p>
                        </div>
                    </div>
                    <div class="topButtom">
                        <% RankingListService service=new RankingListService();
                            Map<String,Long> theme=service.sortThemes();
                            System.out.println(theme.get("唱歌"));
                        %>
                        <table  style="border-collapse:separate; border-spacing:10px;">
                            <caption class="caption1">
                                |&nbsp排行榜
                            </caption>
                            <c:forEach var="themes" items="<%= theme %>">
                            <tr>
                                <td  class="td2">${themes.key}&nbsp;</td>
                                <td class="td1">${themes.value}&nbsp;</td>
                            </tr>
                            </c:forEach>
                        </table>

                    </div>

                </div>
            </div>


        </div>

    </div>
</div>

<footer>
<div class="agile-footer">

    <div class="container">
        <div class="aglie-info-logo">
            <div class="banner-mid-wthree"> <a href="index.html" class="hvr-buzz"> <img src="images/couple.png" alt="wp"/></a> </div>
        </div>
        <div class="copy-right">
            联系客服 关于我们 联系我们 无线业务 注册条款 区块链 招聘信息 交友信息 隐私保护 帮助中心 安全中心 营业执照 游戏中心<br />
            第二小组 版权所有<br />
            Copyright  2018-2018 NIIT Corporation, All Rights Reserved
        </div>
    </div>

</div>
</footer>
</body>
</html>
