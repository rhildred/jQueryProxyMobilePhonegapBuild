<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ca.on.conestogac.*"%>
<%@page import="java.sql.*"%>
<%

try{
	Connection oConnection = OpenShiftDataSource.getConnection("jdbc:mysql://localhost/test2?user=root");
	Statement oStmt = oConnection.createStatement();
	String sSQL = "SELECT * FROM students";
	ResultSet oRs = oStmt.executeQuery(sSQL);
	out.println(ResultSetValue.toJsonString(oRs));
}
catch(Exception e)
{
	out.println(e.getStackTrace());
}


%>