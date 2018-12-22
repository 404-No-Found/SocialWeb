<%--
  Created by IntelliJ IDEA.
  User: LH151
  Date: 2018/12/17
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="text/html;charset=utf-8">
    <title>工作经历</title>
    <link rel="stylesheet" type="text/css" href="css/workExperience.css">
    <link href="css/homePage_style02.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/homePage_style01.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>
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
                    <li><a href="homePage.jsp">首页</a></li>
                    <li><a href="personalInfo.jsp">个人档案</a></li>
                    <li><a href="workExperience.jsp">工作经历</a></li>
                    <li><a href="eduExperience.jsp">教育经历</a></li>
                    <li><a href="personalSpace.jsp">个人空间</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>
<div class="bg">
    <div class="content">
        <h2 class="thefour">工作经历</h2>
        <form action="WorkExperienceServlet" method="post" id="user-from">
            <fieldset style="border-radius: 20px">
                <label for="theone">公司/组织名称</label>
                <input type="text" name="companyName" placeholder="公司/组织名称" id="theone" style="border-radius: 10px">
                <label for="thetwo">职位头衔</label>
                <input type="text" name="jobTitle" placeholder="如:java工程师" id="thetwo" style="border-radius: 10px">
            </fieldset>
            <br>
            起止时间<br>
            <input type="date"  name="timeWork" value="2018-01-01" style="border-radius: 10px">-<input type="date" value="" name="endWork" style="border-radius: 10px">
            <br>
            工作城市<br>
            <input type="text" name="workCity" size="10" value="如:上海" style="border-radius: 10px; height: 20px;width: 150px">
            <br>
            <label>相关技术</label><br>
            <textarea  style="border-radius: 20px; width: 557px;height: 90px" class="theone" name="relatedWork">标签:如java可使用逗号，分号，来分隔</textarea>
            <br>
            <label>职位描述</label><br>
            <textarea  style="border-radius: 20px; width: 557px;height: 150px" class="thetwo" name="jobDescription">在职期间做了什么工作，解决了什么问题，做出了什么贡献？</textarea>
            <br>
            <input type="reset" value="取消" name="reset" style="border-radius: 10px;color: deepskyblue">
            <input type="submit" value="保存" name="submit" style="border-radius: 10px; color: deepskyblue">
        </form>
    </div>
</div>
<div class="agile-footer">
    <div class="container">
        <div class="aglie-info-logo">
            <div class="banner-mid-wthree"><a href="index.html" class="hvr-buzz"> <img src="images/couple.png"
                                                                                       alt="wp"/></a></div>
        </div>
        <div class="copy-right">
            第二小组 版权所有<br/>
            Copyright 2018-2018 NIIT Corporation, All Rights Reserved
        </div>
    </div>
</div>
</body>
</html>
