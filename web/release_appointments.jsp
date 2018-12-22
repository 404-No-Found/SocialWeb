<!DOCTYPE html>
<html lang="en" xmlns:https="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>发布约会</title>
    <link href="css/homePage_style02.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/homePage_style01.css" rel="stylesheet" type="text/css" media="all"/>
  <style>
      textarea{
          vertical-align: top;
      }

.height{
  background: url("images/bg_yuehui.jpg") no-repeat center -200px  ;
  height:500px;
}
  </style>
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
  <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/release_appointments.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
<header>
  <div class="container" >
    <div class="logo">
      <h1><a href="index.html"><span>WP</span> <div class="logo-img"><img src="images/in-love.png" alt="img09"/></div><p class="sub_title">Wedding Proposer</p> </a></h1>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <nav class="cl-effect-13" id="cl-effect-13">
        <ul class="nav navbar-nav">
          <li><a href="Home.html">首页</a></li>
          <li><a href="##">回答</a></li>
          <li><a href="##">专栏</a></li>
          <li><a href="##">讲堂</a> </li>
          <li ><a href="login.html">点我登录</a></li>
        </ul>

      </nav>

    </div>

  </div>
</header>
<div style="text-align: left;font-size: 20px;width: 80%">
<form action="/ReleaseDateServlet" method="post">
<div class="height">
    <p class="font">发布约会</p>
    <br />


        <table  class="table1" align="left">
    <tr>
        <td colspan="2">主题:</td>

        <td ><input type="radio" value="喝咖啡" name="theme"><img src="images/coffee.png"><br />喝咖啡</td>
        <td ><input type="radio" value="吃饭" name="theme"><img src="images/p-eat.png"><br />吃饭</td>
        <td ><input type="radio" value="看电影" name="theme"><img src="images/film.png"><br />看电影</label></td>
        <td ><input type="radio" value="唱歌" name="theme"><img src="images/sing.png"><br />唱歌</label></td>
        <td ><input type="radio" value="旅行" name="theme"><img src="images/travel.png"><br />旅行</label></td>
        <td ><input type="radio" value="购物" name="theme"><img src="images/shopping.png"><br />购物</label></td>
        <td><input type="radio"  value="运动" name="theme"><img src="images/run.png"><br />运动</label></td>
        <td ><input type="radio" value="其他" name="theme"><img src="images/other.png"><br />其他</label></td>
    </tr>
</table>

    <br /><br /><br /><br />
    <p class="p"><span>费用：</span>
      <label>
          <input type="radio" value="me" name="cost">我买单
          <input type="radio" value="AA" name="cost" checked>AA
      </label>
        <br /><br />
    </p>
    <p class="p"><span>时间：</span>
        <input type="text" name="time" placeholder="约会时间" id="input1" >
        <br />
</p><br />
    <p class="p"><span>地点：</span>
        <input type="text" placeholder="约会地点" name="place" id="input2">
        <br />
    </p><br />
    <p class="p"><span>描述：</span><textarea name="desc" rows="5" cols="70" id="input3" placeholder="对于你的约会朋友，你有什么想说的吗" ></textarea>
    <br />
    </p><br />
    <p align="center">
        <button type="submit" class="btn" id="button1" onclick="release()" style="text-decoration: none;width:200px">发布约会</button>
        <script>function release() {
            alert("发布成功");
            window.location.href ='personalSpace.jsp';
        }</script>
        <!--<button type="button" class="btn" id="button2"  >取消发布</button>-->
        <!--<input type="submit" value="发布约会" name="submit" onclick="window.location.href ='homepage.html'">-->
        <!--<input type="submit" value="取消约会" name="submit" onclick="clearVal();"/>-->
  </p>

</div>

</form>
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
