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
h1 {font-size: 50px;}
button{font-size: 20px;}
label{font-size: 20px;}
input{font-size: 20px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<br><br><div align="center">
	<h1>These are schedules for you!</h1>
		<!--
		<table>
			<c:forEach items="${plans}" var="plan" varStatus="status">
				<tr bgcolor="${status.index % 2 == 0 ? 'white' : 'lightgray'}">
					<td>${plan.name}</td>
				</tr>
			</c:forEach>
		</table>
		-->
		<br><br>
		<!--
		<c:forEach items="${plans}" var="plan" varStatus="status">
		<label for="plan1"> ${plan.name}</label>
		<input type="checkbox" id="" name="" value=""><br><br>
		</c:forEach>
		-->
		<label>Plan1</label>
		<input type="checkbox" id="" name="" value=""><br><br>
		
	</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<div align="left">
			<button onclick="window.location.href='http://localhost:8080/welcome'">TRY AGAIN</button>
		</div>
		<div align="right">
			<button onclick="window.location.href='http://localhost:8080/plans'">DOWNLOAD</button>
		</div>
</body>
</html>