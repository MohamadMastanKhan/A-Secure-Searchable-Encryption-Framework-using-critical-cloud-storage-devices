<%-- 
    Document   : DataOwnerAction
    Created on : Dec 27, 2019, 11:47:17 AM
    Author     : Venkat Sweety
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    String username=request.getParameter("username");
    session.setAttribute("username",username);
    String password=request.getParameter("password");
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_searchable","root","root");
   Statement st=con.createStatement();
   ResultSet rs=st.executeQuery("select *from user where username='"+username+"' and password='"+password+"'");
   while(rs.next())
   {
       session.setAttribute("email",rs.getString("email"));
      String status=rs.getString("status");
      if(status.equalsIgnoreCase("Waiting"))
      {
          %>
       <script type="text/javascript">
           window.alert("Your Account Not Yet Activated By Cloud");
           window.location="DataUser.jsp";
           </script>
       <% 
      }
else
if(status.equalsIgnoreCase("Activated"))
{
%>
       <script type="text/javascript">
           window.alert("Data User Login Sucess");
           window.location="UserHome.jsp";
           </script>
       <% 
}
%>
       <script type="text/javascript">
           window.alert("User Login Fail");
           window.location="DataUser.jsp";
           </script>
       <% 
   }
%>
       <script type="text/javascript">
           window.alert("Username Or Password Wrong");
           window.location="DataUser.jsp";
           </script>
       <% 
    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>
