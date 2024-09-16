<%-- 
    Document   : CloudAction
    Created on : Dec 27, 2019, 11:30:27 AM
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
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_searchable?enabledTLSProtocols=TLSv1.2", "root", "root");

   Statement st=con.createStatement();
   ResultSet rs=st.executeQuery("select *from cloud where username='"+username+"' and password='"+password+"'");
   if(rs.next())
   {
       %>
       <script type="text/javascript">
           window.alert("Cloud Login Sucess");
           window.location="CloudHome.jsp";
           </script>
       <%   
           }
 %>
       <script type="text/javascript">
           window.alert("Cloud Login Fails");
           window.location="Cloud.jsp";
           </script>
       <% 
    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>