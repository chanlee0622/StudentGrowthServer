<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<script type="javascript">
    function login() {
        alert("点击登录按钮");
        window.location.href=${pageContext.request.contextPath} + "/user/login.jsp";
    }
</script>
<html>
<head>

    <title>学生工作管理系统</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="../css/home.css">
</head>
<body>
<h1>登录成功</h1>
</body>
</html>