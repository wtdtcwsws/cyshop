<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/20
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<footer class="footer-container type_footer1">
    <!-- Footer Top Container -->
    <section class="footer-top">
        <div class="container content">
            <div class="">
                <div class=" collapsed-block ">
                    <div class="module clearfix">
                        <h3 class="modtitle">联系我们	</h3>
                        <div class="modcontent">
                            <ul class="contact-address">
                                <li><p><span class="fa fa-map-marker"></span><span>Address : </span> My Company, 42 avenue des Champs Elysées</p></li>
                                <li><span class="fa fa-envelope-o"></span><span>Email : </span> <a href="#"> sales@yourcompany.com</a></li>
                                <li><p><span class="fa fa-phone"> </span><span>Phone :</span> 0123456789</p> </li>
                            </ul>
                        </div>
                        <div class="share-icon">
                            <ul>
                                <li class="facebook"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li class="twitter"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li class="google"><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                <li class="skype"><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class=" box-information">
                    <div class="module clearfix">
                        <h3 class="modtitle">信息</h3>
                        <div class="modcontent">
                            <ul class="menu">
                                <li><a href="${root}/front/about-us.html">About Us</a></li>
                                <li><a href="${root}/front/faq.html">FAQ</a></li>
                                <li><a href="${root}/front/order-history.html">Order history</a></li>
                                <li><a href="${root}/front/order-information.html">Order information</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class=" box-extras">
                    <div class="module clearfix">
                        <h3 class="modtitle">其它</h3>
                        <div class="modcontent">
                            <ul class="menu">
                                <li><a href="${root}/front/contact.html">Contact Us</a></li>
                                <li><a href="${root}/front/return.html">Returns</a></li>
                                <li><a href="${root}/front/sitemap.html">Site Map</a></li>
                                <li><a href="${root}/front/my-account.html">My Account</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="box-account">
                    <div class="module clearfix">
                        <h3 class="modtitle">我的账户 </h3>
                        <div class="modcontent">
                            <ul class="menu">
                                <li><a href="#">Brands</a></li>
                                <li><a href="${root}/front/gift-voucher.html">Gift Vouchers</a></li>
                                <li><a href="#">Affiliates</a></li>
                                <li><a href="#">Specials</a></li>
                                <li><a href="#" target="_blank">Our Blog</a></li>
                            </ul>
                        </div>
                    </div>
                </div>



            </div>
        </div>
    </section>
<div class="footer-mid">
    <div class=" help">
        <div class=" container">
            <div class=" row">
                <div class="footer-mid-left col-sm-6 col-xs-12">
                    <h3>需要帮助? </h3>
                    <p>服务团队 24/7 在线 (028) 555-8386</p>
                </div>
                <div class="footer-mid-right col-sm-6 col-xs-12">
                    <div class="btn-sub">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <input class="autosearch-input form-control" type="text" value="" size="50" autocomplete="off" placeholder="邮箱地址..." name="subscribe">
                        <button type="submit" class="button-search btn btn-primary" name="submit_subscribe">订阅</button>
                    </div>
                    <div class="back-to-top"><i class="fa fa-angle-up"></i><span> Top </span></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer-bottom-block ">
    <div class=" container">
        <div class="row">
            <div class="footer-bottom-header">
                <div class="col-xs-12 col-sm-5 download">
                    <h3 class="hidden-md">下载APP</h3>
                    <a href="#"><img src="${root}/front/img/demo/download/app.jpg" alt=""></a>
                    <a href="#"><img src="${root}/front/img/demo/download/ggplay.jpg" alt=""></a>
                </div>
                <div class="col-xs-12 col-sm-7 pay">
                    <ul>
                        <li><img src="${root}/front/img/demo/payment/visa.jpg" alt=""></li>
                        <li><img src="${root}/front/img/demo/payment/meastro.jpg" alt=""></li>
                        <li><img src="${root}/front/img/demo/payment/paypal.jpg" alt=""></li>
                        <li><img src="${root}/front/img/demo/payment/union.jpg" alt=""></li>
                        <li><img src="${root}/front/img/demo/payment/cirrus.jpg" alt=""></li>
                        <li><img src="${root}/front/img/demo/payment/ebay.jpg" alt=""></li>
                    </ul>
                </div>
            </div>
            <div class="text-footer-bot">
                <p>Destino - Premium Multipurpose HTML5/CSS3 Theme - Designed by <a href="#">SmartAddons.Com</a></p>
            </div>
            <div class="back-to-top"><i class="fa fa-angle-up"></i><span> 回顶部 </span></div>
        </div>
    </div>
</div>
</footer>
</body>
</html>
