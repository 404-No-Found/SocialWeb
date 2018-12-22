<%--
  Created by IntelliJ IDEA.
  User: LH151
  Date: 2018/12/17
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1"/>
    <title>教育经历</title>
    <link href="css/homePage_style02.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/homePage_style01.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" type="text/css" href="css/eduExperience.css">
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
                    </a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>
<div class="bg">
    <div class="content">
        <h2 class="thefour">教育经历</h2>
        <form action="EduExperienceServlet" method="post" id="user-from">
            <fieldset style="border-radius: 20px">
                <label for="theone">院系名称</label>
                <input type="text" name="school_name" placeholder="院校名称" id="theone" style="border-radius: 10px">
                <label for="thetwo">所学专业</label>
                <input type="text" name="professional" placeholder="如:java工程师" id="thetwo" style="border-radius: 10px">
            </fieldset>
            <br>
            起止时间<br>
            <input type="date" value="2018-01-01" name="startWork" style="border-radius: 10px">-<input type="date"
                                                                                                       name="endWork"
                                                                                                       value=""
                                                                                                       style="border-radius: 10px">
            <br>
            <label>学历</label><br>
            <select name="record" style="border-radius: 10px; height: 25px;width: 150px">
                <option value="初中">初中</option>
                <option value="高中">高中</option>
                <option value="中专">中专</option>
                <option value="大专">大专</option>
                <option value="本科">本科</option>
                <option value="研究生">研究生</option>
                <option value="博士">博士</option>
                <option value="其他">其他</option>
            </select>
            <br>
            <label>相关技术</label><br>
            <textarea name="relatedEdu" style="border-radius: 20px; width: 557px;height: 90px" class="theone"
                      id="the-one" placeholder="标签:如java可使用逗号，分号，来分隔"></textarea>
            <br>
            <label>取得成就</label><br>
            <textarea style="border-radius: 20px; width: 557px;height: 150px" class="thetwo" id="the-two"
                      name="achievement" placeholder="在职期间做了什么工作，解决了什么问题，做出了什么贡献？"></textarea>
            <br>
            <input type="reset" value="取消" name="reset" style="border-radius: 10px;color: deepskyblue">
            <input type="submit" value="保存" name="submit" style="border-radius: 10px;color: deepskyblue">
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
