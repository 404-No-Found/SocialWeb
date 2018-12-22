function checkUsername() {
    //用户名正则，4到16位（字母，数字，下划线，减号）
    var uPattern = /^[a-zA-Z0-9_-]{4,16}$/;
    var username = document.getElementById("username").value;
    if (uPattern.test(username) == true) {
        return true;
    } else {
        alert("用户名不合法");
        return false;
    }
}

function checkPassword() {
    var password = document.getElementById("password").value;
    var newPaw = document.getElementById("newPaw").value;
    if (password != newPaw) {
        alert("两次输入的密码不一致");
        return false;
    }
    return true;
}

function checkEmail() {
    //Email正则
    var ePattern = /^([a-zA-Z0-9._-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
    var email = document.getElementById("email").value;
    if (ePattern.test(email) && email != "") {
        return true;
    } else {
        alert("邮箱格式不正确");
        return false;
    }

}

function isHave() {
    if (checkUsername() == true && checkPassword() == true && checkEmail() == true) {
        document.getElementById("register_form").action="RegisterServlet";
    }else {
        alert("失败")
    }
}