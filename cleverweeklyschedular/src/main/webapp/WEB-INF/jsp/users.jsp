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
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function(){
	
		var name = localStorage.getItem("name");
		var surname = localStorage.getItem("surname");
		$("name").val(name);
		$("surname").val(surname);
		
		var radios = document.getElementsByName("Age Range");
  		var val = localStorage.getItem('Age Range');
  		for(var i=0; i<radios.length; i++){
    		if(radios[i].value == val){
      			radios[i].checked = true;
    		}
		}
		var radios2 = document.getElementsByName("Gender");
  		var val2 = localStorage.getItem('Gender');
  		for(var i=0; i<radios2.length; i++){
    		if(radios2[i].value == val2){
      			radios2[i].checked = true;
    		}
		}
		
		
		$(".add").click(function(){
			var name = $("#name").val();
			var surname = $("#surname").val();
			localStorage.setItem("name", name);
			localStorage.setItem("surname", surname);
		})
		
		$('input[name="Age Range"]').on('change', function(){
    		localStorage.setItem('Age Range', $(this).val());
  		});
  		
  		$('input[name="Gender"]').on('change', function(){
    		localStorage.setItem('Gender', $(this).val());
  		});
  		
	})


</script>
</head>
<body>
	<br><br><div align="center">
	<h1>Please choose your age range and gender</h1>
	
		<br><br><label>Your Name:</label>
  	    <input type="text" id="name"><br><br>
  	    
  	    <br><label>Your Surname:</label>
  	    <input type="text" id="surname"><br><br>
		
		<br><h2>Your Age:</h2>
		<LABEL FOR="R1">15-21</LABEL>
		<INPUT TYPE="Radio" Name="Age Range" id="age" Value="1">
		<LABEL FOR="R2">22-32</LABEL>
		<INPUT TYPE="Radio" Name="Age Range" id="age" Value="2">
		<LABEL FOR="R3">33-45</LABEL>
		<INPUT TYPE="Radio" Name="Age Range" id="age" Value="3">
		<LABEL FOR="R4">46-55</LABEL>
		<INPUT TYPE="Radio" Name="Age Range" id="age" Value="4">
		<LABEL FOR="R5">56+</LABEL>
		<INPUT TYPE="Radio" Name="Age Range" id="age" Value="5">
		
		<br><br><h2>Your Gender:</h2>
		<LABEL FOR="R1">Male</LABEL>
		<INPUT TYPE="Radio" Name="Gender" ID="R1" Value="Male">
		<LABEL FOR="R2">Female</LABEL>
		<INPUT TYPE="Radio" Name="Gender" ID="R2" Value="Female">
	</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<div align="left">
			<button onclick="window.location.href='http://localhost:8080/welcome'">BACK</button>
		</div>
		<div align="right">
			<button class="add" onclick="window.location.href='http://localhost:8080/routines'">SAVE</button>
		</div>
</body>
</html>