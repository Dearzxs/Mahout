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

                    </ul>
                    <!-- ====== End of Main Menu ====== -->

                    <!-- ====== Start of Extra Nav ====== -->
                    <ul class="navbar-nav extra-nav">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${sessionScope.user.userName}</a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a class="dropdown-item" href="LogOutServlet">退出登录</a>
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
                <h2 class="title">用户中心</h2>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">主页</a></li>
                    <li>用户中心</li>
                </ol>
            </div>
        </div>
    </section>
    <!-- =============== END OF PAGE HEADER =============== -->


    <!-- =============== START OF MAIN =============== -->
    <main class="contact-page ptb100">
        <div class="container">
            <div class="row">
                <div style="text-align:center;">
                    <div style="height: 50px"></div>
                    <div id="main0" style="width: 450px;height:500px;display:inline-block;"></div>
                    <div style="height: 50px"></div>
                    <script type="text/javascript">
                        var myChart = echarts.init(document.getElementById('main0'));

                        var option = {
                            title: {
                                text: '观影历史统计',
                                subtext: '',
                                left: 'center'
                            },
                            tooltip: {
                                trigger: 'item',
                                formatter: '{a} <br/>{b} : {c} ({d}%)'
                            },
                            legend: {
                                left: 'center',
                                top: 'bottom',
                                data: ['${requestScope.TList[0]}', '${requestScope.TList[1]}', '${requestScope.TList[2]}', '${requestScope.TList[3]}', '${requestScope.TList[4]}', '${requestScope.TList[5]}', '${requestScope.TList[6]}', '${requestScope.TList[7]}']
                            },
                            toolbox: {
                                show: true,
                                feature: {
                                    mark: {show: true},
                                    dataView: {show: true, readOnly: false},
                                    magicType: {
                                        show: true,
                                        type: ['pie', 'funnel']
                                    },
                                    restore: {show: true},
                                    saveAsImage: {show: true}
                                }
                            },
                            series: [
                                {
                                    name: '类型占比',
                                    type: 'pie',
                                    radius: [35, 130],
                                    center: ['50%', '50%'],
                                    roseType: 'radius',
                                    data: [
                                        {value: ${requestScope.CList[0]}, name: '${requestScope.TList[0]}'},
                                        {value: ${requestScope.CList[1]}, name: '${requestScope.TList[1]}'},
                                        {value: ${requestScope.CList[2]}, name: '${requestScope.TList[2]}'},
                                        {value: ${requestScope.CList[3]}, name: '${requestScope.TList[3]}'},
                                        {value: ${requestScope.CList[4]}, name: '${requestScope.TList[4]}'},
                                        {value: ${requestScope.CList[5]}, name: '${requestScope.TList[5]}'},
                                        {value: ${requestScope.CList[6]}, name: '${requestScope.TList[6]}'},
                                        {value: ${requestScope.CList[7]}, name: '${requestScope.TList[7]}'}
                                    ]
                                }
                            ]
                        };

                        myChart.setOption(option);
                    </script>
                </div>
            </div>
            <div class="row">
                <div style="text-align:center;">
                    <div style="height: 50px"></div>
                    <div id="main2" style="width: 450px;height:500px;display:inline-block;"></div>
                    <script type="text/javascript">
                        var myChart = echarts.init(document.getElementById('main2'));

                        var option = {
                            tooltip: {
                                formatter: '{a} <br/>{b} : {c}%'
                            },
                            toolbox: {
                                feature: {
                                    restore: {},
                                    saveAsImage: {}
                                }
                            },
                            series: [
                                {
                                    min:'0',
                                    max:'10',
                                    name: '天数',
                                    type: 'gauge',
                                    detail: {formatter: '{value}'},
                                    data: [{value: 5, name: '连续登录天数'}]
                                }
                            ]
                        };

                        var graphData = [
                            [
                                1485878400000 + 3600 * 24 * 1000 * 2 + 94608000000,
                                260
                            ],
                            [
                                1486137600000 + 94608000000,
                                200
                            ],
                            [
                                1486569600000 + 94608000000,
                                279
                            ],
                            [
                                1486915200000 + 94608000000,
                                847
                            ],
                            [
                                1487347200000 + 94608000000,
                                241
                            ],
                            [
                                1487779200000 + 3600 * 24 * 1000 * 15 + 94608000000,
                                411
                            ],
                            [
                                1488124800000 + 3600 * 24 * 1000 * 23 + 94608000000,
                                985
                            ]
                        ];

                        var links = graphData.map(function (item, idx) {
                            return {
                                source: idx,
                                target: idx + 1
                            };
                        });

                        links.pop();

                        function getVirtulData(year) {
                            year = year || '2017';
                            var date = +echarts.number.parseDate(year + '-01-01');
                            var end = +echarts.number.parseDate((+year + 1) + '-01-01');
                            var dayTime = 3600 * 24 * 1000;
                            var data = [];
                            for (var time = date; time < end; time += dayTime) {
                                data.push([
                                    echarts.format.formatTime('yyyy-MM-dd', time),
                                    Math.floor(Math.random() * 1000)
                                ]);
                            }
                            return data;
                        }

                        myChart.setOption(option);
                    </script>
                    <div id="main4" style="width: 450px;height:500px;display:inline-block;"></div>
                    <div style="height: 50px"></div>
                    <script type="text/javascript">
                        var myChart = echarts.init(document.getElementById('main4'));

                        var option = {
                            tooltip: {},
                            calendar: {
                                top: 'middle',
                                left: 'center',
                                orient: 'vertical',
                                cellSize: 40,
                                yearLabel: {
                                    margin: 50,
                                    textStyle: {
                                        fontSize: 30
                                    }
                                },
                                dayLabel: {
                                    firstDay: 1,
                                    nameMap: 'cn'
                                },
                                monthLabel: {
                                    nameMap: 'cn',
                                    margin: 15,
                                    textStyle: {
                                        fontSize: 20,
                                        color: '#999'
                                    }
                                },
                                range: ['2020-02', '2020-03-31']
                            },
                            visualMap: {
                                min: 0,
                                max: 1000,
                                type: 'piecewise',
                                left: 'center',
                                bottom: 20,
                                inRange: {
                                    color: ['#5291FF', '#C7DBFF']
                                },
                                seriesIndex: [1],
                                orient: 'horizontal'
                            },
                            series: [{
                                type: 'graph',
                                edgeSymbol: ['none', 'arrow'],
                                coordinateSystem: 'calendar',
                                links: links,
                                symbolSize: 15,
                                calendarIndex: 0,
                                itemStyle: {
                                    color: 'yellow',
                                    shadowBlue: 9,
                                    shadowOffsetX: 1.5,
                                    shadowOffsetY: 3,
                                    shadowColor: '#555'
                                },
                                lineStyle: {
                                    color: '#D10E00',
                                    width: 1,
                                    opacity: 1
                                },
                                data: graphData,
                                z: 20
                            }, {
                                type: 'heatmap',
                                coordinateSystem: 'calendar',
                                data: getVirtulData(2020)
                            }]
                        };

                        // 使用刚指定的配置项和数据显示图表。
                        myChart.setOption(option);
                    </script>
                </div>

            </div>
            <div class="row">
                <!-- Start of Contact Details -->
                <div class="col-md-4 col-sm-12">
                    <h3 class="title">详细信息</h3>
                    <div class="details-wrapper">
                        <p>用户名:${sessionScope.user.userName}</p>
                        <ul class="contact-details">
                            <li>
                                <i class="icon-phone"></i>
                                <strong>电话:</strong>
                                <span>(123) 123-456 </span>
                            </li>
                            <li>
                                <i class="icon-printer"></i>
                                <strong>传真:</strong>
                                <span>(123) 123-456 </span>
                            </li>
                            <li>
                                <i class="icon-globe"></i>
                                    <strong>Web:</strong>
                                <span><a href="#">www.movify.com</a></span>
                            </li>
                            <li>
                                <i class="icon-paper-plane"></i>
                                <strong>邮箱:</strong>
                                <span><a href="#">info@movify.com</a></span>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-8 col-sm-12">
                    <h3 class="title">联系我们</h3>

                    <form id="contact-form">
                        <div class="form-group">
                            <input class="form-control input-box" type="text" name="name" placeholder="用户名" autocomplete="off">
                        </div>

                        <div class="form-group">
                            <input class="form-control input-box" type="email" name="email" placeholder="你的邮箱" autocomplete="off">
                        </div>

                        <div class="form-group mb20">
                            <textarea class="form-control textarea-box" rows="8" name="message" placeholder="请描述你的问题..."></textarea>
                        </div>

                        <div class="form-group text-center">
                            <button class="btn btn-main btn-effect" type="submit">提交信息</button>
                        </div>
                    </form>
                </div>
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
