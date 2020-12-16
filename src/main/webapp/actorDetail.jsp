<%--
  Created by IntelliJ IDEA.
  User: zxs
  Date: 2020/10/22
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
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
    <header class="header header-fixed header-transparent text-white">
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
                            <a class="nav-link" href="actorList.jsp">演员表</a>
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

    <!-- =============== START OF MOVIE DETAIL INTRO =============== -->
    <section class="celeb-detail-intro overlay-gradient ptb100" style="background: url(assets/images/other/actor-img.jpg);">
    </section>
    <!-- =============== END OF MOVIE DETAIL INTRO =============== -->

    <!-- =============== START OF CELEBRITY DETAIL =============== -->
    <section class="celeb-detail pb100">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-12">
                    <div class="celeb-img">
                        <img src="${requestScope.personDetails.img}" alt="">
                    </div>
                </div>
                <div class="col-md-8 col-12">
                    <div class="celeb-details">
                        <h3 class="title">${requestScope.personDetails.name}</h3>
                        <span class="profession">Actor</span>
                        <!-- tab links -->
                        <ul class="nav tab-links">
                            <li class="nav-item">
                                <a class="nav-link active" id="bio-tab" data-toggle="tab" href="#bio" aria-controls="bio" aria-expanded="false">个人简介</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="film-tab" data-toggle="tab" href="#filmography" aria-controls="filmography" aria-expanded="false">参演电影</a>
                            </li>
                        </ul>
                        <!-- Tab Content -->
                        <div class="tab-content mt70">
                            <div class="tab-pane fade active show" id="bio" role="tabpanel" aria-labelledby="bio-tab" aria-expanded="false">
                                <div class="bio-description">
                                    <p>${requestScope.personDetails.summary}</p>
                                </div>
                                <div class="bio-details">
                                    <ul class="bio-wrapper">
                                        <li><h6>Date of Birth:</h6> ${requestScope.personDetails.birthday}</li>
                                        <li><h6>Gender:</h6> ${requestScope.personDetails.sex}</li>
                                        <li><h6>Birthplace:</h6> ${requestScope.personDetails.birthplace}</li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="tab-pane fade" id="filmography" role="tabpanel" aria-labelledby="film-tab" aria-expanded="false">
                                <ul class="film-list">
                                    <c:forEach items="${requestScope.actingFilms}" var="item">
                                        <li><a href="ShowMovieDetails?id=${item.id}">${item.name}</a><span class="year">${item.year}</span></li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- =============== End OF CELEBRITY DETAIL =============== -->

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
