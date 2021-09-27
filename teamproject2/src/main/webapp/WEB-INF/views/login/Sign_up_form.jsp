<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>회원가입 폼 템플릿</title>
        <link rel="stylesheet" href="./css/Sign_up.css">
        <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script type="text/javascript">
        	$(function(){
        		$('.check_form1').click(function(){
        			var idPattern = /^[a-zA-Z]{3,5}$/;
        			var pwPattern = /^[0-9]{4,8}$/;
        			/* if(!idPattern.test($(".m_id").val())){
        				alert("id의 형식이 잘못 되었습니다. 다시입력하세요.");
        				$(".m_id").val("");
        				$(".m_id").focus();
        			}; */
        				
        			if(!pwPattern.test($(".m_pw").val()) || $(".m_pw").val().length<=3 || $(".m_pw").val()!=$(".m_pw1").val()){
        				alert("비밀번호 불일칙했거나 형식이 잘못 되었거나 개수는 규정에 위반되었으며 3자리 이상으로 입력하세요");
        				$(".m_pw").val("");
        				$(".m_pw").focus();
        			}
        			
        			alert("test!");
        			$.ajax({  
        				url:"Sign_up_form1",
        				type:"post",
        				data:{
        					"m_id":$(".m_id").val(),
        					"m_pw":$(".m_pw").val(),
        					"m_name":$(".m_name").val(),
        					"m_nickname":$(".m_nickname").val(),
        					"m_email":$(".m_email").val()
        				},
        				success:function(data){
        					if(data == 1)alert("success");
        					location.href="login";
        				},error:function(){
        					alert("error");
        				}
        			});//ajax 
        		});//jquery
        	});//function
        	
        	$(function(){
				$(".check_form2").click(function(){
					alert("test2!");
					
				});//jquery   		
        	});//function
        </script>
    </head>
    <body>
        <div class="wrap">
            <div class="form-wrap">
                <h1 id="title_h1">회원가입</h1>
                <div class="button-wrap">
                    <div id="btn"></div>
                    <ul>
                        <li class="togglebtn" id="btn1" onclick="customer()">고객
                        </li>
                        <li class="togglebtn" id="btn2" onclick="corporation()">기업</li>

                    </ul>
                   
                </div>
                <div id="register_input">
                    <form id="customer" action="Sign_up_form1" method="post" class="input-group">
                        <div>
                            <input type="text" class="m_id" id="id" name="m_id" placeholder="ID">
                            <button type="button" id="id_chk_btn">중복검사</button>
                            <hr>
                            <input type="password" class="m_pw" id="pw" name="m_pw" placeholder="PASSWORD">
                            <hr>
                            <input type="password" class="m_pw1" id="pw1" name="m_pw1" placeholder="PASSWORD 재입력">
                            <hr>
                            <span style="visibility: hidden;">비밀번호가 일치하지 않습니다</span>
                            <input type="text" class="m_name" id="name" name="m_name" placeholder="이름">
                            <hr>
                            <input type="text" class="m_nickname" id="nick" name="m_nickname" placeholder="닉네임">
                            <hr>
                            <input type="text" class="m_email" id="email" name="m_email" placeholder="이메일">
                            <hr>
                            <span style="visibility: hidden;">이메일양식이 잘못되었습니다</span>
                            <input type="button" class="check_form1" id="submit_btn" value="SIGN IN">
                            <br>
                        </div>
                    </form>
                    <form id="corporation" action="Sign_up_form2" method="post" class="input-group">
                        <div>
                            <input type="text" id="id" name="id" placeholder="ID">
                            <button type="button" id="id_chk_btn">중복검사</button>
                            <hr>
                            <input type="password" id="pw" name="pw" placeholder="PASSWORD">
                            <hr>
                            <input type="password" id="pw1" name="pw1" placeholder="PASSWORD 재입력">
                            <hr>
                            <span style="visibility: hidden;">비밀번호가 일치하지 않습니다</span>
                            <input type="text" id="ins_name" name="ins_name" placeholder="시설이름">
                            <hr>
                            <input type="text" id="ins_address" name="ins_address" placeholder="시설주소">
                            <hr>
                            <input type="text" id="ins_phone" name="ins_phone" placeholder="시설전화번호">
                            <hr>
                            <span style="visibility: hidden;">전화번호양식이 잘못되었습니다</span>
                            <input type="button" class="submit_form2 check_form2" id="submit_btn" value="SIGN IN">
                            <br>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script>
            var x = document.getElementById("customer");
            var y = document.getElementById("corporation");
            var z = document.getElementById("btn");
            
            
            function customer(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function corporation(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "115px";
            }
        </script>
    </body>
</html>