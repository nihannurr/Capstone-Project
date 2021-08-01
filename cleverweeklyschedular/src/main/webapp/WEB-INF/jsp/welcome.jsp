<%@ page language="java" contentType="text/html; charset-ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body{
	background-color: #EFE6ED;
}
h1 {font-size: 70px;}
button{font-size: 30px;}
.icomoon {
		font-size: 30px;
        width: calc(35px + 10vw);
  		height: calc(5px + 3vw);
  		border-radius: calc(2px + 3vw);
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<br><br><div align="center">
		<h1>Welcome to the "Clever Weekly Scheduler"!</h1>
		<br/><button class="icomoon" onclick="window.location.href='http://localhost:8080/users'">Let's Start</button>
	</div>
</body>
</html>