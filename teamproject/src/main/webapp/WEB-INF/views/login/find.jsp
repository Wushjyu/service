<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>회원가입 폼 템플릿</title>
        <link rel="stylesheet" href="./css/find.css">
    </head>
    <body>
        <div class="wrap">
            <div class="form-wrap">
                <h1 id="title_h1">아이디/비밀번호 찾기</h1>
                <div class="button-wrap">
                    <div id="btn"></div>
                    <ul>
                        <li class="togglebtn" id="btn1" onclick="find_id()">아이디
                        </li>
                        <li class="togglebtn" id="btn2" onclick="find_pw()">비밀번호</li>

                    </ul>
                   
                </div>
                <div id="register_input">
                    <form id="find_id" action="" class="input-group">
                       <div>
                        <input type="text" id="nick" name="nick" placeholder="닉네임">
                        <hr>
                        <input type="text" id="email" name="email" placeholder="이메일">
                        <hr>
                        <input type="submit" class="submit_btn" value="검색">
                        
                        <br>
                    </div>
                    </form>
                    <form id="find_pw" action="" class="input-group">
                        <div>
                            <input type="text" id="nick" name="nick" placeholder="아이디">
                            <hr>
                            <input type="text" id="email" name="email" placeholder="이메일">
                            <hr>
                            <input type="submit" class="submit_btn" value="검색">
                            <br>
                           </div>
                    </form>
                </div>
            </div>
        </div>
        <script>
            var x = document.getElementById("find_id");
            var y = document.getElementById("find_pw");
            var z = document.getElementById("btn");
            
            
            function find_id(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function find_pw(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "115px";
            }
        </script>
    </body>
</html>