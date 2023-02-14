<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  %>

<%@ page import="java.io.PrintWriter"%>
<%@ page import="model.domain.entity.StudyMembers"%>
<%@ page import="model.StudyMembersDAO"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html>
<head>
<title>개인 정보 수정</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif; font-size: 18px;}
input[type=text] {
	width: 300px;
	height: 32px;
	font-size: 15px;
	border: 0;
	border-radius: 15px;
	outline: none;
	padding-left: 10px;
	background-color: rgb(233, 233, 233);
}
</style>
</head>
<body>
    <div class="w3-container">
	    <div class="w3-section w3-bottombar w3-padding-16">
	       
		  <img src="${pageContext.request.contextPath}/images/momogong.png" onclick='location.href="${pageContext.request.contextPath}/main.jsp"' style="width:10%" class="w3-hover-opacity">
	      <button class="w3-button w3-white" onclick='location.href="${pageContext.request.contextPath}/StdGroup/mystudy"'>내 스터디</button>
	      <button class="w3-button w3-white" onclick='location.href="${pageContext.request.contextPath}/lists/createStdList.jsp"'>스터디 생성</button>
	      <button class="w3-button w3-white" onclick='location.href="${pageContext.request.contextPath}/Community/list"'>커뮤니티</button>
	      <button class="w3-button w3-white w3-hide-small" onclick='location.href="${pageContext.request.contextPath}/Notice/list"'>공지사항</button>
	      	 스터디 검색 : <input type="text" id="study" name="study" value=""><button id="btn1" class="w3-button w3-white w3-hide-small"><i class="fa fa-search"></i></button>
	      <button class="w3-button w3-white w3-hide-small w3-right" onclick='location.href="${pageContext.request.contextPath}/StdMembers/logout"'>로그아웃</button>
	      <button class="w3-button w3-white w3-hide-small w3-right" onclick='location.href="${pageContext.request.contextPath}/StdMembers/viewOne2"'>내 정보</button>
	    </div>
    </div>
	<br>
	<center>
	<h3>개인 정보 수정하기</h3>
	<br>
	<form action="${pageContext.request.contextPath}/StdMembers/update" method="post">
		  <!-- update Form  -->	
		  <table border="1" cellspacing="1" width="60%">
			  <tr>
				<td width=30%>아이디</td>
				<td width=70%>	
					${allData.id}		
				</td>
			  </tr>
			  <tr>
				<td width="30%">등급</td>
				<td width="70%">	
					${allData.grade}	
				</td>
			  </tr>
			  <tr>
				<td width="30%">비밀번호 수정</td>
				<td width="70%">
					<input type="password" name="password" value="${allData.password}">
				</td>
			  </tr>			  
			
			  <tr>
			
				<td width="30%">이메일 수정</td>
				<td width="70%">
					<input type="text" name="email" value="${allData.email}">
				</td>		  
			  <tr>	
			  <tr>
			
				<td width="30%">닉네임 수정</td>
				<td width="70%">
					<input type="text" name="nickname" value="${allData.nickname}">
				</td>		  
			  <tr>		
			  <tr>
			
				<td width="30%">목표 수정</td>
				<td width="70%">
					<input type="text" name="goal" value="${allData.goal}">
				</td>		  
			  <tr>			  
		</table>  
		<p/>
	
		<%-- hidden tag완성 하세요
				 value값으로 설정해야 하는 값은? 
		--%>
	
		<input type="submit" value="수정" > &nbsp;
		<input type="reset" value="취소">&nbsp;
	</form>
      <!-- axios 사용을 위한 추가 설정 -->
  <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
  <script src="main.js"></script>
</body>
</html>
