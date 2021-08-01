<%@ page language="java" contentType="text/html; charset-ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function(){
	
		var checked = JSON.parse(localStorage.getItem('cb'));
		if (checked == true) {
    		document.getElementById("cb").checked = true;
		}
		
		function save(){
    		var checkbox = document.getElementById('cb');
    		localStorage.setItem('cb', checkbox.checked);
		}
		
	})


</script>
</head>
<style>
body{
	background-color: #EFE6ED;
}
h1 {font-size: 50px;}
button{font-size: 20px;}
label{font-size: 20px;}
input{font-size: 20px;}
</style>
<body>
	<br><br><div align="center">
	<h1>Choose routines you want to add your plan!</h1>
		<br><br>
		<c:forEach items="${routines}" var="routine" varStatus="status">
		<label for="routine1"> ${routine.name}</label>
		<input type="checkbox" id="cb" name="" value=""><br><br>
		</c:forEach>
		
		<label for="routine1"> swimming</label>
		<input type="checkbox" id="cb" name="" value=""><br><br>
		
	</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<div align="left">
		<button onclick="window.location.href='http://localhost:8080/users'">BACK</button>
	</div>
	<div align="right">
		<button class="add"  onclick="window.location.href='http://localhost:8080/weekly_hour'">SAVE</button>
	</div>
	
</body>
</html>