<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="taglibs.jsp"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en"><head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>注册</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <link rel="stylesheet" href="${path}/css/bootstrap.css">
    <link rel="stylesheet" href="${path}/css/style.css">
</head>

<body>
<%@include file="header.jsp"%>
<div class="text-center f-banner">
    <img src="${path}/img/HeroImage.jpg" srcset="${path}/img/HeroImage@2x.jpg 2x,${path}/img/HeroImage@3x.jpg 3x" alt="">
</div>
<div class="container">
    <div class="f-form-wrap">
        <div class="shadow-box f-index-box p-t-3r">
            <h2>小衣匣</h2>
            <h3>优选童装的贴心搭档</h3>
            <div class="text-center">
                <button type="type" class="btn btn-primary" id="to-signup">
                    <img class="icon-small" src="${path}/img/icon/other/Group2.png" srcset="${path}/img/icon/other/Group2@2x.png 2x,${path}/img/icon/other/Group2@3x.png 3x" alt="" >即刻体验</button>
            </div>
        </div>
    </div>
    <div class="row p-l-0 p-r-0">
        <!-- 手机端显示 -->
        <div class="col-xs-12 hidden-md-up">
            <div class="f-form-wrap mb-40px">
                <h3 class="text-center f-form-title f-form-signup">
                    <img src="${path}/img/icon/report-flag.svg.png" srcset="${path}/img/icon/report-flag.svg@2x.png 2x,${path}/img/icon/report-flag.svg@3x.png 3x" alt="">我们是如何做的？</h3>
                <div class="shadow-box f-carousel-box">
                    <div id="carousel-example" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example" data-slide-to="1"></li>
                            <li data-target="#carousel-example" data-slide-to="2"></li>
                            <li data-target="#carousel-example" data-slide-to="3"></li>
                            <li data-target="#carousel-example" data-slide-to="4"></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <img src="${path}/img/animation-finish.gif" alt="First slide">
                                <div class="carousel-caption">
                                    <h4>1. 录入宝宝的信息档案</h4>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="${path}/img/animation-process-2.gif" alt="Second slide">
                                <div class="carousel-caption">
                                    <h4>2. 选择递送日期</h4>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="${path}/img/animation-finish.gif" alt="Third slide">
                                <div class="carousel-caption">
                                    <h4>3. 贴心挑选，专业搭配</h4>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="${path}/img/animation-finish.gif" alt="Four slide">
                                <div class="carousel-caption">
                                    <h4>4. 来回包邮，无压力试穿</h4>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="${path}/img/animation-finish.gif" alt="Five slide">
                                <div class="carousel-caption">
                                    <h4>5. 留下小美衣，宝宝成焦点</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ./手机端显示 -->
    </div>
    <div class="f-form-wrap">
        <h3 class="text-center f-form-title f-form-signup hidden-md-up">
            <img src="img/icon/board.svg.png" srcset="img/icon/board.svg@2x.png 2x,img/icon/board.svg@3x.png 3x" alt="">现在加入我们</h3>
        <div class="shadow-box p-l-0 p-r-0">
            <div class="row">
                <div class="col-lg-6 col-md-12 hidden-sm-down">
                    <!-- PC端 -->
                    <h3 class="text-center f-form-title f-form-signup">
                        我们是如何做的？</h3>
                    <div class="f-carousel-signup">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <div class="row">
                                <ol class="carousel-indicators col-md-6">
                                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active">1.录入宝宝的信息档案</li>
                                    <li data-target="#carousel-example-generic" data-slide-to="1">2.选择递送日期</li>
                                    <li data-target="#carousel-example-generic" data-slide-to="2">3.贴心挑选，专业搭配</li>
                                    <li data-target="#carousel-example-generic" data-slide-to="3">4.来回包邮，无压力试穿</li>
                                    <li data-target="#carousel-example-generic" data-slide-to="4">5.留下小美衣，宝宝成焦点</li>
                                </ol>
                                <div class="carousel-inner col-md-6" role="listbox">
                                    <div class="carousel-item active">
                                        <img src="${path}/img/animation-finish.gif" alt="First slide">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="${path}/img/animation-process-2.gif" alt="Second slide">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="${path}/img/animation-finish.gif" alt="Third slide">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="${path}/img/animation-finish.gif" alt="Four slide">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="${path}/img/animation-finish.gif" alt="Five slide">
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- ./PC端 -->
                </div>
                <div class="col-lg-6 col-md-12" id="signup">
                    <div class="f-form-wrap p-b-0">
                        <h3 class="text-center f-form-title f-form-signup t-i-0 hidden-sm-down">
                            现在加入我们
                        </h3>
                        <div class="f-form-box">
                            <form class="form" action="" method="post">
                                <div class="form-group">
                                    <label for="phone" class="f-label-icon">
                                        <img class="f-label-icon" src="${path}/img/icon/Cellphone.png" srcset="${path}/img/icon/Cellphone@2x.png 2x,${path}/img/icon/Cellphone@3x.png 3x" alt="">
                                    </label>
                                    <input type="text" class="form-control" id="phone" name="phone" placeholder="手机号">
                                </div>
                                <div class="form-group">
                                    <label for="verify" class="f-label-icon">
                                        <img class="f-label-icon" src="${path}/img/icon/Verification.png" srcset="${path}/img/icon/Verification@2x.png 2x,${path}/img/icon/Verification@3x.png 3x" alt="">
                                    </label>
                                    <input type="text" class="form-control" name="verify" id="verify" placeholder="验证码">
                                    <button type="button" class="btn btn-primary f-verify-btn" id="second">
                                        发送验证码
                                    </button>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="f-label-icon">
                                        <img class="f-label-icon" src="${path}/img/icon/Password.png" srcset="${path}/img/icon/Password@2x.png 2x,${path}/img/icon/Password@3x.png 3x" alt="">
                                    </label>
                                    <input type="password" class="form-control" name="password" id="password" placeholder="设置初始密码">
                                </div>
                                <div class="form-group">
                                    <label for="code" class="f-label-icon">
                                        <img class="f-label-icon" src="${path}/img/icon/Invites.png" srcset="${path}/img/icon/Invites@2x.png 2x,${path}/img/icon/Invites@3x.png 3x" alt="">
                                    </label>
                                    <input type="text" class="form-control" name="code" id="code" placeholder="邀请码">
                                </div>
                                <div class="f-alert" id="alert">
                                    <img src="${path}/img/icon/wallet-notify.png" srcset="${path}/img/icon/wallet-notify@2x.png 2x,${path}/img/icon/wallet-notify@3x.png 3x" alt=""><span></span>
                                </div>
                                <div class="row f-submit-wrap">
                                    <div class="col-xs-5">
                                        <button type="button" class="btn btn-primary" id="rigisterBtn">
                                            <img class="icon-small" src="${path}/img/icon/other/Group2Copy.png" srcset="${path}/img/icon/other/Group2Copy@2x.png 2x,${path}/img/icon/other/Group2Copy@3x.png 3x" alt=""> 注册
                                        </button>
                                    </div>
                                    <div class="col-xs-7 f-forgot-link">已有账号？<a href="${path}/member/toLogin">立即登录</a></div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</div>

<%@include file="footer.jsp"%>
</body></html>
<script>
    $("#rigisterBtn").click(function(){
        var phone = $("#phone").val();
        if(phone==''){
            alertMsg("请输入手机号！")
            return false;
        }else{
            if(phone && /^1[3|4|5|8]\d{9}$/.test(phone)){

            } else{
                alertMsg("手机号码输入有误！")
                return false;
            };
        }
        if($("#verify").val()==''){
            alertMsg("请输入验证码！")
            return false;
        }
        if($("#password").val()==''){
            alertMsg("请输入密码！")
            return false;
        }
/*      if($("#code").val()==''){
            alertMsg("请输入邀请码！")
            return false;
        }*/



        jQuery.ajax({type: "post",
            url:  "${path}/member/register",
            async:false,
            data: {
                "pno":$("#phone").val(),
                "valNo":$("#verify").val(),
                "pwd":$("#password").val(),
                "code":$("#code").val()
            },
            dataType:"json",
            success: function(message){
                if(message.mcode == 1){
                    //密码数据丢失
                    alertMsg("验证码错误");
                }else if(message.mcode == 2){
                    //手机号码数据丢失
                    alertMsg("该手机号已被注册，请检查后重试。");
                }else if(message.mcode == 3){
                    //登陆成功
                    window.location.href="${path}/index";

                }
            }
        });

    });
    function valDateCode(){
        jQuery.ajax({type: "post",
            url:  "${path}/member/sendMsgCode",
            async:false,
            data: { "mobile":$("#phone").val()
            },
            dataType:"json"
        });

    }
</script>