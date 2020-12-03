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

    <!-- =============== START OF PAGE HEADER =============== -->
    <section class="page-header overlay-gradient" style="background: url(assets/images/posters/movie-collection.jpg);">
        <div class="container">
            <div class="inner">
                <h2 class="title">个人主页</h2>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">主页</a></li>
                    <li>个人主页</li>
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
                    text: '观影历史',
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
                        { name: '${requestScope.TList[0]}', max: ${requestScope.CList[0]}},
                        { name: '${requestScope.TList[1]}', max: ${requestScope.CList[0]}},
                        { name: '${requestScope.TList[2]}', max: ${requestScope.CList[0]}},
                        { name: '${requestScope.TList[3]}', max: ${requestScope.CList[0]}},
                        { name: '${requestScope.TList[4]}', max: ${requestScope.CList[0]}},
                        { name: '${requestScope.TList[5]}', max: ${requestScope.CList[0]}}
                    ]
                },
                series: [{
                    name: '电影分布（Film Distribution）',
                    type: 'radar',
                    // areaStyle: {normal: {}},
                    data: [
                        {
                            value: [${requestScope.CList[0]}, ${requestScope.CList[1]}, ${requestScope.CList[2]}, ${requestScope.CList[3]}, ${requestScope.CList[4]}, ${requestScope.CList[5]}],
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
    <main class="contact-page ptb100">
        <div class="container">
            <div class="row">
                <!-- Start of Contact Details -->
                <div class="col-md-4 col-sm-12">
                    <h3 class="title">Info</h3>
                    <div class="details-wrapper">
                        <p>${sessionScope.user.userName}</p>
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
