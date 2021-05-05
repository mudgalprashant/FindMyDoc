<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import ="java.sql.*" %>

<%
   String result;
   
   String to = request.getParameter("doctor_email");
   String from = "prashantmudgal4@gmail.com";
   String email = session.getAttribute("email").toString();
   String host = "localhost";
   String patient_email = request.getParameter("patient_email");
   String problem = request.getParameter("problem");
   String apt_time = request.getParameter("time");
   Properties properties = System.getProperties();
   properties.setProperty("mail.smtp.host", host);
   Session mailSession = Session.getDefaultInstance(properties);

   try {
      MimeMessage message = new MimeMessage(mailSession);
      message.setFrom(new InternetAddress(from));
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      message.setSubject("Appointment Request @ "+request.getParameter("time"));
      String msg;
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
            "prashant", "project");
      Statement st = con.createStatement();
      ResultSet rs;
      rs = st.executeQuery("select * from user where email='" + email + "';");
      msg = "\nPatient's Details: "+"\nName: " + request.getParameter("patient_name") 
              +"\nEmail: " + request.getParameter("patient_email") +"\nProblem: " 
              +  request.getParameter("problem") +"\nMessage: \n" + request.getParameter("patient_message") ;
      
      int temp = st.executeUpdate("insert into appointment(patient_email, doctor_email, problem, apt_time, message ) values ('" + patient_email + "','" + to + "','" + problem + "','" + apt_time + "','" + msg + "');");
      message.setText(msg);
      Transport.send(message);
      result = "Sent message successfully....";
   } catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
   }
%>

<html>
   <head>
      <title>Email Sent</title>
   </head>
   
   <body>
      <center>
          <h1><%= result %><a href = "index.jsp">Go to Home Page</a></h1>
      </center>
   </body>
</html>