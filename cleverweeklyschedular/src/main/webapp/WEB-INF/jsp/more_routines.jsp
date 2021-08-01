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
button{font-size: 20px;
}
.icomoon {
		font-size: 30px;
        width: calc(35px + 10vw);
  		height: calc(5px + 4vw);
  		border-radius: calc(2px + 4vw);
    }
label{font-size: 30px;}
input{font-size: 20px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<br><br><div align="center">
	<h1>Do you want to add more routine?</h1><br>
		
	<label>Yes, Add a routine:</label>&nbsp&nbsp
  	<input type="text"><br></br><br></br>

	<button class="icomoon" onclick="window.location.href='http://localhost:8080/plans'">That's enough</button>
	
	</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<div align="left">
			<button onclick="window.location.href='http://localhost:8080/weekly_hour'">BACK</button>
		</div>
		<div align="right">
			<button onclick="window.location.href='http://localhost:8080/weekly_hour'">SAVE</button>
		</div>
</body>
</html>