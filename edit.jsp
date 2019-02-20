<%@page import="com.cognizant.bean.Emp_detBean"%>
<%@page import="com.cognizant.dao.EmployeeDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert</title>
</head>
<body>
	<h1 align="center">Edit RECORD</h1>
	<form action="editaction.jsp">
		<table>

			<tr>
				<th>Column Name</th>
				<th>Value</th>
			</tr>
			<%
			EmployeeDAO emp = new EmployeeDAO();
			Emp_detBean bean = emp.read(Integer.parseInt(request.getParameter("Eid")));
			%>
			<tr>
				<td>Eid:</td>
				<td><input type="number" name="eid"
					value="<%=bean.getEid()%>"></td>
			</tr>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="ename"
					value="<%=bean.getEname()%>"></td>
			</tr>
			<tr>
				<td>Designation:</td>
				<td><input type="text" name="desig"
					value="<%=bean.getDesignation()%>"></td>
			</tr>
			<tr>
			
				<td><input type="submit" value="Edit"></td>
			</tr>
			

		</table>
	</form>
</body>
</html>