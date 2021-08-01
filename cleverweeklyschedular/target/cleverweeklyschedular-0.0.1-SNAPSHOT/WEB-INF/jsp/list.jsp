<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Customers</title>
	

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
			<!--  add our html table here -->
		
			<table>
				<tr>
						<th>First Name</th>
						<th>Last Name</th>					
				</tr>
				
				
				<tr>
						<td> ${users.firstName} </td>
						<td> ${users.lastName} </td>
				</tr>
				
				
				
						
			</table>
				
		</div>
	
	</div>
	

</body>

</html>


