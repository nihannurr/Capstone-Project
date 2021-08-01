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
		<!--
		<br><br>		
		<label for="routine">Routine:</label>
		<input type="number" id="routine" value="" min="1" max="70" />    <button onclick="window.location.href='http://localhost:8080/customize'">Customize</button>
  	    <br><br>
  	    -->
  	    <input type="button" id="select" value="save" />
  	    
  	    <div id="container"/>
  	    
  	    
	</div><br><br><br><br><br><br><br><br><br><br><br>
		<div align="left">
			<button class="add" onclick="window.location.href='http://localhost:8080/routines'">BACK</button>
		</div>
		<div align="right">
			<button class="add" onclick="window.location.href='http://localhost:8080/more_routines'">NEXT</button>
		</div>
		
		
</body>

<script>

		var container = document.getElementById("container");
		var items = localStorage.getItem("routines").split(",");
		for(var i=0; i<items.length; i++){
		
			container.appendChild(document.createTextNode(items[i]));
            var input = document.createElement("input");
            input.type = "text";
            input.name = items[i].replace(" ", "");
            input.id = items[i].replace(" ", "");
            container.appendChild(input);
            
            var aTag = document.createElement('a');
			aTag.setAttribute('href',"/customize?routine=" + items[i]);
			aTag.innerText = "Customize";
			container.appendChild(aTag);
            
            container.appendChild(document.createElement("br"));
		
		}
		
		var planned = [] 
		
		if(localStorage.getItem("planned") != "")
			planned = JSON.parse(localStorage.getItem("planned"))
		
		
		document.getElementById('select').onclick = function() {
		items.forEach(e => {
		var input = document.getElementById(e.replace(" ", ""))
	  			if(input.value != ""){
	  				planned.push({"routine": e, "total_hour": input.value})
	  			}
	  	})
	  	localStorage.setItem("planned", JSON.stringify(planned))
		
  		}
    	
		 
		
		
		

</script>

</html>