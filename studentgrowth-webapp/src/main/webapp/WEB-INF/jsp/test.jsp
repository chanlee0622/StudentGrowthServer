<%--
  Created by IntelliJ IDEA.
  User: chan
  Date: 2014/6/6
  Time: 14:37
  Function: 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>学生成长管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-responsive.css" >

<!-- Le styles -->
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">

<!--[if lte IE 6]>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-ie6.css">
<![endif]-->
<!--[if lte IE 7]>
<link rel="stylesheet" type="text/css" href="bootstrap/css/ie.css">
<![endif]-->


<style>

/* GLOBAL STYLES
-------------------------------------------------- */
/* Padding below the footer and lighter body text */

body {
    padding-bottom: 40px;
    color: #5a5a5a;
}



/* CUSTOMIZE THE NAVBAR
-------------------------------------------------- */

/* Special class on .container surrounding .navbar, used for positioning it into place. */
.navbar-wrapper {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    z-index: 10;
    margin-top: 20px;
    margin-bottom: -90px; /* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
}
.navbar-wrapper .navbar {

}

/* Remove border and change up box shadow for more contrast */
.navbar .navbar-inner {
    border: 0;
    -webkit-box-shadow: 0 2px 10px rgba(0,0,0,.25);
    -moz-box-shadow: 0 2px 10px rgba(0,0,0,.25);
    box-shadow: 0 2px 10px rgba(0,0,0,.25);
}

/* Downsize the brand/project name a bit */
.navbar .brand {
    padding: 14px 20px 16px; /* Increase vertical padding to match navbar links */
    font-size: 16px;
    font-weight: bold;
    text-shadow: 0 -1px 0 rgba(0,0,0,.5);
}

/* Navbar links: increase padding for taller navbar */
.navbar .nav > li > a {
    padding: 15px 20px;
}
.navbar .nav li a {
    _padding: 15px 20px;
}
.navbar .nav li.dropdown a {
    _padding: 17px 20px;
}
.navbar .nav * li a,
.navbar .nav * li.dropdown a {
    _padding: 0;
}

/* Offset the responsive button for proper vertical alignment */
.navbar .btn-navbar {
    margin-top: 10px;
}



/* CUSTOMIZE THE NAVBAR
-------------------------------------------------- */

/* Carousel base class */
.carousel {
    margin-bottom: 60px;
}

.carousel .container {
    position: relative;
    z-index: 10;
}

.carousel-control {
    height: 80px;
    margin-top: 0;
    font-size: 120px;
    text-shadow: 0 1px 1px rgba(0,0,0,.4);
    background-color: transparent;
    border: 0;
}

.carousel .item {
    height: 500px;
}
.carousel img {
    position: absolute;
    top: 0;
    left: 0;
    min-width: 100%;
    _width:100%;
    height: 500px;
}

.carousel-caption {
    background-color: transparent;
    position: static;
    max-width: 550px;
    _width:550px;
    padding: 0 20px;
    margin-top: 200px;
}
.carousel-caption h1,
.carousel-caption .lead {
    margin: 0;
    line-height: 1.25;
    color: #fff;
    text-shadow: 0 1px 1px rgba(0,0,0,.4);
}
.carousel-caption .btn {
    margin-top: 10px;
}



/* MARKETING CONTENT
-------------------------------------------------- */

/* Center align the text within the three columns below the carousel */
.marketing .span4 {
    text-align: center;
}
.marketing h2 {
    font-weight: normal;
}
.marketing .span4 p {
    margin-left: 10px;
    margin-right: 10px;
}


/* Featurettes
------------------------- */

.featurette-divider {
    margin: 80px 0; /* Space out the Bootstrap <hr> more */
}
.featurette {
    padding-top: 120px; /* Vertically center images part 1: add padding above and below text. */
    overflow: hidden; /* Vertically center images part 2: clear their floats. */
}
.featurette-image {
    margin-top: -120px; /* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
}

/* Give some space on the sides of the floated elements so text doesn't run right into it. */
.featurette-image.pull-left {
    margin-right: 40px;
}
.featurette-image.pull-right {
    margin-left: 40px;
}

/* Thin out the marketing headings */
.featurette-heading {
    font-size: 50px;
    font-weight: 300;
    line-height: 1;
    letter-spacing: -1px;
}



/* RESPONSIVE CSS
-------------------------------------------------- */

@media (max-width: 979px) {

    .container.navbar-wrapper {
        margin-bottom: 0;
        width: auto;
    }
    .navbar-inner {
        border-radius: 0;
        margin: -20px 0;
    }

    .carousel .item {
        height: 500px;
    }
    .carousel img {
        width: auto;
        height: 500px;
    }

    .featurette {
        height: auto;
        padding: 0;
    }
    .featurette-image.pull-left,
    .featurette-image.pull-right {
        display: block;
        float: none;
        max-width: 40%;
        _width:40%;
        margin: 0 auto 20px;
    }
}




@media (max-width: 767px) {

    .navbar-inner {
        margin: -20px;
    }

    .carousel {
        margin-left: -20px;
        margin-right: -20px;
    }
    .carousel .container {

    }
    .carousel .item {
        height: 300px;
    }
    .carousel img {
        height: 300px;
    }
    .carousel-caption {
        width: 65%;
        padding: 0 70px;
        margin-top: 100px;
    }
    .carousel-caption h1 {
        font-size: 30px;
    }
    .carousel-caption .lead,
    .carousel-caption .btn {
        font-size: 18px;
    }

    .marketing .span4 + .span4 {
        margin-top: 40px;
    }

    .featurette-heading {
        font-size: 30px;
    }
    .featurette .lead {
        font-size: 18px;
        line-height: 1.5;
    }

}
</style>

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="../assets/ico/favicon.png">
</head>

<body>



<!-- 导航 -->
<div class="navbar-wrapper">

    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a class="brand" href="#">Project name</a>
                <div class="nav-collapse collapse">
                    <ul class="nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li class="nav-header">Nav header</li>
                                <li><a href="#">Separated link</a></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form pull-right">
                        <input class="span2" type="text" placeholder="Email">
                        <input class="span2" type="password" placeholder="Password">
                        <button type="submit" class="btn">Sign in</button>
                    </form>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </div>

    <!-- Wrap the .navbar in .container to center it within the absolutely positioned parent. -->
    <%--<div class="container" style="">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a class="brand" href="#">学生成长管理系统</a>
                <!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
                <div class="nav-collapse collapse">
                    <ul class="nav">
                        <li class="active"><a href="#">首页</a></li>
                        <li><a href="#about">学生工作</a></li>
                        <li><a href="#contact">奖助代</a></li>
                        <!-- Read about Bootstrap dropdowns at http://twitter.github.com/bootstrap/javascript.html#dropdowns -->
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">学生工作<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li class="nav-header">Nav header</li>
                                <li><a href="#">Separated link</a></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form pull-right">
                        <input class="span2" type="text" placeholder="帐号">
                        <input class="span2" type="password" placeholder="密码">
                        <button type="submit" class="btn">登录</button>
                    </form>
                </div><!--/.nav-collapse -->
            </div><!-- /.navbar-inner -->
        </div><!-- /.navbar -->

    </div> <!-- /.container -->--%>
</div><!-- /.navbar-wrapper -->



<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide">
    <div class="carousel-inner">
        <div class="item active">
            <img src="bootstrap/img/slide-01.jpg" alt="">
            <div class="container">
                <div class="carousel-caption">
                    <h1>标题</h1>
                    <p class="lead">详细内容描述....</p>
                    <a class="btn btn-large btn-primary" href="#">登录</a>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="bootstrap/img/slide-02.jpg" alt="">
            <div class="container">
                <div class="carousel-caption">
                    <h1>标题</h1>
                    <p class="lead">详细内容描述....</p>
                    <a class="btn btn-large btn-primary" href="#">登录</a>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="bootstrap/img/slide-03.jpg" alt="">
            <div class="container">
                <div class="carousel-caption">
                    <h1>标题</h1>
                    <p class="lead">详细内容描述....</p>
                    <a class="btn btn-large btn-primary" href="#">登录</a>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
</div><!-- /.carousel -->



<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- 3个功能模块，可替换 -->
    <div class="row">
        <div class="span4">
            <img class="img-circle" data-src="holder.js/140x140">
            <h2>标题</h2>
            <p>内容概要介绍</p>
            <p><a class="btn" href="#">查看详情 »</a></p>
        </div><!-- /.span4 -->
        <div class="span4">
            <img class="img-circle" data-src="holder.js/140x140">
            <h2>标题</h2>
            <p>内容概要介绍</p>
            <p><a class="btn" href="#">查看详情 »</a></p>
        </div><!-- /.span4 -->
        <div class="span4">
            <img class="img-circle" data-src="holder.js/140x140">
            <h2>标题</h2>
            <p>内容概要介绍</p>
            <p><a class="btn" href="#">查看详情 »</a></p>
        </div><!-- /.span4 -->
    </div><!-- /.row -->

    <hr class="featurette-divider">

    <!-- 页脚 -->
    <footer>
        <p class="pull-right"><a href="#">返回顶部</a></p>
        <p>© 2014 福建师范大学软件学院<a href="#">Privacy</a> · <a href="#">Terms</a></p>
    </footer>

</div><!-- /.container -->


<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

<script type="text/javascript" src="bootstrap/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<!--[if lte IE 6]>
<script type="text/javascript" src="bootstrap/js/bootstrap-ie.js"></script>
<![endif]-->
<script type="text/javascript" src="bootstrap/js/bootstrap-dropdown.js"></script>

</body>
</html>