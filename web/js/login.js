function checkUser() {
    //用户名正则，4到16位（字母，数字，下划线，减号）
    var uPattern = /^[a-zA-Z0-9_-]{4,16}$/;
//Email正则
    var ePattern = /^([a-zA-Z0-9._-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
    var username=document.getElementById("username").value;

    if (uPattern.test(username) == true || ePattern.test(username) == true) {
        return true;
    }
    alert("用户名或邮箱不合法")
    return false;
}
function checkPaw() {
    var password=document.getElementById("password").value;
    if (password != null && "" != password) {
        return true;
    }
    alert("密码不合法");
    return false;
}
function isHave() {
    if(checkUser()==true &&checkPaw()==true){
        document.getElementById("user_form").action="LoginServlet";
    }
}

