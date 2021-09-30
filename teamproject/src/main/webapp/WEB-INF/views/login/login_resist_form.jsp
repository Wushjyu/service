<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>로그인 폼 템플릿</title>
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <div class="wrap">
            <div id="login_div">
                <form action="main" method="post">
                    <h1 id="login_h1">LOGIN</h1>
                    <input type="text" id="id" name="m_id" placeholder="ID">
                    <hr>				
                    <input type="password" id="pw" name="m_pw" placeholder="PASSWORD">
                    <hr>		
        				
                    <input type="submit" id="submit_btn" value="SIGN IN">
                    <br>
                    <span>Don`t you have ID? <a href="/Sign_up_form">"Sign up"</a></span>
                    <br>
                    <span>Missing your ID? <a href="/Find">"Find ID"</a></span>
                </form>
            </div>
        </div>
    </body>
</html>