<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert</title>
</head>
<body>
	<h1 align="center">ADD A NEW RECORD</h1>
	<table>
	<form action="Insertaction.jsp">
		<tr>
			<th>Column Name</th>
			<th>Value</th>
		</tr>
		<tr>
			<td>Eid:</td>
			<td><input type="number" name="eid" required="required"></td>
		</tr>
		<tr>
			<td>Name:</td>
			<td><input type="text" name="ename" required="required"></td>
		</tr>
		<tr>
			<td>Designation:</td>
			<td><input type="text" name="desig" required="required"></td>
		</tr>
		<tr>
		<td><input type="reset" value="Clear"></td>
		<td><input type="submit" value="Insert"></td>
        </tr>	
        </form>
	</table>
</body>
</html>