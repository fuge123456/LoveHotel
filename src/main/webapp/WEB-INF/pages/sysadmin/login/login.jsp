<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../../base.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>

        <meta charset="utf-8">
        <title>欢迎登录</title>
        

        <!-- CSS -->
      
        <link rel="stylesheet" href="${app}/css/reset.css">
        <link rel="stylesheet" href="${app}/css/supersized.css">
        <link rel="stylesheet" href="${app}/css/style.css">
        
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->


    </head>

    <body>

        <div class="page-container">

            <h1>欢迎登录</h1>

            <form action="" method="post">
                <input type="text" name="userName" id="userName" class="username" onfocus="userNameFocus()" onblur="userNameBlur()" placeholder="用户名">
                <div id="userNameId"></div>
                <input type="password" name="password" id="pwd" class="password" onfocus="pwdFocus()" onblur="pwdBlur()" placeholder="登录密码">
                <div id="pwdId"></div>
                <input type="text" name="city" class="city" placeholder="城市">

                <button type="submit" onclick="formSubmit('${ctx}/login.action','_self');"
                        onmouseover="this.className='loginImgOver'"
                        onmouseout="this.className='loginImgOut'">点击登录</button>

                <div class="msgtip">
                    <c:if test="${!empty errorInfo}">
                        ${errorInfo}
                    </c:if>
                </div>
                <div class="error"><span>+</span></div>
            </form>
            <br/>
            <br/>
            <br/>
            <div class="connect">
                <p>其他方式登录:</p>
                <p>
                    <a class="facebook" href=""></a>
                    <a class="twitter" href=""></a>
                </p>
            </div>

            <!--歌曲 -->
            
        </div>
       

        <!-- Javascript -->
        <script src="${app}/js/jquery-1.8.2.min.js"></script>
        <script src="${app}/js/supersized.3.2.7.min.js"></script>
        <script src="${app}/js/supersized-init.js"></script>
        <script src="${app}/js/scripts.js"></script>
        <script type="text/javascript" src="${app}/js/dengluregister.js"></script>

    </body>

</html>

