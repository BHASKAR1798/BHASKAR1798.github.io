<%@page import="com.cognizant.bean.Emp_detBean"%>
<%@page import="com.cognizant.dao.EmployeeDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ACTION</title>
</head>
<body>
	<%
		try {
			EmployeeDAO emp = new EmployeeDAO();
			Emp_detBean bean = new Emp_detBean();
			bean.setEid(Integer.parseInt(request.getParameter("eid")));
			bean.setEname(request.getParameter("ename"));
			bean.setDesignation(request.getParameter("desig"));
			int insertStatus = 0;
			insertStatus = emp.insert(bean);
			if (insertStatus == 0) {
				out.println("Error while Inserting");
			} else {
				response.sendRedirect("read.jsp");
			}
		} catch (Exception e) {
			out.println(e.getMessage());
		}
	%>

</body>
</html>