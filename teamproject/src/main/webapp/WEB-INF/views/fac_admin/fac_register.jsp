<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="utf-8">
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="img/logo/logo.png" rel="icon">
  <title>Team of Yul</title>
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="css/ruang-admin.min.css" rel="stylesheet">
  <link href="css/fac_register.css" rel="stylesheet">
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		$('input[type=file]').on('change',function(){
		//$(".fileInputClass").change(function(){
			var files1 = $("#customFile1").val().replace(/C:\\fakepath\\/i,'');
			var files2 = $("#customFile2").val().replace(/C:\\fakepath\\/i,'');
			var files3 = $("#customFile3").val().replace(/C:\\fakepath\\/i,'');
			var files4 = $("#customFile4").val().replace(/C:\\fakepath\\/i,'');
			var files5 = $("#customFile5").val().replace(/C:\\fakepath\\/i,'');
			
			
			$(".fileLabelClass1").text(files1);
			$(".fileLabelClass2").text(files2);
			$(".fileLabelClass3").text(files3);
			$(".fileLabelClass4").text(files4);
			$(".fileLabelClass5").text(files5);
			
		});//function2
		
	  	/* $(".checkForm").click(function(){
			alert("test!");
			
			
			var files = [];
			//var files = [$(".fileLabelClass1").text(),$(".fileLabelClass2").text(),$(".fileLabelClass3").text(),$(".fileLabelClass4").text(),$(".fileLabelClass5").text()];
			files[0] = $("#customFile1").val();
			files[1] = $("#customFile2").val();
			files[2] = $("#customFile3").val();
			files[3] = $("#customFile4").val();
			files[4] = $("#customFile5").val();
			alert($("#customFile1").val());
			alert(files);
			//alert($("#finfo_name").val());
			//alert($("#finfo_sport").val());
			//alert($("#finfo_add1").val());
			//alert($("#finfo_price").val());
			//alert($("#finfo_people").val());
			//alert($("#finfo_detail").val());
			$.ajax({
				url:"fac_register",
				enctype:'multipart/form-data',
				type:"post",
				processData: false,
				contentType: false,
				data:{
					"fm_id":$("#fm_id").val(),
					"finfo_name":$("#finfo_name").val(),
					"finfo_sport":$("#finfo_sport").val(),
					"finfo_add1":$("#finfo_add1").val(),
					"finfo_price":$("#finfo_price").val(),
					"finfo_people":$("#finfo_people").val(),
					"finfo_detail":$("#finfo_detail").val(),
					"files":files
				},
				
			success:function(data){
				alert("success");
				console.log(data);
				if(data == "success"){
					location.href="fac_list";
				}else{
					alert("리스트 업로드 실패했습니다.");
					$("fm_id").val("");
				}
			},
			error:function(){
				alert("error");
			}
  		});//ajax
	});//function1 */
});//jqueryfunction

  </script> 
</head>

<body id="page-top">
  <div id="wrapper">
    <!-- Sidebar -->
    <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
        <div class="sidebar-brand-icon">
        </div>
        <div class="sidebar-brand-text mx-3">로고</div>
      </a>
      <hr class="sidebar-divider my-0">
      <li class="nav-item">
        <a class="nav-link" href="#">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>보류</span></a>
      </li>
      <hr class="sidebar-divider">
      <div class="sidebar-heading">
        시설 관리자
      </div>
      <li class="nav-item active">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap"
          aria-expanded="true" aria-controls="collapseBootstrap">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>시설 관리</span>
        </a>
        <div id="collapseBootstrap" class="collapse show" aria-labelledby="headingBootstrap"
          data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">시설 관리</h6>
            <a class="collapse-item" href="fac_register">시설 등록</a>
            <a class="collapse-item" href="fac_list">시설 목록</a>
            <a class="collapse-item" href="fac_commentList">후기 관리</a>
          </div>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseForm" aria-expanded="true"
          aria-controls="collapseForm">
          <i class="fab fa-fw fa-wpforms"></i>
          <span>판매 관리</span>
        </a>
        <div id="collapseForm" class="collapse" aria-labelledby="headingForm" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">판매 관리</h6>
            <a class="collapse-item" href="fac_reserve">판매 목록</a>
            <a class="collapse-item" href="fac_cancel">취소 목록</a>
          </div>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTable" aria-expanded="true"
          aria-controls="collapseTable">
          <i class="fas fa-fw fa-table"></i>
          <span>정산 관리</span>
        </a>
        <div id="collapseTable" class="collapse" aria-labelledby="headingTable" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">정산 관리</h6>
            <a class="collapse-item" href="simple-tables">정산 관리</a>
          </div>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="fac_qna">
          <i class="fas fa-fw fa-palette"></i>
          <span>문의 관리</span>
        </a>
      </li>
      <hr class="sidebar-divider">
      <div class="sidebar-heading">
        정보
      </div>
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePage" aria-expanded="true"
          aria-controls="collapsePage">
          <i class="fas fa-fw fa-columns"></i>
          <span>판매자 정보</span>
        </a>
        <div id="collapsePage" class="collapse" aria-labelledby="headingPage" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">판매자 정보</h6>
            <a class="collapse-item" href="fm_mypage">마이페이지</a>
          </div>
        </div>
      </li>

      <hr class="sidebar-divider">
      <div class="version" id="version-ruangadmin"></div>
    </ul>
    <!-- Sidebar -->
    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">
        <!-- TopBar -->
        <nav class="navbar navbar-expand navbar-light bg-navbar topbar mb-4 static-top">
          <button id="sidebarToggleTop" class="btn btn-link rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>
          <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <img class="img-profile rounded-circle" src="img/boy.png" style="max-width: 60px">
                <span class="ml-2 d-none d-lg-inline text-white small">닉네임명</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="javascript:void(0);" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>
          </ul>
        </nav>
        <!-- Topbar -->
        
        <!-- 게시물 라인-->
        <DIV id="body_div">
          <div>
            <div id="title_div">
                <h3>시설 등록</h3>
                <hr>
            </div>
            <div id="fac_inform">
              <div id="fac_inform_blank">
              </div>
              <div id="fac_inform_div1">
                  <span>시설 정보</span>
              </div>
              <div id="fac_inform_input">
                <div id="fac_inform_input1">
                  <form action="fac_register" method="post" enctype="multipart/form-data">
                  <table>
                  
                    <div class="form-group" id="fac_input">
                      <label for="fm_id">시설 관리자 아이디</label>
                      <input type="text" class="form-control" id="fm_id" name="fm_id" placeholder="시설 관리자 아이디">
                      
                      <label for="finfo_name">시설 이름</label>
                      <input type="text" class="form-control" id="finfo_name" name="finfo_name" placeholder="시설 이름">

                        <label for="finfo_sport">종목</label>
                        <select class="select2-single form-control" name="finfo_sport" id="finfo_sport">
                          <option value="">선택하세요</option>
                          <option value="soccer">축구</option>
                          <option value="baseball">야구</option>
                          <option value="tennis">테니스</option>
                          <option value="badminton">배트민턴</option>
                          <option value="futsal">풋살장 대여</option>
                        </select>
                      
                      <label for="finfo_add1">시설 주소</label>
                      <input type="text" class="form-control" id="finfo_add1" name="finfo_add1" placeholder="시설 주소">
                      
                      <label for="finfo_price">시설 가격</label>
                      <input type="text" class="form-control" id="finfo_price" name="finfo_price" placeholder="시설 가격">
                      
                      
                        <label for="finfo_people">최대 인원</label>
                        <select multiple class="form-control" id="finfo_people" name="finfo_people">
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                          <option value="6">6</option>
                          <option value="7">7</option>
                          <option value="8">8</option>
                          <option value="9">9</option>
                          <option value="10">10</option>
                          <option value="11">11</option>
                          <option value="12">12</option>
                          <option value="13">13</option>
                          <option value="14">14</option>
                          <option value="15">15</option>
                          <option value="16">16</option>
                          <option value="17">17</option>
                          <option value="18">18</option>
                          <option value="19">19</option>
                          <option value="20">20</option>
                          <option value="21">21</option>
                          <option value="22">22</option>
                          <option value="23">23</option>
                          <option value="24">24</option>
                          <option value="25">25</option>
                          <option value="26">26</option>
                          <option value="27">27</option>
                          <option value="28">28</option>
                          <option value="29">29</option>
                          <option value="30">30</option>
                        </select>
                     
                      
                        <label for="finfo_detail">상세 정보</label>
                        <textarea class="form-control" id="finfo_detail" name="finfo_detail" rows="3"></textarea>
                    </div>
                    

                      <div class="custom-file">
                        <input type="file" class="custom-file-input customFile1" id="customFile1" name="files">
                        <label class="custom-file-label fileLabelClass1" for="customFile1">파일 업로드</label>
                      </div>
                      <div class="custom-file">
                        <input type="file" class="custom-file-input customFile2" id="customFile2" name="files">
                        <label class="custom-file-label fileLabelClass2" for="customFile2">파일 업로드</label>
                      </div>
                      <div class="custom-file">
                        <input type="file" class="custom-file-input customFile3" id="customFile3" name="files">
                        <label class="custom-file-label fileLabelClass3" for="customFile3">파일 업로드</label>
                      </div>
                      <div class="custom-file">
                        <input type="file" class="custom-file-input customFile4" id="customFile4" name="files">
                        <label class="custom-file-label fileLabelClass4" for="customFile4">파일 업로드</label>
                      </div>
                      <div class="custom-file">
                        <input type="file" class="custom-file-input customFile5" id="customFile5" name="files">
                        <label class="custom-file-label fileLabelClass5" for="customFile5">파일 업로드</label>
                      </div>

                    
                    <button type="submit" class="btn btn-primary checkForm" id="fac_save">등록</button>
                    <a href="fac_list" class="btn btn-primary" id="fac_save">리스트</a>
                   </table>
                  </form>
                </div>

              </div>
            </div>
          </div>
        </DIV>

  
      </div>

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>copyright &copy; <script> document.write(new Date().getFullYear()); </script> - developed by <b><a href="https://indrijunanda.gitlab.io/"
                  target="_blank">indrijunanda</a></b> </span>
          </div>
        </div>
      </footer>

    </div>
  </div>
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="js/ruang-admin.min.js"></script>
</body>

</html>