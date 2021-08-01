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
		<br>
		
		<h2 id="name"></h2> 
		
		
		<h2>Plan 1: </h2> 
		<table>
			  <tr style="font-weight:bold;" bgcolor="lightblue">
			    <th id="00">Hour</th>
			    <th id="01"> Monday </th> 
			    <th id="02"> Tuesday </th>
			    <th id="03"> Wednesday </th>
			    <th id="04"> Thursday </th>
			    <th id="05"> Friday </th>
			    <th id="06"> Saturday </th>
			    <th id="07"> Sunday </th>
			  </tr>
			  <tr bgcolor="lightgray">
			    <td id="10">09:00</td>
			    <td id="11">Free</td>
			    <td id="12">Free</td>
			    <td id="13">Free</td>
			    <td id="14">Free</td>
			    <td id="15">Free</td>
			    <td id="16">Free</td>
			    <td id="17">Free</td>
			  </tr>
			  <tr bgcolor="lightgray">
			    <td id="20">10:00</td>
			    <td id="21">Free</td>
			    <td id="22">Free</td>
			    <td id="23">Free</td>
			    <td id="24">Free</td>
			    <td id="25">Free</td>
			    <td id="26">Free</td>
			    <td id="27">Free</td>
			  </tr>
			  <tr bgcolor="lightgray">
			    <td id="30">11:00</td>
			    <td id="31">Free</td>
			    <td id="32">Free</td>
			    <td id="33">Free</td>
			    <td id="34">Free</td>
			    <td id="35">Free</td>
			    <td id="36">Free</td>
			    <td id="37">Free</td>
			  </tr>
			  <tr bgcolor="lightgray">
			    <td id="40">12:00</td>
			    <td id="41">Free</td>
			    <td id="42">Free</td>
			    <td id="43">Free</td>
			    <td id="44">Free</td>
			    <td id="45">Free</td>
			    <td id="46">Free</td>
			    <td id="47">Free</td>
			  </tr>
			  <tr bgcolor="lightgray">
			    <td id="50">13:00</td>
			    <td id="51">Free</td>
			    <td id="52">Free</td>
			    <td id="53">Free</td>
			    <td id="54">Free</td>
			    <td id="55">Free</td>
			    <td id="56">Free</td>
			    <td id="57">Free</td>
			  </tr>
			  <tr bgcolor="lightgray">
			    <td id="60">14:00</td>
			    <td id="61">Free</td>
			    <td id="62">Free</td>
			    <td id="63">Free</td>
			    <td id="64">Free</td>
			    <td id="65">Free</td>
			    <td id="66">Free</td>
			    <td id="67">Free</td>
			  </tr>
			  <tr bgcolor="lightgray">
			    <td id="70">15:00</td>
			    <td id="71">Free</td>
			    <td id="72">Free</td>
			    <td id="73">Free</td>
			    <td id="74">Free</td>
			    <td id="75">Free</td>
			    <td id="76">Free</td>
			    <td id="77">Free</td>
			  </tr>
			  <tr bgcolor="lightgray">
			    <td id="80">16:00</td>
			    <td id="81">Free</td>
			    <td id="82">Free</td>
			    <td id="83">Free</td>
			    <td id="84">Free</td>
			    <td id="85">Free</td>
			    <td id="86">Free</td>
			    <td id="87">Free</td>
			  </tr>
			   <tr bgcolor="lightgray">
			    <td id="90">17:00</td>
			    <td id="91">Free</td>
			    <td id="92">Free</td>
			    <td id="93">Free</td>
			    <td id="94">Free</td>
			    <td id="95">Free</td>
			    <td id="96">Free</td>
			    <td id="97">Free</td>
			  </tr>
			   <tr bgcolor="lightgray">
			    <td id="100">18:00</td>
			    <td id="101">Free</td>
			    <td id="102">Free</td>
			    <td id="103">Free</td>
			    <td id="104">Free</td>
			    <td id="105">Free</td>
			    <td id="106">Free</td>
			    <td id="107">Free</td>
			  </tr>
			  <tr bgcolor="lightgray">
			    <td id="110">19:00</td>
			    <td id="111">Free</td>
			    <td id="112">Free</td>
			    <td id="113">Free</td>
			    <td id="114">Free</td>
			    <td id="115">Free</td>
			    <td id="116">Free</td>
			    <td id="117">Free</td>
			  </tr>
			   <tr bgcolor="lightgray">
			    <td id="120">20:00</td>
			    <td id="121">Free</td>
			    <td id="122">Free</td>
			    <td id="123">Free</td>
			    <td id="124">Free</td>
			    <td id="125">Free</td>
			    <td id="126">Free</td>
			    <td id="127">Free</td>
			  </tr>
			   <tr bgcolor="lightgray">
			    <td id="130">21:00</td>
			    <td id="131">Free</td>
			    <td id="132">Free</td>
			    <td id="133">Free</td>
			    <td id="134">Free</td>
			    <td id="135">Free</td>
			    <td id="136">Free</td>
			    <td id="137">Free</td>
			  </tr>
			   <tr bgcolor="lightgray">
			    <td id="140">22:00</td>
			    <td id="141">Free</td>
			    <td id="142">Free</td>
			    <td id="143">Free</td>
			    <td id="144">Free</td>
			    <td id="145">Free</td>
			    <td id="146">Free</td>
			    <td id="147">Free</td>
			  </tr>
			   <tr bgcolor="lightgray">
			    <td id="150">23:00</td>
			    <td id="151">Free</td>
			    <td id="152">Free</td>
			    <td id="153">Free</td>
			    <td id="154">Free</td>
			    <td id="155">Free</td>
			    <td id="156">Free</td>
			    <td id="157">Free</td>
			  </tr>
			  
			  
			  
		</table>
		
		
		
		
	</div><br><br><br><br><br><br><br><br><br>
		<div align="left">
			<button onclick="window.location.href='http://localhost:8080/welcome'">TRY AGAIN</button>
		</div>
		<div align="right">
			<button onclick="window.location.href='http://localhost:8080/plans'">DOWNLOAD</button>
		</div>
</body>

<script type="text/javascript">

	
	var routine = localStorage.getItem("routines").split(",")
	if(localStorage.getItem("planned") != "")
		var planned = JSON.parse(localStorage.getItem("planned"))
	if(localStorage.getItem("reserved") != "")
		var reserved = JSON.parse(localStorage.getItem("reserved"))
	var name = localStorage.getItem("name")
	var surname = localStorage.getItem("surname")
	var age_range = localStorage.getItem("Age Range")
	
	
	document.getElementById("name").innerHTML = name + " " + surname;
	
	
	if(typeof(reserved) != "undefined"){
	
		for(var i=0; i<reserved.length; i++){
			var loc = (reserved[i].start - 8) + "" + (reserved[i].day.replace("day", ""))
			document.getElementById(loc).innerHTML = reserved[i].routine;
			
			
			for(var j=(reserved[i].start - 8); j<=(reserved[i].end - 9); j++){
				var loc_end = j + "" + (reserved[i].day.replace("day", ""))
				document.getElementById(loc_end).innerHTML = reserved[i].routine;
			}
			
		}
	}
	
	
	
	console.log(planned)
	
	for(var i=0; i<planned.length; i++){
	
		for(var j=0; j<planned[i].total_hour; j++){
			let saat = Math.floor(Math.random() * 10) + 1
			let gun = Math.floor(Math.random() * 7) + 1
			
			
			if(document.getElementById(saat + "" + gun).value == "Free"){
				document.getElementById(saat + "" + gun).innerHTML = planned[i].routine
				
			}else{
				while(document.getElementById(saat + "" + gun).value == "Free"){
					
					saat = Math.floor(Math.random() * 10) + 1
					gun = Math.floor(Math.random() * 7) + 1
				}
				document.getElementById(saat + "" + gun).innerHTML = planned[i].routine
			}
			
		}
			
	}
	
	
	
	
	
	
	/*
	
	for(var i=0; i<planned.length; i++){
	
		for(var j=0; j<planned[i].total_hour; j++){
			var saat = Math.floor(Math.random() * 10) + 1
			var gun = Math.floor(Math.random() * 7) + 1
			
			
			for(var a=0; a<10; a++){
				
				if(document.getElementById(saat + "" + gun).value == "Free")
					document.getElementById(saat + "" + gun).innerHTML = planned[i].routine
				else{
					var saat = Math.floor(Math.random() * 10) + 1
					var gun = Math.floor(Math.random() * 7) + 1
				}
				
			}
			
			
			
			while(document.getElementById(saat + "" + gun).value != "Free"){
				var saat = Math.floor(Math.random() * 10) + 1
				var gun = Math.floor(Math.random() * 7) + 1
			}
			document.getElementById(saat + "" + gun).innerHTML = planned[i].routine
			
			
			
			if(document.getElementById(saat + "" + gun).value == "Free"){
				document.getElementById(saat + "" + gun).innerHTML = planned[i].routine
			}else{
				var saat = Math.floor(Math.random() * 10) + 1
				var gun = Math.floor(Math.random() * 7) + 1
				document.getElementById(saat + "" + gun).innerHTML = planned[i].routine
			}
		}
			
	}
	*/
	


	
</script>



</html>