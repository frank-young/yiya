//立即体验，控制按钮
$(function() {
    $('#to-signup').on('click', function() {
        $('html,body').animate({ scrollTop: $('#signup').offset().top }, 300);
    })

})

//发送验证码
$(function() {
    $("#second").click(function() {
        sendCode($("#second"));
    });
    v = getCookieValue("secondsremained") ? getCookieValue("secondsremained") : 0; //获取cookie值
    if (v > 0) {
        settime($("#second")); //开始倒计时
    }
})


//发送验证码时添加cookie
function addCookie(name, value, expiresHours) {
    var cookieString = name + "=" + escape(value);
    //判断是否设置过期时间,0代表关闭浏览器时失效
    if (expiresHours > 0) {
        var date = new Date();
        date.setTime(date.getTime() + expiresHours * 1000);
        cookieString = cookieString + ";expires=" + date.toUTCString();
    }
    document.cookie = cookieString;
}

//修改cookie的值
function editCookie(name, value, expiresHours) {
    var cookieString = name + "=" + escape(value);
    if (expiresHours > 0) {
        var date = new Date();
        date.setTime(date.getTime() + expiresHours * 1000); //单位是毫秒
        cookieString = cookieString + ";expires=" + date.toGMTString();
    }
    document.cookie = cookieString;
}
//根据名字获取cookie的值
function getCookieValue(name) {
    var strCookie = document.cookie;
    var arrCookie = strCookie.split("; ");
    for (var i = 0; i < arrCookie.length; i++) {
        var arr = arrCookie[i].split("=");
        if (arr[0] == name) {
            return unescape(arr[1]);
            break;
        }
    }

}
//发送验证码
function sendCode(obj) {
    var phone = $("#phone").val();
    var result = isPhone();
    if (result) {
        doPostBack('/login/get-verify', backFunc1, { "phone": phone });
        addCookie("secondsremained", 60, 60); //添加cookie记录,有效时间60s
        settime(obj); //开始倒计时
    }
}
//将手机利用ajax提交到后台的发短信接口
function doPostBack(url, backFunc, queryParam) {
    $.ajax({
        async: false,
        cache: false,
        type: 'POST',
        url: url, // 请求的action路径
        data: queryParam,
        error: function() { // 请求失败处理函数
        },
        success: backFunc
    });
}

function backFunc1(data) {
    var d = $.parseJSON(data);
    if (!d.success) {


    } else {
        // success
    }
}

//开始倒计时
var countdown,
    timer

function settime(obj) {

    countdown = getCookieValue("secondsremained");
    if (countdown == null) {
        clearTimeout(timer)
        obj.removeAttr("disabled");
        obj.html("重新发送");

        return;
    } else {
        obj.attr("disabled", true);
        obj.html("重新发送(" + countdown + ")");
        countdown--;
        editCookie("secondsremained", countdown, countdown + 1);
    }
    timer = setTimeout(function() { settime(obj) }, 1000) //每1000毫秒执行一次
}

//校验手机号是否合法
function isPhone() {
    var phone = $("#phone").val();
    var reg = /^1[3|5|7|8]\d{9}$/;
    if (!reg.test(phone)) {
        alertMsg('请输入有效的手机号码！');
        return false;
    } else {
        return true;
    }
    return true;
}

// 错误提示
function alertMsg(msg) {
    $('#alert')
        .addClass('f-alert-show')
        .find('span')
        .html(msg)
    setTimeout(function() {
        $('#alert')
            .removeClass('f-alert-show')
    }, 3000)
}
/**************************** 需要新加入的 ***********************************/
// 获取日期下拉菜单
function getHowManyDays(year, month) {
    // 二月份的天数数据处理
    var FedDays = year % 4 == 0 ? 29 : 28,
        returnDays = '';
    switch (month) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            returnDays = 31;
            break;
        case 4:
        case 6:
        case 9:
        case 11:
            returnDays = 30;
            break;
        case 02:
            returnDays = FedDays;
            break;
    }
    return returnDays;
}

//模拟下拉选择框
function analogSelect() {
    var that
    $(".select_box").click(function(event) {
        event.stopPropagation();
        $(this).find(".option").toggle();
        $(this).parent().siblings().find(".option").hide();
        that = $(this)
    });
    $(document).click(function(event) {
        var eo = $(event.target);
        if ($(".select_box").is(":visible") && eo.attr("class") != "option" && !eo.parent(".option").length)
            $('.option').hide();
    });
    /*赋值给文本框*/
    $(".option").delegate('span', 'click', function() {
        var value = $(this).text();
        $(this).parent().siblings(".select_txt").text(value);

        that.next().val(value)
    })
}

$(function() {
    analogSelect()

})

$(function() {
    var year = $('.js-birthday').find('.year-data'),
        month = $('.js-birthday').find('.month-data'),
        day = $('.js-birthday').find('.day-data'),
        y = 1970,
        m = 1,
        d = 1,
        yearLen = new Date().getFullYear(),
        monthLen = 12,
        dayLen = 31,
        yearSelect = 1970,
        monthSelect = 1

    for (; y <= yearLen; y++) {
        addTpls(year, y, y)
    }

    for (; m <= monthLen; m++) {
        addTpls(month, m, m)
    }

    $(".year-data").delegate('span', 'click', function() {
        yearSelect = parseInt($(this).attr('data-value'));
    })

    $(".month-data").delegate('span', 'click', function() {
        monthSelect = parseInt($(this).attr('data-value'));
        dayLen = getHowManyDays(yearSelect, monthSelect);
        // $(".day-data span").remove();

        for (; d <= dayLen; d++) {
            addTpls(day, d, d)
        }

    })
})
// 添加模版数据  
function addTpls(ele, pId, pValue) {
    var option = "<span data-value='" + pId + "'>" + pValue + "</span>";
    $(ele).append(option);
}

/**************************************************************************/
