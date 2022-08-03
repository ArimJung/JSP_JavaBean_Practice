<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<% request.setCharacterEncoding("UTF-8"); %>    
<jsp:useBean id="mmb" class="member.MemberManagerBean" scope="session"></jsp:useBean>
<jsp:useBean id="mb" class="member.MemberBean" ></jsp:useBean>
<jsp:setProperty property="*" name="mb"></jsp:setProperty>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록결과 페이지</title>
</head>
<body>

<h2>입력하신 정보</h2>
<%
	mmb.insert(mb);
%>
<%=mb.getMname()%> <%=mb.getScore() %> <%=mb.getGender()%> <br>
<a href="main.jsp"><button>메인으로 돌아가기</button></a>


</body>
</html>