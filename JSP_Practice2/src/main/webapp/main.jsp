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
 /*
	ArrayList<MemberBean> datas = new ArrayList<MemberBean>();
	datas = mmb.selectAll(mb);
	
	for(int i=0; i<datas.size(); i++){
		out.print(datas.get(i).getMname()+" "+datas.get(i).getScore()+"점 "+datas.get(i).getGender()+"<br>");
	}
 */	
%>

<ol>
<%
	ArrayList<MemberBean> datas=mmb.selectAll(mb);
	if(datas.size()>0){
		for(MemberBean v:datas){
%>
		<li><%=v.getMname()%> <%=v.getScore()%>점 <%=v.getGender()%></li>
<%
		}
	}
	else{
		out.println("<H3>출력할 데이터가 없습니다...</H3>");
	}
%>
</ol>



</body>
</html>