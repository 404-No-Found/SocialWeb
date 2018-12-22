<%--
  Created by IntelliJ IDEA.
  User: LH151
  Date: 2018/12/17
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>个人档案</title>
    <link href="css/homePage_style02.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/homePage_style01.css" rel="stylesheet" type="text/css" media="all"/>
    <style type="text/css">
        body{
            background:url("images/pic_bg_personinfo.jpg") no-repeat ;
            background-size: cover;
            height: 700px;
        }

        .center{
            padding-right: 350px;
            padding-left: 350px;
        }
        .theone{

            padding-right: 350px;
            padding-left: 450px;
            font-size: 40px;
            font-family: "楷体", sans-serif;
            font-weight: bold;
        }
        .thetwo{

        }
        .thethree{
            font-size: 10px;
            margin-left:100px;
        }
        .thefour{
            float:right ;
            text-align: center;
            padding-top: 0px;
            padding-right: 450px;
            padding-left: 250px;
        }

        a{

            text-decoration: none;
            font-size: 20px;
            font-family: 楷体;
        }
        th{
            text-align: left;
        }
    </style>
    <script>
        function imgPreview(fileDom){
            //判断是否支持FileReader
            if (window.FileReader) {
                var reader = new FileReader();
            } else {
                alert("您的设备不支持图片预览功能，如需该功能请升级您的设备！");
            }

            //获取文件
            var file = fileDom.files[0];
            var imageType = /^image\//;
            //是否是图片
            if (!imageType.test(file.type)) {
                alert("请选择图片！");
                return;
            }
            //读取完成
            reader.onload = function(e) {
                //获取图片dom
                var img = document.getElementById("preview");
                //图片路径设置为读取的图片
                img.src = e.target.result;
            };
            reader.readAsDataURL(file);
        }
    </script>

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
<h2 class="theone">个人档案</h2>
<form action="PersonalInfoServlet" method="post" enctype="multipart/form-data">
    <div class="thefour">
        <div class="thetwo">
            <img src="../images/headPic.png" id="preview" style="width: 128px;height: 128px;border-radius: 50%">
        </div>
        <div class="thethree">
            <input type="file" name="uploadFiles" onchange="imgPreview(this)">
            <br>支持jpg/png/jpeg格式，大小不要超过2MB
        </div><br>
    </div>
    <div class="center">
        <table border="0" >

            <tr id="two">
                <th>登录姓名</th>
                <th>性别</th>
            </tr>
            <tr>
                <td ><input type="text" name="real_name" placeholder="真实姓名" id="thetwo" style="border-radius: 10px;height: 25px;width: 170px"></td>
                <td>
                    <label for="male">保密</label>
                    <input type="radio" name="gender" value="保密" id="result" checked="checked">
                    <label for="male">男</label>
                    <input type="radio" name="gender" value="男" id="male">
                    <label for="male">女</label>
                    <input type="radio" name="gender" value="女" id="female">
                </td>
            </tr>
            <tr>
                <th>出生日期</th>
                <th>个人网站</th>
            </tr>
            <tr>
                <td><input type="date" name="birthday" value="1980-01-01" id="thethree" style="border-radius: 10px;height: 25px;width: 170px"></td>
                <td>
                    <input type="text" id="email" name="website" placeholder="网站地址" style="border-radius: 10px;height: 25px;width: 170px">
                </td>
            </tr><br>
            <tr>
                <th>手机号码</th>
                <th>Email</th>
            </tr>
            <tr>
                <td><input type="tel" placeholder="11位手机号码" size="11px" name="phone_num" id="thefive" style="border-radius: 10px;height: 25px;width: 170px"></td>
                <td><input type="email" name="email" placeholder="用于收取通知，找回密码" size="10px" id="thesix" style="border-radius: 10px;height: 25px;width: 170px"></td>
            </tr>
            <tr>
                <th>毕业院校</th>
                <th>所在公司组织</th>
            </tr>
            <tr>
                <td><input type="text" name="school" placeholder="院校名称" style="border-radius: 10px;height: 25px;width: 170px"></td>
                <td><input type="text" name="company" placeholder="公司/组织名称" style="border-radius: 10px;height: 25px;width: 170px"></td>
            </tr>
            <tr>
                <th>现居城市</th>
                <th>通讯地址</th>
            </tr>
            <tr>
                <td ><input type="text" name="now_city" placeholder="当前城市" style="border-radius: 10px;height: 25px;width: 170px"></td>
                <td ><input type="text" name="address" placeholder="当前通讯地址" style="border-radius: 10px;height: 25px;width: 170px"></td>

            </tr>
            <tr >
                <td colspan="2" style="text-align:  center">
                    <input type="reset" value="取消" name="reset" style="border-radius: 10px;color: palevioletred;height: 25px">
                    <input type="submit" value="保存" name="submit" style="border-radius: 10px; color: palevioletred;height: 25px">
                </td>
            </tr>
        </table>
    </div>
</form>
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
