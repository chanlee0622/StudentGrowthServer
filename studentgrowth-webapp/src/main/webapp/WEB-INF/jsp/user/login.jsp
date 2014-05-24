<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <title>学生工作管理系统</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="../css/home.css">

    <script type="application/javascript">
        function login() {
            alert("点击登录按钮");
            var mAccount = document.getElementById("mAccount").value;
            var mPassword = document.getElementById("mPassword").value;
            window.location.href="/user/studentLogin.html?mAccount=" + mAccount + "&mPassword=" + mPassword;
        }
    </script>
</head>
<body>
<center>
    <div>
        <form action="" method="post">
            帐号：<input type="text" id="mAccount"/><br/>
            密码：<input type="password" id="mPassword"/><br/>
            <button id="btnLogin" type="button" onclick="login()">登录</button>
        </form>
    </div>
    <div id="content"></div>
    <div id="footer"></div>
</center>
</body>
</html>