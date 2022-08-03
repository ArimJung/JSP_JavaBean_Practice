<%@page import="java.util.ArrayList"%>
<%@page import="member.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mmb" class="member.MemberManagerBean" scope="session"/>
<jsp:useBean id="mb" class="member.MemberBean"/>
<jsp:setProperty property="*" name="mb"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표지 페이지</title>
</head>
<body>

<a href="form.html"><button>등록하기</button></a>
<hr>

<%
	ArrayList<MemberBean> datas = new ArrayList<MemberBean>();
	datas = mmb.selectAll(mb);
	
	for(int i=0; i<datas.size(); i++){
		out.print(datas.get(i).getMname()+" "+datas.get(i).getScore()+"점 "+datas.get(i).getGender()+"<br>");
	}
	
%>

</body>
</html>