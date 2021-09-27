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
  <link href="css/member/ruang-admin.min.css" rel="stylesheet">
  <link href="css/member/member_charge.css" rel="stylesheet">
  
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script> 
  <script type="text/javascript" src="js/member/member_charge.js"></script>
  
      <c:if test="${session_member != 'member' }">
 		 <script type="text/javascript">
  	 	 alert("잘못된 경로입니다")
  		 location.href="login"
  		 </script>
  	</c:if>

  
</head>

<body id="page-top">
  <div id="wrapper">
     <!-- Sidebar -->
    <jsp:include page="../include/memberSideBar.jsp"></jsp:include>
    <!-- Sidebar -->
    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">
        <!-- TopBar -->
       <jsp:include page="../include/memberTopBar.jsp"></jsp:include>
        <!-- Topbar -->
        
        <!-- 구현 부분-->
        <div id="body_div">
          <h1>충전 페이지</h1>
          <hr>
          <DIV id="charge_div">
            <div>
            <c:if test="${memberVo.m_point == null }" >
              <span style="font-size: 30px; font-weight: bolder; color: black;"><span >${memberVo.m_nickname }</span>님의 현재 보유 포인트:[ <span>0</span> ]</span>
            </c:if>
            <c:if test="${memberVo.m_point != null }" >
              <span style="font-size: 30px; font-weight: bolder; color: black;"><span >${memberVo.m_nickname }</span>님의 현재 보유 포인트:[ <span >${memberVo.m_point }</span> ]</span>
            </c:if>
            </div>
            <br>
           <form action="member_charge" method="post" onsubmit="return charge();">
           
           <!-- 히든 값 -->
           <input type="hidden" name="m_id" value="${memberVo.m_id }">
           <input type="hidden" name="m_Point" value="${memberVo.m_point }">
           
           
              <div style="width: 1000px; text-align: right;">
              <table id="charge_table">
                <tr>
                  <th>판매금액</th>
                  <th>추가 적립</th>
                  <th>적립 포인트</th>
                </tr>
                <tr>
                  <th>
                    <input type="radio" id="charge1" value="5000" name="point">
                    <label for="charge1">5000원</label>
                  </th>
                  <th>0%</th>
                  <th>5000포인트</th>
                </tr>
                <tr>
                  <th>
                    <input type="radio" id="charge2" value="11000" name="point">
                    <label for="charge2">10000원</label>
                  </th>
                  <th>10%</th>
                  <th>11000포인트</th>
                </tr>
                <tr>
                  <th>
                    <input type="radio" id="charge3" value="18000" name="point">
                    <label for="charge3">15000원</label>
                  </th>
                  <th>20%</th>
                  <th>18000포인트</th>
                </tr>
                <tr>
                  <th>
                    <input type="radio" id="charge4" value="25000" name="point" checked="checked">
                    <label for="charge4">20000원</label>
                  </th>
                  <th>25%</th>
                  <th>25000포인트</th>
                </tr>
                <tr>
                  <th>
                    <input type="radio" id="charge5" value="65000" name="point">
                    <label for="charge5">50000원</label>
                  </th>
                  <th>30%</th>
                  <th>65000포인트</th>
                </tr>
                <tr>
                  <th>
                    <input type="radio" id="charge6" value="140000" name="point">
                    <label for="charge6">100000원</label>
                  </th>
                  <th>40%</th>
                  <th>140000포인트</th>
                </tr>
              </table>
              <br>
              <input type="submit" class="btn btn-primary" id="mem_save" value="충전하기">
              </div>
            </form>
            </DIV>
        </div>
  
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