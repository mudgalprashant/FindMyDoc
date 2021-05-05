<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor-Finder</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300;400;500;900&family=Ubuntu:wght@300;400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="public/css/style.css">
  <script src="https://use.fontawesome.com/releases/v5.15.2/js/all.js" data-auto-replace-svg="nest"></script>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <a class="navbar-brand" href="#">Doctor-Finder</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav ml-auto ">
                <li class="nav-item active">
                  <a class="nav-link" href="index.jsp"><span>Home</span> <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#about-us"><span>About us</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#testimonials"><span>Testimonials</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#social"><span>Contact us</span></a>
                  </li>
                <%
                    if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
                %>
                  <li class="nav-item">
                    <a class="nav-link" href="register.jsp"><span>Register</span></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="login.jsp"><span>Login</span></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="doc-register.jsp"><span>Register as Doctor</span></a>
                  </li>
                <%} else {
                %>
                <li class="nav-item">
                    <a class="nav-link"><span>Logged in as <%=session.getAttribute("email")%></span></a>
                  </li>
                <li class="nav-item">
                    
                    <form action = "logout.jsp">
                        <span><button class="nav-link btn" type = "submit">Logout</button></span>
                    </form>
                  </li>
                <%
                    }
                %>
              </ul>
            </div>
          </nav>
   

<% if (session.getAttribute("email").toString().equals("admin@gmail.com")){
%>


<%
try {

String connectionURL = "jdbc:mysql://localhost:3306/test";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver").newInstance();

connection = DriverManager.getConnection(connectionURL, "prashant", "project");

statement = connection.createStatement();

String QueryString = "SELECT * from patient";
rs = statement.executeQuery(QueryString);
%>
<h3 class = "table-title"> Patients Details </h3>
<TABLE cellpadding="15">
	<tr>
		<th>Name</th>
		<th>Gender</th>
		<th>Age</th>
		<th>Mobile No.</th>
		<th>Email-ID</th>
                <th>Address</th>
		<th>Request time:</th>
	</tr>
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getString("name")%></TD>
<TD><%=rs.getString("gender")%></TD>
<TD><%=rs.getString("age")%></TD>
<TD><%=rs.getString("mobile")%></TD>
<TD><%=rs.getString("email")%></TD>
<TD><%=rs.getString("address")%></TD>

<TD><%=rs.getString("time")%></TD>
</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
<%
out.println("Unable to connect to database.");
}
%>
</TABLE>
<% } else { %>
<h2 style = "margin-top:70px;"> You do not have access to this page </h2>
<% } %>
<footer>
                   
        <div class="icon-div">
            <a href=""><i  class=" icon-img fab fa-github fa-2x"></i></a>
            <a href=""><i class="icon-img fab fa-instagram fa-2x"></i></a>
            <a href=""><i class="icon-img fab fa-facebook-square fa-2x"></i></a>
            <a href=""><i  class="icon-img fab fa-linkedin fa-2x"></i></a>
            <p >
                copyright @SGSITS 2021
            </p>

        </div>
    </footer>
<style>
footer {
   padding-top:50px;
   left: 0;
   bottom: 0;
   width: 100%;
   color: white;
   text-align: center;
}
.table-title{
    margin-top:100px;
    margin-bottom:-70px;
    margin-left:10vw;
}
table{
    margin:100px;
    text-align:left;
    width:85vw;
}
tr{
    border-bottom: 1px solid #ddd;
}
</style>
</body>
</html>