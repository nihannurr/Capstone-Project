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
	
		
		<label for="routine1"> Reading</label>
		<input type="checkbox" id="cb" name="r" value="Reading"><br><br>
		<label for="routine2"> Sleeping</label>
		<input type="checkbox" id="cb" name="r" value="Sleeping"><br><br>
		<label for="routine3"> Swimming</label>
		<input type="checkbox" id="cb" name="r" value="Swimming"><br><br>
		<label for="routine4"> Working</label>
		<input type="checkbox" id="cb" name="r" value="Working"><br><br>
		<label for="routine5"> Playig guitar</label>
		<input type="checkbox" id="cb" name="r" value="Playing guitar"><br><br>

	<input type="button" id="select" value="save" />
		
		
	</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<div align="left">
		<button onclick="window.location.href='http://localhost:8080/users'">BACK</button>
	</div>
	<div align="right">
		<button class="add"  onclick="window.location.href='http://localhost:8080/weekly_hour'">NEXT</button>
	</div>
	
	
	<div id="container">
	</div>
	
</body>


<script>
		var routines = [];
		localStorage.setItem("routines", "");
		document.getElementById('select').onclick = function() {
  			var checkboxes = document.getElementsByName('r');
  			for (var checkbox of checkboxes) {
    			if (checkbox.checked)
    				routines.push(checkbox.value)
      		}
  			localStorage.setItem("routines", routines);
		}
		
	
	
</script>



</html>