<%--
  Created by IntelliJ IDEA.
  User: zxs
  Date: 2020/10/22
  Time: 20:00
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

    <!-- =============== START OF PAGE HEADER =============== -->
    <section class="page-header overlay-gradient" style="background: url(assets/images/posters/movie-collection.jpg);">
        <div class="container">
            <div class="inner">
                <h2 class="title">联系我们</h2>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">主页</a></li>
                    <li>联系我们</li>
                </ol>
            </div>
        </div>
    </section>
    <!-- =============== END OF PAGE HEADER =============== -->

    <!-- =============== START OF MAIN =============== -->
    <main class="contact-page ptb100">
        <div class="container">
            <div class="row">
                <!-- Start of Contact Details -->
                <div class="col-md-4 col-sm-12">
                    <h3 class="title">Info</h3>
                    <div class="details-wrapper">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
                        <ul class="contact-details">
                            <li>
                                <i class="icon-phone"></i>
                                <strong>Phone:</strong>
                                <span>(123) 123-456 </span>
                            </li>
                            <li>
                                <i class="icon-printer"></i>
                                <strong>Fax:</strong>
                                <span>(123) 123-456 </span>
                            </li>
                            <li>
                                <i class="icon-globe"></i>
                                <strong>Web:</strong>
                                <span><a href="#">www.movify.com</a></span>
                            </li>
                            <li>
                                <i class="icon-paper-plane"></i>
                                <strong>E-Mail:</strong>
                                <span><a href="#">info@movify.com</a></span>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- Start of Contact Details -->

                <!-- Start of Contact Form -->
                <div class="col-md-8 col-sm-12">
                    <h3 class="title">Contact Form</h3>
                    <!-- Start of Contact Form -->
                    <form id="contact-form">
                        <!-- contact result -->
                        <div id="contact-result"></div>
                        <!-- end of contact result -->
                        <!-- Form Group -->
                        <div class="form-group">
                            <input class="form-control input-box" type="text" name="name" placeholder="Your Name" autocomplete="off">
                        </div>
                        <!-- Form Group -->
                        <div class="form-group">
                            <input class="form-control input-box" type="email" name="email" placeholder="your-email@movify.com" autocomplete="off">
                        </div>
                        <!-- Form Group -->
                        <div class="form-group">
                            <input class="form-control input-box" type="text" name="subject" placeholder="Subject" autocomplete="off">
                        </div>
                        <!-- Form Group -->
                        <div class="form-group mb20">
                            <textarea class="form-control textarea-box" rows="8" name="message" placeholder="Type your message..."></textarea>
                        </div>
                        <!-- Form Group -->
                        <div class="form-group text-center">
                            <button class="btn btn-main btn-effect" type="submit">Send message</button>
                        </div>
                    </form>
                    <!-- End of Contact Form -->
                </div>
                <!-- Start of Contact Form -->
            </div>
        </div>
    </main>
    <!-- =============== END OF MAIN =============== -->

</div>
<!-- =============== END OF WRAPPER =============== -->

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
