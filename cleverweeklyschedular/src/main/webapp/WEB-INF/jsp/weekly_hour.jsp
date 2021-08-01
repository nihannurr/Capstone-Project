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
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function(){
	
		var routine = localStorage.getItem("routine");
		$("routine").val(routine);
		
		
		$(".add").click(function(){
			var routine = $("#routine").val();
			localStorage.setItem("routine", routine);
		})
		
  		
	})


</script>
</head>
<body>
	<br><br><div align="center">
	<h1>How many hour do you want to do these routines in a week?</h1><br><br>
		
		<br><br>		
		<label for="routine">Routine:</label>
		<input type="number" id="routine" value="" min="1" max="70" />    <button onclick="window.location.href='http://localhost:8080/customize'">Customize</button>
  	    <br><br>
  	    
	</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<div align="left">
			<button class="add" onclick="window.location.href='http://localhost:8080/routines'">BACK</button>
		</div>
		<div align="right">
			<button class="add" onclick="window.location.href='http://localhost:8080/more_routines'">SAVE</button>
		</div>
</body>
</html>