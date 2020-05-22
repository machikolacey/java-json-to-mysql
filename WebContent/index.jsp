<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page language="java" %>
<%@ page import="java.lang.*" import="javax.sql.*" %>
<%@ page import="java.util.*" %>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="mlk.AddtoBets"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Interview Test</h1>
<hr />
<p>Please choose a json file and click on the submit button.</p>
<form action = "index.jsp" method = "POST">
<label for="filelocation">File Location</label>
<input type="file" name="filelocation" value="<% out.println(request.getParameter("filelocation")); %>" />
<input type="submit" value="Submit" />
</form>
<hr />   
<% 
try {

    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost:3306/interview";
    Connection connection = DriverManager.getConnection(url, "root", "");
    PreparedStatement ps=(PreparedStatement)connection.prepareStatement("SELECT * from bets");
    ResultSet rs=ps.executeQuery();
    %>
<table>
<% 
 while(rs.next()){
 	String id=rs.getString("id");
	String numbets=rs.getString("numbets");
	String game=rs.getString("game");
	String stake=rs.getString("stake");
	String returns=rs.getString("returns");
	String clientid=rs.getString("clientid");
	String date=rs.getString("date");
%>
<tr>
<td><% 	out.println(id); %><td>
<td><% 	out.println(numbets); %><td>
<td><% 	out.println(game); %><td>
<td><% 	out.println(stake); %><td>
<td><% 	out.println(returns); %><td>
<td><% 	out.println(clientid); %><td>
<td><% 	out.println(date); %><td>
</tr>
<%  } %>
</table>      
<%    
  } catch(SQLException e) {
    out.println("SQLException caught: " +e.getMessage());
  }
//out.println(request.getParameter("filelocation"));
if(request.getParameter("filelocation") != null){
//  String db = request.getParameter("db");
  AddtoBets AddtoBetsInstance = new AddtoBets();
  AddtoBetsInstance.loadJSON(request.getParameter("filelocation"));

  response.getWriter().println("<p style='color:green;'>The data is updated - please refresh the page.</p>");
  
  
}
  
%>
<style>
td, th{min-width:50px;}
<</style>
</body>
</html>