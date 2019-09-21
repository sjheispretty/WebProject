
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 웹 사이트</title>
</head>
<body>
	<%
		session.invalidate();//세션을 빼앗아버리도록 한다.

		
	%>
	
		<script>
			location.href = 'main.jsp';	
		</script>


</body>
</html>