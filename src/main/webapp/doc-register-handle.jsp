<%@ page import ="java.sql.*" %>
<%
    String name = request.getParameter("name");    
    String experience = request.getParameter("experience");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String gender = request.getParameter("gender");
    String mobile = request.getParameter("mobile");
    String spec = request.getParameter("spec");
    String degree = request.getParameter("degree");
    String age = request.getParameter("age");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
            "prashant", "project");
    Statement st = con.createStatement();
    //ResultSet rs;
   // System.out.println("insert into doctor(name, email, mobile, address, gender, spec, degree, experience) values ('" + name + "','" + email + "','" + mobile + "','" + address + "','" + gender + "','"+ age + "','"+ spec + "','"+ degree + "','"+ experience + "');"
    //);
    int i = st.executeUpdate("insert into doctor(name, email, mobile, address, gender, age, spec, degree, experience) values ('" + name + "','" + email + "','" + mobile + "','" + address + "','" + gender + "','"+ age + "','"+ spec + "','"+ degree + "','"+ experience + "');");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("success.jsp");
    }
%>