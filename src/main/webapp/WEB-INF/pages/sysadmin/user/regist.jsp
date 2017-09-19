<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../../base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=uft-8" />
    <title>欢迎注册LoveHotel</title>
    <link type="text/css" rel="stylesheet" href="${app}/css/dengluregister.css" />
    <script type="text/javascript" src="${app}/js/dengluregister.js"></script>
    <style type="text/css">
        body {background-image: url(../../../../img/backgrounds/1.jpg);
            background-repeat:no-repeat;
            background-size: cover;
        }
    </style>
</head>

<body>
<div id="main">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td class="bg bg_top_left"></td>
            <td class="bg_top"></td>
            <td class="bg bg_top_right"></td>
        </tr>
        <tr>
            <td class="bg_left"></td>
            <td class="content">
                <form name="myform" onsubmit="return checkForm()" action="${ctx}/sysadmin/user/regist.action" method="POST">
                    <br/> <br/> <br/> <br/> <br/> <br/><br/> <br/> <br/>
                    <dl  hidden="hidden">
                        <dd>
                            <input type="text" name="userId" value="${userList.userId}"/>
                        </dd>
                    </dl>
                    <dl>
                        <dt>用户名：</dt>
                        <dd>
                            <input type="text" id="userName" name="userName" class="inputs" onfocus="userNameFocus()" onblur="userNameBlur()" value="${userList.userName}"/>
                        </dd>
                        <div id="userNameId"></div>
                    </dl>
                    <dl>
                        <dt>登录密码：</dt>
                        <dd>
                            <input type="password" id="pwd" name="password" class="inputs"  onfocus="pwdFocus()" onblur="pwdBlur()" value="${userList.password}"/>
                        </dd>
                        <div id="pwdId"></div>
                    </dl>
                    <dl>
                        <dt>确认密码：</dt>
                        <dd>
                            <input type="password" id="repwd" class="inputs"  onblur="repwdBlur()" value="${userList.password}"/>
                        </dd>
                        <div id="repwdId"></div>
                    </dl>
                    <dl>
                        <dt>性别：</dt>
                        <dd>
                            <input type="radio" name="sex" value="男"/>男
                            <input type="radio" name="sex" value="女" />女
                        </dd>
                    </dl>
                    <dl>
                        <dt>真实姓名：</dt>
                        <dd>
                            <input type="text" id="realName" name="realName" class="inputs" onblur="aa()" value="${userList.realName}"/>
                        </dd>
                    </dl>
                    <dl>
                        <dt>昵称：</dt>
                        <dd>
                            <input type="text" id="nickName" name="nickName" class="inputs"  onfocus="nickNameFocus()" onblur="nickNameBlur()" value="${userList.nickName}"/>
                        </dd>
                        <div id="nickNameId"></div>
                    </dl>
                    <dl>
                        <dt>手机号码：</dt>
                        <dd>
                            <input type="text" id="tel" name="telephone" class="inputs"  onfocus="telFocus()" onblur="telBlur()" value="${userList.telephone}"/>
                        </dd>
                        <div id="telId"></div>
                    </dl>
                    <dl>
                        <dt>保密邮箱：</dt>
                        <dd>
                            <input type="text" id="email" name="email" class="inputs" onfocus="emailFocus()" onblur="emailBlur()" value="${userList.email}"/>
                        </dd>
                        <div id="emailId"></div>
                    </dl>
                    <dl>
                        <dt></dt>
                        <dd>
                            <input name=" " type="image" src="${app}/img/timg.png"/>
                        </dd>
                    </dl>

                </form>
            </td>
            <td class="bg_right"></td>
        </tr>
        <tr>
            <td class="bg bg_end_left"></td>
            <td class="bg_end"></td>
            <td class="bg bg_end_right"></td>
        </tr>
    </table>

</div>
</body>
<script type="text/javascript">
    function aa(){

        var reg = /^[\u4e00-\u9fa5]$/;
        var name = document.getElementById("realName").value;

        if(reg.test(name)==false){
            alert("只能为汉字");
        }else{
            alert("正确");
        }

    }
</script>

</html>

