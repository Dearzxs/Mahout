<%--
  Created by IntelliJ IDEA.
  User: zxs
  Date: 2020/10/22
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
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
                            <a class="nav-link" href="contact-us.jsp">联系我们</a>
                        </li>

                    </ul>
                    <!-- ====== End of Main Menu ====== -->


                    <!-- ====== Start of Extra Nav ====== -->
                    <ul class="navbar-nav extra-nav">

                        <!-- Menu Item -->
                        <li class="nav-item">
                            <a class="nav-link toggle-search" href="#">
                                <i class="fa fa-search"></i>
                            </a>
                        </li>

                        <!-- Menu Item -->
                        <li class="nav-item m-auto">
                            <a href="" class="btn btn-main btn-effect login-btn popup-with-zoom-anim">
                                <i class="icon-user"></i>${sessionScope.user.userName}
                            </a>
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
    <section class="movie-detail-intro overlay-gradient ptb100" style="background: url(assets/images/other/movie-detail-bg.jpg);">
    </section>
    <!-- =============== END OF MOVIE DETAIL INTRO =============== -->

    <!-- =============== START OF MOVIE DETAIL INTRO 2 =============== -->
    <section class="movie-detail-intro2">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="movie-poster">
                        <img src="${requestScope.movieDetails.img}" alt="">
                    </div>
                    <div class="movie-details">
                        <h3 class="title">${requestScope.movieDetails.name}</h3>
                        <ul class="movie-subtext">
                            <li>分级</li>
                            <li>时长</li>
                            <li>标签（tag）:${requestScope.movieDetails.genre}</li>
                            <li>上映时间 产地:${requestScope.movieDetails.country}</li>
                        </ul>
                        <a href="#" class="btn btn-main btn-effect">添加偏好</a>
                        <a href="#" class="btn rate-movie"><i class="icon-heart"></i></a>
                        <div class="rating mt10">
                            <!--星星-->
                            <!--
                            fa fa-star          一颗实心星星
                            fa fa-star-o        一颗空心星星
                            fa fa-star-half-o   一颗半空星星
                            -->
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                            <span>xxx人评价</span>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </section>
    <!-- =============== End OF MOVIE DETAIL INTRO 2 =============== -->

    <!-- =============== START OF MOVIE DETAIL MAIN SECTION =============== -->
    <section class="movie-detail-main ptb100">
        <div class="container">
            <div class="row">
                <!-- Start of Movie Main -->
                <div class="col-lg-8 col-sm-12">
                    <div class="inner pr50">
                        <!-- Storyline -->
                        <div class="storyline">
                            <h3 class="title">故事摘要</h3>

                            <p>${requestScope.movieDetails.summary}</p>
                        </div>
                        <!-- Media -->
                    </div>
                </div>
                <!-- End of Movie Main -->

                <!-- Start of Sidebar -->
                <div class="col-lg-4 col-sm-12">
                    <div class="sidebar">
                        <!-- Start of Details Widget -->
                        <aside class="widget widget-movie-details">
                            <h3 class="title">详情</h3>
                            <ul>
                                <li><strong>发行日期: </strong>${requestScope.movieDetails.year}</li>
                                <li><strong>导演: </strong><a href="#">Rian Johnson</a></li>
                                <li><strong>预算: </strong>200 million USD</li>
                                <li><strong>国家: </strong>${requestScope.movieDetails.country}</li>
                                <li><strong>语言: </strong>English</li>
                                <li><strong>制片商: </strong><a href="#">Lucasfilm</a></li>
                            </ul>
                        </aside>
                        <!-- End of Details Widget -->
                    </div>
                </div>
                <div class="col-lg-12 col-sm-12">
                    <div class="sidebar">
                        <!-- Start of Details Widget -->
                        <aside class="widget widget-movie-cast">
                            <h3 class="title">演职人员</h3>
                            <c:forEach items="${requestScope.personList}" var="pList">
                            <ul class="cast-wrapper">
                                <!--jsp标签循环演员个人信息和照片 5人-->
                                <li>
                                    <a href="celebrity-detail.jsp">
                                            <span class="circle-img">
                                                <img src="${pList.img}" alt="">
                                            </span>
                                        <h6 class="name">${pList.name}</h6>
                                    </a>
                                </li>
                            </ul>
                            </c:forEach>
                            <a href="celebrities-list.jsp" class="btn btn-main btn-effect mt20">view all</a>
                        </aside>
                        <!-- End of Details Widget -->
                    </div>
                </div>
                <!-- End of Sidebar -->
            </div>
        </div>
    </section>
    <!-- =============== END OF MOVIE DETAIL MAIN SECTION =============== -->

    <!-- =============== START OF RECOMMENDED MOVIES SECTION =============== -->
    <section class="recommended-movies bg-light ptb100">
        <div class="container">
            <!-- Start of row -->
            <div class="row">
                <div class="col-md-8 col-sm-12">
                    <h2 class="title">你可能会喜欢...</h2>
                </div>
            </div>
            <!-- End of row -->

            <!-- Start of Latest Movies Slider -->
            <div class="owl-carousel recommended-slider mt20">
                <!-- === Start of Sliding Item 1 === -->
                <!-- 这里自动填充到4个，如果多于4个自动分页，少于4个就会用 item1填满4个 -->
                <c:forEach items="${requestScope.movieIReList}" var="birmov">
                    <div class="item">
                    <!-- Start of Movie Box -->
                    <div class="movie-box-1">
                        <!-- Start of Poster -->
                        <div class="poster">
                            <img src="${birmov.img}" alt="">
                        </div>
                        <!-- End of Poster -->
                        <!-- Start of Movie Details -->
                        <div class="movie-details">
                            <h4 class="movie-title">
                                <a href="movie-detail.jsp">${birmov.name}</a>
                            </h4>
                            <span class="released">${birmov.year}</span>
                        </div>
                        <!-- End of Movie Details -->
                        <!-- Start of Rating -->
                        <div class="stars">
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                            </div>
                            <span>${birmov.rating}</span>
                        </div>
                        <!-- End of Rating -->
                    </div>
                    <!-- End of Movie Box -->
                </div>
                </c:forEach>
                <!-- === End of Sliding Item 1 === -->
            </div>
            <!-- End of Latest Movies Slider -->
        </div>
    </section>
    <!-- =============== END OF RECOMMENDED MOVIES SECTION =============== -->

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
