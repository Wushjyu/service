<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<style type="text/css">
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

.custom-file {
	display: inline-block;
	width: 100px;
	height: 100px;
}

.img {
	width: 100px;
	height: 100px;
}

.button {
	position: absolute;
	left: 50%;
}
</style>

<script type="text/javascript">	
			$(function(){
				var num = $("#rcount").val();
				$("#plus1").click(function(){
					num = ++num;
					if(num>30){
						alert("예약 인수가 초과되었습니다.\n 30명 이내로 예약하세요");
					}else{
						$("#rcount").html(num);
					}
				})
				$("#minus1").click(function(){
					num = --num;
					if(num<=0){
						alert("예약 인수가 부족합니다.\n 0명 이상으로 예약하세요");
					}else{
						$("#rcount").html(num);
					}
				})
				
			})
			
			function dataSend(){
				alert("test!");
				var result = document.getElementById('rcount').innerHTML;
				alert(result);
				//alert($("#rcount").text());
				//alert(${fac_admin_Vo.finfo_no});
				//alert($("#r_name").val());
				alert($('input[name=r_times]:checked').val());
				//alert(${fac_admin_Vo.finfo_price});
				
				if(confirm("예약하시겠습니까?")){
				$.ajax({
					url:"fac_important",
					type:"post",
					data:{
						"finfo_no":"${fac_admin_Vo.finfo_no}",
						"finfo_name":$("#r_name").val(),
						"r_number1":result,
						"r_date" : $("#r_date").val(),
						"r_times" : $('input[name=r_times]:checked').val(),
						"finfo_price":"${fac_admin_Vo.finfo_price}",
						"check_value" : $("#check_value").val()
					},
					success:function(data){
						alert("데이터가 정상적으로 DB를 경과해왔습니다.");
						alert(data.result);
						alert(data.fac_important_Vo.finfo_no);
						if(data.result2=="success"){
							alert("예약성공했습니다.");
						}else if(data.result2=="fail"){
							alert("예약실패했습니다.");
							location.href="fac_list";
						}
						var html = "";
						html += '<div>';
						html += '<label>시설 이름</label>';
						html += '<input type="text" id="r_name" name="r_name"  value=\"'+data.fac_important_Vo.finfo_name+'\" readonly>'+data.fac_important_Vo.finfo_name+'<br>';
						html += '</div>';
						html += '<div class="zoomBtn">';
						html += '<p class="txt">인수</p>';
						html += '<span id="rcount" name="reserve_number">'+data.fac_important_Vo.r_number1+'</span>';
						html += '</div>';
						html += '<div class="">';
						html += '<label>날짜 선택</label>';
						html += '<input type="date" id="r_date" name="r_date" value="'+data.fac_important_Vo.r_date+'" min="2021-09-01" max="2021-09-30">';
						html += '</div>';
						html += '<div class="" id="">';
						html += '<input type="radio" id="r_times1" name="r_times" value="00:00~03:00" '+(data.fac_important_Vo.r_times=="00:00~03:00"?"checked":"")+'>00:00~03:00<br>';
						html += '<input type="radio" id="r_times2" name="r_times" value="03:00~06:00" '+(data.fac_important_Vo.r_times=="03:00~06:00"?"checked":"")+'>03:00~06:00<br>';
						html += '<input type="radio" id="r_times3" name="r_times" value="06:00~09:00" '+(data.fac_important_Vo.r_times=="06:00~09:00"?"checked":"")+'>06:00~09:00<br>';
						html += '<input type="radio" id="r_times4" name="r_times" value="09:00~12:00" '+(data.fac_important_Vo.r_times=="09:00~12:00"?"checked":"")+'>09:00~12:00<br>';
						html += '<input type="radio" id="r_times5" name="r_times" value="12:00~15:00" '+(data.fac_important_Vo.r_times=="12:00~15:00"?"checked":"")+'>12:00~15:00<br>';
						html += '<input type="radio" id="r_times6" name="r_times" value="15:00~18:00" '+(data.fac_important_Vo.r_times=="15:00~18:00"?"checked":"")+'>15:00~18:00<br>';
						html += '<input type="radio" id="r_times7" name="r_times" value="18:00~21:00" '+(data.fac_important_Vo.r_times=="18:00~21:00"?"checked":"")+'>18:00~21:00<br>';
						html += '<input type="radio" id="r_times8" name="r_times" value="21:00~00:00" '+(data.fac_important_Vo.r_times=="21:00~00:00"?"checked":"")+'>21:00~00:00<br>';
						html += '</div>';
						html += '<div>';
						html += '<input type="text" id="check_value" name="check_value" value="'+data.fac_important_Vo.check_value+'" readonly>';
						html += '</div>';
						html += '<a href="index"><input type="button" value="결제"></a>';
						html += '<input type="button" onclick="calcel('+data.fac_important_Vo.finfo_no+')" value="삭제">';
						alert(html);
						$("#fac_important").html(html);
					},
					error:function(){
						alert("error");
					}
				});//ajax
			}//if
		}//function
		
		
		function calcel(finfo_no){
			if(confirm("삭제하시겠습니까?")){
				location.href="fac_reserveDelete?finfo_no="+finfo_no;
			}
		}
		
		
		</script>
</head>
<body>
	<div class="1">
		<h3>사진 부분</h3>
		<form>
			<div class="custom-file">
				<img class="img" src="/upload/${fac_admin_Vo.finfo_pic1}">
			</div>
			<div class="custom-file">
				<img class="img" src="/upload/${fac_admin_Vo.finfo_pic2}">
			</div>
			<div class="custom-file">
				<img class="img" src="/upload/${fac_admin_Vo.finfo_pic3}">
			</div>
			<div class="custom-file">
				<img class="img" src="/upload/${fac_admin_Vo.finfo_pic4}">
			</div>
			<div class="custom-file">
				<img class="img" src="/upload/${fac_admin_Vo.finfo_pic5}">
			</div>
		</form>
	</div>
	<hr>

	<div class="2">
		<h3>정보 부분</h3>
		<form action="">
			<label for="exampleInputPassword1">시설 이름</label> <input type="text"
				class="form-control" value="${fac_admin_Vo.finfo_name}" readonly><br>

			<label for="exampleInputPassword1">시설 종목</label> <input type="text"
				class="form-control" value="${fac_admin_Vo.finfo_sport}" readonly><br>

			<label for="exampleInputPassword1">시설 주소</label> <input type="text"
				class="form-control" value="${fac_admin_Vo.finfo_add1}" readonly><br>

			<label for="exampleInputPassword1">시설 가격</label> <input type="text"
				class="form-control" value="${fac_admin_Vo.finfo_price}" readonly><br>

			<label for="exampleInputPassword1">최대 인원</label> <input type="text"
				class="form-control" value="${fac_admin_Vo.finfo_people}" readonly><br>

			<label for="exampleFormControlTextarea1">상세 정보</label>
			<textarea class="form-control" id="exampleFormControlTextarea1"
				rows="3" readonly>${fac_admin_Vo.finfo_detail}</textarea>
		</form>
	</div>
	<hr>

	<div class="3">
		<h3>달력 부분</h3>
	</div>
	<hr>

	<div class="4">
		<h3>예약부분</h3>
		<form
			action="fac_important?finfo_no=${finfo_no}&finfo_price=${fac_admin_Vo.finfo_price}"
			method="post" id="fac_important">

			<div>
				<label>시설 이름</label> <input type="text" id="r_name" name="r_name"
					value="${fac_admin_Vo.finfo_name}" readonly><br>
			</div>

			<div class="zoomBtn">
				<p class="txt">인수</p>
				<button type="button" class="zoomIn" onclick='count("plus")'
					id="plus1">+</button>
				<span id="rcount" name="reserve_number">0</span>
				<button type="button" class="zoomOut" onclick='count("minus")'
					id="minus1">-</button>
			</div>

			<div class="">
				<label>날짜 선택</label> <input type="date" id="r_date" name="r_date"
					value="2021-09-08" min="2021-09-01" max="2021-09-30">
			</div>

			<div class="" id="">
				<input type="radio" id="r_times1" name="r_times" value="00:00~03:00">00:00~03:00<br>
				<input type="radio" id="r_times2" name="r_times" value="03:00~06:00">03:00~06:00<br>
				<input type="radio" id="r_times3" name="r_times" value="06:00~09:00">06:00~09:00<br>
				<input type="radio" id="r_times4" name="r_times" value="09:00~12:00">09:00~12:00<br>
				<input type="radio" id="r_times5" name="r_times" value="12:00~15:00">12:00~15:00<br>
				<input type="radio" id="r_times6" name="r_times" value="15:00~18:00">15:00~18:00<br>
				<input type="radio" id="r_times7" name="r_times" value="18:00~21:00">18:00~21:00<br>
				<input type="radio" id="r_times8" name="r_times" value="21:00~00:00">21:00~00:00<br>
			</div>
			<div>
				<input type="text" id="check_value" name="check_value" value="O"
					readonly>
			</div>
			<input type="button" id="time1" onclick="dataSend()" value="등록">
			<a href="fac_list"><input type="button" value="취소"></a>
			<a href="fac_importantList"><input type="button" value="예약리스트"></a>
		</form>
	</div>
	<hr>

</body>
</html>