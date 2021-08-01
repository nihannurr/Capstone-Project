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
<!--
<script>
	$(document).ready(function(){
		
	var checked = JSON.parse(localStorage.getItem('d'));
		if (checked == true) {
    		document.getElementById("d").checked = true;
		}
		
		
	})


</script>
-->
</head>
<body>
	<br><br><div align="center">
	<h2 id= "baslik"></h2>
	<h1>Please select day and hour range:</h1><br></br>
	
	
	<label> MONDAY:</label> 
	<input type="checkbox" id="d" name="d" value="day1"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<label> Starting Time:</label>
	<input type="text" id="day1s"> &nbsp&nbsp&nbsp&nbsp
	<label> Ending Time:</label>
	<input type="text" id="day1e"><br><br>
	<label> TUESDAY:</label> 
	<input type="checkbox" id="d" name="d" value="day2"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<label> Starting Time:</label>
	<input type="text" id="day2s"> &nbsp&nbsp&nbsp&nbsp
	<label> Ending Time:</label>
	<input type="text" id="day2e"><br><br>
	<label> WEDNESDAY:</label> 
	<input type="checkbox" id="d" name="d" value="day3"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<label> Starting Time:</label>
	<input type="text" id="day3s"> &nbsp&nbsp&nbsp&nbsp
	<label> Ending Time:</label>
	<input type="text" id="day3e"><br><br>
	<label> THURSDAY:</label> 
	<input type="checkbox" id="d" name="d" value="day4"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<label> Starting Time:</label>
	<input type="text" id="day4s"> &nbsp&nbsp&nbsp&nbsp
	<label> Ending Time:</label>
	<input type="text" id="day4e"><br><br>
	<label> FRIDAY:</label> 
	<input type="checkbox" id="d" name="d" value="day5"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<label> Starting Time:</label>
	<input type="text" id="day5s"> &nbsp&nbsp&nbsp&nbsp
	<label> Ending Time:</label>
	<input type="text" id="day5e"><br><br>
	<label> SATURDAY:</label> 
	<input type="checkbox" id="d" name="d" value="day6"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<label> Starting Time:</label>
	<input type="text" id="day6s"> &nbsp&nbsp&nbsp&nbsp
	<label> Ending Time:</label>
	<input type="text" id="day6e"><br><br>
	<label> SUNDAY:</label> 
	<input type="checkbox" id="d" name="d" value="day7"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<label> Starting Time:</label>
	<input type="text" id="day7s"> &nbsp&nbsp&nbsp&nbsp
	<label> Ending Time:</label>
	<input type="text" id="day7e"><br><br>
	
	
	<input type="button" id="select" value="save" />
		
	</div><br><br><br><br><br><br><br><br><br><br><br><br>
		<div align="left">
			<button onclick="window.location.href='http://localhost:8080/weekly_hour'">BACK</button>
		</div>
		<div align="right">
			<button onclick="window.location.href='http://localhost:8080/weekly_hour'">NEXT</button>
		</div>
</body>

<script>

	var title = document.getElementById("baslik").innerHTML = window.location.search.split("=")[1].replace("%20"," ");
	
	
	var days = [];
		localStorage.setItem("days", "");
		document.getElementById('select').onclick = function() {
  		
    	var checkboxes = document.getElementsByName('d');
    		
    	for (var checkbox of checkboxes) {
    		if (checkbox.checked){
    			var input1 = checkbox.value + "s";
    			var input2 = checkbox.value + "e";
    			console.log(checkbox.value)
    			console.log(document.getElementById(input1).value)
    			console.log(document.getElementById(input2).value)
    			days.push({"routine": title, "day": checkbox.value, "start": document.getElementById(input1).value, "end": document.getElementById(input2).value})
    			
    		}
      	
  		}
  		
  		console.log(localStorage.getItem("reserved"))
  		if(localStorage.getItem("reserved") != ""){
  			var list = JSON.parse(localStorage.getItem("reserved"))
  			list.push(days)
  			console.log(list)
  			localStorage.setItem("reserved", JSON.stringify(list))
  		}else{
      		localStorage.setItem("reserved", JSON.stringify(days))
    	 			
  		}
  		
  }

	
	
	
</script>

</html>