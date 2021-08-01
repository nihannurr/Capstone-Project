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
	<h1>Please select day and hour range:</h1><br></br>
	
	<label> MONDAY:</label> 
	<input type="checkbox" id="" name="" value=""> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<label> Starting Time:</label>
	<input type="text"> &nbsp&nbsp&nbsp&nbsp
	<label> Ending Time:</label>
	<input type="text"><br><br>
	<label> TUESDAY:</label> 
	<input type="checkbox" id="" name="" value=""> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<label> Starting Time:</label>
	<input type="text"> &nbsp&nbsp&nbsp&nbsp
	<label> Ending Time:</label>
	<input type="text"><br><br>
	<label> WEDNESDAY:</label> 
	<input type="checkbox" id="" name="" value=""> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<label> Starting Time:</label>
	<input type="text"> &nbsp&nbsp&nbsp&nbsp
	<label> Ending Time:</label>
	<input type="text"><br><br>
	<label> THURSDAY:</label> 
	<input type="checkbox" id="" name="" value=""> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<label> Starting Time:</label>
	<input type="text"> &nbsp&nbsp&nbsp&nbsp
	<label> Ending Time:</label>
	<input type="text"><br><br>
	<label> FRIDAY:</label> 
	<input type="checkbox" id="" name="" value=""> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<label> Starting Time:</label>
	<input type="text"> &nbsp&nbsp&nbsp&nbsp
	<label> Ending Time:</label>
	<input type="text"><br><br>
	<label> SATURDAY:</label> 
	<input type="checkbox" id="" name="" value=""> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<label> Starting Time:</label>
	<input type="text"> &nbsp&nbsp&nbsp&nbsp
	<label> Ending Time:</label>
	<input type="text"><br><br>
	<label> SUNDAY:</label> 
	<input type="checkbox" id="" name="" value=""> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<label> Starting Time:</label>
	<input type="text"> &nbsp&nbsp&nbsp&nbsp
	<label> Ending Time:</label>
	<input type="text"><br><br>
		
	</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<div align="left">
			<button onclick="window.location.href='http://localhost:8080/weekly_hour'">BACK</button>
		</div>
		<div align="right">
			<button onclick="window.location.href='http://localhost:8080/weekly_hour'">SAVE</button>
		</div>
</body>
</html>