<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
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
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Movies</a>

                            <!-- Dropdown Menu -->
                            <ul class="dropdown-menu">
                                <!-- Menu Item -->
                                <li>
                                    <a class="dropdown-item" href="404.html">404页面</a>
                                </li>

                                <!-- Divider -->
                                <li class="divider" role="separator"></li>

                                <!-- Menu Item -->
                                <li>
                                    <a class="dropdown-item" href="QueAllPerson">演员表</a>
                                </li>

                                <!-- Menu Item -->
                                <li>
                                    <a class="dropdown-item" href="celebrity-detail.jsp">演员介绍</a>
                                </li>

                                <!-- Menu Item -->
                                <li>
                                    <a class="dropdown-item" href="QueAllMovie">电影列表</a>
                                </li>

                                <!-- Menu Item -->
                                <li>
                                    <a class="dropdown-item" href="movie-detail.jsp">电影详情</a>
                                </li>

                                <!-- Menu Item -->
                                <li>
                                    <a class="dropdown-item" href="Recommender">偏好</a>
                                </li>
                            </ul>
                        </li>

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
                            <a href="#login-register-popup" class="btn btn-main btn-effect login-btn popup-with-zoom-anim">
                                <i class="icon-user"></i>登录
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


    <!-- =============== START OF SLIDER REVOLUTION SECTION =============== -->
    <section id="slider" class="hero-slider">
        <div class="rev-slider-wrapper fullwidthbanner-container overlay-gradient">
            <!-- Start REVOLUTION SLIDER 5.4.1 fullwidth mode -->
            <div id="hero-slider" class="rev_slider fullwidthabanner" style="display:none" data-version="5.4.1">
                <ul>

                    <!-- ===== SLIDE NR. 1 ===== -->
                    <li data-transition="fade">
                        <!-- MAIN IMAGE -->
                        <img src="assets/images/posters/movie-collection.jpg"
                             alt="Image"
                             title="slider-bg"
                             data-bgposition="center center"
                             data-bgfit="cover"
                             data-bgrepeat="no-repeat"
                             data-bgparallax="10"
                             class="rev-slidebg"
                             data-no-retina="">
                        <!-- LAYER NR. 1 -->
                        <div class="tp-caption tp-resizeme"
                             data-x="center"
                             data-hoffset=""
                             data-y="middle"
                             data-voffset="['-80','-80','-80','-80']"
                             data-responsive_offset="on"
                             data-fontsize="['60','50','40','30']"
                             data-lineheight="['60','50','40','30']"
                             data-whitespace="nowrap"
                             data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:0;s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"},{"delay":"wait","speed":500,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                             style="z-index: 5; color: #fff; font-weight: 900;">WELCOME TO MOVIFY
                        </div>


                        <!-- LAYER NR. 2 -->
                        <div class="tp-caption tp-resizeme"
                             data-x="center"
                             data-hoffset=""
                             data-y="middle"
                             data-voffset="[0]"
                             data-width="[1200, 992, 768, 98%]"
                             data-responsive_offset="on"
                             data-whitespace="nowrap"
                             data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:0;s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"},{"delay":"wait","speed":500,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                             style="z-index: 5; color: #fff; font-weight: 900;">

                            <!-- ===== START OF SEARCH FORM ===== -->
                            <form id="search-form-1">
                                <div class="row justify-content-center">
                                    <div class="col-md-8 col-sm-10 col-12">
                                        <div class="form-group">
                                            <input name="search-keyword" type="text" id="search-keyword" value="" class="form-control" placeholder="请输入你想要了解的电影">
                                            <button type="submit" class="btn btn-main btn-effect"><i class="fa fa-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <!-- ===== END OF SEARCH FORM ===== -->

                        </div>


                        <!-- LAYER NR. 3 -->
                        <div class="tp-caption tp-resizeme text-center"
                             data-x="center"
                             data-hoffset=""
                             data-y="middle"
                             data-voffset="['100','100','80','80']"
                             data-responsive_offset="on"
                             data-fontsize="['16']"
                             data-lineheight="['22']"
                             data-whitespace="nowrap"
                             data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:0;s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"},{"delay":"wait","speed":500,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                             style="z-index: 5; color: #fff; font-weight: 400;">
                            高分电影推荐
                        </div>


                        <!-- LAYER NR. 4 -->
                        <div class="tp-caption tp-resizeme"
                             data-x="[730, 630, 520, 370]"
                             data-hoffset=""
                             data-y="middle"
                             data-voffset="['115','115','90','500']"
                             data-responsive_offset="on"
                             data-fontsize="['16']"
                             data-lineheight="['22']"
                             data-whitespace="nowrap"
                             data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:0;s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"},{"delay":"wait","speed":500,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                             style="z-index: 5; color: #fff; font-weight: 400;">
                            <img src="assets/images/other/banner-arrow.png" alt="">
                        </div>
                    </li>

                </ul>
            </div>
            <!-- End REVOLUTION SLIDER 5.4.1 fullwidth mode -->
        </div>
        <!-- ===== END OF REV SLIDER WRAPPER ===== -->

    </section>
    <!-- =============== START OF SLIDER REVOLUTION SECTION =============== -->


    <!-- =============== 高分电影推荐部分 =============== -->
    <section class="top-movies2">
        <div class="container">
            <div class="row">
                <!-- Movie List Item -->
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="movie-box-4">
                        <div class="listing-container">

                            <!-- Movie List Image -->
                            <div class="listing-image">

                                <!-- Buttons -->
                                <div class="buttons">
                                    <a href="#" data-original-title="Rate" data-toggle="tooltip" data-placement="bottom" class="like">
                                        <i class="icon-heart"></i>
                                    </a>

                                    <a href="#" data-original-title="Share" data-toggle="tooltip" data-placement="bottom" class="share">
                                        <i class="icon-share"></i>
                                    </a>
                                </div>

                                <!-- Rating -->
                                <div class="stars">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </div>

                                <!-- Image -->
                                <img src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2006533765.webp" alt="">

                            </div>

                            <!-- Movie List Content -->
                            <div class="listing-content">
                                <div class="inner">
                                    <h2 class="title">歌剧魅影</h2>

                                    <a href="movie-detail.jsp" class="btn btn-main btn-effect">details</a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- Movie List Item -->
                <div class="col-lg-3 col-md-6 col-sm-6 d-none d-sm-block">
                    <div class="movie-box-4">
                        <div class="listing-container">

                            <!-- Movie List Image -->
                            <div class="listing-image">

                                <!-- Buttons -->
                                <div class="buttons">
                                    <a href="#" data-original-title="Rate" data-toggle="tooltip" data-placement="bottom" class="like">
                                        <i class="icon-heart"></i>
                                    </a>

                                    <a href="#" data-original-title="Share" data-toggle="tooltip" data-placement="bottom" class="share">
                                        <i class="icon-share"></i>
                                    </a>
                                </div>

                                <!-- Rating -->
                                <div class="stars">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </div>

                                <!-- Image -->
                                <img src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2397258764.webp" alt="">
                            </div>

                            <!-- Movie List Content -->
                            <div class="listing-content">
                                <div class="inner">
                                    <h2 class="title">Yes,Minister: Party Games</h2>

                                    <a href="movie-detail.jsp" class="btn btn-main btn-effect">details</a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- Movie List Item -->
                <div class="col-lg-3 col-md-6 d-none d-lg-block">
                    <div class="movie-box-4">
                        <div class="listing-container">

                            <!-- Movie List Image -->
                            <div class="listing-image">

                                <!-- Buttons -->
                                <div class="buttons">
                                    <a href="#" data-original-title="Rate" data-toggle="tooltip" data-placement="bottom" class="like">
                                        <i class="icon-heart"></i>
                                    </a>

                                    <a href="#" data-original-title="Share" data-toggle="tooltip" data-placement="bottom" class="share">
                                        <i class="icon-share"></i>
                                    </a>
                                </div>

                                <!-- Rating -->
                                <div class="stars">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </div>

                                <!-- Image -->
                                <img src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480747492.webp" alt="">
                            </div>

                            <!-- Movie List Content -->
                            <div class="listing-content">
                                <div class="inner">
                                    <h2 class="title">肖申克的救赎</h2>

                                    <a href="movie-detail.jsp" class="btn btn-main btn-effect">details</a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- Movie List Item -->
                <div class="col-lg-3 col-md-6 d-none d-lg-block">
                    <div class="movie-box-4">
                        <div class="listing-container">

                            <!-- Movie List Image -->
                            <div class="listing-image">

                                <!-- Buttons -->
                                <div class="buttons">
                                    <a href="#" data-original-title="Rate" data-toggle="tooltip" data-placement="bottom" class="like">
                                        <i class="icon-heart"></i>
                                    </a>

                                    <a href="#" data-original-title="Share" data-toggle="tooltip" data-placement="bottom" class="share">
                                        <i class="icon-share"></i>
                                    </a>
                                </div>

                                <!-- Rating -->
                                <div class="stars">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </div>
                                </div>

                                <!-- Image -->
                                <img src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2354179225.webp" alt="">
                            </div>

                            <!-- Movie List Content -->
                            <div class="listing-content">
                                <div class="inner">
                                    <h2 class="title">The Best Bits of Mr.Bean</h2>

                                    <a href="movie-detail.jsp" class="btn btn-main btn-effect">details</a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- =============== 高分电影推荐部分 =============== -->


    <!-- =============== 使用指南部分 =============== -->
    <section class="how-it-works3 ptb100">
        <div class="container">

            <!-- Start of row -->
            <div class="row justify-content-center">
                <div class="col-md-7 text-center">
                    <h2 class="title">使用指南</h2>
                    <h6 class="subtitle">阿巴阿巴 阿巴阿巴</h6>
                </div>
            </div>
            <!-- End of row -->

            <!-- Start of Timeline -->
            <div class="timeline">

                <span class="main-line"></span>

                <!-- === Start of Timeline Step 1 === -->
                <div class="timeline-step row">
                    <span class="timeline-step-btn">Step 1</span>

                    <!-- Start of Timeline Text -->
                    <div class="col-md-6 col-sm-12 timeline-text-wrapper">
                        <div class="timeline-text">
                            <h3>创建账户</h3>
                            <p>输入您的用户名、邮箱、密码后成为我们的会员.之后即可登录Movify系统</p>
                        </div>
                    </div>
                    <!-- End of Timeline Text -->

                    <!-- Start of Timeline Image -->
                    <div class="col-md-6 col-sm-12 timeline-image-wrapper">
                        <div class="timeline-image">
                            <img src="assets/images/other/signup.png" alt="">
                        </div>
                    </div>
                    <!-- End of Timeline Image -->

                </div>
                <!-- === End of Timeline Step 1 === -->


                <!-- === Start of Timeline Step 2 === -->
                <div class="timeline-step row">
                    <span class="timeline-step-btn" style="color: #2a7bc2; background: #c1ddf5;">Step 2</span>

                    <!-- Start of Timeline Image -->
                    <div class="col-md-6 col-sm-12 timeline-image-wrapper">
                        <div class="timeline-image">
                            <img src="assets/images/other/pricing.png" alt="">
                        </div>
                    </div>
                    <!-- End of Timeline Image -->

                    <!-- Start of Timeline Text -->
                    <div class="col-md-6 col-sm-12 timeline-text-wrapper">
                        <div class="timeline-text-right">
                            <h3>搜索电影</h3>
                            <p>您可以输入感兴趣的电影名或者采纳Movify给您推荐的电影.</p>
                        </div>
                    </div>
                    <!-- End of Timeline Text -->

                </div>
                <!-- === End of Timeline Step 2 === -->


                <!-- === Start of Timeline Step 3 === -->
                <div class="timeline-step row">
                    <span class="timeline-step-btn" style="color: #eb305f; background: #f9c8d4;">Step 3</span>

                    <!-- Start of Timeline Text -->
                    <div class="col-md-6 col-sm-12 timeline-text-wrapper">
                        <div class="timeline-text">
                            <h3>Enjoy Movify</h3>
                            <p>欢迎体验Movify系统，如果有任何的问题和反馈请及时联系我们.</p>
                        </div>
                    </div>
                    <!-- End of Timeline Text -->

                    <!-- Start of Timeline Image -->
                    <div class="col-md-6 col-sm-12 timeline-image-wrapper">
                        <div class="timeline-image">
                            <img src="assets/images/other/enjoy-movify.png" alt="">
                        </div>
                    </div>
                    <!-- End of Timeline Image -->

                </div>
                <!-- === End of Timeline Step 3 === -->

            </div>
            <!-- End of Timeline -->

        </div>
    </section>
    <!-- =============== 使用指南部分 =============== -->

    <!-- =============== 统计部分 =============== -->
    <section class="counter bg-main-gradient ptb50 text-center">
        <div class="container">
            <div class="row">

                <!-- 1st Count up item -->
                <div class="col-md-4 col-sm-12">
                    <span class="counter-item" data-from="0" data-to="29070">0</span>
                    <h4>Movies</h4>
                </div>

                <!-- 2nd Count up item -->
                <div class="col-md-4 col-sm-12">
                    <span class="counter-item" data-from="0" data-to="126174">0</span>
                    <h4>Actors</h4>
                </div>

                <!-- 3rd Count up item -->
                <div class="col-md-4 col-sm-12">
                    <span class="counter-item" data-from="0" data-to="3327">0</span>
                    <h4>Users</h4>
                </div>

            </div>
        </div>
    </section>
    <!-- =============== 统计部分 =============== -->

    <!-- =============== 最新电影部分 =============== -->
    <section class="latest-releases bg-light ptb100">
        <div class="container">

            <!-- Start of row -->
            <div class="row justify-content-center">
                <div class="col-md-7 text-center">
                    <h2 class="title">最新电影</h2>
                    <h6 class="subtitle">database中最新电影展示</h6>
                </div>
            </div>
            <!-- End of row -->
        </div>
        <!-- End of Container -->

        <!-- Start of Latest Releases Slider -->
        <div class="owl-carousel latest-releases-slider">

            <!-- === Start of Sliding Item 1 === -->
            <div class="item">
                <div class="movie-box-3">
                    <div class="listing-container">

                        <!-- Movie List Image -->
                        <div class="listing-image">
                            <!-- Image -->
                            <img src="https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2516578307.webp" alt="">
                        </div>

                        <!-- Movie List Content -->
                        <div class="listing-content">
                            <div class="inner">

                                <!-- Play Button -->
                                <div class="play-btn">
                                    <a href="https://www.youtube.com/watch?v=Q0CbN8sfihY" class="play-video">
                                        <i class="fa fa-play"></i>
                                    </a>
                                </div>

                                <h2 class="title">头号玩家</h2>

                                <!-- Rating -->
                                <div class="stars">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <span>7.5/10</span>
                                        <span class="category">动作, 科幻</span>
                                    </div>
                                </div>

                                <p>故事发生在2045年，虚拟现实技术已经渗透到了人类生活的每一个角落。詹姆斯哈利迪（马克·里朗斯 Mark Rylance 饰）一手建造了名为“绿洲”的虚拟现实游戏世界，临终前，他宣布自己在游戏中设置了一个彩蛋，找到这枚彩蛋的人即可成为绿洲的继承人...</p>

                                <a href="movie-detail.jsp" class="btn btn-main btn-effect">details</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- === End of Sliding Item 1 === -->

            <!-- === Start of Sliding Item 2 === -->
            <div class="item">
                <div class="movie-box-3">
                    <div class="listing-container">

                        <!-- Movie List Image -->
                        <div class="listing-image">
                            <!-- Image -->
                            <img src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2517753454.webp" alt="">
                        </div>

                        <!-- Movie List Content -->
                        <div class="listing-content">
                            <div class="inner">

                                <!-- Play Button -->
                                <div class="play-btn">
                                    <a href="https://www.youtube.com/watch?v=Q0CbN8sfihY" class="play-video">
                                        <i class="fa fa-play"></i>
                                    </a>
                                </div>

                                <h2 class="title">复仇者联盟3：无限战争</h2>

                                <!-- Rating -->
                                <div class="stars">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <span>8.1/10</span>
                                        <span class="category">科幻, 冒险</span>
                                    </div>
                                </div>

                                <p>最先与灭霸军团遭遇的雷神索尔一行遭遇惨烈打击，洛基遇害，空间宝石落入灭霸之手。未几，灭霸的先锋部队杀至地球，一番缠斗后掳走奇异博士。为阻止时间宝石落入敌手，斯塔克和蜘蛛侠闯入了敌人的飞船...</p>

                                <a href="movie-detail.jsp" class="btn btn-main btn-effect">details</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- === End of Sliding Item 2 === -->

            <!-- === Start of Sliding Item 3 === -->
            <div class="item">
                <div class="movie-box-3">
                    <div class="listing-container">

                        <!-- Movie List Image -->
                        <div class="listing-image">
                            <!-- Image -->
                            <img src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2544987866.webp" alt="">
                        </div>

                        <!-- Movie List Content -->
                        <div class="listing-content">
                            <div class="inner">

                                <!-- Play Button -->
                                <div class="play-btn">
                                    <a href="https://www.youtube.com/watch?v=Q0CbN8sfihY" class="play-video">
                                        <i class="fa fa-play"></i>
                                    </a>
                                </div>

                                <h2 class="title">阿丽塔：战斗天使</h2>

                                <!-- Rating -->
                                <div class="stars">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <span>7.6/10</span>
                                        <span class="category">动作, 科幻</span>
                                    </div>
                                </div>

                                <p>《阿丽塔：战斗天使》由科幻电影大师詹姆斯·卡梅隆编剧及监制，鬼才导演罗伯特·罗德里格兹执导，根据日本作家木城幸人经典漫画《铳梦》改编。未来26世纪，科技发展，人类与机械改造人共存，弱肉强食是钢铁城唯一的生存法则...</p>

                                <a href="movie-detail.jsp" class="btn btn-main btn-effect">details</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- === End of Sliding Item 3 === -->

            <!-- === Start of Sliding Item 4 === -->
            <div class="item">
                <div class="movie-box-3">
                    <div class="listing-container">

                        <!-- Movie List Image -->
                        <div class="listing-image">
                            <!-- Image -->
                            <img src="https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2541901817.webp" alt="">
                        </div>

                        <!-- Movie List Content -->
                        <div class="listing-content">
                            <div class="inner">

                                <!-- Play Button -->
                                <div class="play-btn">
                                    <a href="https://www.youtube.com/watch?v=Q0CbN8sfihY" class="play-video">
                                        <i class="fa fa-play"></i>
                                    </a>
                                </div>

                                <h2 class="title">疯狂的外星人</h2>

                                <!-- Rating -->
                                <div class="stars">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <span>6.4/10</span>
                                        <span class="category">喜剧, 科幻</span>
                                    </div>
                                </div>

                                <p>耿浩（黄渤 饰）与一心想发大财的好兄弟大飞（沈腾 饰），经营着各自惨淡的“事业”，然而“天外来客”的意外降临，打破了二人平静又拮据的生活。神秘的西方力量也派出“哼哈二将”在全球搜查外星人行踪。啼笑皆非的跨物种对决，别开生面的“星战”...</p>

                                <a href="movie-detail.jsp" class="btn btn-main btn-effect">details</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- === End of Sliding Item 4 === -->

            <!-- === Start of Sliding Item 5 === -->
            <div class="item">
                <div class="movie-box-3">
                    <div class="listing-container">

                        <!-- Movie List Image -->
                        <div class="listing-image">
                            <!-- Image -->
                            <img src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2545472803.webp" alt="">
                        </div>

                        <!-- Movie List Content -->
                        <div class="listing-content">
                            <div class="inner">

                                <!-- Play Button -->
                                <div class="play-btn">
                                    <a href="https://www.youtube.com/watch?v=Q0CbN8sfihY" class="play-video">
                                        <i class="fa fa-play"></i>
                                    </a>
                                </div>

                                <h2 class="title">流浪地球</h2>

                                <!-- Rating -->
                                <div class="stars">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <span>7.9/10</span>
                                        <span class="category">科幻, 灾难</span>
                                    </div>
                                </div>

                                <p>近未来，科学家们发现太阳急速衰老膨胀，短时间内包括地球在内的整个太阳系都将被太阳所吞没。为了自救，人类提出一个名为“流浪地球”的大胆计划，即倾全球之力在地球表面建造上万座发动机和转向发动机，推动地球离开太阳系，用2500年的时间奔往另外一个栖息之地...</p>

                                <a href="movie-detail.jsp" class="btn btn-main btn-effect">details</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- === End of Sliding Item 5 === -->

        </div>
        <!-- End of Latest Releases Slider -->

    </section>
    <!-- =============== 最新电影部分 =============== -->

    <!-- =============== 页脚部分 =============== -->
    <footer class="footer1 bg-dark">

        <!-- ===== START OF FOOTER WIDGET AREA ===== -->
        <div class="footer-widget-area ptb100">
            <div class="container">
                <div class="row">

                    <!-- Start of Widget 1 -->
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="widget widget-about">

                            <!-- INSERT YOUR LOGO HERE -->
                            <img src="assets/images/logo.svg" alt="logo" class="logo">
                            <!-- INSERT YOUR WHITE LOGO HERE -->
                            <img src="assets/images/logo-white.svg" alt="white logo" class="logo-white">
                            <p class="nomargin">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ducimus, atque. Praesentium suscipit provident explicabo dignissimos nostrum numquam deserunt earum accusantium et fugit.</p>
                        </div>
                    </div>
                    <!-- End of Widget 1 -->

                    <!-- Start of Widget 2 -->
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="widget widget-links">
                            <h4 class="widget-title">Useful links</h4>

                            <ul class="general-listing">
                                <li><a href="#">about movify</a></li>
                                <li><a href="#">blog</a></li>
                                <li><a href="#">forum</a></li>
                                <li><a href="#">my account</a></li>
                                <li><a href="#">watch list</a></li>
                            </ul>

                        </div>
                    </div>
                    <!-- End of Widget 2 -->

                    <!-- Start of Widget 3 -->
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="widget widget-blog">
                            <h4 class="widget-title">latest news</h4>

                            <ul class="blog-posts">
                                <li><a href="#">blog post 1</a><small>januar 13, 2018</small></li>
                                <li><a href="#">blog post 2</a><small>januar 13, 2018</small></li>
                                <li><a href="#">blog post 3</a><small>januar 13, 2018</small></li>
                            </ul>
                        </div>
                    </div>
                    <!-- End of Widget 3 -->

                    <!-- Start of Widget 4 -->
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="widget widget-social">
                            <h4 class="widget-title">follow us</h4>

                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ducimus, atque.</p>

                            <!-- Start of Social Buttons -->
                            <ul class="social-btns">
                                <!-- Social Media -->
                                <li>
                                    <a href="#" class="social-btn-roll facebook">
                                        <div class="social-btn-roll-icons">
                                            <i class="social-btn-roll-icon fa fa-facebook"></i>
                                            <i class="social-btn-roll-icon fa fa-facebook"></i>
                                        </div>
                                    </a>
                                </li>

                                <!-- Social Media -->
                                <li>
                                    <a href="#" class="social-btn-roll twitter">
                                        <div class="social-btn-roll-icons">
                                            <i class="social-btn-roll-icon fa fa-twitter"></i>
                                            <i class="social-btn-roll-icon fa fa-twitter"></i>
                                        </div>
                                    </a>
                                </li>

                                <!-- Social Media -->
                                <li>
                                    <a href="#" class="social-btn-roll google-plus">
                                        <div class="social-btn-roll-icons">
                                            <i class="social-btn-roll-icon fa fa-google-plus"></i>
                                            <i class="social-btn-roll-icon fa fa-google-plus"></i>
                                        </div>
                                    </a>
                                </li>

                                <!-- Social Media -->
                                <li>
                                    <a href="#" class="social-btn-roll instagram">
                                        <div class="social-btn-roll-icons">
                                            <i class="social-btn-roll-icon fa fa-instagram"></i>
                                            <i class="social-btn-roll-icon fa fa-instagram"></i>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <!-- End of Social Buttons -->

                        </div>
                    </div>
                    <!-- End of Widget 4 -->

                </div>
            </div>
        </div>
        <!-- ===== END OF FOOTER WIDGET AREA ===== -->


        <!-- ===== START OF FOOTER COPYRIGHT AREA ===== -->
        <div class="footer-copyright-area ptb30">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="d-flex">
                            <div class="links">
                                <ul class="list-inline">
                                    <li class="list-inline-item"><a href="#">Privacy & Cookies</a></li>
                                    <li class="list-inline-item"><a href="#">Terms & Conditions</a></li>
                                    <li class="list-inline-item"><a href="#">Legal Disclaimer</a></li>
                                    <li class="list-inline-item"><a href="#">Community</a></li>
                                </ul>
                            </div>

                            <div class="copyright ml-auto">All Rights Reserved by <a href="#">Movify</a>.</div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ===== END OF FOOTER COPYRIGHT AREA ===== -->

    </footer>
    <!-- =============== 页脚部分 =============== -->

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

<!-- =============== START OF LOGIN & REGISTER POPUP =============== -->
<div id="login-register-popup" class="small-dialog zoom-anim-dialog mfp-hide">

    <!-- ===== Start of Signin wrapper ===== -->
    <div class="signin-wrapper">
        <div class="small-dialog-headline">
            <h4 class="text-center">登录</h4>
        </div>

        <div class="small-dialog-content">

            <!-- Start of Login form -->
            <form id="cariera_login" method="post">
                <p class="status"></p>

                <div class="form-group">
                    <label for="username">用户名或邮箱 *</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Your Username or Email *" />
                </div>

                <div class="form-group">
                    <label for="password">密码 *</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Your Password *" />
                </div>

                <div class="form-group">
                    <div class="checkbox pad-bottom-10">
                        <input id="check1" type="checkbox" name="remember" value="yes">
                        <label for="check1">记住我</label>
                    </div>
                </div>

                <div class="form-group">
                    <input type="submit" value="登录" class="btn btn-main btn-effect nomargin" />
                </div>
            </form>
            <!-- End of Login form -->

            <div class="bottom-links">
                    <span>
                        不是会员?
                        <a  class="signUpClick">注册</a>
                    </span>
                <a  class="forgetPasswordClick pull-right">忘记密码</a>
            </div>
        </div>

    </div>
    <!-- ===== End of Signin wrapper ===== -->

    <!-- ===== Start of Signup wrapper ===== -->
    <div class="signup-wrapper">
        <div class="small-dialog-headline">
            <h4 class="text-center">注册</h4>
        </div>

        <div class="small-dialog-content">

            <!-- Start of Registration form -->
            <form id="cariera_registration" action="#" method="POST">
                <p class="status"></p>

                <div class="form-group">
                    <label for="movify_user_login">用户名</label>
                    <input name="movify_user_login" id="movify_user_login" class="form-control" type="text"/>
                </div>

                <div class="form-group">
                    <label for="movify_user_email">邮箱</label>
                    <input name="movify_user_email" id="movify_user_email" class="form-control" type="email"/>
                </div>

                <div class="form-group">
                    <label for="password">密码</label>
                    <input name="movify_user_pass" id="movify_password" class="form-control" type="password"/>
                </div>

                <div class="form-group">
                    <input type="submit" class="btn btn-main btn-effect nomargin" value="注册"/>
                </div>
            </form>
            <!-- End of Registration form -->

            <div class="bottom-links">
                    <span>
                        已有账号?
                        <a class="signInClick">登录</a>
                    </span>

                <a class="forgetPasswordClick pull-right">忘记密码</a>
            </div>

        </div> <!-- .small-dialog-content -->

    </div>
    <!-- ===== End of Signup wrapper ===== -->

    <!-- ===== Start of Forget Password wrapper ===== -->
    <div class="forgetpassword-wrapper">
        <div class="small-dialog-headline">
            <h4 class="text-center">忘记密码</h4>
        </div>

        <div class="small-dialog-content">

            <!-- Start of Forger Password form -->
            <form id="forget_pass_form" action="#"  method="post">
                <p class="status"></p>

                <div class="form-group">
                    <label for="password">邮箱地址 *</label>
                    <input type="email" name="user_login" class="form-control" id="email3" placeholder="邮箱地址 *" />
                </div>

                <div class="form-group">
                    <input type="submit" name="submit" value="获取新密码" class="btn btn-main btn-effect nomargin" />
                </div>
            </form>
            <!-- End of Forger Password form -->

            <div class="bottom-links">
                <a class="cancelClick">取消</a>
            </div>

        </div><!-- .small-dialog-content -->

    </div>
    <!-- ===== End of Forget Password wrapper ===== -->

</div>
<!-- =============== END OF LOGIN & REGISTER POPUP =============== -->

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
