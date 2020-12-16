<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: zxs
  Date: 2020/10/22
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="referrer" content="no-referrer">
    <!-- ===== Mobile viewport optimized ===== -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no">

    <!-- ===== Meta Tags - Description for Search Engine purposes ===== -->
    <meta name="description" content="Movify - Movies, Series & Cinema HTML Template">
    <meta name="keywords" content="movies, series, online streaming, html template, cinema html template">
    <meta name="author" content="GnoDesign">

    <!-- ===== Website Title ===== -->
    <title>Movify电影推荐系统</title>

    <!-- ===== Favicon & Different size apple touch icons ===== -->
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
    <link rel="apple-touch-icon" sizes="57x57" href="assets/images/apple-touch-icon-iphone.png">
    <link rel="apple-touch-icon" sizes="76x76" href="assets/images/apple-touch-icon-ipad.png">
    <link rel="apple-touch-icon" sizes="120x120" href="assets/images/apple-touch-icon-iphone-retina.png">
    <link rel="apple-touch-icon" sizes="152x152" href="assets/images/apple-touch-icon-ipad-retina.png">
    <link rel="apple-touch-icon" sizes="167x167" href="assets/images/apple-touch-icon-ipad-pro.png">
    <link rel="apple-touch-icon" sizes="180x180" href="assets/images/apple-touch-icon-iphone-6-plus.png">
    <link rel="icon" sizes="192x192" href="assets/images/icon-hd.png">
    <link rel="icon" sizes="128x128" href="assets/images/icon.png">

    <!-- ===== Google Fonts ===== -->
    <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">

    <!-- ===== CSS links ===== -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/revolution/css/settings.css">
    <link rel="stylesheet" type="text/css" href="assets/revolution/css/layers.css">
    <link rel="stylesheet" type="text/css" href="assets/revolution/css/navigation.css">
    <link rel="stylesheet" type="text/css" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="assets/css/jquery.mmenu.css">
    <link rel="stylesheet" type="text/css" href="assets/css/owl.carousel.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/responsive.css">
    <script src="assets/js/echarts.min.js"></script>
</head>
<body>
<!-- =============== START OF PRELOADER =============== -->
<div class="loading">
    <div class="loading-inner">
        <div class="loading-effect">
            <div class="object"></div>
        </div>
    </div>
</div>
<!-- =============== END OF PRELOADER =============== -->

<!-- =============== START OF RESPONSIVE - MAIN NAV =============== -->
<nav id="main-mobile-nav"></nav>
<!-- =============== END OF RESPONSIVE - MAIN NAV =============== -->

<!-- =============== START OF WRAPPER =============== -->
<div class="wrapper">
    <!-- =============== START OF HEADER NAVIGATION =============== -->
    <!-- Insert the class "sticky" in the header if you want a sticky header -->
    <header class="header">
        <div class="container-fluid">
            <!-- ====== Start of Navbar ====== -->
            <nav class="navbar navbar-expand-lg">
                <a class="navbar-brand" href="index.jsp">
                    <!-- INSERT YOUR LOGO HERE -->
                    <img src="assets/images/logo.svg" alt="logo" width="150" class="logo">
                    <!-- INSERT YOUR WHITE LOGO HERE -->
                    <img src="assets/images/logo-white.svg" alt="white logo" width="150" class="logo-white">
                </a>
                <button id="mobile-nav-toggler" class="hamburger hamburger--collapse" type="button">
                       <span class="hamburger-box">
                          <span class="hamburger-inner"></span>
                       </span>
                </button>
                <!-- ====== Start of #main-nav ====== -->
                <div class="navbar-collapse" id="main-nav">
                    <!-- ====== Start of Main Menu ====== -->
                    <ul class="navbar-nav mx-auto" id="main-menu">
                        <!-- Menu Item -->
                        <li class="nav-item">
                            <a class="nav-link" href="movie-list.jsp">电影列表</a>
                        </li>
                        <!-- Menu Item -->
                        <li class="nav-item">
                            <a class="nav-link" href="personal-homepage.jsp">联系我们</a>
                        </li>
                    </ul>
                    <!-- ====== End of Main Menu ====== -->

                    <!-- ====== Start of Extra Nav ====== -->
                    <ul class="navbar-nav extra-nav">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${sessionScope.user.userName}</a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a class="nav-link" href="PersonServlet">个人中心</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#">退出登录</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <!-- ====== End of Extra Nav ====== -->
                </div>
                <!-- ====== End of #main-nav ====== -->
            </nav>
            <!-- ====== End of Navbar ====== -->
        </div>
    </header>
    <!-- =============== END OF HEADER NAVIGATION =============== -->

    <!-- =============== START OF PAGE HEADER =============== -->
    <section class="page-header overlay-gradient" style="background: url(assets/images/posters/movie-collection.jpg);">
        <div class="container">
            <div class="inner">
                <h2 class="title">偏好</h2>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">主页</a></li>
                    <li>偏好</li>
                </ol>
            </div>
        </div>
    </section>
    <!-- =============== END OF PAGE HEADER =============== -->

    <div style="text-align:center;">
        <div style="height: 40px"></div>
        <div id="main1" style="width: 600px;height:480px;display:inline-block;"></div>
        <script type="text/javascript">
            // 基于准备好的dom，初始化echarts实例
            var myChart = echarts.init(document.getElementById('main1'));

            // 指定图表的配置项和数据
            var option = {
                title: {
                    text: '个人偏好图',
                    left:'center'
                },
                tooltip: {},
                legend: {
                    left:'center',
                    top:'bottom',
                    data: ['电影类型（Film Type）']
                },
                radar: {
                    // shape: 'circle',
                    name: {
                        textStyle: {
                            color: '#fff',
                            backgroundColor: '#999',
                            borderRadius: 3,
                            padding: [3, 5]
                        }
                    },
                    indicator: [
                        { name: '${TyList[0]}', max: ${CtList[0]}},
                        { name: '${TyList[1]}', max: ${CtList[0]}},
                        { name: '${TyList[2]}', max: ${CtList[0]}},
                        { name: '${TyList[3]}', max: ${CtList[0]}},
                        { name: '${TyList[4]}', max: ${CtList[0]}},
                        { name: '${TyList[5]}', max: ${CtList[0]}}
                    ]
                },
                series: [{
                    name: '电影分布（Film Distribution）',
                    type: 'radar',
                    // areaStyle: {normal: {}},
                    data: [
                        {
                            value: [${CtList[0]}, ${CtList[1]}, ${CtList[2]}, ${CtList[3]}, ${CtList[4]}, ${CtList[5]}],
                            name: '电影分布（Film Distribution）'
                        }
                    ]
                }]
            };
            // 使用刚指定的配置项和数据显示图表。
            myChart.setOption(option);
        </script>
    </div>
    <!-- =============== START OF MAIN =============== -->
    <main class="ptb100">

        <div class="container">
            <!-- Start of Movie List -->
            <div class="row">
                <c:forEach items="${requestScope.movieReList}" var="item">
                <!-- Watch Later Item -->
                <div class="col-md-12 col-sm-12">
                    <div class="watch-later-item">
                        <div class="listing-container">
                            <!-- Movie List Image -->
                            <div class="listing-image">
                                <img src="${item.img}" class="img-shadow" alt="">
                            </div>
                            <!-- Movie List Content -->
                            <div class="listing-content">
                                <div class="inner">
                                    <h3 class="title">${item.name}</h3>
                                    <p style="display: -webkit-box;-webkit-line-clamp:3;-webkit-box-orient: vertical;overflow: hidden;">${item.summary}</p>
                                    <a href="ShowMovieDetails?id=${item.id}" class="btn btn-main btn-effect">more details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
            <!-- End of Movie List -->

            <!-- Start of Pagination -->
            <div class="row mt30">
                <div class="col-md-12 col-sm-12">
                    <nav class="pagination">
                        <ul>
                            <li><a href="#" class="current-page">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#"><i class="ti-angle-right"></i></a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- End of Pagination -->
        </div>
    </main>
    <!-- =============== END OF MAIN =============== -->

    <!-- =============== START OF FOOTER =============== -->
    <footer class="footer1 bg-dark">
        <!-- ===== START OF FOOTER COPYRIGHT AREA ===== -->
        <div class="footer-copyright-area ptb30">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="d-flex">
                            <div class="links">
                                <ul class="list-inline">
                                    <li class="list-inline-item"><a href="#">隐私和Cookie</a></li>
                                    <li class="list-inline-item"><a href="#">条款和条件</a></li>
                                    <li class="list-inline-item"><a href="#">法律免责声明</a></li>
                                    <li class="list-inline-item"><a href="#">社区</a></li>
                                </ul>
                            </div>

                            <div class="copyright ml-auto">版权所有 <a href="#">Movify</a>.</div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ===== END OF FOOTER COPYRIGHT AREA ===== -->
    </footer>
    <!-- =============== END OF FOOTER =============== -->
</div>
<!-- =============== END OF WRAPPER =============== -->

<!-- =============== START OF GENERAL SEARCH WRAPPER =============== -->
<div class="general-search-wrapper">
    <form class="general-search" role="search" method="get" action="#">
        <input type="text" placeholder="Type and hit enter...">
        <span id="general-search-close" class="ti-close toggle-search"></span>
    </form>
</div>
<!-- =============== END OF GENERAL SEARCH WRAPPER =============== -->

<!-- ===== Start of Back to Top Button ===== -->
<div id="backtotop">
    <a href="#"></a>
</div>
<!-- ===== End of Back to Top Button ===== -->

<!-- ===== All Javascript at the bottom of the page for faster page loading ===== -->
<script src="assets/js/jquery-3.2.1.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.ajaxchimp.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/jquery.mmenu.js"></script>
<script src="assets/js/jquery.inview.min.js"></script>
<script src="assets/js/jquery.countTo.min.js"></script>
<script src="assets/js/jquery.countdown.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/imagesloaded.pkgd.min.js"></script>
<script src="assets/js/isotope.pkgd.min.js"></script>
<script src="assets/js/headroom.js"></script>
<script src="assets/js/custom.js"></script>

<!-- ===== Slider Revolution core JavaScript files ===== -->
<script type="text/javascript" src="assets/revolution/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="assets/revolution/js/jquery.themepunch.revolution.min.js"></script>

<!-- ===== Slider Revolution extension scripts ===== -->
<script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.actions.min.js"></script>
<script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
<script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
<script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.migration.min.js"></script>
<script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
<script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript" src="assets/revolution/js/extensions/revolution.extension.video.min.js"></script>
</body>
</html>
