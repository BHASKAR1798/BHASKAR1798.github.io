<%@page import="com.cognizant.dao.EmployeeDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.cognizant.bean.Emp_detBean"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Table Content</title>
</head>
<body>
	<center>
		<a href="index.jsp">HOME</a>
	</center>
	<center>
		<h1>TRAINEE DETAIL TABLE CONTENT</h1>
	</center>
	<%
		try{
			EmployeeDAO emp=new EmployeeDAO();
			List<Emp_detBean> list=new ArrayList<Emp_detBean>();
			list=emp.readAll();
	%>
	<table border="1" align="center">
		<tr>

			<th>Eid</th>
			<th>Ename</th>
			<th>Designation</th>
			<th>Actions</th>
		</tr>
		<%for(Emp_detBean bean: list){ %>
			<tr>
			     <th><%= bean.getEid() %></th>
			     <th><%= bean.getEname() %></th>
			     <th><%= bean.getDesignation() %></th>
			     <th><a href="edit.jsp?Eid=<%=bean.getEid()%>">Edit</a> | <a href="delete.jsp?Eid=<%=bean.getEid()%>">Delete</a></th>
			 </tr>
			
			<%} %> 
	</table>
<%
		}catch(Exception e){
			out.println(e.getMessage());}
	%>
		

</body>
</html>